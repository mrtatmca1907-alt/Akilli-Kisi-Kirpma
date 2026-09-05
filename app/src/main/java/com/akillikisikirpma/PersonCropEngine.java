package com.akillikisikirpma;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.util.Size;

import org.tensorflow.lite.support.image.TensorImage;
import org.tensorflow.lite.support.label.Category;
import org.tensorflow.lite.task.vision.detector.Detection;
import org.tensorflow.lite.task.vision.detector.ObjectDetector;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

final class PersonCropEngine implements AutoCloseable {
    private static final float PERSON_SCORE = 0.20f;
    private static final int TURBO_DETECT_MAX = 1440;

    static final class ProcessResult {
        int detected;
        int saved;
        int failed;
        boolean originalSaved;
    }

    private final Context context;
    private final ObjectDetector detector;

    PersonCropEngine(Context context) throws Exception {
        this.context = context.getApplicationContext();
        ObjectDetector.ObjectDetectorOptions options = ObjectDetector.ObjectDetectorOptions.builder()
                .setMaxResults(100)
                .setScoreThreshold(PERSON_SCORE)
                .build();
        detector = ObjectDetector.createFromFileAndOptions(this.context, "efficientdet-lite0.tflite", options);
    }

    ProcessResult process(Uri uri, long mediaId, String displayName, String mimeType) {
        ProcessResult result = new ProcessResult();
        String sourceBase = safeBase(displayName);
        String folder = sourceBase + "_" + mediaId;
        File outputDir = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "AkilliKisiKirpma/" + folder);
        if (!outputDir.exists() && !outputDir.mkdirs()) {
            result.failed++;
            return result;
        }

