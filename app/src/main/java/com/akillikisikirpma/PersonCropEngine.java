package com.akillikisikirpma;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.provider.OpenableColumns;
import android.util.Size;

import org.tensorflow.lite.support.image.TensorImage;
import org.tensorflow.lite.support.label.Category;
import org.tensorflow.lite.task.core.BaseOptions;
import org.tensorflow.lite.task.vision.detector.Detection;
import org.tensorflow.lite.task.vision.detector.ObjectDetector;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

final class PersonCropEngine implements AutoCloseable {
    static final class ProcessResult {
        int detected;
        int saved;
        int skipped;
        int failed;
    }

    private static final float PERSON_THRESHOLD = 0.28f;
    private static final float MIN_AREA_RATIO = 0.0012f;
    private static final float MIN_ASPECT = 0.10f;
    private static final float MAX_ASPECT = 2.40f;
    private static final int DETECTION_MAX_DIMENSION = 3072;

    private final Context context;
    private final ObjectDetector personDetector;

    PersonCropEngine(Context context) throws Exception {
        this.context = context.getApplicationContext();
        BaseOptions base = BaseOptions.builder().setNumThreads(4).build();
        ObjectDetector.ObjectDetectorOptions options = ObjectDetector.ObjectDetectorOptions.builder()
                .setBaseOptions(base)
                .setMaxResults(80)
                .setScoreThreshold(PERSON_THRESHOLD)
                .build();
        personDetector = ObjectDetector.createFromFileAndOptions(
                this.context,
                "efficientdet-lite0.tflite",
                options
        );
    }

    ProcessResult process(Uri uri) {
        ProcessResult result = new ProcessResult();
        DetectionBitmap decoded = null;
        try {
            decoded = decodeForDetection(uri);
            if (decoded == null || decoded.bitmap == null) {
                result.failed++;
                return result;
            }

            Bitmap detectionBitmap = decoded.bitmap;
            List<Detection> detections = personDetector.detect(TensorImage.fromBitmap(detectionBitmap));
            List<Detection> candidates = new ArrayList<>();
            for (Detection detection : detections) {
                if (isPerson(detection) && isSensiblePersonBox(
                        detection.getBoundingBox(),
                        detectionBitmap.getWidth(),
                        detectionBitmap.getHeight())) {
                    candidates.add(detection);
                }
            }

            // Aynı kişiye ait üst üste tespitlerde yüksek güven skorunu tut.
            candidates.sort(Comparator.comparingDouble(this::scoreOf).reversed());
            List<Detection> people = new ArrayList<>();
            for (Detection candidate : candidates) {
                if (!duplicatesAny(candidate, people)) people.add(candidate);
                else result.skipped++;
            }

            // Klasör numaraları görüntü konumuna göre kararlı olsun.
            people.sort(Comparator
                    .comparingDouble((Detection d) -> d.getBoundingBox().top)
                    .thenComparingDouble(d -> d.getBoundingBox().left));

            String sourceBase = sourceBaseName(uri);
            String sourceFileName = sourceFileName(uri, sourceBase);
            String sourceMime = sourceMimeType(uri);
            int personNo = 0;

            for (Detection detection : people) {
                result.detected++;
                Rect detectionCrop = expandedRect(
                        detection.getBoundingBox(),
                        detectionBitmap.getWidth(),
                        detectionBitmap.getHeight());
                if (!isSensibleCrop(detectionCrop, detectionBitmap.getWidth(), detectionBitmap.getHeight())) {
                    result.skipped++;
                    continue;
                }

                Rect sourceCrop = mapToSource(
                        detectionCrop,
                        detectionBitmap.getWidth(),
                        detectionBitmap.getHeight(),
                        decoded.sourceWidth,
                        decoded.sourceHeight);

                Bitmap person = null;
                try {
                    person = decodeOriginalCrop(uri, sourceCrop, detectionBitmap);
                    if (person == null) {
                        result.failed++;
                        continue;
                    }

                    int nextPersonNo = personNo + 1;
                    boolean cropSaved = saveCrop(person, sourceBase, nextPersonNo);
                    boolean sourceSaved = copySource(uri, sourceBase, sourceFileName, sourceMime, nextPersonNo);
                    if (cropSaved && sourceSaved) {
                        personNo = nextPersonNo;
                        result.saved++;
                    } else {
                        result.failed++;
                    }
                } finally {
                    if (person != null && person != detectionBitmap && !person.isRecycled()) person.recycle();
                }
            }
        } catch (Throwable t) {
            result.failed++;
        } finally {
            if (decoded != null && decoded.bitmap != null && !decoded.bitmap.isRecycled()) decoded.bitmap.recycle();
        }
        return result;
    }

