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
import android.os.IBinder;

import androidx.documentfile.provider.DocumentFile;

import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

public class CropForegroundService extends Service {
    public static final String ACTION_START = "com.akillikisikirpma.START";
    public static final String ACTION_STOP = "com.akillikisikirpma.STOP";
    public static final String PREFS = "crop_status";
    public static final String KEY_TREE_URI = "source_tree_uri";

    private static final String CHANNEL = "crop_work";
    private static final int NOTIFICATION_ID = 1907;

    private final ExecutorService executor = Executors.newSingleThreadExecutor();
    private final AtomicBoolean running = new AtomicBoolean(false);
    private final AtomicBoolean stopRequested = new AtomicBoolean(false);

    private static final class QueueState {
        long seenImages;
        long resumeIndex;
        int processed;
        int people;
        int crops;
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
        s.resumeIndex = p.getLong("resume_index", 0L);
        s.processed = p.getInt("processed", 0);
        s.people = p.getInt("people", 0);
        s.crops = p.getInt("crops", 0);
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

            try (PersonCropEngine engine = new PersonCropEngine(this)) {
                processDirectory(root, engine, p, s);
            }
        } catch (Throwable t) {
            s.errors++;
            p.edit().putInt("errors", s.errors).putString("last_error", String.valueOf(t.getMessage())).apply();
        } finally {
            boolean stopped = stopRequested.get();
            p.edit().putBoolean("running", false).putBoolean("finished", !stopped).apply();
            updateNotification(stopped ? "Durduruldu" : "Tamamlandı");
            running.set(false);
            stopForeground(false);
            stopSelf();
        }
    }

    private void processDirectory(DocumentFile dir, PersonCropEngine engine, SharedPreferences p, QueueState s) {
        if (stopRequested.get()) return;
        String dirName = dir.getName();
        if (dirName != null && "AkilliKisiKirpma".equalsIgnoreCase(dirName)) return;

        DocumentFile[] children;
        try {
            children = dir.listFiles();
        } catch (Throwable t) {
            s.errors++;
            p.edit().putInt("errors", s.errors).apply();
            return;
        }

        for (DocumentFile child : children) {
            if (stopRequested.get()) return;
            if (child == null) continue;
            if (child.isDirectory()) {
                processDirectory(child, engine, p, s);
                continue;
            }
            if (!child.isFile() || !isImage(child)) continue;

            long thisIndex = s.seenImages++;
            if (thisIndex < s.resumeIndex) continue;

            Uri uri = child.getUri();
            String name = child.getName();
            String mime = child.getType();
            long stableId = stableId(uri.toString());

            updateNotification("İşleniyor: " + (name == null ? "fotoğraf" : name));
            PersonCropEngine.ProcessResult r = engine.process(uri, stableId, name, mime);
            s.processed++;
            s.people += r.detected;
            s.crops += r.saved;
            s.errors += r.failed;
            s.resumeIndex = thisIndex + 1;

            p.edit()
                    .putLong("resume_index", s.resumeIndex)
                    .putInt("processed", s.processed)
                    .putInt("people", s.people)
                    .putInt("crops", s.crops)
                    .putInt("errors", s.errors)
                    .putString("current", name == null ? "" : name)
                    .apply();
        }
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
        s.errors++;
        p.edit()
                .putInt("errors", s.errors)
                .putString("last_error", message)
                .putBoolean("running", false)
                .putBoolean("finished", false)
                .apply();
        updateNotification(message);
        running.set(false);
        stopForeground(false);
        stopSelf();
    }

    private void createChannel() {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel ch = new NotificationChannel(CHANNEL, "Kişi kırpma işlemi", NotificationManager.IMPORTANCE_LOW);
            ch.setDescription("Fotoğraflar arka planda işlenirken gösterilir");
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
