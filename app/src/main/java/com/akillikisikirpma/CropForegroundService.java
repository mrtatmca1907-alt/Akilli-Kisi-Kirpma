package com.akillikisikirpma;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.IBinder;

import androidx.documentfile.provider.DocumentFile;

import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

public final class CropForegroundService extends Service {
    static final String ACTION_START = "com.akillikisikirpma.START";
    static final String ACTION_STOP = "com.akillikisikirpma.STOP";
    static final String EXTRA_IMAGES = "images";
    static final String EXTRA_FOLDERS = "folders";

    private static final String CHANNEL_ID = "screenshot_processing";
    private static final int NOTIFICATION_ID = 4071;

    private final ExecutorService executor = Executors.newSingleThreadExecutor();
    private final AtomicBoolean stopRequested = new AtomicBoolean(false);
    private final Counters counters = new Counters();

    @Override
    public void onCreate() {
        super.onCreate();
        NotificationChannel channel = new NotificationChannel(
                CHANNEL_ID,
                "Screenshot işlemleri",
                NotificationManager.IMPORTANCE_LOW
        );
        channel.setDescription("Kişi kırpma ilerlemesi");
        getSystemService(NotificationManager.class).createNotificationChannel(channel);
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        if (intent == null) return START_NOT_STICKY;

        if (ACTION_STOP.equals(intent.getAction())) {
            stopRequested.set(true);
            publish("Durdurma isteniyor…", true);
            return START_NOT_STICKY;
        }

        if (!ACTION_START.equals(intent.getAction())) return START_NOT_STICKY;

        stopRequested.set(false);
        counters.reset();
        ArrayList<String> images = intent.getStringArrayListExtra(EXTRA_IMAGES);
        ArrayList<String> folders = intent.getStringArrayListExtra(EXTRA_FOLDERS);
        if (images == null) images = new ArrayList<>();
        if (folders == null) folders = new ArrayList<>();

        startForeground(NOTIFICATION_ID, buildNotification("Hazırlanıyor…", true));
        StatusStore.write(this, true, 0, 0, 0, 0, 0, "Hazırlanıyor…");

        ArrayList<String> finalImages = images;
        ArrayList<String> finalFolders = folders;
        executor.submit(() -> runWork(finalImages, finalFolders));
        return START_NOT_STICKY;
    }

    private void runWork(ArrayList<String> images, ArrayList<String> folders) {
        try (PersonCropEngine engine = new PersonCropEngine(this)) {
            for (String s : images) {
                if (stopRequested.get()) break;
                process(engine, Uri.parse(s), "Fotoğraf işleniyor…");
            }

            for (String s : folders) {
                if (stopRequested.get()) break;
                DocumentFile root = DocumentFile.fromTreeUri(this, Uri.parse(s));
                walk(engine, root);
            }

            String done = stopRequested.get()
                    ? "Durduruldu • " + counters.saved + " çıktı"
                    : "Tamamlandı • " + counters.saved + " çıktı";
            StatusStore.write(this, false, counters.processed, counters.detected, counters.saved, counters.skipped, counters.failed, done);
            getSystemService(NotificationManager.class).notify(NOTIFICATION_ID, buildNotification(done, false));
        } catch (Throwable t) {
            counters.failed++;
            String message = "Motor hatası: " + shortMessage(t);
            StatusStore.write(this, false, counters.processed, counters.detected, counters.saved, counters.skipped, counters.failed, message);
            getSystemService(NotificationManager.class).notify(NOTIFICATION_ID, buildNotification(message, false));
        } finally {
            stopForeground(false);
            stopSelf();
        }
    }

    private void walk(PersonCropEngine engine, DocumentFile file) {
        if (file == null || stopRequested.get()) return;
        try {
            if (file.isFile()) {
                if (isImage(file)) process(engine, file.getUri(), file.getName());
                return;
            }
            if (file.isDirectory()) {
                for (DocumentFile child : file.listFiles()) {
                    if (stopRequested.get()) return;
                    walk(engine, child);
                }
            }
        } catch (Throwable t) {
            counters.failed++;
            publish("Okunamayan öğe atlandı", true);
        }
    }

    private void process(PersonCropEngine engine, Uri uri, String label) {
        PersonCropEngine.ProcessResult r = engine.process(uri);
        counters.processed++;
        counters.detected += r.detected;
        counters.saved += r.saved;
        counters.skipped += r.skipped;
        counters.failed += r.failed;
        publish(label == null ? "İşleniyor…" : label, true);
    }

    private boolean isImage(DocumentFile file) {
        String type = file.getType();
        if (type != null && type.startsWith("image/")) return true;
        String name = file.getName();
        if (name == null) return false;
        String n = name.toLowerCase(Locale.ROOT);
        return n.endsWith(".jpg") || n.endsWith(".jpeg") || n.endsWith(".png")
                || n.endsWith(".webp") || n.endsWith(".heic") || n.endsWith(".heif")
                || n.endsWith(".bmp");
    }

    private void publish(String status, boolean ongoing) {
        StatusStore.write(this, ongoing, counters.processed, counters.detected, counters.saved, counters.skipped, counters.failed, status);
        getSystemService(NotificationManager.class).notify(NOTIFICATION_ID, buildNotification(status, ongoing));
    }

    private Notification buildNotification(String status, boolean ongoing) {
        Intent openIntent = new Intent(this, MainActivity.class);
        PendingIntent open = PendingIntent.getActivity(
                this,
                10,
                openIntent,
                PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE
        );

        Intent stopIntent = new Intent(this, CropForegroundService.class).setAction(ACTION_STOP);
        PendingIntent stop = PendingIntent.getService(
                this,
                11,
                stopIntent,
                PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE
        );

        String detail = "İşlenen " + counters.processed
                + " • Algılanan " + counters.detected
                + " • Kaydedilen " + counters.saved
                + " • Hata " + counters.failed;

        Notification.Builder builder = new Notification.Builder(this, CHANNEL_ID)
                .setSmallIcon(android.R.drawable.ic_menu_crop)
                .setContentTitle("Screenshot")
                .setContentText(status)
                .setStyle(new Notification.BigTextStyle().bigText(status + "\n" + detail))
                .setContentIntent(open)
                .setOnlyAlertOnce(true)
                .setOngoing(ongoing);

        if (ongoing) {
            builder.addAction(new Notification.Action.Builder(
                    android.R.drawable.ic_media_pause,
                    "Durdur",
                    stop
            ).build());
        }
        return builder.build();
    }

    private static String shortMessage(Throwable t) {
        String m = t.getMessage();
        return m == null || m.trim().isEmpty() ? t.getClass().getSimpleName() : m;
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onDestroy() {
        stopRequested.set(true);
        executor.shutdownNow();
        super.onDestroy();
    }

    private static final class Counters {
        int processed;
        int detected;
        int saved;
        int skipped;
        int failed;

        void reset() {
            processed = 0;
            detected = 0;
            saved = 0;
            skipped = 0;
            failed = 0;
        }
    }
}
