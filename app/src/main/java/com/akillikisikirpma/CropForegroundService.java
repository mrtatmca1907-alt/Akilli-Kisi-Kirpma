package com.akillikisikirpma;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.provider.MediaStore;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

public class CropForegroundService extends Service {
    public static final String ACTION_START = "com.akillikisikirpma.START";
    public static final String ACTION_STOP = "com.akillikisikirpma.STOP";
    public static final String PREFS = "crop_status";

    private static final String CHANNEL = "crop_work";
    private static final int NOTIFICATION_ID = 1907;

    private final ExecutorService executor = Executors.newSingleThreadExecutor();
    private final AtomicBoolean running = new AtomicBoolean(false);
    private final AtomicBoolean stopRequested = new AtomicBoolean(false);

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
        long lastId = p.getLong("last_id", 0L);
        int processed = p.getInt("processed", 0);
        int people = p.getInt("people", 0);
        int crops = p.getInt("crops", 0);
        int errors = p.getInt("errors", 0);
        p.edit().putBoolean("running", true).putBoolean("finished", false).apply();

        String[] projection = {
                MediaStore.Images.Media._ID,
                MediaStore.Images.Media.DISPLAY_NAME,
                MediaStore.Images.Media.MIME_TYPE,
                MediaStore.Images.Media.RELATIVE_PATH
        };
        String selection = MediaStore.Images.Media._ID + ">? AND (" +
                MediaStore.Images.Media.RELATIVE_PATH + " IS NULL OR " +
                MediaStore.Images.Media.RELATIVE_PATH + " NOT LIKE ?)";
        String[] args = {String.valueOf(lastId), "%AkilliKisiKirpma/%"};
        String order = MediaStore.Images.Media._ID + " ASC";

        try (PersonCropEngine engine = new PersonCropEngine(this);
             Cursor c = getContentResolver().query(
                     MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                     projection, selection, args, order)) {

            if (c != null) {
                int idCol = c.getColumnIndexOrThrow(MediaStore.Images.Media._ID);
                int nameCol = c.getColumnIndexOrThrow(MediaStore.Images.Media.DISPLAY_NAME);
                int mimeCol = c.getColumnIndexOrThrow(MediaStore.Images.Media.MIME_TYPE);

                while (!stopRequested.get() && c.moveToNext()) {
                    long id = c.getLong(idCol);
                    String name = c.getString(nameCol);
                    String mime = c.getString(mimeCol);
                    Uri uri = ContentUris.withAppendedId(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, id);

                    updateNotification("İşleniyor: " + (name == null ? id : name));
                    PersonCropEngine.ProcessResult r = engine.process(uri, id, name, mime);
                    processed++;
                    people += r.detected;
                    crops += r.saved;
                    errors += r.failed;
                    lastId = id;

                    p.edit()
                            .putLong("last_id", lastId)
                            .putInt("processed", processed)
                            .putInt("people", people)
                            .putInt("crops", crops)
                            .putInt("errors", errors)
                            .putString("current", name == null ? "" : name)
                            .apply();
                }
            }
        } catch (Throwable t) {
            errors++;
            p.edit().putInt("errors", errors).putString("last_error", String.valueOf(t.getMessage())).apply();
        } finally {
            boolean stopped = stopRequested.get();
            p.edit().putBoolean("running", false).putBoolean("finished", !stopped).apply();
            updateNotification(stopped ? "Durduruldu" : "Tamamlandı");
            running.set(false);
            stopForeground(false);
            stopSelf();
        }
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
