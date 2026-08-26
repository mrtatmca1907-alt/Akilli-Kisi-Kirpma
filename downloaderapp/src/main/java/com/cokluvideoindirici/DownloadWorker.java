package com.cokluvideoindirici;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.webkit.CookieManager;

import androidx.annotation.NonNull;
import androidx.work.Data;
import androidx.work.ForegroundInfo;
import androidx.work.Worker;
import androidx.work.WorkerParameters;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

public class DownloadWorker extends Worker {
    private static final String CHANNEL_ID = "video_downloads";
    private static final int BUFFER = 128 * 1024;
    private final OkHttpClient client = new OkHttpClient.Builder()
            .followRedirects(true)
            .followSslRedirects(true)
            .retryOnConnectionFailure(true)
            .build();

    private String title;
    private String quality;
    private String referer;
    private String userAgent;
    private int notificationId;

    public DownloadWorker(@NonNull Context appContext, @NonNull WorkerParameters workerParams) {
        super(appContext, workerParams);
    }

    @NonNull
    @Override
    public Result doWork() {
        String url = getInputData().getString("url");
        title = cleanName(getInputData().getString("title"));
        quality = value(getInputData().getString("quality"), "Orijinal");
        referer = value(getInputData().getString("referer"), "");
        userAgent = value(getInputData().getString("userAgent"), "Mozilla/5.0 (Linux; Android 13) AppleWebKit/537.36 Chrome/120 Mobile Safari/537.36");
        boolean hls = getInputData().getBoolean("hls", false);
        notificationId = Math.abs(getId().hashCode());

        if (url == null || url.isEmpty()) return Result.failure();

        try {
            setForegroundAsync(foreground("Hazırlanıyor", 0, 0));
            if (hls || url.toLowerCase(Locale.ROOT).contains(".m3u8")) {
                downloadHls(url);
            } else {
                downloadDirect(url);
            }
            setForegroundAsync(foreground("Tamamlandı", 100, 100));
            return Result.success();
        } catch (UnsupportedOperationException e) {
            Data out = new Data.Builder().putString("error", e.getMessage()).build();
            return Result.failure(out);
        } catch (Exception e) {
            Data out = new Data.Builder().putString("error", e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage()).build();
            return Result.retry();
        }
    }

    private void downloadDirect(String url) throws Exception {
        Request req = request(url).build();
        try (Response response = client.newCall(req).execute()) {
            if (!response.isSuccessful() || response.body() == null) throw new IOException("HTTP " + response.code());
            ResponseBody body = response.body();
            String mime = mime(body.contentType(), url);
            String ext = extensionForMime(mime, url);
            Uri dest = createDestination(title + " " + quality + " " + System.currentTimeMillis() + ext, mime);
            if (dest == null) throw new IOException("Kayıt dosyası açılamadı");
            boolean ok = false;
            try (InputStream in = new BufferedInputStream(body.byteStream());
                 OutputStream out = getApplicationContext().getContentResolver().openOutputStream(dest, "w")) {
                if (out == null) throw new IOException("Çıktı açılamadı");
                long total = body.contentLength();
                long done = 0;
                long lastUpdate = 0;
                byte[] buf = new byte[BUFFER];
                int n;
                while ((n = in.read(buf)) != -1) {
                    if (isStopped()) throw new IOException("İndirme durduruldu");
                    out.write(buf, 0, n);
                    done += n;
                    long now = System.currentTimeMillis();
                    if (now - lastUpdate > 900) {
                        int p = total > 0 ? (int) Math.min(99, (done * 100L) / total) : 0;
                        setForegroundAsync(foreground(total > 0 ? (p + "%") : human(done), p, total > 0 ? 100 : 0));
                        lastUpdate = now;
                    }
                }
                out.flush();
                ok = true;
            } finally {
                if (ok) finishDestination(dest);
                else getApplicationContext().getContentResolver().delete(dest, null, null);
            }
        }
    }

