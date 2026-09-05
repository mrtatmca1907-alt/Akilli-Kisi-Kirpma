package com.akillikisikirpma;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.provider.DocumentsContract;

import androidx.documentfile.provider.DocumentFile;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

public class CropForegroundService extends Service {
    public static final String ACTION_START = "com.akillikisikirpma.START";
    public static final String ACTION_STOP = "com.akillikisikirpma.STOP";
    public static final String PREFS = "crop_status";
    public static final String KEY_TREE_URI = "source_tree_uri";

    private static final String STAGING_NAME = "ATMACA_TEK_KLASOR";
    private static final String CHANNEL = "crop_work";
    private static final int NOTIFICATION_ID = 1907;

    private final ExecutorService executor = Executors.newSingleThreadExecutor();
    private final AtomicBoolean running = new AtomicBoolean(false);
    private final AtomicBoolean stopRequested = new AtomicBoolean(false);

    private static final class QueueState {
        int gathered;
        int duplicates;
        int processed;
        int people;
        int crops;
        int moved;
        int errors;
    }

    @Override public void onCreate() {
        super.onCreate();
        createChannel();
    }

    @Override public int onStartCommand(Intent intent, int flags, int startId) {
        String action = intent == null ? ACTION_START : intent.getAction();
        if (ACTION_STOP.equals(action)) {
            stopRequested.set(true);
            return START_NOT_STICKY;
        }

        startForeground(NOTIFICATION_ID, notification("Hazırlanıyor…"));
        if (running.compareAndSet(false, true)) {
            stopRequested.set(false);
            executor.submit(this::runQueue);
        }
        return START_STICKY;
    }

    private void runQueue() {
        SharedPreferences p = getSharedPreferences(PREFS, MODE_PRIVATE);
        QueueState s = new QueueState();
        s.gathered = p.getInt("gathered", 0);
        s.duplicates = p.getInt("duplicates", 0);
        s.processed = p.getInt("processed", 0);
        s.people = p.getInt("people", 0);
        s.crops = p.getInt("crops", 0);
        s.moved = p.getInt("moved", 0);
        s.errors = p.getInt("errors", 0);
        p.edit().putBoolean("running", true).putBoolean("finished", false).apply();

        String treeText = p.getString(KEY_TREE_URI, "");
        if (treeText == null || treeText.isEmpty()) {
            finishWithError(p, s, "Kaynak klasör seçilmedi");
            return;
        }

        try {
            Uri treeUri = Uri.parse(treeText);
            DocumentFile root = DocumentFile.fromTreeUri(this, treeUri);
            if (root == null || !root.exists() || !root.isDirectory()) {
                finishWithError(p, s, "Seçilen klasöre erişilemiyor");
                return;
            }

            DocumentFile staging = root.findFile(STAGING_NAME);
            if (staging == null) staging = root.createDirectory(STAGING_NAME);
            if (staging == null || !staging.isDirectory()) {
                finishWithError(p, s, "Tek klasör oluşturulamadı");
                return;
            }

            p.edit().putString("phase", "Toplanıyor").apply();
            updateNotification("Tüm görseller tek klasöre taşınıyor");
            consolidateDirectory(root, staging, p, s);
            if (stopRequested.get()) return;

            p.edit().putString("phase", "Kırpılıyor").apply();
            updateNotification("Toplama tamamlandı, kişiler kırpılıyor");
            try (PersonCropEngine engine = new PersonCropEngine(this)) {
                processStaging(staging, engine, p, s);
            }
        } catch (Throwable t) {
            s.errors++;
            p.edit().putInt("errors", s.errors).putString("last_error", String.valueOf(t.getMessage())).apply();
        } finally {
            boolean stopped = stopRequested.get();
            p.edit()
                    .putBoolean("running", false)
                    .putBoolean("finished", !stopped)
                    .putString("phase", stopped ? "Durduruldu" : "Tamamlandı")
                    .apply();
            updateNotification(stopped ? "Durduruldu" : "Tamamlandı");
            running.set(false);
            stopForeground(false);
            stopSelf();
        }
    }

