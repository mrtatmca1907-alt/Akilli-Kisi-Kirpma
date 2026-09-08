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
import android.provider.OpenableColumns;
import android.database.Cursor;

import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

public class UnifiedCropService extends Service {
    public static final String ACTION_FOLDER = "com.akillikisikirpma.UNIFIED_FOLDER";
    public static final String ACTION_URIS = "com.akillikisikirpma.UNIFIED_URIS";
    public static final String ACTION_SCREENSHOTS = "com.akillikisikirpma.UNIFIED_SCREENSHOTS";
    public static final String ACTION_STOP = "com.akillikisikirpma.UNIFIED_STOP";
    public static final String EXTRA_PATH = "path";
    public static final String EXTRA_URIS = "uris";
    public static final String PREFS = "unified_crop_status";

    private static final String COMPLETED = "completed_keys";
    private static final String CHANNEL = "unified_crop";
    private static final int NOTIFICATION_ID = 1910;

    private final ExecutorService executor = Executors.newSingleThreadExecutor();
    private final AtomicBoolean running = new AtomicBoolean(false);
    private final AtomicBoolean stop = new AtomicBoolean(false);

    @Override public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel ch = new NotificationChannel(CHANNEL, "ATMACA kişi kırpma", NotificationManager.IMPORTANCE_LOW);
            getSystemService(NotificationManager.class).createNotificationChannel(ch);
        }
    }

    @Override public int onStartCommand(Intent intent, int flags, int startId) {
        if (intent == null) return START_NOT_STICKY;
        String action = intent.getAction();
        if (ACTION_STOP.equals(action)) {
            stop.set(true);
            return START_NOT_STICKY;
        }
        if (!running.compareAndSet(false, true)) return START_STICKY;
        stop.set(false);
        startForeground(NOTIFICATION_ID, notification("Hazırlanıyor"));
        executor.submit(() -> runJob(intent));
        return START_STICKY;
    }

    private void runJob(Intent intent) {
        SharedPreferences p = getSharedPreferences(PREFS, MODE_PRIVATE);
        int processed = 0, skipped = 0, people = 0, crops = 0, errors = 0;
        p.edit().putBoolean("running", true).putString("phase", "Başlıyor").apply();
        CompletedKeyIndex completed = new CompletedKeyIndex(p.getStringSet(COMPLETED, new HashSet<>()));
        try (PersonCropEngine engine = new PersonCropEngine(this)) {
            ArrayList<Uri> work = collectWork(intent);
            int total = work.size();
            p.edit().putInt("total", total).apply();
            for (int i = 0; i < total && !stop.get(); i++) {
                Uri uri = work.get(i);
                String key = stableKey(uri);
                if (completed.isCompleted(key)) {
                    skipped++;
                    continue;
                }
                String name = displayName(uri);
                p.edit().putString("phase", "İşleniyor " + (i + 1) + "/" + total).putString("current", name).apply();
                updateNotification((i + 1) + "/" + total + " • " + name);
                try {
                    PersonCropEngine.ProcessResult r = engine.process(uri, stableId(key), name, mimeFor(name));
                    processed++;
                    people += r.detected;
                    crops += r.saved;
                    errors += r.failed;
                    if (r.failed == 0 || r.saved > 0 || r.originalSaved) {
                        if (completed.markCompleted(key)) p.edit().putStringSet(COMPLETED, completed.snapshot()).apply();
                    }
                } catch (Throwable t) {
                    errors++;
                    p.edit().putString("last_error", String.valueOf(t.getMessage())).apply();
                }
                p.edit().putInt("processed", processed).putInt("skipped", skipped).putInt("people", people)
                        .putInt("crops", crops).putInt("errors", errors).apply();
            }
        } catch (Throwable t) {
            errors++;
            p.edit().putString("last_error", String.valueOf(t.getMessage())).apply();
        } finally {
            boolean stopped = stop.get();
            p.edit().putBoolean("running", false).putString("phase", stopped ? "Durduruldu" : "Tamamlandı")
                    .putInt("processed", processed).putInt("skipped", skipped).putInt("people", people)
                    .putInt("crops", crops).putInt("errors", errors).apply();
            updateNotification(stopped ? "Durduruldu" : "Tamamlandı");
            running.set(false);
            stopForeground(false);
            stopSelf();
        }
    }

    private ArrayList<Uri> collectWork(Intent intent) {
        ArrayList<Uri> out = new ArrayList<>();
        String action = intent.getAction();
        if (ACTION_URIS.equals(action)) {
            ArrayList<Uri> uris = intent.getParcelableArrayListExtra(EXTRA_URIS);
            if (uris != null) out.addAll(uris);
            return out;
        }
        if (ACTION_FOLDER.equals(action)) {
            String path = intent.getStringExtra(EXTRA_PATH);
            if (path != null) collectFiles(new File(path), out);
            return out;
        }
        if (ACTION_SCREENSHOTS.equals(action)) {
            File pictures = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "Screenshots");
            File dcim = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM), "Screenshots");
            collectFiles(pictures, out);
            if (!samePath(pictures, dcim)) collectFiles(dcim, out);
        }
        return out;
    }

    private void collectFiles(File dir, ArrayList<Uri> out) {
        if (stop.get() || dir == null || !dir.isDirectory()) return;
        File[] children = dir.listFiles();
        if (children == null) return;
        for (File f : children) {
            if (stop.get()) return;
            if (f.isDirectory()) collectFiles(f, out);
            else if (f.isFile() && isImage(f.getName())) out.add(Uri.fromFile(f));
        }
    }

    private boolean samePath(File a, File b) {
        try { return a.getCanonicalPath().equals(b.getCanonicalPath()); }
        catch (Throwable t) { return a.equals(b); }
    }

    private boolean isImage(String name) {
        String n = name.toLowerCase(Locale.ROOT);
        return n.endsWith(".jpg") || n.endsWith(".jpeg") || n.endsWith(".png") || n.endsWith(".webp") ||
                n.endsWith(".bmp") || n.endsWith(".heic") || n.endsWith(".heif");
    }

    private String displayName(Uri uri) {
        if ("file".equalsIgnoreCase(uri.getScheme()) && uri.getPath() != null) return new File(uri.getPath()).getName();
        try (Cursor c = getContentResolver().query(uri, new String[]{OpenableColumns.DISPLAY_NAME}, null, null, null)) {
            if (c != null && c.moveToFirst()) {
                String n = c.getString(0);
                if (n != null && !n.isEmpty()) return n;
            }
        } catch (Throwable ignored) {}
        return "fotograf_" + Math.abs(uri.toString().hashCode()) + ".jpg";
    }

    private String stableKey(Uri uri) {
        if ("file".equalsIgnoreCase(uri.getScheme()) && uri.getPath() != null) {
            File f = new File(uri.getPath());
            return f.getAbsolutePath() + "|" + f.length() + "|" + f.lastModified();
        }
        return uri.toString();
    }

    private long stableId(String text) {
        long h = 1125899906842597L;
        for (int i = 0; i < text.length(); i++) h = 31 * h + text.charAt(i);
        return h == Long.MIN_VALUE ? 0 : Math.abs(h);
    }

    private String mimeFor(String name) {
        String n = name.toLowerCase(Locale.ROOT);
        if (n.endsWith(".png")) return "image/png";
        if (n.endsWith(".webp")) return "image/webp";
        if (n.endsWith(".heic") || n.endsWith(".heif")) return "image/heic";
        return "image/jpeg";
    }

    private Notification notification(String text) {
        Intent open = new Intent(this, MainActivity.class);
        PendingIntent pi = PendingIntent.getActivity(this, 0, open, PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);
        Notification.Builder b = Build.VERSION.SDK_INT >= 26 ? new Notification.Builder(this, CHANNEL) : new Notification.Builder(this);
        return b.setSmallIcon(R.drawable.ic_launcher).setContentTitle("ATMACA Kişi Kırpma")
                .setContentText(text).setContentIntent(pi).setOngoing(true).setOnlyAlertOnce(true).build();
    }

    private void updateNotification(String text) {
        ((NotificationManager) getSystemService(NOTIFICATION_SERVICE)).notify(NOTIFICATION_ID, notification(text));
    }

    @Override public void onDestroy() {
        stop.set(true);
        executor.shutdownNow();
        super.onDestroy();
    }

    @Override public IBinder onBind(Intent intent) { return null; }
}
