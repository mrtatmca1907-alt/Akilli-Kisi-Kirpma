package com.cokluvideoindirici;

import android.Manifest;
import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.InputType;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.work.Data;
import androidx.work.ExistingWorkPolicy;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class MainActivity extends android.app.Activity {
    private static final int NAVY = Color.rgb(8, 20, 38);
    private static final int YELLOW = Color.rgb(244, 196, 48);
    private static final int REQUEST_NOTIFICATIONS = 700;

    private final Map<String, Candidate> candidates = new LinkedHashMap<>();
    private final ExecutorService io = Executors.newFixedThreadPool(3);
    private final OkHttpClient client = new OkHttpClient.Builder().followRedirects(true).followSslRedirects(true).build();

    private WebView webView;
    private EditText address;
    private Button foundButton;
    private volatile String lastPageTitle = "video";
    private volatile String lastPageUrl = "";

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setStatusBarColor(NAVY);
        getWindow().setNavigationBarColor(NAVY);
        buildUi();
        requestNotificationPermission();
        webView.loadUrl("https://www.google.com/");
    }

    @SuppressLint({"SetJavaScriptEnabled", "JavascriptInterface"})
    private void buildUi() {
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(NAVY);

        LinearLayout nav = new LinearLayout(this);
        nav.setOrientation(LinearLayout.HORIZONTAL);
        nav.setPadding(dp(4), dp(4), dp(4), dp(4));
        nav.setGravity(Gravity.CENTER_VERTICAL);

        Button back = smallButton("‹");
        Button forward = smallButton("›");
        Button refresh = smallButton("↻");
        Button go = smallButton("Git");

        address = new EditText(this);
        address.setSingleLine(true);
        address.setInputType(InputType.TYPE_TEXT_VARIATION_URI);
        address.setHint("Site adresi");
        address.setTextColor(Color.WHITE);
        address.setHintTextColor(Color.LTGRAY);
        address.setBackgroundColor(Color.rgb(24, 42, 64));
        address.setPadding(dp(10), 0, dp(10), 0);

        nav.addView(back, new LinearLayout.LayoutParams(dp(44), dp(44)));
        nav.addView(forward, new LinearLayout.LayoutParams(dp(44), dp(44)));
        nav.addView(refresh, new LinearLayout.LayoutParams(dp(44), dp(44)));
        LinearLayout.LayoutParams addressParams = new LinearLayout.LayoutParams(0, dp(44), 1f);
        addressParams.setMargins(dp(4), 0, dp(4), 0);
        nav.addView(address, addressParams);
        nav.addView(go, new LinearLayout.LayoutParams(dp(58), dp(44)));

        LinearLayout tools = new LinearLayout(this);
        tools.setOrientation(LinearLayout.HORIZONTAL);
        tools.setPadding(dp(6), 0, dp(6), dp(5));
        tools.setGravity(Gravity.CENTER_VERTICAL);

        foundButton = actionButton("Bulunan Videolar (0)");
        Button scan = actionButton("Sayfayı Tara");
        LinearLayout.LayoutParams half = new LinearLayout.LayoutParams(0, dp(44), 1f);
        half.setMargins(dp(2), 0, dp(2), 0);
        tools.addView(foundButton, half);
        tools.addView(scan, half);

        webView = new WebView(this);
        WebSettings s = webView.getSettings();
        s.setJavaScriptEnabled(true);
        s.setDomStorageEnabled(true);
        s.setDatabaseEnabled(true);
        s.setMediaPlaybackRequiresUserGesture(false);
        s.setMixedContentMode(WebSettings.MIXED_CONTENT_COMPATIBILITY_MODE);
        s.setSupportMultipleWindows(false);
        s.setJavaScriptCanOpenWindowsAutomatically(false);
        s.setLoadWithOverviewMode(true);
        s.setUseWideViewPort(true);
        CookieManager.getInstance().setAcceptCookie(true);
        CookieManager.getInstance().setAcceptThirdPartyCookies(webView, true);
        webView.addJavascriptInterface(new MediaBridge(), "VideoYakala");
        webView.setWebChromeClient(new WebChromeClient());
        webView.setWebViewClient(new BrowserClient());
        webView.setDownloadListener((url, userAgent, contentDisposition, mimeType, contentLength) -> {
            addCandidate(url, safeTitle(webView.getTitle()));
            Toast.makeText(this, "Video bağlantısı listeye eklendi", Toast.LENGTH_SHORT).show();
        });

        root.addView(nav, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        root.addView(tools, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        root.addView(webView, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        setContentView(root);

        back.setOnClickListener(v -> { if (webView.canGoBack()) webView.goBack(); });
        forward.setOnClickListener(v -> { if (webView.canGoForward()) webView.goForward(); });
        refresh.setOnClickListener(v -> webView.reload());
        go.setOnClickListener(v -> navigate(address.getText().toString()));
        address.setOnEditorActionListener((v, actionId, event) -> { navigate(address.getText().toString()); return true; });
        foundButton.setOnClickListener(v -> showFoundDialog());
        scan.setOnClickListener(v -> injectScanner());
    }

    private Button smallButton(String text) {
        Button b = new Button(this);
        b.setText(text);
        b.setTextColor(NAVY);
        b.setTextSize(17);
        b.setAllCaps(false);
        b.setBackgroundColor(YELLOW);
        b.setPadding(0, 0, 0, 0);
        return b;
    }

    private Button actionButton(String text) {
        Button b = new Button(this);
        b.setText(text);
        b.setAllCaps(false);
        b.setTextColor(NAVY);
        b.setBackgroundColor(YELLOW);
        return b;
    }

    private void navigate(String value) {
        String u = value == null ? "" : value.trim();
        if (u.isEmpty()) return;
        if (!u.startsWith("http://") && !u.startsWith("https://")) {
            if (u.contains(".") && !u.contains(" ")) u = "https://" + u;
            else u = "https://www.google.com/search?q=" + Uri.encode(u);
        }
        webView.loadUrl(u);
    }

    private final class BrowserClient extends WebViewClient {
        @Override
        public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
            Uri u = request.getUrl();
            if (u != null && ("http".equalsIgnoreCase(u.getScheme()) || "https".equalsIgnoreCase(u.getScheme()))) {
                return false;
            }
            return true;
        }

        @Override
        public android.webkit.WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
            String u = request.getUrl() == null ? null : request.getUrl().toString();
            if (isMediaUrl(u)) addCandidate(u, lastPageTitle);
            return super.shouldInterceptRequest(view, request);
        }

        @Override
        public void onPageFinished(WebView view, String url) {
            super.onPageFinished(view, url);
            lastPageUrl = url == null ? "" : url;
            lastPageTitle = safeTitle(view.getTitle());
            address.setText(lastPageUrl);
            injectScanner();
        }
    }

    public final class MediaBridge {
        @JavascriptInterface
        public void onMedia(String url, String title) {
            if (isMediaUrl(url)) addCandidate(url, safeTitle(title));
        }
    }

    private void injectScanner() {
        String js = "(function(){"
                + "function send(u){try{if(u&&/^https?:/i.test(u)&&/(\\.m3u8|\\.mp4|\\.webm|\\.m4v|\\.mov|\\.mkv|\\.ts)(\\?|#|$)/i.test(u)){VideoYakala.onMedia(u,document.title||'video');}}catch(e){}}"
                + "try{document.querySelectorAll('video,source').forEach(function(x){send(x.currentSrc||x.src);});}catch(e){}"
                + "try{performance.getEntriesByType('resource').forEach(function(e){send(e.name);});}catch(e){}"
                + "if(!window.__videoYakalaTimer){window.__videoYakalaTimer=setInterval(function(){try{document.querySelectorAll('video,source').forEach(function(x){send(x.currentSrc||x.src);});performance.getEntriesByType('resource').forEach(function(e){send(e.name);});}catch(e){}},2500);}"
                + "})();";
        webView.evaluateJavascript(js, null);
    }

    private boolean isMediaUrl(String url) {
        if (url == null) return false;
        String u = url.toLowerCase(Locale.ROOT);
        if (!(u.startsWith("http://") || u.startsWith("https://"))) return false;
        return u.matches(".*\\.(m3u8|mp4|webm|m4v|mov|mkv|ts)(\\?.*)?(#.*)?$");
    }

    private void addCandidate(String url, String title) {
        if (!isMediaUrl(url)) return;
        synchronized (candidates) {
            if (candidates.containsKey(url)) return;
            Candidate c = new Candidate(url, safeTitle(title), url.toLowerCase(Locale.ROOT).contains(".m3u8"));
            candidates.put(url, c);
            runOnUiThread(() -> foundButton.setText("Bulunan Videolar (" + candidates.size() + ")"));
            if (c.hls) loadVariants(c);
        }
    }

    private void loadVariants(Candidate c) {
        synchronized (c) {
            if (c.variantsLoading || !c.variants.isEmpty()) return;
            c.variantsLoading = true;
        }
        io.execute(() -> {
            List<Variant> out = new ArrayList<>();
            try {
                String text = fetchText(c.url);
                String[] lines = text.replace("\r", "").split("\n");
                for (int i = 0; i < lines.length; i++) {
                    String line = lines[i].trim();
                    if (!line.startsWith("#EXT-X-STREAM-INF:")) continue;
                    String next = null;
                    for (int j = i + 1; j < lines.length; j++) {
                        String x = lines[j].trim();
                        if (x.isEmpty() || x.startsWith("#")) continue;
                        next = x;
                        break;
                    }
                    if (next == null) continue;
                    boolean separateAudio = line.toUpperCase(Locale.ROOT).contains("AUDIO=");
                    String label = qualityLabel(line);
                    out.add(new Variant(label + (separateAudio ? " (ayrı ses)" : ""), resolve(c.url, next), !separateAudio));
                }
                if (out.isEmpty()) out.add(new Variant("Kaynak", c.url, true));
            } catch (Exception e) {
                out.clear();
                out.add(new Variant("Kaynak", c.url, true));
            }
            synchronized (c) {
                c.variants.clear();
                c.variants.addAll(out);
                c.variantsLoading = false;
            }
        });
    }

    private String qualityLabel(String streamInfo) {
        Matcher m = Pattern.compile("RESOLUTION=(\\d+)x(\\d+)", Pattern.CASE_INSENSITIVE).matcher(streamInfo);
        if (m.find()) {
            try {
                int h = Integer.parseInt(m.group(2));
                if (h >= 2100) return "2160p / 4K";
                if (h >= 1400) return "1440p / 2K";
                return h + "p";
            } catch (Exception ignored) { }
        }
        Matcher b = Pattern.compile("BANDWIDTH=(\\d+)", Pattern.CASE_INSENSITIVE).matcher(streamInfo);
        if (b.find()) {
            try { return (Integer.parseInt(b.group(1)) / 1000) + " kbps"; } catch (Exception ignored) { }
        }
        return "Kalite";
    }

    private String fetchText(String url) throws IOException {
        Request.Builder b = new Request.Builder().url(url).header("User-Agent", webView.getSettings().getUserAgentString());
        if (!lastPageUrl.isEmpty()) b.header("Referer", lastPageUrl);
        try {
            String cookie = CookieManager.getInstance().getCookie(url);
            if (cookie != null && !cookie.isEmpty()) b.header("Cookie", cookie);
        } catch (Throwable ignored) { }
        try (Response r = client.newCall(b.build()).execute()) {
            if (!r.isSuccessful() || r.body() == null) throw new IOException("HTTP " + r.code());
            return r.body().string();
        }
    }

    private void showFoundDialog() {
        List<Candidate> snapshot;
        synchronized (candidates) { snapshot = new ArrayList<>(candidates.values()); }
        if (snapshot.isEmpty()) {
            Toast.makeText(this, "Bu sayfada henüz video yakalanmadı. Videoyu oynatıp tekrar tara.", Toast.LENGTH_LONG).show();
            return;
        }

        LinearLayout list = new LinearLayout(this);
        list.setOrientation(LinearLayout.VERTICAL);
        list.setPadding(dp(8), dp(8), dp(8), dp(8));
        List<Row> rows = new ArrayList<>();

        for (Candidate c : snapshot) {
            LinearLayout card = new LinearLayout(this);
            card.setOrientation(LinearLayout.VERTICAL);
            card.setPadding(dp(10), dp(8), dp(10), dp(8));
            card.setBackgroundColor(Color.rgb(238, 238, 238));
            LinearLayout.LayoutParams cp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            cp.setMargins(0, 0, 0, dp(8));

            TextView title = new TextView(this);
            title.setText(c.title);
            title.setTextSize(16);
            title.setTextColor(NAVY);
            title.setMaxLines(2);
            card.addView(title);

            TextView u = new TextView(this);
            u.setText(shortUrl(c.url));
            u.setTextSize(11);
            u.setTextColor(Color.DKGRAY);
            u.setMaxLines(2);
            card.addView(u);

            CheckBox check = new CheckBox(this);
            check.setText(c.hls ? "Seç — HLS" : "Seç — doğrudan video");
            check.setTextColor(NAVY);
            card.addView(check);

            Spinner spinner = new Spinner(this);
            List<Variant> variants = new ArrayList<>();
            List<String> labels = new ArrayList<>();
            if (!c.hls) {
                variants.add(new Variant("Orijinal", c.url, true));
                labels.add("Orijinal");
            } else {
                synchronized (c) {
                    variants.addAll(c.variants);
                    if (variants.isEmpty()) labels.add(c.variantsLoading ? "Kaliteler yükleniyor — listeyi yeniden aç" : "Kaynak");
                    else for (Variant v : variants) labels.add(v.label);
                }
            }
            ArrayAdapter<String> adapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_dropdown_item, labels);
            spinner.setAdapter(adapter);
            card.addView(spinner);
            list.addView(card, cp);
            rows.add(new Row(c, check, spinner, variants));
        }

        ScrollView scroll = new ScrollView(this);
        scroll.addView(list);

        AlertDialog dialog = new AlertDialog.Builder(this)
                .setTitle("Bulunan Videolar")
                .setView(scroll)
                .setNegativeButton("Kapat", null)
                .setPositiveButton("Seçilenleri indir", null)
                .create();
        dialog.setOnShowListener(x -> dialog.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener(v -> {
            int queued = 0;
            for (Row row : rows) {
                if (!row.check.isChecked()) continue;
                if (row.candidate.hls && row.variants.isEmpty()) {
                    loadVariants(row.candidate);
                    Toast.makeText(this, "Kalite listesi hazırlanıyor; birkaç saniye sonra tekrar aç.", Toast.LENGTH_SHORT).show();
                    continue;
                }
                int pos = row.spinner.getSelectedItemPosition();
                if (pos < 0 || pos >= row.variants.size()) continue;
                Variant selected = row.variants.get(pos);
                if (!selected.supported) {
                    Toast.makeText(this, selected.label + " ayrı ses akışı kullanıyor; bu sürüm onu birleştirmiyor.", Toast.LENGTH_LONG).show();
                    continue;
                }
                enqueue(row.candidate, selected);
                queued++;
            }
            if (queued > 0) {
                Toast.makeText(this, queued + " video indirme kuyruğuna eklendi", Toast.LENGTH_LONG).show();
                dialog.dismiss();
            }
        }));
        dialog.show();
    }

    private void enqueue(Candidate c, Variant v) {
        Data data = new Data.Builder()
                .putString("url", v.url)
                .putString("title", c.title)
                .putBoolean("hls", c.hls)
                .putString("referer", lastPageUrl)
                .putString("userAgent", webView.getSettings().getUserAgentString())
                .putString("quality", v.label)
                .build();
        OneTimeWorkRequest req = new OneTimeWorkRequest.Builder(DownloadWorker.class)
                .setInputData(data)
                .addTag("video-download")
                .build();
        WorkManager.getInstance(this)
                .beginUniqueWork("video-download-queue", ExistingWorkPolicy.APPEND_OR_REPLACE, req)
                .enqueue();
    }

    private void requestNotificationPermission() {
        if (Build.VERSION.SDK_INT >= 33 && checkSelfPermission(Manifest.permission.POST_NOTIFICATIONS) != PackageManager.PERMISSION_GRANTED) {
            requestPermissions(new String[]{Manifest.permission.POST_NOTIFICATIONS}, REQUEST_NOTIFICATIONS);
        }
    }

    private static String resolve(String base, String child) {
        try { return new URL(new URL(base), child).toString(); }
        catch (Exception e) { return child; }
    }

    private static String safeTitle(String s) {
        if (s == null || s.trim().isEmpty()) return "video";
        String x = s.trim().replaceAll("[\\\\/:*?\"<>|]", "_");
        return x.length() > 80 ? x.substring(0, 80) : x;
    }

    private static String shortUrl(String s) {
        if (s == null) return "";
        return s.length() > 150 ? s.substring(0, 150) + "…" : s;
    }

    private int dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }

    @Override
    public void onBackPressed() {
        if (webView != null && webView.canGoBack()) webView.goBack();
        else super.onBackPressed();
    }

    @Override
    protected void onDestroy() {
        if (webView != null) webView.destroy();
        io.shutdownNow();
        super.onDestroy();
    }

    private static final class Candidate {
        final String url;
        final String title;
        final boolean hls;
        final List<Variant> variants = new ArrayList<>();
        boolean variantsLoading;
        Candidate(String url, String title, boolean hls) { this.url = url; this.title = title; this.hls = hls; }
    }

    private static final class Variant {
        final String label;
        final String url;
        final boolean supported;
        Variant(String label, String url, boolean supported) { this.label = label; this.url = url; this.supported = supported; }
    }

    private static final class Row {
        final Candidate candidate;
        final CheckBox check;
        final Spinner spinner;
        final List<Variant> variants;
        Row(Candidate candidate, CheckBox check, Spinner spinner, List<Variant> variants) {
            this.candidate = candidate;
            this.check = check;
            this.spinner = spinner;
            this.variants = variants;
        }
    }
}
