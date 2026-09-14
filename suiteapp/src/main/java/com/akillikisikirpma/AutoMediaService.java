package com.akillikisikirpma;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

public class AutoMediaService extends Service {
    public static final String ACTION_RUN = "com.akillikisikirpma.AUTO_RUN";
    private static final String CHANNEL = "auto_media";
    private static final int NOTIFICATION_ID = 19070;

    private final AtomicBoolean running = new AtomicBoolean(false);
    private final AtomicBoolean stopRequested = new AtomicBoolean(false);
    private ExecutorService executor;
    private PowerManager.WakeLock wakeLock;

    @Override public void onCreate() {
        super.onCreate();
        executor = Executors.newSingleThreadExecutor();
        createChannel();
    }

    @Override public int onStartCommand(Intent intent, int flags, int startId) {
        startForeground(NOTIFICATION_ID, notification("Medya kontrol ediliyor…"));
        if (running.compareAndSet(false, true)) {
            stopRequested.set(false);
            acquireWakeLock();
            executor.submit(() -> {
                try {
                    AutoMediaProcessor processor = new AutoMediaProcessor(this, new AutoMediaProcessor.Control() {
                        @Override public boolean shouldStop() { return stopRequested.get(); }
                        @Override public void onProgress(String text) { updateNotification(text); }
                    });
                    processor.runUntilIdle();
                } finally {
                    running.set(false);
                    releaseWakeLock();
                    stopForeground(STOP_FOREGROUND_REMOVE);
                    stopSelf();
                }
            });
        }
        return START_STICKY;
    }

    private void acquireWakeLock() {
        try {
            PowerManager pm = (PowerManager) getSystemService(POWER_SERVICE);
            wakeLock = pm.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, "ATMACA:AutoMedia");
            wakeLock.setReferenceCounted(false);
            wakeLock.acquire();
        } catch (Throwable ignored) {}
    }

    private void releaseWakeLock() {
        try { if (wakeLock != null && wakeLock.isHeld()) wakeLock.release(); } catch (Throwable ignored) {}
    }

    private void createChannel() {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel channel = new NotificationChannel(CHANNEL, "ATMACA otomatik medya", NotificationManager.IMPORTANCE_LOW);
            channel.setDescription("Fotoğraf ve videoları tek tek işler");
            getSystemService(NotificationManager.class).createNotificationChannel(channel);
        }
    }

    private Notification notification(String text) {
        Notification.Builder b = Build.VERSION.SDK_INT >= 26
                ? new Notification.Builder(this, CHANNEL)
                : new Notification.Builder(this);
        return b.setSmallIcon(R.drawable.ic_launcher)
                .setContentTitle("ATMACA Otomatik Medya")
                .setContentText(text)
                .setOngoing(true)
                .setOnlyAlertOnce(true)
                .build();
    }

    private void updateNotification(String text) {
        try { ((NotificationManager) getSystemService(NOTIFICATION_SERVICE)).notify(NOTIFICATION_ID, notification(text)); }
        catch (Throwable ignored) {}
    }

    @Override public void onDestroy() {
        stopRequested.set(true);
        releaseWakeLock();
        if (executor != null) executor.shutdownNow();
        super.onDestroy();
    }

    @Override public IBinder onBind(Intent intent) { return null; }
}
