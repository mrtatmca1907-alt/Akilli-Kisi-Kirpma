package com.gorselavcisi;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.IBinder;
import android.provider.MediaStore;

import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;

import org.json.JSONArray;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class HunterService extends Service {
    public static final String ACTION_START = "com.gorselavcisi.START";
    public static final String ACTION_STOP = "com.gorselavcisi.STOP";

    private static final String CHANNEL = "gorsel_avcisi_tarama";
    private static final int NOTIFICATION_ID = 1908;
    private static final String UA = "Mozilla/5.0 (Linux; Android 13) AppleWebKit/537.36 Chrome/126 Mobile Safari/537.36";
    private static final AtomicBoolean STOP = new AtomicBoolean(false);
    private static final AtomicBoolean RUNNING = new AtomicBoolean(false);

    private final ExecutorService executor = Executors.newSingleThreadExecutor();
    private HunterDb db;
    private SharedPreferences prefs;
    private NotificationManager notificationManager;
    private String query;
    private String aliases;
    private String mode;
    private String outputMode;
    private String slug;
    private OutputManager output;
    private int savedSinceNotification = 0;

    @Override public void onCreate() {
        super.onCreate();
        db = new HunterDb(this);
        prefs = getSharedPreferences("hunter_status", MODE_PRIVATE);
        notificationManager = getSystemService(NotificationManager.class);
        createChannel();
    }

    @Override public int onStartCommand(Intent intent, int flags, int startId) {
        String action = intent == null ? null : intent.getAction();
        if (ACTION_STOP.equals(action)) {
            STOP.set(true);
            publish("Durdurma isteniyor…", "-");
            return START_NOT_STICKY;
        }

        if (!ACTION_START.equals(action) || RUNNING.get()) return START_NOT_STICKY;

        query = safe(intent.getStringExtra("query")).trim();
        aliases = safe(intent.getStringExtra("aliases")).trim();
        mode = safe(intent.getStringExtra("mode"));
        outputMode = safe(intent.getStringExtra("output"));
        if (mode.isEmpty()) mode = "DEEP";
        if (outputMode.isEmpty()) outputMode = "BOTH";
        slug = slugify(query);

        STOP.set(false);
        RUNNING.set(true);
        startForeground(NOTIFICATION_ID, buildNotification("Hazırlanıyor…"));
        prefs.edit().putBoolean("running", true).apply();

        executor.submit(this::runHunter);
        return START_NOT_STICKY;
    }

    private void runHunter() {
        try {
            boolean resume = db.prepareQuery(query);
            output = new OutputManager(this, slug, outputMode);
            publish(resume ? "Önceki taramadan devam ediliyor…" : "Yeni av başlatılıyor…", "Başlangıç");

            // Daha önce keşfedilip yarım kalmış dosyalar varsa önce onları bitir.
            drainPending();

            for (String term : buildTerms()) {
                if (stopped()) break;
                searchWikimedia(term);
                if (stopped()) break;
                searchBingImages(term);
                if (stopped()) break;
                searchBingWeb(term, false);
                if (stopped()) break;
                if (!"FAST".equals(mode)) searchDuckDuckGo(term);

                if (!"FAST".equals(mode)) {
                    for (String domain : Arrays.asList(
                            "pinterest.com", "instagram.com", "facebook.com", "x.com",
                            "tiktok.com", "threads.net", "youtube.com", "flickr.com",
                            "tumblr.com", "reddit.com", "imdb.com", "gettyimages.com",
                            "alamy.com", "shutterstock.com")) {
                        if (stopped()) break;
                        searchBingWeb("\"" + term + "\" site:" + domain, true);
                    }
                }
            }

            if (!stopped()) {
                drainPending();
                publish("Kaynak listeleri hazırlanıyor…", "Arşiv");
            }

            if (output != null) {
                output.finish();
                exportLists();
            }

            if (stopped()) {
                publishFinal("Durduruldu. Bulunanlar kaydedildi.");
            } else {
                publishFinal("Tarama tamamlandı. Ulaşılabilen kaynaklar işlendi.");
            }
        } catch (Throwable t) {
            publishFinal("Tarama hatası: " + shortText(t.getMessage()));
        } finally {
            try { if (output != null) output.closeQuietly(); } catch (Throwable ignored) {}
            RUNNING.set(false);
            prefs.edit().putBoolean("running", false).apply();
            if (Build.VERSION.SDK_INT >= 24) stopForeground(STOP_FOREGROUND_REMOVE);
            else stopForeground(true);
            stopSelf();
        }
    }

    private List<String> buildTerms() {
        LinkedHashSet<String> terms = new LinkedHashSet<>();
        terms.add(query);
        if (!aliases.isEmpty()) {
            for (String a : aliases.split(",")) if (a.trim().length() > 1) terms.add(a.trim());
        }
        if (!"FAST".equals(mode)) {
            terms.add(query + " fotoğraf");
            terms.add(query + " photo");
            terms.add(query + " images");
            terms.add(query + " galeri");
            terms.add(query + " gallery");
            terms.add(query + " video");
            terms.add(query + " fotos");
            terms.add(query + " bilder");
        }
        return new ArrayList<>(terms);
    }

    private void searchWikimedia(String term) {
        int offset = 0;
        int page = 0;
        int noNew = 0;
        int maxPages = "FAST".equals(mode) ? 2 : "DEEP".equals(mode) ? 12 : Integer.MAX_VALUE;
        while (!stopped() && page < maxPages && noNew < 3) {
            try {
                publish("Wikimedia taranıyor…", "Wikimedia Commons");
                String u = "https://commons.wikimedia.org/w/api.php?action=query&format=json&generator=search" +
                        "&gsrnamespace=6&gsrlimit=50&gsroffset=" + offset +
                        "&gsrsearch=" + enc(term) +
                        "&prop=imageinfo%7Cinfo&inprop=url&iiprop=url%7Csize%7Cmime";
                JSONObject root = new JSONObject(httpText(u));
                JSONObject pages = root.optJSONObject("query") == null ? null : root.optJSONObject("query").optJSONObject("pages");
                int added = 0;
                if (pages != null) {
                    for (String key : pages.keySet()) {
                        JSONObject p = pages.optJSONObject(key);
                        if (p == null) continue;
                        JSONArray ii = p.optJSONArray("imageinfo");
                        if (ii == null || ii.length() == 0) continue;
                        JSONObject inf = ii.optJSONObject(0);
                        if (inf == null) continue;
                        String mime = inf.optString("mime", "");
                        if (!mime.startsWith("image/")) continue;
                        String image = inf.optString("url", "");
                        String source = p.optString("fullurl", "https://commons.wikimedia.org/");
                        if (addCandidate(image, "image", source)) added++;
                    }
                }
                noNew = added == 0 ? noNew + 1 : 0;
                offset += 50;
                page++;
                drainPending();
                nap(350);
            } catch (Throwable e) {
                noNew++;
                page++;
                nap(700);
            }
        }
    }

    private void searchBingImages(String term) {
        int page = 0;
        int noNew = 0;
        int maxPages = "FAST".equals(mode) ? 4 : "DEEP".equals(mode) ? 25 : Integer.MAX_VALUE;
        while (!stopped() && page < maxPages && noNew < 5) {
            try {
                publish("Görsel sonuçları taranıyor…", "Bing Görseller");
                int first = 1 + page * 35;
                String url = "https://www.bing.com/images/search?q=" + enc(term) + "&first=" + first + "&count=35&safeSearch=Off";
                Document doc = getDoc(url);
                int added = 0;
                for (Element e : doc.select("a.iusc[m]")) {
                    try {
                        JSONObject m = new JSONObject(e.attr("m"));
                        String image = m.optString("murl", "");
                        String source = m.optString("purl", url);
                        if (addCandidate(image, "image", source)) added++;
                    } catch (Throwable ignored) {}
                }
                noNew = added == 0 ? noNew + 1 : 0;
                page++;
                drainPending();
                nap(450);
            } catch (Throwable e) {
                noNew++;
                page++;
                nap(900);
            }
        }
    }

    private void searchBingWeb(String term, boolean targeted) {
        int page = 0;
        int noNew = 0;
        int maxPages;
        if ("FAST".equals(mode)) maxPages = 2;
        else if ("DEEP".equals(mode)) maxPages = targeted ? 3 : 8;
        else maxPages = targeted ? 12 : Integer.MAX_VALUE;

        while (!stopped() && page < maxPages && noNew < 4) {
            try {
                publish("Web kaynakları taranıyor…", "Bing Web");
                int first = 1 + page * 10;
                String url = "https://www.bing.com/search?q=" + enc(term) + "&first=" + first + "&count=10&setlang=tr";
                Document doc = getDoc(url);
                int before = totalCandidates();
                int crawled = 0;
                for (Element a : doc.select("li.b_algo h2 a[href]")) {
                    if (stopped() || crawled >= 10) break;
                    String pageUrl = cleanUrl(a.attr("href"));
                    if (pageUrl == null) continue;
                    if (isKnownVideoPage(pageUrl)) addCandidate(pageUrl, "video_link", pageUrl);
                    crawlPage(pageUrl);
                    crawled++;
                    nap(250);
                }
                int added = Math.max(0, totalCandidates() - before);
                noNew = added == 0 ? noNew + 1 : 0;
                page++;
                drainPending();
                nap(500);
            } catch (Throwable e) {
                noNew++;
                page++;
                nap(900);
            }
        }
    }

    private void searchDuckDuckGo(String term) {
        int page = 0;
        int noNew = 0;
        int maxPages = "DEEP".equals(mode) ? 5 : 15;
        while (!stopped() && page < maxPages && noNew < 3) {
            try {
                publish("Ek web kaynakları taranıyor…", "DuckDuckGo");
                String url = "https://html.duckduckgo.com/html/?q=" + enc(term) + "&s=" + (page * 30);
                Document doc = getDoc(url);
                int before = totalCandidates();
                int crawled = 0;
                for (Element a : doc.select("a.result__a[href]")) {
                    if (stopped() || crawled >= 12) break;
                    String href = a.attr("href");
                    String decoded = extractDuckTarget(href);
                    String pageUrl = cleanUrl(decoded);
                    if (pageUrl == null) continue;
                    if (isKnownVideoPage(pageUrl)) addCandidate(pageUrl, "video_link", pageUrl);
                    crawlPage(pageUrl);
                    crawled++;
                    nap(250);
                }
                int added = Math.max(0, totalCandidates() - before);
                noNew = added == 0 ? noNew + 1 : 0;
                page++;
                drainPending();
                nap(550);
            } catch (Throwable e) {
                noNew++;
                page++;
                nap(900);
            }
        }
    }

    private void crawlPage(String pageUrl) {
        try {
            publish("Sayfa inceleniyor…", host(pageUrl));
            Document doc = Jsoup.connect(pageUrl)
                    .userAgent(UA)
                    .referrer("https://www.bing.com/")
                    .timeout(12000)
                    .maxBodySize(5 * 1024 * 1024)
                    .followRedirects(true)
                    .get();

            for (Element m : doc.select("meta[property=og:image],meta[name=twitter:image],link[rel=image_src]")) {
                String v = m.hasAttr("content") ? m.attr("content") : m.attr("href");
                addCandidate(abs(pageUrl, v), "image", pageUrl);
            }
            for (Element m : doc.select("meta[property=og:video],meta[property=og:video:url],meta[property=og:video:secure_url]")) {
                String v = m.attr("content");
                String u = abs(pageUrl, v);
                if (looksVideoFile(u)) addCandidate(u, "video", pageUrl);
                else if (u != null) addCandidate(u, "video_link", pageUrl);
            }
            for (Element img : doc.select("img")) {
                String v = firstNonEmpty(img.attr("data-src"), img.attr("data-original"), img.attr("src"));
                addCandidate(abs(pageUrl, v), "image", pageUrl);
                String srcset = img.attr("srcset");
                if (!srcset.isEmpty()) {
                    for (String part : srcset.split(",")) {
                        String candidate = part.trim().split("\\s+")[0];
                        addCandidate(abs(pageUrl, candidate), "image", pageUrl);
                    }
                }
            }
            for (Element s : doc.select("video[src],video source[src],source[type^=video][src]")) {
                String u = abs(pageUrl, s.attr("src"));
                if (looksVideoFile(u)) addCandidate(u, "video", pageUrl);
                else if (u != null) addCandidate(u, "video_link", pageUrl);
            }
            for (Element a : doc.select("a[href]")) {
                String u = abs(pageUrl, a.attr("href"));
                if (looksImageFile(u)) addCandidate(u, "image", pageUrl);
                else if (looksVideoFile(u)) addCandidate(u, "video", pageUrl);
                else if (isKnownVideoPage(u)) addCandidate(u, "video_link", pageUrl);
            }
        } catch (Throwable ignored) {
            // Zorlayan, giriş isteyen veya bot engeli koyan kaynak sessizce atlanır.
        }
    }

    private boolean addCandidate(String url, String kind, String source) {
        String clean = cleanUrl(url);
        if (clean == null) return false;
        if ("image".equals(kind) && isLikelyJunkAsset(clean)) return false;
        boolean added = db.add(clean, kind, source);
        if (added) publishCounts();
        return added;
    }

    private void drainPending() {
        while (!stopped()) {
            List<HunterDb.Row> rows = db.pending(40);
            if (rows.isEmpty()) return;
            for (HunterDb.Row row : rows) {
                if (stopped()) return;
                if ("video_link".equals(row.kind)) {
                    db.status(row.url, "saved", "Video_Linkleri.txt", null);
                    publishCounts();
                    continue;
                }
                try {
                    publish("İndiriliyor…", host(row.source));
                    OutputManager.DownloadResult r = output.download(row);
                    if (r.duplicate) db.status(row.url, "duplicate", null, r.hash);
                    else if (r.saved) db.status(row.url, "saved", r.filename, r.hash);
                    else db.status(row.url, "skipped", null, r.hash);
                } catch (Throwable e) {
                    db.status(row.url, "error", null, null);
                }
                publishCounts();
                savedSinceNotification++;
                if (savedSinceNotification >= 20) {
                    savedSinceNotification = 0;
                    updateNotification("Foto: " + db.counts()[0] + " • Video: " + db.counts()[1] + " • Kayıt: " + db.counts()[2]);
                }
                nap(120);
            }
        }
    }

    private void exportLists() {
        try {
            StringBuilder videos = new StringBuilder();
            for (HunterDb.Row r : db.allVideoLinks()) {
                videos.append(r.url).append('\n');
                if (r.source != null && !r.source.equals(r.url)) videos.append("Kaynak: ").append(r.source).append('\n');
                videos.append('\n');
            }
            output.writeText("Video_Linkleri.txt", videos.toString());
        } catch (Throwable ignored) {}

        try {
            StringBuilder csv = new StringBuilder("tur,durum,dosya,url,kaynak\n");
            for (HunterDb.Row r : db.allRows()) {
                csv.append(csv(r.kind)).append(',')
                        .append(csv(r.status)).append(',')
                        .append(csv(r.filename)).append(',')
                        .append(csv(r.url)).append(',')
                        .append(csv(r.source)).append('\n');
            }
            output.writeText("Kaynaklar.csv", csv.toString());
        } catch (Throwable ignored) {}
    }

    private String csv(String s) {
        if (s == null) return "\"\"";
        return "\"" + s.replace("\"", "\"\"").replace("\r", " ").replace("\n", " ") + "\"";
    }

    private int totalCandidates() {
        int[] c = db.counts();
        return c[0] + c[1];
    }

    private void publish(String message, String source) {
        int[] c = db.counts();
        prefs.edit()
                .putBoolean("running", true)
                .putString("message", message)
                .putString("source", source == null ? "-" : source)
                .putInt("images", c[0])
                .putInt("videos", c[1])
                .putInt("saved", c[2])
                .putInt("duplicates", c[3])
                .putInt("errors", c[4])
                .apply();
    }

    private void publishCounts() {
        int[] c = db.counts();
        prefs.edit()
                .putInt("images", c[0])
                .putInt("videos", c[1])
                .putInt("saved", c[2])
                .putInt("duplicates", c[3])
                .putInt("errors", c[4])
                .apply();
    }

    private void publishFinal(String message) {
        int[] c = db.counts();
        prefs.edit()
                .putBoolean("running", false)
                .putString("message", message)
                .putString("source", "Tamamlandı")
                .putInt("images", c[0])
                .putInt("videos", c[1])
                .putInt("saved", c[2])
                .putInt("duplicates", c[3])
                .putInt("errors", c[4])
                .apply();
        updateNotification(message);
    }

    private void createChannel() {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel ch = new NotificationChannel(CHANNEL, "Görsel Avcısı", NotificationManager.IMPORTANCE_LOW);
            ch.setDescription("Uzun süren web taraması ve indirme durumu");
            notificationManager.createNotificationChannel(ch);
        }
    }

    private Notification buildNotification(String text) {
        Intent open = new Intent(this, MainActivity.class);
        PendingIntent content = PendingIntent.getActivity(this, 1, open,
                PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);
        Intent stop = new Intent(this, HunterService.class).setAction(ACTION_STOP);
        PendingIntent stopPi = PendingIntent.getService(this, 2, stop,
                PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);

        return new NotificationCompat.Builder(this, CHANNEL)
                .setSmallIcon(android.R.drawable.stat_sys_download)
                .setContentTitle("Görsel Avcısı")
                .setContentText(text)
                .setContentIntent(content)
                .setOngoing(RUNNING.get())
                .setOnlyAlertOnce(true)
                .addAction(android.R.drawable.ic_media_pause, "Durdur", stopPi)
                .build();
    }

    private void updateNotification(String text) {
        try { notificationManager.notify(NOTIFICATION_ID, buildNotification(text)); } catch (Throwable ignored) {}
    }

    private Document getDoc(String url) throws Exception {
        return Jsoup.connect(url).userAgent(UA).timeout(15000).followRedirects(true).maxBodySize(6 * 1024 * 1024).get();
    }

    private String httpText(String url) throws Exception {
        HttpURLConnection c = (HttpURLConnection) new URL(url).openConnection();
        c.setInstanceFollowRedirects(true);
        c.setConnectTimeout(12000);
        c.setReadTimeout(15000);
        c.setRequestProperty("User-Agent", UA);
        c.setRequestProperty("Accept", "application/json,text/plain,*/*");
        try (InputStream in = c.getInputStream(); BufferedReader br = new BufferedReader(new InputStreamReader(in, StandardCharsets.UTF_8))) {
            StringBuilder b = new StringBuilder();
            String line;
            while ((line = br.readLine()) != null) b.append(line);
            return b.toString();
        } finally {
            c.disconnect();
        }
    }

    private String extractDuckTarget(String href) {
        try {
            if (href.startsWith("//")) href = "https:" + href;
            URI u = new URI(href);
            String q = u.getRawQuery();
            if (q != null) {
                for (String p : q.split("&")) {
                    int eq = p.indexOf('=');
                    if (eq > 0 && "uddg".equals(p.substring(0, eq))) {
                        return URLDecoder.decode(p.substring(eq + 1), StandardCharsets.UTF_8.name());
                    }
                }
            }
        } catch (Throwable ignored) {}
        return href;
    }

    private String cleanUrl(String value) {
        if (value == null) return null;
        String v = value.trim().replace("&amp;", "&");
        if (v.isEmpty() || v.startsWith("data:") || v.startsWith("blob:") || v.startsWith("javascript:")) return null;
        if (v.startsWith("//")) v = "https:" + v;
        if (!(v.startsWith("http://") || v.startsWith("https://"))) return null;
        int hash = v.indexOf('#');
        if (hash >= 0) v = v.substring(0, hash);
        return v;
    }

    private String abs(String base, String child) {
        if (child == null || child.trim().isEmpty()) return null;
        try { return cleanUrl(new URL(new URL(base), child.trim()).toString()); }
        catch (Throwable e) { return cleanUrl(child); }
    }

    private boolean isLikelyJunkAsset(String u) {
        String s = u.toLowerCase(Locale.ROOT);
        return s.contains("favicon") || s.contains("sprite") || s.contains("logo.svg") ||
                s.contains("pixel.gif") || s.contains("tracking") || s.contains("spacer.gif") ||
                s.endsWith(".svg") || s.endsWith(".ico");
    }

    private boolean looksImageFile(String u) {
        if (u == null) return false;
        String s = u.toLowerCase(Locale.ROOT).split("\\?")[0];
        return s.endsWith(".jpg") || s.endsWith(".jpeg") || s.endsWith(".png") ||
                s.endsWith(".webp") || s.endsWith(".gif") || s.endsWith(".heic") || s.endsWith(".heif") || s.endsWith(".avif");
    }

    private boolean looksVideoFile(String u) {
        if (u == null) return false;
        String s = u.toLowerCase(Locale.ROOT).split("\\?")[0];
        return s.endsWith(".mp4") || s.endsWith(".webm") || s.endsWith(".mov") || s.endsWith(".m4v") || s.endsWith(".3gp") || s.endsWith(".mkv");
    }

    private boolean isKnownVideoPage(String u) {
        if (u == null) return false;
        String s = u.toLowerCase(Locale.ROOT);
        return s.contains("youtube.com/watch") || s.contains("youtu.be/") || s.contains("tiktok.com/") ||
                s.contains("instagram.com/reel") || s.contains("instagram.com/tv/") ||
                s.contains("vimeo.com/") || s.contains("dailymotion.com/video") || s.contains("facebook.com/watch");
    }

    private String host(String u) {
        if (u == null || u.isEmpty()) return "-";
        try { return new URL(u).getHost(); } catch (Throwable e) { return u.length() > 60 ? u.substring(0, 60) : u; }
    }

    private String enc(String s) {
        try { return URLEncoder.encode(s, StandardCharsets.UTF_8.name()); } catch (Throwable e) { return s; }
    }

    private String slugify(String s) {
        String x = s == null ? "arama" : s.trim().replaceAll("[^\\p{L}\\p{N}._-]+", "_");
        return x.isEmpty() ? "arama" : x;
    }

    private String firstNonEmpty(String... values) {
        for (String v : values) if (v != null && !v.trim().isEmpty()) return v.trim();
        return "";
    }

    private String safe(String s) { return s == null ? "" : s; }
    private String shortText(String s) {
        if (s == null || s.trim().isEmpty()) return "Bilinmeyen hata";
        s = s.replace('\n', ' ').replace('\r', ' ');
        return s.length() > 160 ? s.substring(0, 160) : s;
    }
    private boolean stopped() { return STOP.get() || Thread.currentThread().isInterrupted(); }
    private void nap(long ms) {
        if (stopped()) return;
        try { Thread.sleep(ms); } catch (InterruptedException e) { Thread.currentThread().interrupt(); }
    }

    @Nullable @Override public IBinder onBind(Intent intent) { return null; }

    @Override public void onDestroy() {
        STOP.set(true);
        executor.shutdownNow();
        try { db.close(); } catch (Throwable ignored) {}
        super.onDestroy();
    }

    private static final class OutputManager {
        static final class DownloadResult {
            boolean saved;
            boolean duplicate;
            String filename;
            String hash;
        }

        private final HunterService service;
        private final String slug;
        private final String mode;
        private ZipOutputStream zip;
        private File zipFile;
        private int zipIndex = 1;
        private int zipEntries = 0;
        private long zipBytes = 0;

        OutputManager(HunterService service, String slug, String mode) {
            this.service = service;
            this.slug = slug;
            this.mode = mode;
        }

        DownloadResult download(HunterDb.Row row) throws Exception {
            DownloadResult result = new DownloadResult();
            File tempDir = new File(service.getExternalFilesDir(null), "hunter_temp");
            if (!tempDir.exists()) tempDir.mkdirs();
            File temp = new File(tempDir, "media_" + row.id + ".tmp");

            HttpURLConnection c = (HttpURLConnection) new URL(row.url).openConnection();
            c.setInstanceFollowRedirects(true);
            c.setConnectTimeout(15000);
            c.setReadTimeout(30000);
            c.setRequestProperty("User-Agent", UA);
            c.setRequestProperty("Accept", "image/avif,image/webp,image/*,video/*,*/*;q=0.8");
            c.setRequestProperty("Referer", row.source == null ? "https://www.bing.com/" : row.source);
            int code = c.getResponseCode();
            if (code < 200 || code >= 400) {
                c.disconnect();
                return result;
            }
            String type = c.getContentType();
            if (type == null) type = "";
            type = type.split(";")[0].trim().toLowerCase(Locale.ROOT);
            if ("image".equals(row.kind) && !type.startsWith("image/") && !looksLikeImage(row.url)) {
                c.disconnect();
                return result;
            }
            if ("video".equals(row.kind) && !type.startsWith("video/") && !looksLikeVideo(row.url)) {
                c.disconnect();
                return result;
            }

            MessageDigest md = MessageDigest.getInstance("SHA-256");
            long bytes = 0;
            try (InputStream in = new BufferedInputStream(c.getInputStream());
                 OutputStream out = new BufferedOutputStream(new FileOutputStream(temp))) {
                byte[] buf = new byte[256 * 1024];
                int n;
                while ((n = in.read(buf)) >= 0) {
                    if (STOP.get()) throw new InterruptedException("Durduruldu");
                    if (n == 0) continue;
                    out.write(buf, 0, n);
                    md.update(buf, 0, n);
                    bytes += n;
                }
            } finally {
                c.disconnect();
            }

            if (bytes < 512) { temp.delete(); return result; }
            if ("image".equals(row.kind)) {
                BitmapFactory.Options o = new BitmapFactory.Options();
                o.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(temp.getAbsolutePath(), o);
                if (o.outWidth > 0 && o.outHeight > 0 && o.outWidth < 60 && o.outHeight < 60) {
                    temp.delete();
                    return result;
                }
            }

            String hash = hex(md.digest());
            result.hash = hash;
            if (service.db.hashExists(hash, row.url)) {
                result.duplicate = true;
                temp.delete();
                return result;
            }

            String ext = extension(type, row.url, row.kind);
            String filename = slug + "_" + String.format(Locale.ROOT, "%08d", row.id) + ext;
            String folder = "image".equals(row.kind) ? "Fotograflar" : "Videolar";

            if ("DIRECT".equals(mode) || "BOTH".equals(mode)) publishFile(temp, filename, folder, type);
            if ("ZIP".equals(mode) || "BOTH".equals(mode)) addZip(temp, folder + "/" + filename);

            temp.delete();
            result.saved = true;
            result.filename = filename;
            return result;
        }

        void writeText(String name, String text) throws Exception {
            byte[] data = text.getBytes(StandardCharsets.UTF_8);
            publishBytes(data, name, "text/plain", "");
        }

        private void addZip(File file, String entryName) throws Exception {
            if (zip == null) openZip();
            ZipEntry entry = new ZipEntry(entryName);
            zip.putNextEntry(entry);
            try (InputStream in = new BufferedInputStream(new FileInputStream(file))) {
                byte[] buf = new byte[256 * 1024];
                int n;
                while ((n = in.read(buf)) >= 0) {
                    if (n > 0) zip.write(buf, 0, n);
                }
            }
            zip.closeEntry();
            zipEntries++;
            zipBytes += file.length();
            if (zipEntries >= 5000 || zipBytes >= 1500L * 1024L * 1024L) closeZipAndPublish();
        }

        private void openZip() throws Exception {
            File base = new File(service.getExternalFilesDir(null), "hunter_zip");
            if (!base.exists()) base.mkdirs();
            zipFile = new File(base, slug + "_" + String.format(Locale.ROOT, "%03d", zipIndex) + ".zip.tmp");
            zip = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(zipFile)));
            zipEntries = 0;
            zipBytes = 0;
        }

        private void closeZipAndPublish() throws Exception {
            if (zip == null) return;
            zip.finish();
            zip.close();
            zip = null;
            String name = slug + "_" + String.format(Locale.ROOT, "%03d", zipIndex) + ".zip";
            publishFile(zipFile, name, "ZIP", "application/zip");
            zipFile.delete();
            zipFile = null;
            zipIndex++;
            zipEntries = 0;
            zipBytes = 0;
        }

        void finish() throws Exception { closeZipAndPublish(); }

        void closeQuietly() {
            try { if (zip != null) { zip.finish(); zip.close(); } } catch (Throwable ignored) {}
            zip = null;
        }

        private void publishFile(File source, String filename, String folder, String mime) throws Exception {
            if (Build.VERSION.SDK_INT >= 29) {
                ContentValues v = new ContentValues();
                v.put(MediaStore.Downloads.DISPLAY_NAME, filename);
                v.put(MediaStore.Downloads.MIME_TYPE, mime == null || mime.isEmpty() ? "application/octet-stream" : mime);
                String rel = Environment.DIRECTORY_DOWNLOADS + "/GorselAvcisi/" + slug + (folder.isEmpty() ? "" : "/" + folder);
                v.put(MediaStore.Downloads.RELATIVE_PATH, rel);
                v.put(MediaStore.Downloads.IS_PENDING, 1);
                ContentResolver r = service.getContentResolver();
                Uri uri = r.insert(MediaStore.Downloads.EXTERNAL_CONTENT_URI, v);
                if (uri == null) throw new Exception("MediaStore kayıt oluşturamadı");
                try (InputStream in = new BufferedInputStream(new FileInputStream(source));
                     OutputStream out = new BufferedOutputStream(r.openOutputStream(uri))) {
                    byte[] buf = new byte[256 * 1024];
                    int n;
                    while ((n = in.read(buf)) >= 0) if (n > 0) out.write(buf, 0, n);
                }
                v.clear();
                v.put(MediaStore.Downloads.IS_PENDING, 0);
                r.update(uri, v, null, null);
            } else {
                File base = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS),
                        "GorselAvcisi/" + slug + (folder.isEmpty() ? "" : "/" + folder));
                if (!base.exists() && !base.mkdirs()) throw new Exception("Klasör oluşturulamadı");
                File dest = new File(base, filename);
                try (InputStream in = new BufferedInputStream(new FileInputStream(source));
                     OutputStream out = new BufferedOutputStream(new FileOutputStream(dest))) {
                    byte[] buf = new byte[256 * 1024];
                    int n;
                    while ((n = in.read(buf)) >= 0) if (n > 0) out.write(buf, 0, n);
                }
            }
        }

        private void publishBytes(byte[] data, String filename, String mime, String folder) throws Exception {
            File tempDir = new File(service.getExternalFilesDir(null), "hunter_temp");
            if (!tempDir.exists()) tempDir.mkdirs();
            File f = new File(tempDir, "text_" + System.nanoTime());
            try (FileOutputStream out = new FileOutputStream(f)) { out.write(data); }
            publishFile(f, filename, folder, mime);
            f.delete();
        }

        private static boolean looksLikeImage(String u) {
            String s = u.toLowerCase(Locale.ROOT).split("\\?")[0];
            return s.matches(".*\\.(jpe?g|png|webp|gif|heic|heif|avif)$");
        }
        private static boolean looksLikeVideo(String u) {
            String s = u.toLowerCase(Locale.ROOT).split("\\?")[0];
            return s.matches(".*\\.(mp4|webm|mov|m4v|3gp|mkv)$");
        }
        private static String extension(String mime, String url, String kind) {
            String m = mime == null ? "" : mime;
            if (m.equals("image/jpeg")) return ".jpg";
            if (m.equals("image/png")) return ".png";
            if (m.equals("image/webp")) return ".webp";
            if (m.equals("image/gif")) return ".gif";
            if (m.equals("image/heic")) return ".heic";
            if (m.equals("image/heif")) return ".heif";
            if (m.equals("image/avif")) return ".avif";
            if (m.equals("video/mp4")) return ".mp4";
            if (m.equals("video/webm")) return ".webm";
            if (m.equals("video/quicktime")) return ".mov";
            try {
                String path = new URL(url).getPath();
                int dot = path.lastIndexOf('.');
                if (dot >= 0 && path.length() - dot <= 7) return path.substring(dot).toLowerCase(Locale.ROOT);
            } catch (Throwable ignored) {}
            return "video".equals(kind) ? ".mp4" : ".jpg";
        }
        private static String hex(byte[] b) {
            StringBuilder s = new StringBuilder();
            for (byte x : b) s.append(String.format(Locale.ROOT, "%02x", x));
            return s.toString();
        }
    }
}