    private void downloadHls(String selectedUrl) throws Exception {
        PlaylistData data = fetchPlaylist(selectedUrl);
        if (data.master) {
            String best = chooseBestCombinedVariant(selectedUrl, data.text);
            if (best == null) throw new UnsupportedOperationException("Bu HLS akışında görüntü ve ses ayrı; birleştirme desteklenmiyor.");
            data = fetchPlaylist(best);
            selectedUrl = best;
        }

        String text = data.text.replace("\r", "");
        String[] lines = text.split("\n");
        String mapUri = null;
        List<String> segments = new ArrayList<>();
        boolean byteRange = false;

        for (String raw : lines) {
            String line = raw.trim();
            if (line.startsWith("#EXT-X-KEY:")) {
                String upper = line.toUpperCase(Locale.ROOT);
                if (!upper.contains("METHOD=NONE")) {
                    throw new UnsupportedOperationException("Şifreli/DRM HLS akışı indirilmiyor.");
                }
            }
            if (line.startsWith("#EXT-X-BYTERANGE")) byteRange = true;
            if (line.startsWith("#EXT-X-MAP:")) {
                Matcher m = Pattern.compile("URI=\"([^\"]+)\"").matcher(line);
                if (m.find()) mapUri = resolve(selectedUrl, m.group(1));
                if (line.toUpperCase(Locale.ROOT).contains("BYTERANGE=")) byteRange = true;
            }
            if (!line.isEmpty() && !line.startsWith("#")) segments.add(resolve(selectedUrl, line));
        }

        if (byteRange) throw new UnsupportedOperationException("Byte-range HLS bu sürümde desteklenmiyor.");
        if (segments.isEmpty()) throw new IOException("HLS parçası bulunamadı");

        boolean fragmentedMp4 = mapUri != null;
        if (!fragmentedMp4) {
            for (String s : segments) {
                String lower = s.toLowerCase(Locale.ROOT);
                if (lower.contains(".m4s") || lower.contains(".mp4")) { fragmentedMp4 = true; break; }
            }
        }
        String ext = fragmentedMp4 ? ".mp4" : ".ts";
        String mime = fragmentedMp4 ? "video/mp4" : "video/mp2t";
        Uri dest = createDestination(title + " " + quality + " " + System.currentTimeMillis() + ext, mime);
        if (dest == null) throw new IOException("Kayıt dosyası açılamadı");

        boolean ok = false;
        try (OutputStream out = getApplicationContext().getContentResolver().openOutputStream(dest, "w")) {
            if (out == null) throw new IOException("Çıktı açılamadı");
            if (mapUri != null) copyUrl(mapUri, out);
            for (int i = 0; i < segments.size(); i++) {
                if (isStopped()) throw new IOException("İndirme durduruldu");
                copyUrl(segments.get(i), out);
                int done = i + 1;
                int p = (done * 100) / segments.size();
                setForegroundAsync(foreground(done + "/" + segments.size() + " parça", p, 100));
            }
            out.flush();
            ok = true;
        } finally {
            if (ok) finishDestination(dest);
            else getApplicationContext().getContentResolver().delete(dest, null, null);
        }
    }

    private PlaylistData fetchPlaylist(String url) throws IOException {
        try (Response r = client.newCall(request(url).build()).execute()) {
            if (!r.isSuccessful() || r.body() == null) throw new IOException("HLS HTTP " + r.code());
            String text = r.body().string();
            return new PlaylistData(text, text.contains("#EXT-X-STREAM-INF:"));
        }
    }

    private String chooseBestCombinedVariant(String base, String master) {
        String[] lines = master.replace("\r", "").split("\n");
        long bestBandwidth = -1;
        String bestUrl = null;
        for (int i = 0; i < lines.length; i++) {
            String line = lines[i].trim();
            if (!line.startsWith("#EXT-X-STREAM-INF:")) continue;
            if (line.toUpperCase(Locale.ROOT).contains("AUDIO=")) continue;
            String next = null;
            for (int j = i + 1; j < lines.length; j++) {
                String x = lines[j].trim();
                if (x.isEmpty() || x.startsWith("#")) continue;
                next = x;
                break;
            }
            if (next == null) continue;
            long bw = 0;
            Matcher m = Pattern.compile("BANDWIDTH=(\\d+)", Pattern.CASE_INSENSITIVE).matcher(line);
            if (m.find()) {
                try { bw = Long.parseLong(m.group(1)); } catch (Exception ignored) { }
            }
            if (bw > bestBandwidth) {
                bestBandwidth = bw;
                bestUrl = resolve(base, next);
            }
        }
        return bestUrl;
    }

    private void copyUrl(String url, OutputStream out) throws IOException {
        try (Response r = client.newCall(request(url).build()).execute()) {
            if (!r.isSuccessful() || r.body() == null) throw new IOException("Parça HTTP " + r.code());
            try (InputStream in = new BufferedInputStream(r.body().byteStream())) {
                byte[] buf = new byte[BUFFER];
                int n;
                while ((n = in.read(buf)) != -1) {
                    if (isStopped()) throw new IOException("İndirme durduruldu");
                    out.write(buf, 0, n);
                }
            }
        }
    }

