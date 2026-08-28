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

    private static final float PERSON_THRESHOLD = 0.58f;
    private static final float MIN_AREA_RATIO = 0.012f;
    private static final float MIN_SHARPNESS = 42f;
    private static final float MIN_ASPECT = 0.22f;
    private static final float MAX_ASPECT = 1.25f;

    private final Context context;
    private final ObjectDetector personDetector;

    PersonCropEngine(Context context) throws Exception {
        this.context = context.getApplicationContext();
        BaseOptions base = BaseOptions.builder().setNumThreads(4).build();
        ObjectDetector.ObjectDetectorOptions options = ObjectDetector.ObjectDetectorOptions.builder()
                .setBaseOptions(base)
                .setMaxResults(30)
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
        Bitmap bitmap = null;
        try {
            bitmap = decodeBitmap(uri);
            if (bitmap == null) {
                result.failed++;
                return result;
            }

            List<Detection> detections = personDetector.detect(TensorImage.fromBitmap(bitmap));
            List<Detection> people = new ArrayList<>();
            for (Detection detection : detections) {
                if (isPerson(detection) && isSensiblePersonBox(detection.getBoundingBox(), bitmap.getWidth(), bitmap.getHeight())) {
                    people.add(detection);
                }
            }

            people.sort(Comparator
                    .comparingDouble((Detection d) -> d.getBoundingBox().top)
                    .thenComparingDouble(d -> d.getBoundingBox().left));

            String sourceBase = sourceBaseName(uri);
            int personNo = 0;
            for (Detection detection : people) {
                result.detected++;
                Rect cropRect = expandedRect(detection.getBoundingBox(), bitmap.getWidth(), bitmap.getHeight());
                if (!isSensibleCrop(cropRect, bitmap.getWidth(), bitmap.getHeight())) {
                    result.skipped++;
                    continue;
                }

                Bitmap person = Bitmap.createBitmap(bitmap, cropRect.left, cropRect.top, cropRect.width(), cropRect.height());
                try {
                    if (sharpness(person) < MIN_SHARPNESS) {
                        result.skipped++;
                        continue;
                    }
                    personNo++;
                    if (saveBitmap(person, sourceBase, personNo)) result.saved++;
                    else result.failed++;
                } finally {
                    person.recycle();
                }
            }
        } catch (Throwable t) {
            result.failed++;
        } finally {
            if (bitmap != null && !bitmap.isRecycled()) bitmap.recycle();
        }
        return result;
    }

    private boolean isPerson(Detection detection) {
        for (Category c : detection.getCategories()) {
            String label = c.getLabel();
            if (label != null && label.equalsIgnoreCase("person") && c.getScore() >= PERSON_THRESHOLD) return true;
        }
        return false;
    }

    private boolean isSensiblePersonBox(RectF box, int width, int height) {
        float bw = Math.max(1f, box.width());
        float bh = Math.max(1f, box.height());
        float aspect = bw / bh;
        float areaRatio = (bw * bh) / Math.max(1f, (float) width * height);
        if (areaRatio < MIN_AREA_RATIO) return false;
        if (aspect < MIN_ASPECT || aspect > MAX_ASPECT) return false;
        if (bw < 48f || bh < 96f) return false;
        return true;
    }

    private boolean isSensibleCrop(Rect crop, int imageWidth, int imageHeight) {
        if (crop.width() < 64 || crop.height() < 120) return false;
        float ratio = crop.width() / (float) crop.height();
        if (ratio < 0.20f || ratio > 1.35f) return false;
        float areaRatio = (crop.width() * crop.height()) / Math.max(1f, (float) imageWidth * imageHeight);
        return areaRatio >= 0.015f;
    }

    private float sharpness(Bitmap bitmap) {
        int targetW = Math.min(256, bitmap.getWidth());
        int targetH = Math.min(256, bitmap.getHeight());
        if (targetW < 3 || targetH < 3) return 0f;

        Bitmap sample = bitmap;
        boolean scaled = bitmap.getWidth() != targetW || bitmap.getHeight() != targetH;
        if (scaled) sample = Bitmap.createScaledBitmap(bitmap, targetW, targetH, true);

        try {
            int[] pixels = new int[targetW * targetH];
            sample.getPixels(pixels, 0, targetW, 0, 0, targetW, targetH);
            double sum = 0;
            double sumSq = 0;
            int count = 0;
            for (int y = 1; y < targetH - 1; y++) {
                int row = y * targetW;
                for (int x = 1; x < targetW - 1; x++) {
                    int i = row + x;
                    int c = gray(pixels[i]);
                    int lap = (gray(pixels[i - 1]) + gray(pixels[i + 1]) + gray(pixels[i - targetW]) + gray(pixels[i + targetW])) - (4 * c);
                    sum += lap;
                    sumSq += (double) lap * lap;
                    count++;
                }
            }
            if (count == 0) return 0f;
            double mean = sum / count;
            return (float) Math.max(0, (sumSq / count) - (mean * mean));
        } finally {
            if (scaled && sample != bitmap && !sample.isRecycled()) sample.recycle();
        }
    }

    private int gray(int color) {
        int r = (color >> 16) & 0xFF;
        int g = (color >> 8) & 0xFF;
        int b = color & 0xFF;
        return (r * 299 + g * 587 + b * 114) / 1000;
    }

    private Rect expandedRect(RectF box, int width, int height) {
        float bw = Math.max(1f, box.width());
        float bh = Math.max(1f, box.height());
        int left = Math.max(0, Math.round(box.left - bw * 0.12f));
        int right = Math.min(width, Math.round(box.right + bw * 0.12f));
        int top = Math.max(0, Math.round(box.top - bh * 0.10f));
        int bottom = Math.min(height, Math.round(box.bottom + bh * 0.14f));
        if (right <= left) right = Math.min(width, left + 1);
        if (bottom <= top) bottom = Math.min(height, top + 1);
        return new Rect(left, top, right, bottom);
    }

    private Bitmap decodeBitmap(Uri uri) throws Exception {
        ContentResolver resolver = context.getContentResolver();
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
            ImageDecoder.Source source = ImageDecoder.createSource(resolver, uri);
            return ImageDecoder.decodeBitmap(source, (decoder, info, src) -> {
                decoder.setAllocator(ImageDecoder.ALLOCATOR_SOFTWARE);
                Size size = info.getSize();
                int w = size.getWidth();
                int h = size.getHeight();
                int max = Math.max(w, h);
                if (max > 4096) {
                    float scale = 4096f / max;
                    decoder.setTargetSize(Math.max(1, Math.round(w * scale)), Math.max(1, Math.round(h * scale)));
                }
            });
        }
        return MediaStore.Images.Media.getBitmap(resolver, uri);
    }

    private String sourceBaseName(Uri uri) {
        String name = null;
        try (android.database.Cursor c = context.getContentResolver().query(
                uri,
                new String[]{OpenableColumns.DISPLAY_NAME},
                null,
                null,
                null
        )) {
            if (c != null && c.moveToFirst()) name = c.getString(0);
        } catch (Exception ignored) {}
        if (name == null || name.trim().isEmpty()) name = "fotograf";
        int dot = name.lastIndexOf('.');
        if (dot > 0) name = name.substring(0, dot);
        name = name.replaceAll("[\\/:*?\"<>|]", "_").trim();
        return name.isEmpty() ? "fotograf" : name;
    }

    private boolean saveBitmap(Bitmap bitmap, String sourceBase, int personNo) {
        String fileName = sourceBase + " kisi " + personNo + ".jpg";
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                ContentValues values = new ContentValues();
                values.put(MediaStore.Images.Media.DISPLAY_NAME, fileName);
                values.put(MediaStore.Images.Media.MIME_TYPE, "image/jpeg");
                values.put(
                        MediaStore.Images.Media.RELATIVE_PATH,
                        Environment.DIRECTORY_PICTURES + "/Screenshot/" + sourceBase
                );
                values.put(MediaStore.Images.Media.IS_PENDING, 1);
                Uri out = context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, values);
                if (out == null) return false;
                boolean success = false;
                try (OutputStream os = context.getContentResolver().openOutputStream(out, "w")) {
                    success = os != null && bitmap.compress(Bitmap.CompressFormat.JPEG, 96, os);
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

            File dir = new File(
                    Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES),
                    "Screenshot/" + sourceBase
            );
            if (!dir.exists() && !dir.mkdirs()) return false;
            File out = new File(dir, fileName);
            try (FileOutputStream fos = new FileOutputStream(out)) {
                if (!bitmap.compress(Bitmap.CompressFormat.JPEG, 96, fos)) return false;
            }
            android.media.MediaScannerConnection.scanFile(
                    context,
                    new String[]{out.getAbsolutePath()},
                    new String[]{"image/jpeg"},
                    null
            );
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    @Override
    public void close() {
        try {
            personDetector.close();
        } catch (Throwable ignored) {}
    }
}
