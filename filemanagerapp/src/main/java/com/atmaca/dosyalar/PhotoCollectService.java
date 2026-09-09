package com.atmaca.dosyalar;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.Environment;
import android.os.IBinder;

import androidx.core.app.NotificationCompat;

import java.io.File;

public class PhotoCollectService extends Service {
    public static final String ACTION_STATUS = "com.atmaca.dosyalar.PHOTO_COLLECT_STATUS";
    public static final String EXTRA_MOVED = "moved";
    public static final String EXTRA_FAILED = "failed";
    public static final String EXTRA_DONE = "done";
    private static final String CHANNEL = "atmaca_photo_collect";
    private static final int NOTIFICATION_ID = 1907;
    private volatile boolean running;

    @Override public void onCreate() {
        super.onCreate();
        createChannel();
    }

    @Override public int onStartCommand(Intent intent, int flags, int startId) {
        if (running) return START_STICKY;
        running = true;
        startForeground(NOTIFICATION_ID, notification("Fotoğraflar hazırlanıyor", 0, 0));
        new Thread(this::runCollection, "ATMACA-PhotoCollector").start();
        return START_STICKY;
    }

    private void runCollection() {
        int moved = 0, failed = 0;
        try {
            File root = Environment.getExternalStorageDirectory();
            File pictures = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
            File target = new File(pictures, "TUM_FOTOGRAFLAR");
            PhotoCollector.Result result = PhotoCollector.movePhotos(root, target, (m, f, current) -> {
                if ((m + f) % 25 == 0) {
                    notifyProgress(m, f);
                    broadcast(m, f, false);
                }
            });
            moved = result.moved;
            failed = result.failed;
            notifyDone(moved, failed);
            broadcast(moved, failed, true);
        } catch (Throwable t) {
            failed++;
            notifyDone(moved, failed);
            broadcast(moved, failed, true);
        } finally {
            running = false;
            stopForeground(false);
            stopSelf();
        }
    }

    private void broadcast(int moved, int failed, boolean done) {
        Intent i = new Intent(ACTION_STATUS);
        i.setPackage(getPackageName());
        i.putExtra(EXTRA_MOVED, moved);
        i.putExtra(EXTRA_FAILED, failed);
        i.putExtra(EXTRA_DONE, done);
        sendBroadcast(i);
    }

    private void notifyProgress(int moved, int failed) {
        NotificationManager nm = (NotificationManager) getSystemService(NOTIFICATION_SERVICE);
        nm.notify(NOTIFICATION_ID, notification(moved + " fotoğraf taşındı", moved, failed));
    }

    private void notifyDone(int moved, int failed) {
        NotificationManager nm = (NotificationManager) getSystemService(NOTIFICATION_SERVICE);
        String text = moved + " fotoğraf taşındı" + (failed > 0 ? " • " + failed + " hata" : "");
        nm.notify(NOTIFICATION_ID, notification(text, moved, failed));
    }

    private Notification notification(String text, int moved, int failed) {
        Intent open = new Intent(this, FastFileActivity.class);
        PendingIntent pi = PendingIntent.getActivity(this, 0, open,
                PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);
        return new NotificationCompat.Builder(this, CHANNEL)
                .setSmallIcon(android.R.drawable.stat_sys_download)
                .setContentTitle("ATMACA • Tüm Fotoğrafları Topla")
                .setContentText(text)
                .setContentIntent(pi)
                .setOngoing(!text.contains("hata") && !text.contains("taşındı") ? true : false)
                .setOnlyAlertOnce(true)
                .build();
    }

    private void createChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationChannel c = new NotificationChannel(CHANNEL, "Fotoğraf taşıma", NotificationManager.IMPORTANCE_LOW);
            c.setDescription("ATMACA arka plan fotoğraf taşıma işlemi");
            ((NotificationManager) getSystemService(NOTIFICATION_SERVICE)).createNotificationChannel(c);
        }
    }

    @Override public IBinder onBind(Intent intent) { return null; }
}