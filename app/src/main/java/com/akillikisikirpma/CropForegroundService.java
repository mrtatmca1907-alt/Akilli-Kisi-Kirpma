package com.akillikisikirpma;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Environment;
import android.os.IBinder;
import android.os.SystemClock;

import java.io.File;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

public class CropForegroundService extends Service {
    public static final String ACTION_START = "com.akillikisikirpma.START";
    public static final String ACTION_STOP = "com.akillikisikirpma.STOP";
    public static final String PREFS = "crop_status";
    public static final String KEY_TREE_URI = "source_tree_uri";
    public static final String KEY_DIRECT_PATH = "source_direct_path";

    private static final String CHANNEL = "crop_work";
    private static final int NOTIFICATION_ID = 1907;
    private static final long NOTIFICATION_INTERVAL_MS = 1000L;

    private final ExecutorService executor = Executors.newSingleThreadExecutor();
    private final AtomicBoolean running = new AtomicBoolean(false);
    private final AtomicBoolean stopRequested = new AtomicBoolean(false);
    private long lastNotificationAt;

    private static final class QueueState {
        int gathered, processed, people, crops, errors;
    }

    @Override public void onCreate() {
        super.onCreate();
        createChannel();
    }

    @Override public int onStartCommand(Intent intent, int flags, int startId) {
        String action = intent == null ? ACTION_START : intent.getAction();
        if (ACTION_STOP.equals(action)) {
            stopRequested.set(true);
            updateNotification("Durdurma isteniyor…");
            return START_NOT_STICKY;
        }
        startForeground(NOTIFICATION_ID, notification("Fotoğraflar taranıyor…"));
        if (running.compareAndSet(false, true)) {
            stopRequested.set(false);
            executor.submit(this::runQueue);
        }
        return START_STICKY;
    }