    private boolean duplicatesAny(Detection candidate, List<Detection> accepted) {
        RectF c = candidate.getBoundingBox();
        DetectionPolicy.Box cb = new DetectionPolicy.Box(c.left, c.top, c.right, c.bottom);
        for (Detection existing : accepted) {
            RectF e = existing.getBoundingBox();
            DetectionPolicy.Box eb = new DetectionPolicy.Box(e.left, e.top, e.right, e.bottom);
            if (DetectionPolicy.isDuplicate(cb, eb)) return true;
        }
        return false;
    }

    private float scoreOf(Detection detection) {
        float best = 0f;
        for (Category c : detection.getCategories()) {
            String label = c.getLabel();
            if (label != null && label.equalsIgnoreCase("person")) best = Math.max(best, c.getScore());
        }
        return best;
    }

    private boolean isPerson(Detection detection) {
        return scoreOf(detection) >= PERSON_THRESHOLD;
    }

    private boolean isSensiblePersonBox(RectF box, int width, int height) {
        float bw = Math.max(1f, box.width());
        float bh = Math.max(1f, box.height());
        float aspect = bw / bh;
        float areaRatio = (bw * bh) / Math.max(1f, (float) width * height);
        return areaRatio >= MIN_AREA_RATIO && aspect >= MIN_ASPECT && aspect <= MAX_ASPECT && bw >= 14f && bh >= 28f;
    }

    private boolean isSensibleCrop(Rect crop, int imageWidth, int imageHeight) {
        if (crop.width() < 18 || crop.height() < 36) return false;
        float ratio = crop.width() / (float) crop.height();
        if (ratio < 0.08f || ratio > 2.60f) return false;
        float areaRatio = (crop.width() * crop.height()) / Math.max(1f, (float) imageWidth * imageHeight);
        return areaRatio >= 0.0009f;
    }

    private Rect expandedRect(RectF box, int width, int height) {
        float bw = Math.max(1f, box.width());
        float bh = Math.max(1f, box.height());
        int left = Math.max(0, Math.round(box.left - bw * 0.14f));
        int right = Math.min(width, Math.round(box.right + bw * 0.14f));
        int top = Math.max(0, Math.round(box.top - bh * 0.12f));
        int bottom = Math.min(height, Math.round(box.bottom + bh * 0.16f));
        if (right <= left) right = Math.min(width, left + 1);
        if (bottom <= top) bottom = Math.min(height, top + 1);
        return new Rect(left, top, right, bottom);
    }

    private Rect mapToSource(Rect crop, int detectionW, int detectionH, int sourceW, int sourceH) {
        float sx = sourceW / (float) Math.max(1, detectionW);
        float sy = sourceH / (float) Math.max(1, detectionH);
        int left = clamp(Math.round(crop.left * sx), 0, Math.max(0, sourceW - 1));
        int top = clamp(Math.round(crop.top * sy), 0, Math.max(0, sourceH - 1));
        int right = clamp(Math.round(crop.right * sx), left + 1, sourceW);
        int bottom = clamp(Math.round(crop.bottom * sy), top + 1, sourceH);
        return new Rect(left, top, right, bottom);
    }