    private Request.Builder request(String url) {
        Request.Builder b = new Request.Builder().url(url).header("User-Agent", userAgent);
        if (!referer.isEmpty()) b.header("Referer", referer);
        try {
            String cookie = CookieManager.getInstance().getCookie(url);
            if (cookie != null && !cookie.isEmpty()) b.header("Cookie", cookie);
        } catch (Throwable ignored) { }
        return b;
    }

    private Uri createDestination(String fileName, String mime) {
        ContentValues v = new ContentValues();
        v.put(MediaStore.Video.Media.DISPLAY_NAME, cleanName(fileName));
        v.put(MediaStore.Video.Media.MIME_TYPE, mime);
        v.put(MediaStore.Video.Media.RELATIVE_PATH, Environment.DIRECTORY_MOVIES + "/CokluVideoIndirici");
        v.put(MediaStore.Video.Media.IS_PENDING, 1);
        return getApplicationContext().getContentResolver().insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, v);
    }

    private void finishDestination(Uri uri) {
        ContentValues v = new ContentValues();
        v.put(MediaStore.Video.Media.IS_PENDING, 0);
        getApplicationContext().getContentResolver().update(uri, v, null, null);
    }

    private ForegroundInfo foreground(String status, int progress, int max) {
        Context c = getApplicationContext();
        NotificationManager nm = (NotificationManager) c.getSystemService(Context.NOTIFICATION_SERVICE);
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel channel = new NotificationChannel(CHANNEL_ID, "Video indirmeleri", NotificationManager.IMPORTANCE_LOW);
            channel.setDescription("Çoklu Video İndirici indirme durumu");
            nm.createNotificationChannel(channel);
        }

        Intent open = new Intent(c, MainActivity.class);
        PendingIntent pi = PendingIntent.getActivity(c, 0, open, PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);
        Notification.Builder b = Build.VERSION.SDK_INT >= 26 ? new Notification.Builder(c, CHANNEL_ID) : new Notification.Builder(c);
        b.setSmallIcon(android.R.drawable.stat_sys_download)
                .setContentTitle(title + " • " + quality)
                .setContentText(status)
                .setOnlyAlertOnce(true)
                .setOngoing(progress < 100)
                .setContentIntent(pi);
        if (max > 0) b.setProgress(max, Math.max(0, Math.min(progress, max)), false);
        else b.setProgress(0, 0, true);
        Notification n = b.build();
        if (Build.VERSION.SDK_INT >= 29) {
            return new ForegroundInfo(notificationId, n, ServiceInfo.FOREGROUND_SERVICE_TYPE_DATA_SYNC);
        }
        return new ForegroundInfo(notificationId, n);
    }

    private static String mime(MediaType mt, String url) {
        if (mt != null && mt.type().equalsIgnoreCase("video")) return mt.type() + "/" + mt.subtype();
        String u = url.toLowerCase(Locale.ROOT);
        if (u.contains(".webm")) return "video/webm";
        if (u.contains(".mov")) return "video/quicktime";
        if (u.contains(".mkv")) return "video/x-matroska";
        if (u.contains(".ts")) return "video/mp2t";
        return "video/mp4";
    }

    private static String extensionForMime(String mime, String url) {
        String m = mime.toLowerCase(Locale.ROOT);
        if (m.contains("webm")) return ".webm";
        if (m.contains("quicktime")) return ".mov";
        if (m.contains("matroska")) return ".mkv";
        if (m.contains("mp2t")) return ".ts";
        String path = Uri.parse(url).getLastPathSegment();
        if (path != null) {
            String p = path.toLowerCase(Locale.ROOT);
            for (String e : new String[]{".mp4", ".webm", ".m4v", ".mov", ".mkv", ".ts"}) if (p.endsWith(e)) return e;
        }
        return ".mp4";
    }

    private static String resolve(String base, String child) {
        try { return new URL(new URL(base), child).toString(); }
        catch (Exception e) { return child; }
    }

    private static String cleanName(String s) {
        String x = value(s, "video").trim().replaceAll("[\\\\/:*?\"<>|]", "_");
        if (x.length() > 120) x = x.substring(0, 120);
        return x.isEmpty() ? "video" : x;
    }

    private static String value(String s, String fallback) {
        return s == null || s.trim().isEmpty() ? fallback : s;
    }

    private static String human(long bytes) {
        if (bytes < 1024L * 1024L) return (bytes / 1024L) + " KB";
        return String.format(Locale.ROOT, "%.1f MB", bytes / 1048576.0);
    }

    private static final class PlaylistData {
        final String text;
        final boolean master;
        PlaylistData(String text, boolean master) { this.text = text; this.master = master; }
    }
}