    private void consolidateDirectory(DocumentFile dir, DocumentFile staging, SharedPreferences p, QueueState s) {
        if (stopRequested.get()) return;
        if (sameUri(dir, staging)) return;
        String dirName = dir.getName();
        if (dirName != null && "AkilliKisiKirpma".equalsIgnoreCase(dirName)) return;

        DocumentFile[] children;
        try {
            children = dir.listFiles();
        } catch (Throwable t) {
            recordError(p, s, "Klasör okunamadı: " + safeName(dir));
            return;
        }

        for (DocumentFile child : children) {
            if (stopRequested.get()) return;
            if (child == null) continue;
            if (child.isDirectory()) {
                if (!sameUri(child, staging)) consolidateDirectory(child, staging, p, s);
                continue;
            }
            if (!child.isFile() || !isImage(child)) continue;
            moveIntoStaging(child, dir, staging, p, s);
        }
    }

    private void moveIntoStaging(DocumentFile source, DocumentFile sourceParent, DocumentFile staging,
                                 SharedPreferences p, QueueState s) {
        String originalName = source.getName();
        String name = (originalName == null || originalName.trim().isEmpty())
                ? "fotograf_" + stableId(source.getUri().toString()) + ".jpg" : originalName;
        String mime = source.getType();
        if (mime == null || mime.trim().isEmpty()) mime = "image/jpeg";

        updateNotification("Toplanıyor: " + name);
        p.edit().putString("current", name).apply();

        DocumentFile existing = staging.findFile(name);
        if (existing != null && ConsolidationPolicy.isDuplicate(name, source.length(), existing.getName(), existing.length())) {
            try {
                if (source.delete()) {
                    s.duplicates++;
                    saveCounters(p, s);
                    return;
                }
            } catch (Throwable ignored) {}
            recordError(p, s, "Kopya kaynak silinemedi: " + name);
            return;
        }

        if (existing != null) name = uniqueName(staging, name);

        // Aynı DocumentsProvider içindeyse gerçek taşıma çok daha hızlıdır.
        try {
            String currentName = source.getName();
            if (currentName == null || !currentName.equals(name)) {
                if (!source.renameTo(name)) throw new IllegalStateException("yeniden adlandırma desteklenmiyor");
            }
            Uri moved = DocumentsContract.moveDocument(
                    getContentResolver(), source.getUri(), sourceParent.getUri(), staging.getUri());
            if (moved != null) {
                s.gathered++;
                saveCounters(p, s);
                return;
            }
        } catch (Throwable ignored) {
            // Sağlayıcı moveDocument desteklemiyorsa aşağıdaki güvenli yedek kullanılır.
        }

        String fallbackName = source.getName();
        if (fallbackName == null || fallbackName.trim().isEmpty()) fallbackName = name;
        if (staging.findFile(fallbackName) != null) fallbackName = uniqueName(staging, fallbackName);
        DocumentFile target = null;
        try {
            target = staging.createFile(mime, fallbackName);
            if (target == null) throw new IllegalStateException("hedef dosya oluşturulamadı");
            long sourceSize = source.length();
            long copied = 0L;
            ContentResolver resolver = getContentResolver();
            try (InputStream in = resolver.openInputStream(source.getUri());
                 OutputStream out = resolver.openOutputStream(target.getUri(), "w")) {
                if (in == null || out == null) throw new IllegalStateException("dosya akışı açılamadı");
                byte[] buffer = new byte[1024 * 1024];
                int n;
                while ((n = in.read(buffer)) != -1) {
                    if (stopRequested.get()) throw new InterruptedException("durduruldu");
                    out.write(buffer, 0, n);
                    copied += n;
                }
                out.flush();
            }
            if (sourceSize > 0L && copied != sourceSize) {
                throw new IllegalStateException("taşıma doğrulaması başarısız");
            }
            if (!source.delete()) throw new IllegalStateException("kaynak silinemedi");
            s.gathered++;
            saveCounters(p, s);
        } catch (Throwable t) {
            try { if (target != null) target.delete(); } catch (Throwable ignored) {}
            if (!(t instanceof InterruptedException)) recordError(p, s, "Toplama hatası: " + fallbackName);
        }
    }

    private void processStaging(DocumentFile staging, PersonCropEngine engine, SharedPreferences p, QueueState s) {
        DocumentFile[] files;
        try {
            files = staging.listFiles();
        } catch (Throwable t) {
            recordError(p, s, "Tek klasör okunamadı");
            return;
        }

        for (DocumentFile child : files) {
            if (stopRequested.get()) return;
            if (child == null || !child.isFile() || !isImage(child)) continue;

            Uri uri = child.getUri();
            String name = child.getName();
            String mime = child.getType();
            long stableId = stableId(uri.toString());

            updateNotification("Kırpılıyor: " + (name == null ? "fotoğraf" : name));
            PersonCropEngine.ProcessResult r = engine.process(uri, stableId, name, mime);
            s.processed++;
            s.people += r.detected;
            s.crops += r.saved;
            s.errors += r.failed;

            if (r.originalSaved) {
                boolean deleted = false;
                try { deleted = child.delete(); } catch (Throwable ignored) {}
                if (deleted) s.moved++;
                else recordError(p, s, "İşlenen kaynak silinemedi: " + (name == null ? uri : name));
            }

            p.edit().putString("current", name == null ? "" : name).apply();
            saveCounters(p, s);
        }
    }