        Bitmap detectBitmap = null;
        Bitmap original = null;
        try {
            detectBitmap = decodeForDetection(uri);
            if (detectBitmap == null) {
                result.failed++;
                return result;
            }

            List<RectF> people = detectPeopleBoxes(detectBitmap);
            if (people.isEmpty()) people = detectPeopleRotatedFallback(detectBitmap, 90);
            if (people.isEmpty()) people = detectPeopleRotatedFallback(detectBitmap, 270);
            result.detected = people.size();

            if (!people.isEmpty()) {
                original = decodeOriginal(uri);
                if (original == null) {
                    result.failed++;
                } else {
                    int personNo = 0;
                    for (RectF detected : people) {
                        personNo++;
                        Rect r = CropMath.toOriginalExpanded(
                                detected,
                                detectBitmap.getWidth(), detectBitmap.getHeight(),
                                original.getWidth(), original.getHeight()
                        );
                        if (r.width() < 2 || r.height() < 2) {
                            result.failed++;
                            continue;
                        }
                        Bitmap crop = null;
                        try {
                            crop = Bitmap.createBitmap(original, r.left, r.top, r.width(), r.height());
                            if (saveCropDirect(crop, outputDir, sourceBase, personNo)) result.saved++;
                            else result.failed++;
                        } catch (Throwable t) {
                            result.failed++;
                        } finally {
                            if (crop != null && crop != original && !crop.isRecycled()) crop.recycle();
                        }
                    }
                }
            }

            // Bütün okuma/kırpma bittikten sonra büyük orijinali KOPYALAMADAN hedefe taşı.
            result.originalSaved = moveOriginalDirect(uri, outputDir, displayName);
            if (!result.originalSaved) result.failed++;
        } catch (Throwable t) {
            result.failed++;
        } finally {
            if (detectBitmap != null && !detectBitmap.isRecycled()) detectBitmap.recycle();
            if (original != null && !original.isRecycled()) original.recycle();
        }
        return result;
    }

    private boolean moveOriginalDirect(Uri uri, File outputDir, String displayName) {
        if (!"file".equalsIgnoreCase(uri.getScheme()) || uri.getPath() == null) return false;
        File source = new File(uri.getPath());
        if (!source.isFile()) return false;
        String name = (displayName == null || displayName.trim().isEmpty()) ? source.getName() : displayName;
        File out = new File(outputDir, name);

        if (out.isFile()) {
            if (out.length() == source.length() && source.length() > 0) return source.delete();
            out = uniqueFile(outputDir, name);
        }
        return source.renameTo(out);
    }

    private File uniqueFile(File dir, String name) {
        String base = name;
        String ext = "";
        int dot = name.lastIndexOf('.');
        if (dot > 0) { base = name.substring(0, dot); ext = name.substring(dot); }
        for (int i = 1; i < 1000000; i++) {
            File f = new File(dir, base + " (" + i + ")" + ext);
            if (!f.exists()) return f;
        }
        return new File(dir, base + "_" + System.currentTimeMillis() + ext);
    }

    private boolean saveCropDirect(Bitmap bitmap, File dir, String sourceBase, int personNo) {
        File out = new File(dir, sourceBase + "_kisi_" + personNo + ".jpg");
        if (out.isFile() && out.length() > 0) return true;
        try (FileOutputStream fos = new FileOutputStream(out)) {
            return bitmap.compress(Bitmap.CompressFormat.JPEG, 96, fos);
        } catch (Throwable t) {
            try { out.delete(); } catch (Throwable ignored) {}
            return false;
        }
    }

    private List<RectF> detectPeopleBoxes(Bitmap bitmap) {
        List<RectF> out = new ArrayList<>();
        for (Detection d : detector.detect(TensorImage.fromBitmap(bitmap))) {
            if (isPerson(d)) out.add(new RectF(d.getBoundingBox()));
        }
        return out;
    }

    private List<RectF> detectPeopleRotatedFallback(Bitmap source, int degrees) {
        List<RectF> out = new ArrayList<>();
        Bitmap rotated = null;
        try {
            Matrix m = new Matrix();
            m.postRotate(degrees);
            rotated = Bitmap.createBitmap(source, 0, 0, source.getWidth(), source.getHeight(), m, false);
            for (Detection d : detector.detect(TensorImage.fromBitmap(rotated))) {
                if (!isPerson(d)) continue;
                RectF b = d.getBoundingBox();
                float[] mapped = degrees == 90
                        ? RotationBoxMath.fromRotated90(b.left, b.top, b.right, b.bottom, source.getWidth(), source.getHeight())
                        : RotationBoxMath.fromRotated270(b.left, b.top, b.right, b.bottom, source.getWidth(), source.getHeight());
                out.add(new RectF(
                        clamp(mapped[0], 0, source.getWidth()),
                        clamp(mapped[1], 0, source.getHeight()),
                        clamp(mapped[2], 0, source.getWidth()),
                        clamp(mapped[3], 0, source.getHeight())
                ));
            }
        } catch (Throwable ignored) {
        } finally {
            if (rotated != null && rotated != source && !rotated.isRecycled()) rotated.recycle();
        }
        return out;
    }

    private float clamp(float v, float min, float max) { return Math.max(min, Math.min(max, v)); }

    private boolean isPerson(Detection detection) {
        for (Category c : detection.getCategories()) {
            String label = c.getLabel();
            if (label != null && "person".equalsIgnoreCase(label) && c.getScore() >= PERSON_SCORE) return true;
        }
        return false;
    }

    private Bitmap decodeForDetection(Uri uri) throws Exception {
        ContentResolver resolver = context.getContentResolver();
        if (Build.VERSION.SDK_INT >= 28) {
            ImageDecoder.Source source = ImageDecoder.createSource(resolver, uri);
            return ImageDecoder.decodeBitmap(source, (decoder, info, src) -> {
                decoder.setAllocator(ImageDecoder.ALLOCATOR_SOFTWARE);
                Size s = info.getSize();
                int max = Math.max(s.getWidth(), s.getHeight());
                if (max > TURBO_DETECT_MAX) {
                    float scale = (float) TURBO_DETECT_MAX / max;
                    decoder.setTargetSize(Math.max(1, Math.round(s.getWidth() * scale)), Math.max(1, Math.round(s.getHeight() * scale)));
                }
            });
        }
        return MediaStore.Images.Media.getBitmap(resolver, uri);
    }

    private Bitmap decodeOriginal(Uri uri) throws Exception {
        ContentResolver resolver = context.getContentResolver();
        if (Build.VERSION.SDK_INT >= 28) {
            ImageDecoder.Source source = ImageDecoder.createSource(resolver, uri);
            return ImageDecoder.decodeBitmap(source, (decoder, info, src) -> decoder.setAllocator(ImageDecoder.ALLOCATOR_SOFTWARE));
        }
        return MediaStore.Images.Media.getBitmap(resolver, uri);
    }

    private String safeBase(String name) {
        if (name == null || name.trim().isEmpty()) name = "fotograf";
        int dot = name.lastIndexOf('.');
        if (dot > 0) name = name.substring(0, dot);
        name = name.replaceAll("[\\/:*?\"<>|]", "_").trim();
        return name.isEmpty() ? "fotograf" : name;
    }

    @Override public void close() {
        try { detector.close(); } catch (Throwable ignored) {}
    }
}
