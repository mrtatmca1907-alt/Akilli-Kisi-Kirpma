package com.atmaca.batch50;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.util.Size;

import org.tensorflow.lite.support.image.TensorImage;
import org.tensorflow.lite.support.label.Category;
import org.tensorflow.lite.task.vision.detector.Detection;
import org.tensorflow.lite.task.vision.detector.ObjectDetector;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

final class BatchCropEngine implements AutoCloseable {
    private static final float PERSON_SCORE = 0.20f;
    private static final int DETECT_MAX = 1440;
    private final ObjectDetector detector;

    BatchCropEngine(Context context) throws Exception {
        ObjectDetector.ObjectDetectorOptions options = ObjectDetector.ObjectDetectorOptions.builder().setMaxResults(100).setScoreThreshold(PERSON_SCORE).build();
        detector = ObjectDetector.createFromFileAndOptions(context.getApplicationContext(), "efficientdet-lite0.tflite", options);
    }

    int cropPeople(File source, File outDir) {
        Bitmap detect = null, original = null;
        int saved = 0;
        try {
            detect = decode(source, true);
            if (detect == null) return 0;
            List<RectF> boxes = people(detect);
            if (boxes.isEmpty()) boxes = rotatedFallback(detect, 90);
            if (boxes.isEmpty()) boxes = rotatedFallback(detect, 270);
            if (boxes.isEmpty()) return 0;
            original = decode(source, false);
            if (original == null) return 0;
            String base = safeBase(source.getName());
            int no = 0;
            for (RectF box : boxes) {
                no++;
                Rect r = expanded(box, detect.getWidth(), detect.getHeight(), original.getWidth(), original.getHeight());
                if (r.width() < 2 || r.height() < 2) continue;
                Bitmap crop = null;
                try {
                    crop = Bitmap.createBitmap(original, r.left, r.top, r.width(), r.height());
                    File out = unique(outDir, base + "_kisi_" + no + ".jpg");
                    try (FileOutputStream fos = new FileOutputStream(out)) {
                        if (crop.compress(Bitmap.CompressFormat.JPEG, 95, fos)) saved++;
                    }
                } catch (Throwable ignored) {
                } finally {
                    if (crop != null && crop != original && !crop.isRecycled()) crop.recycle();
                }
            }
        } catch (Throwable ignored) {
        } finally {
            if (detect != null && !detect.isRecycled()) detect.recycle();
            if (original != null && !original.isRecycled()) original.recycle();
        }
        return saved;
    }

    private Bitmap decode(File file, boolean detection) throws Exception {
        if (Build.VERSION.SDK_INT >= 28) {
            ImageDecoder.Source src = ImageDecoder.createSource(file);
            return ImageDecoder.decodeBitmap(src, (decoder, info, source) -> {
                decoder.setAllocator(ImageDecoder.ALLOCATOR_SOFTWARE);
                if (detection) {
                    Size s = info.getSize();
                    int max = Math.max(s.getWidth(), s.getHeight());
                    if (max > DETECT_MAX) {
                        float scale = (float) DETECT_MAX / max;
                        decoder.setTargetSize(Math.max(1, Math.round(s.getWidth() * scale)), Math.max(1, Math.round(s.getHeight() * scale)));
                    }
                }
            });
        }
        return android.graphics.BitmapFactory.decodeFile(file.getAbsolutePath());
    }

    private List<RectF> people(Bitmap bitmap) {
        ArrayList<RectF> out = new ArrayList<>();
        for (Detection d : detector.detect(TensorImage.fromBitmap(bitmap))) if (isPerson(d)) out.add(new RectF(d.getBoundingBox()));
        return out;
    }

    private List<RectF> rotatedFallback(Bitmap source, int degrees) {
        ArrayList<RectF> out = new ArrayList<>(); Bitmap rotated = null;
        try {
            Matrix m = new Matrix(); m.postRotate(degrees);
            rotated = Bitmap.createBitmap(source, 0, 0, source.getWidth(), source.getHeight(), m, false);
            for (Detection d : detector.detect(TensorImage.fromBitmap(rotated))) {
                if (!isPerson(d)) continue;
                RectF b = d.getBoundingBox(); float l,t,r,bt;
                if (degrees == 90) { l=b.top; t=source.getHeight()-b.right; r=b.bottom; bt=source.getHeight()-b.left; }
                else { l=source.getWidth()-b.bottom; t=b.left; r=source.getWidth()-b.top; bt=b.right; }
                out.add(new RectF(clamp(l,0,source.getWidth()), clamp(t,0,source.getHeight()), clamp(r,0,source.getWidth()), clamp(bt,0,source.getHeight())));
            }
        } catch (Throwable ignored) {
        } finally { if (rotated != null && rotated != source && !rotated.isRecycled()) rotated.recycle(); }
        return out;
    }

    private boolean isPerson(Detection d) {
        for (Category c : d.getCategories()) if ("person".equalsIgnoreCase(c.getLabel()) && c.getScore() >= PERSON_SCORE) return true;
        return false;
    }

    static Rect expanded(RectF d, int dw, int dh, int ow, int oh) {
        float sx=(float)ow/dw, sy=(float)oh/dh;
        float left=d.left*sx, top=d.top*sy, right=d.right*sx, bottom=d.bottom*sy;
        float w=right-left, h=bottom-top, cx=(left+right)/2f;
        left=cx-w*0.68f; right=cx+w*0.68f; top-=h*0.16f; bottom+=h*0.12f;
        int l=Math.max(0,Math.round(left)), t=Math.max(0,Math.round(top));
        int r=Math.min(ow,Math.round(right)), b=Math.min(oh,Math.round(bottom));
        return new Rect(l,t,Math.max(l+1,r),Math.max(t+1,b));
    }

    private static float clamp(float v,float min,float max){return Math.max(min,Math.min(max,v));}
    private static String safeBase(String name){int d=name.lastIndexOf('.');if(d>0)name=name.substring(0,d);return name.replaceAll("[\\/:*?\"<>|]","_");}
    static File unique(File dir,String name){File f=new File(dir,name);if(!f.exists())return f;int d=name.lastIndexOf('.');String b=d>0?name.substring(0,d):name,e=d>0?name.substring(d):"";for(int i=1;i<10000;i++){f=new File(dir,b+" ("+i+")"+e);if(!f.exists())return f;}return new File(dir,b+"_"+System.currentTimeMillis()+e);}
    @Override public void close(){try{detector.close();}catch(Throwable ignored){}}
}