    private String uniqueName(DocumentFile dir, String name) {
        String base = name;
        String ext = "";
        int dot = name.lastIndexOf('.');
        if (dot > 0) {
            base = name.substring(0, dot);
            ext = name.substring(dot);
        }
        for (int i = 1; i < 1000000; i++) {
            String candidate = base + " (" + i + ")" + ext;
            if (dir.findFile(candidate) == null) return candidate;
        }
        return base + "_" + System.currentTimeMillis() + ext;
    }

    private void saveCounters(SharedPreferences p, QueueState s) {
        p.edit()
                .putInt("gathered", s.gathered)
                .putInt("duplicates", s.duplicates)
                .putInt("processed", s.processed)
                .putInt("people", s.people)
                .putInt("crops", s.crops)
                .putInt("moved", s.moved)
                .putInt("errors", s.errors)
                .apply();
    }

    private void recordError(SharedPreferences p, QueueState s, String message) {
        s.errors++;
        p.edit().putInt("errors", s.errors).putString("last_error", message).apply();
    }

    private boolean sameUri(DocumentFile a, DocumentFile b) {
        return a != null && b != null && a.getUri().equals(b.getUri());
    }

    private String safeName(DocumentFile file) {
        String n = file == null ? null : file.getName();
        return n == null ? "klasör" : n;
    }

    private boolean isImage(DocumentFile file) {
        String type = file.getType();
        if (type != null && type.toLowerCase(Locale.ROOT).startsWith("image/")) return true;
        String n = file.getName();
        if (n == null) return false;
        n = n.toLowerCase(Locale.ROOT);
        return n.endsWith(".jpg") || n.endsWith(".jpeg") || n.endsWith(".png") ||
                n.endsWith(".webp") || n.endsWith(".bmp") || n.endsWith(".gif") ||
                n.endsWith(".heic") || n.endsWith(".heif");
    }

    private long stableId(String text) {
        long h = 0xcbf29ce484222325L;
        for (int i = 0; i < text.length(); i++) {
            h ^= text.charAt(i);
            h *= 0x100000001b3L;
        }
        return h == Long.MIN_VALUE ? 0 : Math.abs(h);
    }

    private void finishWithError(SharedPreferences p, QueueState s, String message) {
        recordError(p, s, message);
        p.edit()
                .putBoolean("running", false)
                .putBoolean("finished", false)
                .putString("phase", "Hata")
                .apply();
        updateNotification(message);
        running.set(false);
        stopForeground(false);
        stopSelf();
    }

    private void createChannel() {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel ch = new NotificationChannel(CHANNEL, "Kişi kırpma işlemi", NotificationManager.IMPORTANCE_LOW);
            ch.setDescription("Görseller toplanırken ve kişiler kırpılırken gösterilir");
            getSystemService(NotificationManager.class).createNotificationChannel(ch);
        }
    }

    private Notification notification(String text) {
        Intent open = new Intent(this, MainActivity.class);
        PendingIntent pi = PendingIntent.getActivity(this, 0, open,
                PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);
        Notification.Builder b = Build.VERSION.SDK_INT >= 26 ? new Notification.Builder(this, CHANNEL) : new Notification.Builder(this);
        return b.setSmallIcon(R.drawable.ic_launcher)
                .setContentTitle("Akıllı Kişi Kırpma")
                .setContentText(text)
                .setContentIntent(pi)
                .setOngoing(true)
                .setOnlyAlertOnce(true)
                .build();
    }

    private void updateNotification(String text) {
        NotificationManager nm = (NotificationManager) getSystemService(NOTIFICATION_SERVICE);
        nm.notify(NOTIFICATION_ID, notification(text));
    }

    @Override public void onDestroy() {
        stopRequested.set(true);
        executor.shutdownNow();
        super.onDestroy();
    }

    @Override public IBinder onBind(Intent intent) { return null; }
}
