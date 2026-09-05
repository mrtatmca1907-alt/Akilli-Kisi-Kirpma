package com.akillikisikirpma;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.Rect;
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
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

final class PersonCropEngine implements AutoCloseable {
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
                .setMaxResults(50)
                .setScoreThreshold(0.30f)
                .build();
        detector = ObjectDetector.createFromFileAndOptions(this.context, "efficientdet-lite0.tflite", options);
    }

    ProcessResult process(Uri uri, long mediaId, String displayName, String mimeType) {
        ProcessResult result = new ProcessResult();
        String sourceBase = safeBase(displayName);
        String folder = sourceBase + "_" + mediaId;

        result.originalSaved = copyOriginal(uri, folder, displayName, mimeType);
        if (!result.originalSaved) {
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

            List<Detection> people = new ArrayList<>();
            for (Detection d : detector.detect(TensorImage.fromBitmap(detectBitmap))) {
                if (isPerson(d)) people.add(d);
            }
            result.detected = people.size();
            if (people.isEmpty()) return result;

            original = decodeOriginal(uri);
            if (original == null) {
                result.failed++;
                return result;
            }

            int personNo = 0;
            for (Detection d : people) {
                personNo++;
                Rect r = CropMath.toOriginalExpanded(
                        d.getBoundingBox(),
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
                    if (saveCrop(crop, folder, sourceBase, personNo)) result.saved++;
                    else result.failed++;
                } catch (Throwable t) {
                    result.failed++;
                } finally {
                    if (crop != null && crop != original && !crop.isRecycled()) crop.recycle();
                }
            }
        } catch (Throwable t) {
            result.failed++;
        } finally {
            if (detectBitmap != null && !detectBitmap.isRecycled()) detectBitmap.recycle();
            if (original != null && !original.isRecycled()) original.recycle();
        }
        return result;
    }

    private boolean isPerson(Detection detection) {
        for (Category c : detection.getCategories()) {
            String label = c.getLabel();
            if (label != null && "person".equalsIgnoreCase(label) && c.getScore() >= 0.30f) return true;
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
                if (max > 1600) {
                    float scale = 1600f / max;
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

    private boolean copyOriginal(Uri source, String folder, String displayName, String mimeType) {
        String name = (displayName == null || displayName.trim().isEmpty()) ? "orijinal.jpg" : displayName;
        String mime = (mimeType == null || mimeType.trim().isEmpty()) ? "image/jpeg" : mimeType;
        try {
            if (Build.VERSION.SDK_INT >= 29) {
                ContentValues v = new ContentValues();
                v.put(MediaStore.Images.Media.DISPLAY_NAME, name);
                v.put(MediaStore.Images.Media.MIME_TYPE, mime);
                v.put(MediaStore.Images.Media.RELATIVE_PATH, Environment.DIRECTORY_PICTURES + "/AkilliKisiKirpma/" + folder);
                v.put(MediaStore.Images.Media.IS_PENDING, 1);
                Uri out = context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, v);
                if (out == null) return false;
                boolean ok = false;
                try (InputStream in = context.getContentResolver().openInputStream(source);
                     OutputStream os = context.getContentResolver().openOutputStream(out)) {
                    if (in == null || os == null) throw new IllegalStateException("stream yok");
                    byte[] buf = new byte[1024 * 1024];
                    int n;
                    while ((n = in.read(buf)) >= 0) os.write(buf, 0, n);
                    ok = true;
                } finally {
                    if (!ok) context.getContentResolver().delete(out, null, null);
                }
                v.clear();
                v.put(MediaStore.Images.Media.IS_PENDING, 0);
                context.getContentResolver().update(out, v, null, null);
                return true;
            }

            File dir = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "AkilliKisiKirpma/" + folder);
            if (!dir.exists() && !dir.mkdirs()) return false;
            File out = new File(dir, name);
            try (InputStream in = context.getContentResolver().openInputStream(source); FileOutputStream os = new FileOutputStream(out)) {
                if (in == null) return false;
                byte[] buf = new byte[1024 * 1024];
                int n;
                while ((n = in.read(buf)) >= 0) os.write(buf, 0, n);
            }
            android.media.MediaScannerConnection.scanFile(context, new String[]{out.getAbsolutePath()}, new String[]{mime}, null);
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    private boolean saveCrop(Bitmap bitmap, String folder, String sourceBase, int personNo) {
        String fileName = sourceBase + "_kisi_" + personNo + ".jpg";
        try {
            if (Build.VERSION.SDK_INT >= 29) {
                ContentValues v = new ContentValues();
                v.put(MediaStore.Images.Media.DISPLAY_NAME, fileName);
                v.put(MediaStore.Images.Media.MIME_TYPE, "image/jpeg");
                v.put(MediaStore.Images.Media.RELATIVE_PATH, Environment.DIRECTORY_PICTURES + "/AkilliKisiKirpma/" + folder);
                v.put(MediaStore.Images.Media.IS_PENDING, 1);
                Uri out = context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, v);
                if (out == null) return false;
                try (OutputStream os = context.getContentResolver().openOutputStream(out)) {
                    if (os == null || !bitmap.compress(Bitmap.CompressFormat.JPEG, 100, os)) {
                        context.getContentResolver().delete(out, null, null);
                        return false;
                    }
                }
                v.clear();
                v.put(MediaStore.Images.Media.IS_PENDING, 0);
                context.getContentResolver().update(out, v, null, null);
                return true;
            }

            File dir = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "AkilliKisiKirpma/" + folder);
            if (!dir.exists() && !dir.mkdirs()) return false;
            File out = new File(dir, fileName);
            try (FileOutputStream fos = new FileOutputStream(out)) {
                if (!bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fos)) return false;
            }
            android.media.MediaScannerConnection.scanFile(context, new String[]{out.getAbsolutePath()}, new String[]{"image/jpeg"}, null);
            return true;
        } catch (Throwable t) {
            return false;
        }
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
