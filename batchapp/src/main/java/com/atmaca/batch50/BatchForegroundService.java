package com.atmaca.batch50;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.media.MediaScannerConnection;
import android.os.IBinder;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class BatchForegroundService extends Service {
    static final String ACTION_PROGRESS = "com.atmaca.batch50.PROGRESS";
    static final String EXTRA_DONE = "done";
    static final String EXTRA_TOTAL = "total";
    static final String EXTRA_MESSAGE = "message";
    private static final String CHANNEL = "atmaca50_work";
    private final ExecutorService executor = Executors.newSingleThreadExecutor();
    private volatile boolean running;

    @Override public void onCreate() {
        super.onCreate();
        NotificationManager nm = getSystemService(NotificationManager.class);
        nm.createNotificationChannel(new NotificationChannel(CHANNEL, "ATMACA 50 İşlem", NotificationManager.IMPORTANCE_LOW));
    }

    @Override public int onStartCommand(Intent intent, int flags, int startId) {
        if (running) return START_NOT_STICKY;
        running = true;
        startForeground(1907, notification("50 foto hazırlanıyor…"));
        executor.execute(() -> process(startId));
        return START_NOT_STICKY;
    }

    private void process(int startId) {
        BatchQueueDb db = new BatchQueueDb(this);
        ArrayList<String> galleryFiles = new ArrayList<>();
        try {
            File work = AppPaths.workRoot();
            if (hasFiles(work)) { send(0, 0, "Pictures/ATMACA_50 dolu. Önce onu sil."); return; }
            File originals = AppPaths.originalDir(), crops = AppPaths.croppedDir();
            if (!originals.mkdirs() && !originals.isDirectory()) throw new IllegalStateException("ORJINAL klasörü oluşturulamadı");
            if (!crops.mkdirs() && !crops.isDirectory()) throw new IllegalStateException("KIRPILAN klasörü oluşturulamadı");
            List<String> paths = db.nextPending(50);
            if (paths.isEmpty()) { send(0, 0, "Bekleyen fotoğraf kalmadı."); return; }
            int done = 0;
            try (BatchCropEngine engine = new BatchCropEngine(this)) {
                for (String path : paths) {
                    File src = new File(path);
                    if (!src.isFile()) { db.mark(path, BatchQueueDb.MISSING); continue; }
                    engine.cropPeople(src, crops);
                    File out = BatchCropEngine.unique(originals, src.getName());
                    copyFast(src, out);
                    galleryFiles.add(out.getAbsolutePath());
                    db.mark(path, BatchQueueDb.DONE);
                    done++;
                    send(done, paths.size(), done + "/" + paths.size() + " hazırlandı");
                }
            }
            File[] cropFiles = crops.listFiles();
            if (cropFiles != null) for (File f : cropFiles) if (f.isFile()) galleryFiles.add(f.getAbsolutePath());
            if (!galleryFiles.isEmpty()) MediaScannerConnection.scanFile(this, galleryFiles.toArray(new String[0]), null, null);
            send(done, paths.size(), "Hazır. Galeride ATMACA_50 klasörünü açabilirsin.");
        } catch (Throwable t) {
            send(0, 0, "Hata: " + (t.getMessage() == null ? t.getClass().getSimpleName() : t.getMessage()));
        } finally {
            db.close(); running = false; stopForeground(STOP_FOREGROUND_REMOVE); stopSelfResult(startId);
        }
    }

    private static void copyFast(File src, File dst) throws Exception {
        try (FileChannel in = new FileInputStream(src).getChannel(); FileChannel out = new FileOutputStream(dst).getChannel()) {
            long pos=0, size=in.size();
            while(pos<size){ long n=in.transferTo(pos, Math.min(16L*1024*1024,size-pos), out); if(n<=0)break; pos+=n; }
            if(pos<size) throw new java.io.IOException("Kopyalama tamamlanamadı: " + src.getName());
        }
    }

    private static boolean hasFiles(File dir) {
        if (!dir.exists()) return false;
        File[] files = dir.listFiles(); if (files == null) return false;
        for (File f : files) { if (f.isFile()) return true; if (f.isDirectory() && hasFiles(f)) return true; }
        return false;
    }

    private Notification notification(String text) {
        return new Notification.Builder(this, CHANNEL).setSmallIcon(android.R.drawable.stat_sys_download).setContentTitle("ATMACA 50").setContentText(text).setOngoing(true).build();
    }

    private void send(int done, int total, String msg) {
        Intent i = new Intent(ACTION_PROGRESS).setPackage(getPackageName());
        i.putExtra(EXTRA_DONE, done); i.putExtra(EXTRA_TOTAL, total); i.putExtra(EXTRA_MESSAGE, msg); sendBroadcast(i);
    }

    @Override public IBinder onBind(Intent intent) { return null; }
    @Override public void onDestroy() { executor.shutdownNow(); super.onDestroy(); }
}