    private void runQueue() {
        SharedPreferences p = getSharedPreferences(PREFS, MODE_PRIVATE);
        QueueState s = new QueueState();
        p.edit().putBoolean("running", true).putBoolean("finished", false)
                .putInt("gathered", 0).putInt("duplicates", 0).putInt("processed", 0)
                .putInt("people", 0).putInt("crops", 0).putInt("moved", 0).putInt("errors", 0)
                .putString("phase", "Fotoğraflar taranıyor").putString("current", "").apply();

        String path = p.getString(KEY_DIRECT_PATH, "");
        if (path == null || path.isEmpty()) {
            finishWithError(p, s, "Önce kaynak klasör seç");
            return;
        }
        if (Build.VERSION.SDK_INT >= 30 && !Environment.isExternalStorageManager()) {
            finishWithError(p, s, "Tüm dosyalara erişim izni yok");
            return;
        }

        try {
            File root = new File(path);
            if (!root.isDirectory()) {
                finishWithError(p, s, "Seçilen klasöre erişilemiyor");
                return;
            }
            File output = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "AutoPersonCrop");
            if (!output.exists() && !output.mkdirs()) {
                finishWithError(p, s, "Çıktı klasörü oluşturulamadı");
                return;
            }

            forceNotification("Kişi algılama modeli yükleniyor…");
            try (PersonCropEngine engine = new PersonCropEngine(this)) {
                scanDirectory(root, output, engine, p, s);
            }
        } catch (Throwable t) {
            s.errors++;
            p.edit().putInt("errors", s.errors)
                    .putString("last_error", t.getClass().getSimpleName() + ": " + String.valueOf(t.getMessage())).apply();
        } finally {
            saveCounters(p, s);
            boolean stopped = stopRequested.get();
            p.edit().putBoolean("running", false).putBoolean("finished", !stopped)
                    .putString("phase", stopped ? "Durduruldu" : "Tamamlandı").apply();
            forceNotification(stopped ? "Durduruldu" : "Tarama tamamlandı");
            running.set(false);
            stopForeground(false);
            stopSelf();
        }
    }

    private void scanDirectory(File dir, File output, PersonCropEngine engine, SharedPreferences p, QueueState s) {
        if (stopRequested.get() || sameFile(dir, output)) return;
        File[] children = dir.listFiles();
        if (children == null) {
            s.errors++;
            p.edit().putInt("errors", s.errors).putString("last_error", "Klasör okunamadı: " + dir.getName()).apply();
            return;
        }
        Arrays.sort(children, Comparator.comparing(File::getName, String.CASE_INSENSITIVE_ORDER));
        for (File child : children) {
            if (stopRequested.get()) return;
            if (child.isDirectory()) {
                scanDirectory(child, output, engine, p, s);
            } else if (child.isFile() && isImage(child)) {
                processImage(child, engine, p, s);
            }
        }
    }

    private void processImage(File file, PersonCropEngine engine, SharedPreferences p, QueueState s) {
        s.gathered++;
        p.edit().putString("current", file.getName()).putInt("gathered", s.gathered).apply();
        maybeNotification("İşleniyor: " + file.getName());
        long id = stableId(file.getAbsolutePath());
        PersonCropEngine.ProcessResult r = engine.process(android.net.Uri.fromFile(file), id, file.getName(), mimeFor(file.getName()));
        s.processed++;
        s.people += r.detected;
        s.crops += r.saved;
        s.errors += r.failed;
        if ((s.processed % 10) == 0) saveCounters(p, s);
    }

    private boolean sameFile(File a, File b) {
        try { return a.getCanonicalFile().equals(b.getCanonicalFile()); }
        catch (Throwable t) { return a.equals(b); }
    }

    private boolean isImage(File file) {
        String n = file.getName().toLowerCase(Locale.ROOT);
        return n.endsWith(".jpg") || n.endsWith(".jpeg") || n.endsWith(".png") || n.endsWith(".webp") ||
                n.endsWith(".bmp") || n.endsWith(".gif") || n.endsWith(".heic") || n.endsWith(".heif");
    }

    private String mimeFor(String name) {
        String n = name.toLowerCase(Locale.ROOT);
        if (n.endsWith(".png")) return "image/png";
        if (n.endsWith(".webp")) return "image/webp";
        if (n.endsWith(".heic") || n.endsWith(".heif")) return "image/heic";
        return "image/jpeg";
    }

    private long stableId(String text) {
        long h = 0xcbf29ce484222325L;
        for (int i = 0; i < text.length(); i++) { h ^= text.charAt(i); h *= 0x100000001b3L; }
        return h;
    }

    private void saveCounters(SharedPreferences p, QueueState s) {
        p.edit().putInt("gathered", s.gathered).putInt("processed", s.processed)
                .putInt("people", s.people).putInt("crops", s.crops).putInt("errors", s.errors)
                .putInt("moved", 0).putInt("duplicates", 0).apply();
    }

    private void finishWithError(SharedPreferences p, QueueState s, String message) {
        s.errors++;
        p.edit().putInt("errors", s.errors).putString("last_error", message)
                .putBoolean("running", false).putBoolean("finished", false).putString("phase", "Hata").apply();
        forceNotification(message);
        running.set(false);
        stopForeground(false);
        stopSelf();
    }

    private void createChannel() {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel ch = new NotificationChannel(CHANNEL, "Kişi kırpma işlemi", NotificationManager.IMPORTANCE_LOW);
            ch.setDescription("Fotoğrafları silmeden kişileri ayrı ayrı kırpar");
            getSystemService(NotificationManager.class).createNotificationChannel(ch);
        }
    }

    private Notification notification(String text) {
        Intent open = new Intent(this, MainActivity.class);
        PendingIntent pi = PendingIntent.getActivity(this, 0, open, PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);
        Notification.Builder b = Build.VERSION.SDK_INT >= 26 ? new Notification.Builder(this, CHANNEL) : new Notification.Builder(this);
        return b.setSmallIcon(R.drawable.ic_launcher).setContentTitle("Auto Person Crop")
                .setContentText(text).setContentIntent(pi).setOngoing(true).setOnlyAlertOnce(true).build();
    }

    private void maybeNotification(String text) {
        long now = SystemClock.elapsedRealtime();
        if (now - lastNotificationAt >= NOTIFICATION_INTERVAL_MS) {
            lastNotificationAt = now;
            updateNotification(text);
        }
    }

    private void forceNotification(String text) {
        lastNotificationAt = SystemClock.elapsedRealtime();
        updateNotification(text);
    }

    private void updateNotification(String text) {
        ((NotificationManager) getSystemService(NOTIFICATION_SERVICE)).notify(NOTIFICATION_ID, notification(text));
    }

    @Override public void onDestroy() {
        stopRequested.set(true);
        executor.shutdownNow();
        super.onDestroy();
    }

    @Override public IBinder onBind(Intent intent) { return null; }
}
