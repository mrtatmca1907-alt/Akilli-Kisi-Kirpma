package com.akillikisikirpma;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.IBinder;
import android.os.SystemClock;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
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

    private static final String STAGING_NAME = "ATMACA_TEK_KLASOR";
    private static final String CHANNEL = "crop_work";
    private static final int NOTIFICATION_ID = 1907;
    private static final int STATUS_BATCH = 50;
    private static final long NOTIFICATION_INTERVAL_MS = 1000L;

    private final ExecutorService executor = Executors.newSingleThreadExecutor();
    private final AtomicBoolean running = new AtomicBoolean(false);
    private final AtomicBoolean stopRequested = new AtomicBoolean(false);
    private long lastNotificationAt;
    private int dirtyOps;

    private static final class QueueState {
        int gathered, duplicates, processed, people, crops, moved, errors;
    }

    @Override public void onCreate() { super.onCreate(); createChannel(); }

    @Override public int onStartCommand(Intent intent, int flags, int startId) {
        String action = intent == null ? ACTION_START : intent.getAction();
        if (ACTION_STOP.equals(action)) { stopRequested.set(true); return START_NOT_STICKY; }
        startForeground(NOTIFICATION_ID, notification("Gerçek turbo hazırlanıyor…"));
        if (running.compareAndSet(false, true)) {
            stopRequested.set(false);
            executor.submit(this::runQueue);
        }
        return START_STICKY;
    }

    private void runQueue() {
        SharedPreferences p = getSharedPreferences(PREFS, MODE_PRIVATE);
        QueueState s = new QueueState();
        s.gathered = p.getInt("gathered", 0); s.duplicates = p.getInt("duplicates", 0);
        s.processed = p.getInt("processed", 0); s.people = p.getInt("people", 0);
        s.crops = p.getInt("crops", 0); s.moved = p.getInt("moved", 0); s.errors = p.getInt("errors", 0);
        p.edit().putBoolean("running", true).putBoolean("finished", false).putBoolean("turbo", true).apply();

        String path = p.getString(KEY_DIRECT_PATH, "");
        if (path == null || path.isEmpty()) { finishWithError(p, s, "Doğrudan klasör yolu yok"); return; }
        if (Build.VERSION.SDK_INT >= 30 && !Environment.isExternalStorageManager()) {
            finishWithError(p, s, "Tüm dosyalara erişim izni yok"); return;
        }

        try {
            File root = new File(path);
            if (!root.isDirectory()) { finishWithError(p, s, "Seçilen klasöre erişilemiyor"); return; }
            File staging = new File(root, STAGING_NAME);
            if (!staging.exists() && !staging.mkdirs()) { finishWithError(p, s, "Tek klasör oluşturulamadı"); return; }

            TurboNameIndex index = buildIndex(staging);
            p.edit().putString("phase", "GERÇEK TURBO Toplanıyor").apply();
            forceNotification("Doğrudan taşıma başladı");
            consolidateDirectory(root, staging, index, p, s);
            flushCounters(p, s);
            if (stopRequested.get()) return;

            p.edit().putString("phase", "GERÇEK TURBO Kırpılıyor").apply();
            forceNotification("Toplama bitti, kişi kırpma başladı");
            try (PersonCropEngine engine = new PersonCropEngine(this)) {
                processStaging(staging, engine, p, s);
            }
            flushCounters(p, s);
        } catch (Throwable t) {
            s.errors++;
            p.edit().putInt("errors", s.errors).putString("last_error", String.valueOf(t.getMessage())).apply();
        } finally {
            boolean stopped = stopRequested.get();
            flushCounters(p, s);
            p.edit().putBoolean("running", false).putBoolean("finished", !stopped)
                    .putString("phase", stopped ? "Durduruldu" : "Tamamlandı").apply();
            forceNotification(stopped ? "Durduruldu" : "Tamamlandı");
            running.set(false);
            stopForeground(false);
            stopSelf();
        }
    }

    private TurboNameIndex buildIndex(File staging) {
        TurboNameIndex index = new TurboNameIndex();
        File[] files = staging.listFiles();
        if (files != null) for (File f : files) if (f.isFile()) index.put(f.getName(), f.length());
        return index;
    }

    private void consolidateDirectory(File dir, File staging, TurboNameIndex index, SharedPreferences p, QueueState s) {
        if (stopRequested.get()) return;
        if (sameFile(dir, staging)) return;
        if ("AkilliKisiKirpma".equalsIgnoreCase(dir.getName())) return;
        File[] children = dir.listFiles();
        if (children == null) { recordError(p, s, "Klasör okunamadı: " + dir.getName()); return; }

        for (File child : children) {
            if (stopRequested.get()) return;
            if (child.isDirectory()) {
                if (!sameFile(child, staging)) consolidateDirectory(child, staging, index, p, s);
                continue;
            }
            if (!child.isFile() || !isImage(child)) continue;
            moveIntoStaging(child, staging, index, p, s);
        }
    }

    private void moveIntoStaging(File source, File staging, TurboNameIndex index, SharedPreferences p, QueueState s) {
        String name = source.getName();
        long size = source.length();
        maybeNotification("Taşınıyor: " + name);

        if (index.isDuplicate(name, size)) {
            if (source.delete()) { s.duplicates++; markDirty(p, s, name); }
            else recordError(p, s, "Kopya silinemedi: " + name);
            return;
        }

        String targetName = index.allocateName(name, size);
        File target = new File(staging, targetName);
        if (source.renameTo(target)) {
            index.put(targetName, size);
            s.gathered++;
            markDirty(p, s, targetName);
            return;
        }

        // Aynı depolamada renameTo normal yol. Bu yalnız istisnai sağlayıcı/dosya sistemi durumları için güvenli yedek.
        if (copyThenDelete(source, target)) {
            index.put(targetName, target.length());
            s.gathered++;
            markDirty(p, s, targetName);
        } else recordError(p, s, "Taşıma hatası: " + name);
    }

    private boolean copyThenDelete(File source, File target) {
        try (FileInputStream in = new FileInputStream(source); FileOutputStream out = new FileOutputStream(target)) {
            byte[] buffer = new byte[8 * 1024 * 1024];
            int n;
            while ((n = in.read(buffer)) != -1) {
                if (stopRequested.get()) return false;
                out.write(buffer, 0, n);
            }
            out.flush();
        } catch (Throwable t) { try { target.delete(); } catch (Throwable ignored) {} return false; }
        if (source.length() > 0 && target.length() != source.length()) { target.delete(); return false; }
        if (!source.delete()) { target.delete(); return false; }
        return true;
    }

    private void processStaging(File staging, PersonCropEngine engine, SharedPreferences p, QueueState s) {
        File[] files = staging.listFiles();
        if (files == null) { recordError(p, s, "Tek klasör okunamadı"); return; }

        for (File child : files) {
            if (stopRequested.get()) return;
            if (!child.isFile() || !isImage(child)) continue;
            String name = child.getName();
            long stableId = stableId(child.getAbsolutePath());
            maybeNotification("Kırpılıyor: " + name);

            PersonCropEngine.ProcessResult r = engine.process(Uri.fromFile(child), stableId, name, mimeFor(name));
            s.processed++;
            s.people += r.detected;
            s.crops += r.saved;
            s.errors += r.failed;

            if (r.originalSaved) {
                if (!child.exists()) s.moved++;
                else if (child.delete()) s.moved++;
                else recordError(p, s, "İşlenen kaynak silinemedi: " + name);
            }
            markDirty(p, s, name);
        }
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

    private void markDirty(SharedPreferences p, QueueState s, String current) {
        dirtyOps++;
        if (dirtyOps >= STATUS_BATCH) {
            dirtyOps = 0;
            p.edit().putString("current", current).apply();
            saveCounters(p, s);
        }
    }

    private void flushCounters(SharedPreferences p, QueueState s) { dirtyOps = 0; saveCounters(p, s); }
    private void saveCounters(SharedPreferences p, QueueState s) {
        p.edit().putInt("gathered", s.gathered).putInt("duplicates", s.duplicates).putInt("processed", s.processed)
                .putInt("people", s.people).putInt("crops", s.crops).putInt("moved", s.moved).putInt("errors", s.errors).apply();
    }
    private void recordError(SharedPreferences p, QueueState s, String message) {
        s.errors++; p.edit().putInt("errors", s.errors).putString("last_error", message).apply();
    }
    private long stableId(String text) {
        long h = 0xcbf29ce484222325L;
        for (int i = 0; i < text.length(); i++) { h ^= text.charAt(i); h *= 0x100000001b3L; }
        return h == Long.MIN_VALUE ? 0 : Math.abs(h);
    }

    private void finishWithError(SharedPreferences p, QueueState s, String message) {
        recordError(p, s, message);
        p.edit().putBoolean("running", false).putBoolean("finished", false).putString("phase", "Hata").apply();
        forceNotification(message); running.set(false); stopForeground(false); stopSelf();
    }

    private void createChannel() {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel ch = new NotificationChannel(CHANNEL, "Kişi kırpma işlemi", NotificationManager.IMPORTANCE_LOW);
            ch.setDescription("Gerçek turbo toplama ve kişi kırpma");
            getSystemService(NotificationManager.class).createNotificationChannel(ch);
        }
    }
    private Notification notification(String text) {
        Intent open = new Intent(this, MainActivity.class);
        PendingIntent pi = PendingIntent.getActivity(this, 0, open, PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);
        Notification.Builder b = Build.VERSION.SDK_INT >= 26 ? new Notification.Builder(this, CHANNEL) : new Notification.Builder(this);
        return b.setSmallIcon(R.drawable.ic_launcher).setContentTitle("Akıllı Kişi Kırpma • GERÇEK TURBO")
                .setContentText(text).setContentIntent(pi).setOngoing(true).setOnlyAlertOnce(true).build();
    }
    private void maybeNotification(String text) {
        long now = SystemClock.elapsedRealtime();
        if (now - lastNotificationAt >= NOTIFICATION_INTERVAL_MS) { lastNotificationAt = now; updateNotification(text); }
    }
    private void forceNotification(String text) { lastNotificationAt = SystemClock.elapsedRealtime(); updateNotification(text); }
    private void updateNotification(String text) {
        ((NotificationManager) getSystemService(NOTIFICATION_SERVICE)).notify(NOTIFICATION_ID, notification(text));
    }

    @Override public void onDestroy() { stopRequested.set(true); executor.shutdownNow(); super.onDestroy(); }
    @Override public IBinder onBind(Intent intent) { return null; }
}
