package com.atmaca.videokisi;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Bundle;
import android.provider.OpenableColumns;
import android.view.Gravity;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.documentfile.provider.DocumentFile;

import org.tensorflow.lite.support.image.TensorImage;
import org.tensorflow.lite.support.label.Category;
import org.tensorflow.lite.task.vision.detector.Detection;
import org.tensorflow.lite.task.vision.detector.ObjectDetector;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

public class MainActivity extends Activity {
    private static final int REQ_SOURCE = 101;
    private static final int REQ_OUTPUT = 102;
    private final ExecutorService executor = Executors.newSingleThreadExecutor();
    private final AtomicBoolean stop = new AtomicBoolean(false);
    private Uri sourceTree;
    private Uri outputTree;
    private TextView sourceText, outputText, status, log;
    private ProgressBar progress;
    private Button sourceBtn, outputBtn, startBtn, stopBtn;

    @Override protected void onCreate(Bundle b) {
        super.onCreate(b);
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        buildUi();
    }

    private void buildUi() {
        int pad = dp(16);
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(pad, pad, pad, pad);
        root.setBackgroundColor(Color.rgb(250,250,250));

        TextView title = new TextView(this);
        title.setText("ATMACA Video Kare + Kişi");
        title.setTextSize(24);
        title.setTextColor(Color.rgb(20,30,90));
        title.setGravity(Gravity.CENTER_HORIZONTAL);
        root.addView(title, new LinearLayout.LayoutParams(-1, -2));

        sourceBtn = button("Kaynak video klasörünü seç");
        outputBtn = button("Çıktı klasörünü seç");
        startBtn = button("BAŞLAT");
        stopBtn = button("DURDUR");
        stopBtn.setEnabled(false);
        sourceText = text("Kaynak: seçilmedi");
        outputText = text("Çıktı: seçilmedi");
        status = text("Hazır");
        log = text("1 saniyede 1 kare • tekrar kareler yalnız kırpmada atlanır");
        progress = new ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal);
        progress.setMax(100);

        root.addView(sourceBtn); root.addView(sourceText);
        root.addView(outputBtn); root.addView(outputText);
        root.addView(startBtn); root.addView(stopBtn);
        root.addView(progress, new LinearLayout.LayoutParams(-1, dp(22)));
        root.addView(status);
        ScrollView scroll = new ScrollView(this); scroll.addView(log);
        root.addView(scroll, new LinearLayout.LayoutParams(-1, 0, 1));
        setContentView(root);