    private int clamp(int value, int min, int max) {
        if (max < min) return min;
        return Math.max(min, Math.min(max, value));
    }

    private DetectionBitmap decodeForDetection(Uri uri) throws Exception {
        ContentResolver resolver = context.getContentResolver();
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
            final int[] sourceSize = new int[2];
            ImageDecoder.Source source = ImageDecoder.createSource(resolver, uri);
            Bitmap bitmap = ImageDecoder.decodeBitmap(source, (decoder, info, src) -> {
                decoder.setAllocator(ImageDecoder.ALLOCATOR_SOFTWARE);
                Size size = info.getSize();
                sourceSize[0] = size.getWidth();
                sourceSize[1] = size.getHeight();
                int max = Math.max(sourceSize[0], sourceSize[1]);
                if (max > DETECTION_MAX_DIMENSION) {
                    float scale = DETECTION_MAX_DIMENSION / (float) max;
                    decoder.setTargetSize(
                            Math.max(1, Math.round(sourceSize[0] * scale)),
                            Math.max(1, Math.round(sourceSize[1] * scale)));
                }
            });
            return new DetectionBitmap(bitmap, sourceSize[0], sourceSize[1]);
        }

        Bitmap bitmap = MediaStore.Images.Media.getBitmap(resolver, uri);
        return new DetectionBitmap(bitmap, bitmap.getWidth(), bitmap.getHeight());
    }

    private Bitmap decodeOriginalCrop(Uri uri, Rect sourceCrop, Bitmap detectionBitmap) throws Exception {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
            ImageDecoder.Source source = ImageDecoder.createSource(context.getContentResolver(), uri);
            return ImageDecoder.decodeBitmap(source, (decoder, info, src) -> {
                decoder.setAllocator(ImageDecoder.ALLOCATOR_SOFTWARE);
                decoder.setCrop(sourceCrop);
            });
        }
        return Bitmap.createBitmap(
                detectionBitmap,
                sourceCrop.left,
                sourceCrop.top,
                sourceCrop.width(),
                sourceCrop.height());
    }

    private String sourceBaseName(Uri uri) {
        String name = sourceDisplayName(uri);
        int dot = name.lastIndexOf('.');
        if (dot > 0) name = name.substring(0, dot);
        name = sanitize(name);
        return name.isEmpty() ? "fotograf" : name;
    }

    private String sourceFileName(Uri uri, String sourceBase) {
        String name = sourceDisplayName(uri);
        int dot = name.lastIndexOf('.');
        String extension = dot >= 0 && dot < name.length() - 1 ? name.substring(dot).toLowerCase() : ".jpg";
        extension = extension.replaceAll("[^a-zA-Z0-9.]", "");
        if (extension.length() < 2 || extension.length() > 8) extension = ".jpg";
        return sourceBase + extension;
    }

    private String sourceDisplayName(Uri uri) {
        String name = null;
        try (android.database.Cursor c = context.getContentResolver().query(
                uri,
                new String[]{OpenableColumns.DISPLAY_NAME},
                null,
                null,
                null)) {
            if (c != null && c.moveToFirst()) name = c.getString(0);
        } catch (Exception ignored) {}
        if (name == null || name.trim().isEmpty()) name = "fotograf.jpg";
        return name;
    }

    private String sourceMimeType(Uri uri) {
        String mime = context.getContentResolver().getType(uri);
        return mime != null && mime.startsWith("image/") ? mime : "image/jpeg";
    }

    private String sanitize(String name) {
        return name.replaceAll("[\\/:*?\"<>|]", "_").trim();
    }

    private String relativeFolder(String sourceBase, int personNo) {
        return Environment.DIRECTORY_PICTURES + "/Screenshot/" + OutputLayout.personFolder(sourceBase, personNo);
    }

    private boolean saveCrop(Bitmap bitmap, String sourceBase, int personNo) {
        String fileName = OutputLayout.cropFile(sourceBase, personNo);
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                ContentValues values = new ContentValues();
                values.put(MediaStore.Images.Media.DISPLAY_NAME, fileName);
                values.put(MediaStore.Images.Media.MIME_TYPE, "image/jpeg");
                values.put(MediaStore.Images.Media.RELATIVE_PATH, relativeFolder(sourceBase, personNo));
                values.put(MediaStore.Images.Media.IS_PENDING, 1);
                Uri out = context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, values);
                if (out == null) return false;
                boolean success;
                try (OutputStream os = context.getContentResolver().openOutputStream(out, "w")) {
                    success = os != null && bitmap.compress(Bitmap.CompressFormat.JPEG, 98, os);
                }
                if (!success) {
                    context.getContentResolver().delete(out, null, null);
                    return false;
                }
                values.clear();
                values.put(MediaStore.Images.Media.IS_PENDING, 0);
                context.getContentResolver().update(out, values, null, null);
                return true;
            }

            File dir = legacyFolder(sourceBase, personNo);
            if (!dir.exists() && !dir.mkdirs()) return false;
            File out = new File(dir, fileName);
            try (FileOutputStream fos = new FileOutputStream(out)) {
                if (!bitmap.compress(Bitmap.CompressFormat.JPEG, 98, fos)) return false;
            }
            scan(out, "image/jpeg");
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    private boolean copySource(Uri sourceUri, String sourceBase, String sourceFileName, String sourceMime, int personNo) {
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                ContentValues values = new ContentValues();
                values.put(MediaStore.Images.Media.DISPLAY_NAME, sourceFileName);
                values.put(MediaStore.Images.Media.MIME_TYPE, sourceMime);
                values.put(MediaStore.Images.Media.RELATIVE_PATH, relativeFolder(sourceBase, personNo));
                values.put(MediaStore.Images.Media.IS_PENDING, 1);
                Uri out = context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, values);
                if (out == null) return false;
                boolean success = copyUri(sourceUri, out);
                if (!success) {
                    context.getContentResolver().delete(out, null, null);
                    return false;
                }
                values.clear();
                values.put(MediaStore.Images.Media.IS_PENDING, 0);
                context.getContentResolver().update(out, values, null, null);
                return true;
            }

            File dir = legacyFolder(sourceBase, personNo);
            if (!dir.exists() && !dir.mkdirs()) return false;
            File out = new File(dir, sourceFileName);
            try (InputStream in = context.getContentResolver().openInputStream(sourceUri);
                 FileOutputStream fos = new FileOutputStream(out)) {
                if (in == null) return false;
                byte[] buffer = new byte[64 * 1024];
                int n;
                while ((n = in.read(buffer)) >= 0) fos.write(buffer, 0, n);
            }
            scan(out, sourceMime);
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    private boolean copyUri(Uri source, Uri destination) {
        try (InputStream in = context.getContentResolver().openInputStream(source);
             OutputStream out = context.getContentResolver().openOutputStream(destination, "w")) {
            if (in == null || out == null) return false;
            byte[] buffer = new byte[64 * 1024];
            int n;
            while ((n = in.read(buffer)) >= 0) out.write(buffer, 0, n);
            out.flush();
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    private File legacyFolder(String sourceBase, int personNo) {
        return new File(
                Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES),
                "Screenshot/" + OutputLayout.personFolder(sourceBase, personNo));
    }

    private void scan(File file, String mime) {
        android.media.MediaScannerConnection.scanFile(
                context,
                new String[]{file.getAbsolutePath()},
                new String[]{mime},
                null);
    }

    private static final class DetectionBitmap {
        final Bitmap bitmap;
        final int sourceWidth;
        final int sourceHeight;

        DetectionBitmap(Bitmap bitmap, int sourceWidth, int sourceHeight) {
            this.bitmap = bitmap;
            this.sourceWidth = sourceWidth;
            this.sourceHeight = sourceHeight;
        }
    }

    @Override
    public void close() {
        try {
            personDetector.close();
        } catch (Throwable ignored) {}
    }
}
