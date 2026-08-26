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

import com.google.android.gms.tasks.Tasks;
import com.google.mlkit.vision.common.InputImage;
import com.google.mlkit.vision.face.Face;
import com.google.mlkit.vision.face.FaceDetection;
import com.google.mlkit.vision.face.FaceDetector;
import com.google.mlkit.vision.face.FaceDetectorOptions;

import org.tensorflow.lite.support.image.TensorImage;
import org.tensorflow.lite.support.label.Category;
import org.tensorflow.lite.task.vision.detector.Detection;
import org.tensorflow.lite.task.vision.detector.ObjectDetector;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

final class PersonCropEngine implements AutoCloseable {
    static final class ProcessResult {
        int detected;
        int saved;
        int blocked;
        int failed;
    }

    private final Context context;
    private final ObjectDetector personDetector;
    private final FaceDetector faceDetector;
    private final AgeClassifier ageClassifier;

    PersonCropEngine(Context context) throws Exception {
        this.context = context.getApplicationContext();
        ObjectDetector.ObjectDetectorOptions options = ObjectDetector.ObjectDetectorOptions.builder()
                .setMaxResults(20)
                .setScoreThreshold(0.35f)
                .build();
        personDetector = ObjectDetector.createFromFileAndOptions(
                this.context,
                "efficientdet-lite0.tflite",
                options
        );

        FaceDetectorOptions faceOptions = new FaceDetectorOptions.Builder()
                .setPerformanceMode(FaceDetectorOptions.PERFORMANCE_MODE_ACCURATE)
                .setMinFaceSize(0.08f)
                .build();
        faceDetector = FaceDetection.getClient(faceOptions);
        ageClassifier = new AgeClassifier(this.context);
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
            int personNo = 0;
            for (Detection detection : detections) {
                if (!isPerson(detection)) continue;
                result.detected++;
                personNo++;

                Rect cropRect = expandedRect(detection.getBoundingBox(), bitmap.getWidth(), bitmap.getHeight());
                if (cropRect.width() < 80 || cropRect.height() < 120) {
                    result.blocked++;
                    continue;
                }

                Bitmap person = Bitmap.createBitmap(bitmap, cropRect.left, cropRect.top, cropRect.width(), cropRect.height());
                boolean allow = passesAdultGate(person);
                if (!allow) {
                    result.blocked++;
                    person.recycle();
                    continue;
                }

                String sourceBase = sourceBaseName(uri);
                if (saveBitmap(person, sourceBase, personNo)) result.saved++;
                else result.failed++;
                person.recycle();
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
            if (label != null && label.equalsIgnoreCase("person") && c.getScore() >= 0.35f) return true;
        }
        return false;
    }

    private Rect expandedRect(RectF box, int width, int height) {
        float bw = box.width();
        float bh = box.height();
        int left = Math.max(0, Math.round(box.left - bw * 0.18f));
        int right = Math.min(width, Math.round(box.right + bw * 0.18f));
        int top = Math.max(0, Math.round(box.top - bh * 0.12f));
        int bottom = Math.min(height, Math.round(box.bottom + bh * 0.16f));
        return new Rect(left, top, right, bottom);
    }

    private boolean passesAdultGate(Bitmap person) {
        try {
            List<Face> faces = Tasks.await(
                    faceDetector.process(InputImage.fromBitmap(person, 0)),
                    25,
                    TimeUnit.SECONDS
            );
            if (faces == null || faces.isEmpty()) return false;

            Face largest = Collections.max(faces, Comparator.comparingInt(f -> f.getBoundingBox().width() * f.getBoundingBox().height()));
            Rect faceBox = largest.getBoundingBox();
            if (faceBox.width() < 48 || faceBox.height() < 48) return false;

            int padX = Math.round(faceBox.width() * 0.25f);
            int padY = Math.round(faceBox.height() * 0.25f);
            int l = Math.max(0, faceBox.left - padX);
            int t = Math.max(0, faceBox.top - padY);
            int r = Math.min(person.getWidth(), faceBox.right + padX);
            int b = Math.min(person.getHeight(), faceBox.bottom + padY);
            if (r <= l || b <= t) return false;

            Bitmap face = Bitmap.createBitmap(person, l, t, r - l, b - t);
            AgeClassifier.Result age = ageClassifier.classify(face);
            face.recycle();
            return age.adult;
        } catch (Throwable t) {
            return false;
        }
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
        try (android.database.Cursor c = context.getContentResolver().query(uri, new String[]{OpenableColumns.DISPLAY_NAME}, null, null, null)) {
            if (c != null && c.moveToFirst()) name = c.getString(0);
        } catch (Exception ignored) {}
        if (name == null || name.trim().isEmpty()) name = "fotograf";
        int dot = name.lastIndexOf('.');
        if (dot > 0) name = name.substring(0, dot);
        return name.replaceAll("[\\/:*?\"<>|]", "_").trim();
    }

    private boolean saveBitmap(Bitmap bitmap, String sourceBase, int personNo) {
        String fileName = sourceBase + " kisi " + personNo + ".jpg";
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                ContentValues values = new ContentValues();
                values.put(MediaStore.Images.Media.DISPLAY_NAME, fileName);
                values.put(MediaStore.Images.Media.MIME_TYPE, "image/jpeg");
                values.put(MediaStore.Images.Media.RELATIVE_PATH,
                        Environment.DIRECTORY_PICTURES + "/AkilliKisiKirpma/" + sourceBase);
                values.put(MediaStore.Images.Media.IS_PENDING, 1);
                Uri out = context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, values);
                if (out == null) return false;
                try (OutputStream os = context.getContentResolver().openOutputStream(out)) {
                    if (os == null || !bitmap.compress(Bitmap.CompressFormat.JPEG, 94, os)) return false;
                }
                values.clear();
                values.put(MediaStore.Images.Media.IS_PENDING, 0);
                context.getContentResolver().update(out, values, null, null);
                return true;
            }

            File dir = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES),
                    "AkilliKisiKirpma/" + sourceBase);
            if (!dir.exists() && !dir.mkdirs()) return false;
            File out = new File(dir, fileName);
            try (FileOutputStream fos = new FileOutputStream(out)) {
                if (!bitmap.compress(Bitmap.CompressFormat.JPEG, 94, fos)) return false;
            }
            android.media.MediaScannerConnection.scanFile(context, new String[]{out.getAbsolutePath()}, new String[]{"image/jpeg"}, null);
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    @Override public void close() {
        try { personDetector.close(); } catch (Throwable ignored) {}
        try { faceDetector.close(); } catch (Throwable ignored) {}
        try { ageClassifier.close(); } catch (Throwable ignored) {}
    }
}