        sourceBtn.setOnClickListener(v -> chooseTree(REQ_SOURCE));
        outputBtn.setOnClickListener(v -> chooseTree(REQ_OUTPUT));
        startBtn.setOnClickListener(v -> startProcessing());
        stopBtn.setOnClickListener(v -> { stop.set(true); status.setText("Durduruluyor…"); });
    }

    private Button button(String s) { Button b = new Button(this); b.setText(s); return b; }
    private TextView text(String s) { TextView t = new TextView(this); t.setText(s); t.setTextSize(16); t.setPadding(0,dp(8),0,dp(8)); return t; }
    private int dp(int v) { return Math.round(v * getResources().getDisplayMetrics().density); }

    private void chooseTree(int req) {
        Intent i = new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE);
        i.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION |
                Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION | Intent.FLAG_GRANT_PREFIX_URI_PERMISSION);
        startActivityForResult(i, req);
    }

    @Override protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode != RESULT_OK || data == null || data.getData() == null) return;
        Uri uri = data.getData();
        try { getContentResolver().takePersistableUriPermission(uri,
                data.getFlags() & (Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION)); }
        catch (Throwable ignored) {}
        if (requestCode == REQ_SOURCE) { sourceTree = uri; sourceText.setText("Kaynak: " + uri); }
        if (requestCode == REQ_OUTPUT) { outputTree = uri; outputText.setText("Çıktı: " + uri); }
    }

    private void startProcessing() {
        if (sourceTree == null || outputTree == null) {
            Toast.makeText(this, "Kaynak ve çıktı klasörünü seç", Toast.LENGTH_SHORT).show(); return;
        }
        stop.set(false); setRunning(true); progress.setProgress(0); log.setText("");
        executor.submit(() -> {
            DocumentFile srcRoot = DocumentFile.fromTreeUri(this, sourceTree);
            DocumentFile outRoot = DocumentFile.fromTreeUri(this, outputTree);
            List<DocumentFile> videos = new ArrayList<>(); collectVideos(srcRoot, videos);
            if (videos.isEmpty()) { ui(() -> { status.setText("Video bulunamadı"); setRunning(false); }); return; }
            int done = 0, frames = 0, crops = 0, errors = 0;
            try (PersonEngine engine = new PersonEngine(this)) {
                for (DocumentFile video : videos) {
                    if (stop.get()) break;
                    try {
                        Result r = processVideo(video, outRoot, engine);
                        frames += r.frames; crops += r.crops;
                        if (!r.completed) break;
                        done++;
                    } catch (Throwable t) {
                        errors++;
                        append("HATA " + safeName(video.getName()) + ": " + shortMsg(t));
                    }
                    final int fd=done, ff=frames, fc=crops, fe=errors;
                    ui(() -> { progress.setProgress((int)(fd * 100f / videos.size())); status.setText(fd + "/" + videos.size() + " video"); log.setText("Kare: "+ff+"\nKırpma: "+fc+"\nHata: "+fe+"\n\n"+log.getText()); });
                }
            } catch (Throwable t) { append("AI motoru açılamadı: " + shortMsg(t)); }
            final int fd=done, ff=frames, fc=crops, fe=errors;
            ui(() -> { if (!stop.get()) progress.setProgress(100); status.setText(stop.get()?"Durduruldu":"Tamamlandı"); log.setText("Video: "+fd+"\nKare: "+ff+"\nKırpma: "+fc+"\nHata: "+fe+"\n\n"+log.getText()); setRunning(false); });
        });
    }

    private Result processVideo(DocumentFile video, DocumentFile outRoot, PersonEngine engine) throws Exception {
        String originalName = safeName(video.getName());
        String stem = stripExt(originalName);
        DocumentFile videoDir = dir(outRoot, stem);
        DocumentFile framesDir = dir(videoDir, "KARELER");
        DocumentFile cropsDir = dir(videoDir, "KIRPILANLAR");
        clearJpgs(framesDir); clearJpgs(cropsDir);

        MediaMetadataRetriever retriever = new MediaMetadataRetriever();
        RepeatFilter repeats = new RepeatFilter();
        int frames = 0, crops = 0;
        try {
            retriever.setDataSource(this, video.getUri());
            long duration = Long.parseLong(retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_DURATION));
            int seconds = Math.max(1, (int)(duration / 1000L));
            for (int i=0; i<seconds; i++) {
                if (stop.get()) return new Result(frames,crops,false);
                Bitmap bmp = retriever.getFrameAtTime(i * 1_000_000L, MediaMetadataRetriever.OPTION_CLOSEST);
                if (bmp == null) throw new IllegalStateException((i+1)+". saniye karesi alınamadı");
                try {
                    String frameName = stem + " " + (i+1) + ".jpg";
                    writeJpeg(framesDir, frameName, bmp, 96); frames++;
                    int[] fp = fingerprint(bmp);
                    if (!repeats.isRepeat(fp)) crops += engine.cropPeople(bmp, cropsDir, stripExt(frameName));
                } finally { bmp.recycle(); }
                final int sec=i+1, total=seconds;
                ui(() -> status.setText(stem + " • " + sec + "/" + total + " sn"));
            }
        } finally { retriever.release(); }
        if (stop.get()) return new Result(frames,crops,false);
        moveVideoAtEnd(video, framesDir, originalName);
        return new Result(frames,crops,true);
    }

    private void collectVideos(DocumentFile f, List<DocumentFile> out) {
        if (f == null || stop.get()) return;
        try {
            if (f.isFile() && isVideo(f)) { out.add(f); return; }
            if (f.isDirectory()) for (DocumentFile c : f.listFiles()) collectVideos(c,out);
        } catch (Throwable ignored) {}
    }

    private boolean isVideo(DocumentFile f) {
        String t=f.getType(), n=f.getName()==null?"":f.getName().toLowerCase(Locale.ROOT);
        if (t!=null && t.startsWith("video/")) return true;
        return n.endsWith(".mp4")||n.endsWith(".mkv")||n.endsWith(".avi")||n.endsWith(".mov")||n.endsWith(".webm")||n.endsWith(".m4v")||n.endsWith(".3gp");
    }

    private DocumentFile dir(DocumentFile parent, String name) {
        DocumentFile d=parent.findFile(name); if (d!=null && d.isDirectory()) return d;
        d=parent.createDirectory(name); if (d==null) throw new IllegalStateException("Klasör oluşturulamadı: "+name); return d;
    }

    private void clearJpgs(DocumentFile d) { for (DocumentFile f:d.listFiles()) if (f.isFile() && f.getName()!=null && f.getName().toLowerCase(Locale.ROOT).endsWith(".jpg")) f.delete(); }

    private void writeJpeg(DocumentFile dir, String name, Bitmap bmp, int quality) throws Exception {
        DocumentFile old=dir.findFile(name); if (old!=null) old.delete();
        DocumentFile f=dir.createFile("image/jpeg",name); if (f==null) throw new IllegalStateException("Dosya oluşturulamadı: "+name);
        try(OutputStream o=getContentResolver().openOutputStream(f.getUri(),"w")) { if(o==null || !bmp.compress(Bitmap.CompressFormat.JPEG,quality,o)) throw new IllegalStateException("JPEG yazılamadı"); o.flush(); }
    }

    private void moveVideoAtEnd(DocumentFile source, DocumentFile framesDir, String name) throws Exception {
        DocumentFile old=framesDir.findFile(name); if(old!=null) old.delete();
        String mime=source.getType()==null?"video/mp4":source.getType();
        DocumentFile dest=framesDir.createFile(mime,name); if(dest==null) throw new IllegalStateException("Video hedefi oluşturulamadı");
        long copied=0;
        try(InputStream in=getContentResolver().openInputStream(source.getUri()); OutputStream out=getContentResolver().openOutputStream(dest.getUri(),"w")) {
            if(in==null||out==null) throw new IllegalStateException("Video taşıma akışı açılamadı");
            byte[] buf=new byte[1024*1024]; int n; while((n=in.read(buf))>0){ out.write(buf,0,n); copied+=n; } out.flush();
        } catch(Throwable t) { dest.delete(); throw t; }
        long sourceLen=source.length(); if(sourceLen>0 && copied!=sourceLen){ dest.delete(); throw new IllegalStateException("Video taşıma doğrulaması başarısız"); }
        if(!source.delete()){ dest.delete(); throw new IllegalStateException("Kaynak video silinemedi; taşıma iptal edildi"); }
    }

    private static int[] fingerprint(Bitmap src) {
        int w=160,h=Math.max(1,Math.round(src.getHeight()*(160f/src.getWidth()))); h=Math.min(h,90);
        Bitmap s=Bitmap.createScaledBitmap(src,w,h,true); int[] p=new int[w*h]; s.getPixels(p,0,w,0,0,w,h); if(s!=src)s.recycle(); return p;
    }

    private static class RepeatFilter {
        private final ArrayDeque<int[]> accepted=new ArrayDeque<>();
        boolean isRepeat(int[] cur){ for(int[] old:accepted) if(same(old,cur)) return true; accepted.addLast(cur); while(accepted.size()>32)accepted.removeFirst(); return false; }
        private boolean same(int[] a,int[] b){ if(a.length!=b.length)return false; long total=0,channels=0; for(int i=0;i<a.length;i++){ int ar=(a[i]>>16)&255,ag=(a[i]>>8)&255,ab=a[i]&255; int br=(b[i]>>16)&255,bg=(b[i]>>8)&255,bb=b[i]&255; int dr=Math.abs(ar-br),dg=Math.abs(ag-bg),db=Math.abs(ab-bb); if(dr>3||dg>3||db>3)return false; total+=dr+dg+db;channels+=3;} return channels>0 && ((double)total/channels)<=0.40; }
    }

    private static class PersonEngine implements AutoCloseable {
        private final MainActivity a; private final ObjectDetector detector;
        PersonEngine(MainActivity a) throws Exception { this.a=a; detector=ObjectDetector.createFromFileAndOptions(a,"efficientdet-lite0.tflite",ObjectDetector.ObjectDetectorOptions.builder().setMaxResults(30).setScoreThreshold(0.30f).build()); }
        int cropPeople(Bitmap bmp, DocumentFile dir, String frameStem) throws Exception {
            List<Detection> ds=detector.detect(TensorImage.fromBitmap(bmp)); int count=0;
            for(Detection d:ds){ if(!person(d))continue; Rect r=expand(d.getBoundingBox(),bmp.getWidth(),bmp.getHeight()); if(r.width()<2||r.height()<2)continue; Bitmap c=Bitmap.createBitmap(bmp,r.left,r.top,r.width(),r.height()); try{ count++; a.writeJpeg(dir,frameStem+"_kisi_"+count+".jpg",c,97); }finally{c.recycle();} }
            return count;
        }
        private boolean person(Detection d){ for(Category c:d.getCategories()) if(c.getLabel()!=null&&c.getLabel().equalsIgnoreCase("person")&&c.getScore()>=0.30f)return true; return false; }
        private Rect expand(RectF b,int w,int h){ float bw=b.width(),bh=b.height(),m=.10f; return new Rect(Math.max(0,(int)Math.floor(b.left-bw*m)),Math.max(0,(int)Math.floor(b.top-bh*m)),Math.min(w,(int)Math.ceil(b.right+bw*m)),Math.min(h,(int)Math.ceil(b.bottom+bh*m))); }
        @Override public void close(){ try{detector.close();}catch(Throwable ignored){} }
    }

    private static class Result { final int frames,crops; final boolean completed; Result(int f,int c,boolean ok){frames=f;crops=c;completed=ok;} }
    private String safeName(String n){ if(n==null||n.trim().isEmpty())return "video.mp4"; return n.replaceAll("[\\\\/:*?\"<>|]","_").trim(); }
    private String stripExt(String n){ int p=n.lastIndexOf('.'); return p>0?n.substring(0,p):n; }
    private String shortMsg(Throwable t){ String m=t.getMessage(); return m==null?t.getClass().getSimpleName():m; }
    private void append(String s){ ui(() -> log.setText(s+"\n"+log.getText())); }
    private void ui(Runnable r){ runOnUiThread(r); }
    private void setRunning(boolean b){ sourceBtn.setEnabled(!b);outputBtn.setEnabled(!b);startBtn.setEnabled(!b);stopBtn.setEnabled(b); }
    @Override protected void onDestroy(){ stop.set(true); executor.shutdownNow(); super.onDestroy(); }
}
