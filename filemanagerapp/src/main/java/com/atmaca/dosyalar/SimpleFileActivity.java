package com.atmaca.dosyalar;

import android.Manifest;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ClipData;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.Settings;
import android.util.LruCache;
import android.util.Size;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.MimeTypeMap;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.MediaController;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.VideoView;

import androidx.core.content.FileProvider;
import androidx.documentfile.provider.DocumentFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DateFormat;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

public class SimpleFileActivity extends Activity {
    private static final int NAVY = Color.rgb(8, 20, 38);
    private static final int YELLOW = Color.rgb(244, 196, 48);
    private static final int REQUEST_STORAGE = 201;
    private static final int REQUEST_CLOUD = 202;
    private static final String PREFS = "atmaca_files_v3";
    private static final String KEY_CLOUD = "cloud_root";

    private final ExecutorService io = Executors.newSingleThreadExecutor();
    private final ExecutorService thumbPool = Executors.newFixedThreadPool(2);
    private final AtomicInteger loadGeneration = new AtomicInteger();
    private final List<Entry> entries = new ArrayList<>();
    private final Set<String> selected = new LinkedHashSet<>();
    private final List<Entry> clipboard = new ArrayList<>();
    private final ArrayDeque<DocumentFile> cloudStack = new ArrayDeque<>();
    private final LruCache<String, Bitmap> thumbCache = new LruCache<String, Bitmap>(24 * 1024) {
        @Override protected int sizeOf(String key, Bitmap value) {
            return value == null ? 0 : value.getByteCount() / 1024;
        }
    };

    private SharedPreferences prefs;
    private Uri cloudRootUri;
    private boolean cloudMode;
    private boolean moveClipboard;
    private boolean previewMode;
    private File localDir;
    private File pendingLocalDir;
    private DocumentFile cloudDir;

    private LinearLayout root;
    private LinearLayout content;
    private TextView title;
    private TextView subtitle;
    private TextView status;
    private ListView list;
    private EntryAdapter adapter;
    private Button pasteButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setStatusBarColor(NAVY);
        getWindow().setNavigationBarColor(NAVY);
        prefs = getSharedPreferences(PREFS, MODE_PRIVATE);
        String saved = prefs.getString(KEY_CLOUD, null);
        if (saved != null && !saved.isBlank()) {
            try { cloudRootUri = Uri.parse(saved); } catch (Exception ignored) { }
        }
        buildBase();
        showHome();
    }

    private void buildBase() {
        root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(Color.rgb(247, 247, 247));

        LinearLayout header = new LinearLayout(this);
        header.setOrientation(LinearLayout.VERTICAL);
        header.setPadding(dp(16), dp(10), dp(16), dp(10));
        header.setBackgroundColor(NAVY);

        title = new TextView(this);
        title.setTextSize(25);
        title.setTextColor(YELLOW);
        title.setText("Dosyalar");
        header.addView(title);

        subtitle = new TextView(this);
        subtitle.setTextSize(12);
        subtitle.setTextColor(Color.LTGRAY);
        subtitle.setSingleLine(true);
        header.addView(subtitle);
        root.addView(header);

        content = new LinearLayout(this);
        content.setOrientation(LinearLayout.VERTICAL);
        content.setBackgroundColor(Color.rgb(247, 247, 247));
        root.addView(content, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        setContentView(root);
    }

    private void showHome() {
        previewMode = false;
        loadGeneration.incrementAndGet();
        entries.clear();
        selected.clear();
        localDir = null;
        cloudDir = null;
        cloudMode = false;
        cloudStack.clear();
        content.removeAllViews();
        title.setText("Dosyalar");
        subtitle.setText("Basit dosya yöneticisi");

        GridLayout grid = new GridLayout(this);
        grid.setColumnCount(3);
        grid.setPadding(dp(8), dp(18), dp(8), dp(8));
        addTile(grid, "▣", "Ana bellek", () -> openLocal(Environment.getExternalStorageDirectory()));
        addTile(grid, "⬇", "İndirilenler", () -> openLocal(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS)));
        addTile(grid, "▧", "Görüntüler", () -> openLocal(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES)));
        addTile(grid, "▶", "Videolar", () -> openLocal(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MOVIES)));
        addTile(grid, "☰", "Belgeler", () -> openLocal(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)));
        addTile(grid, "☁", "Bulut", this::openCloud);
        content.addView(grid, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
    }

    private void addTile(GridLayout grid, String icon, String label, Runnable action) {
        LinearLayout tile = new LinearLayout(this);
        tile.setOrientation(LinearLayout.VERTICAL);
        tile.setGravity(Gravity.CENTER);
        tile.setPadding(dp(4), dp(12), dp(4), dp(12));
        tile.setBackground(roundRect(Color.WHITE, dp(18), Color.rgb(220, 220, 220)));

        TextView i = new TextView(this);
        i.setText(icon);
        i.setTextSize(34);
        i.setTextColor(NAVY);
        i.setGravity(Gravity.CENTER);
        tile.addView(i);

        TextView t = new TextView(this);
        t.setText(label);
        t.setTextSize(15);
        t.setTextColor(Color.BLACK);
        t.setGravity(Gravity.CENTER);
        tile.addView(t);

        GridLayout.LayoutParams p = new GridLayout.LayoutParams();
        p.width = 0;
        p.height = dp(126);
        p.columnSpec = GridLayout.spec(GridLayout.UNDEFINED, 1f);
        p.setMargins(dp(5), dp(5), dp(5), dp(5));
        grid.addView(tile, p);
        tile.setOnClickListener(v -> action.run());
    }

    private GradientDrawable roundRect(int fill, int radius, int stroke) {
        GradientDrawable d = new GradientDrawable();
        d.setColor(fill);
        d.setCornerRadius(radius);
        d.setStroke(dp(1), stroke);
        return d;
    }

    private boolean hasStorageAccess() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) return Environment.isExternalStorageManager();
        return checkSelfPermission(Manifest.permission.READ_EXTERNAL_STORAGE) == PackageManager.PERMISSION_GRANTED &&
                checkSelfPermission(Manifest.permission.WRITE_EXTERNAL_STORAGE) == PackageManager.PERMISSION_GRANTED;
    }

    private void requestStorageAccess() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            try {
                startActivity(new Intent(Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION,
                        Uri.parse("package:" + getPackageName())));
            } catch (Exception e) {
                startActivity(new Intent(Settings.ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION));
            }
        } else {
            requestPermissions(new String[]{Manifest.permission.READ_EXTERNAL_STORAGE, Manifest.permission.WRITE_EXTERNAL_STORAGE}, REQUEST_STORAGE);
        }
    }

    private void openLocal(File dir) {
        pendingLocalDir = dir;
        if (!hasStorageAccess()) {
            requestStorageAccess();
            return;
        }
        if (dir == null || (!dir.exists() && !dir.mkdirs())) {
            Toast.makeText(this, "Klasör açılamadı", Toast.LENGTH_SHORT).show();
            return;
        }
        pendingLocalDir = null;
        cloudMode = false;
        cloudStack.clear();
        cloudDir = null;
        localDir = canonical(dir);
        selected.clear();
        showBrowser();
    }

    @Override protected void onResume() {
        super.onResume();
        if (pendingLocalDir != null && hasStorageAccess()) {
            File wanted = pendingLocalDir;
            pendingLocalDir = null;
            openLocal(wanted);
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == REQUEST_STORAGE && pendingLocalDir != null && hasStorageAccess()) {
            File wanted = pendingLocalDir;
            pendingLocalDir = null;
            openLocal(wanted);
        }
    }

    private void openCloud() {
        if (cloudRootUri == null) {
            pickCloud();
            return;
        }
        DocumentFile rootDoc = DocumentFile.fromTreeUri(this, cloudRootUri);
        if (rootDoc == null || !rootDoc.exists()) {
            cloudRootUri = null;
            prefs.edit().remove(KEY_CLOUD).apply();
            pickCloud();
            return;
        }
        cloudMode = true;
        localDir = null;
        cloudStack.clear();
        cloudStack.add(rootDoc);
        cloudDir = rootDoc;
        selected.clear();
        showBrowser();
    }

    private void pickCloud() {
        Intent i = new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE);
        i.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION |
                Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION | Intent.FLAG_GRANT_PREFIX_URI_PERMISSION);
        startActivityForResult(i, REQUEST_CLOUD);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode != REQUEST_CLOUD || resultCode != RESULT_OK || data == null || data.getData() == null) return;
        Uri uri = data.getData();
        int flags = data.getFlags() & (Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
        try { getContentResolver().takePersistableUriPermission(uri, flags); } catch (Exception ignored) { }
        cloudRootUri = uri;
        prefs.edit().putString(KEY_CLOUD, uri.toString()).apply();
        openCloud();
    }

    private void showBrowser() {
        previewMode = false;
        content.removeAllViews();
        title.setText(cloudMode ? "Bulut" : "Dosyalar");
        subtitle.setText(currentPath());

        LinearLayout top = new LinearLayout(this);
        top.setOrientation(LinearLayout.HORIZONTAL);
        top.setPadding(dp(6), dp(5), dp(6), dp(5));
        Button home = button("ANA");
        Button up = button("ÜST");
        Button refresh = button("YENİLE");
        Button folder = button("+ KLASÖR");
        addEqual(top, home);
        addEqual(top, up);
        addEqual(top, refresh);
        addEqual(top, folder);
        content.addView(top);

        status = new TextView(this);
        status.setTextSize(12);
        status.setTextColor(Color.DKGRAY);
        status.setPadding(dp(12), dp(4), dp(12), dp(5));
        status.setText("Açılıyor…");
        content.addView(status);

        list = new ListView(this);
        list.setDividerHeight(1);
        list.setBackgroundColor(Color.WHITE);
        list.setItemsCanFocus(false);
        adapter = new EntryAdapter();
        list.setAdapter(adapter);
        content.addView(list, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        LinearLayout actions = new LinearLayout(this);
        actions.setOrientation(LinearLayout.HORIZONTAL);
        actions.setPadding(dp(6), dp(4), dp(6), dp(6));
        Button copy = button("KOPYALA");
        Button move = button("TAŞI");
        pasteButton = button("YAPIŞTIR");
        Button share = button("PAYLAŞ");
        Button delete = button("SİL");
        addEqual(actions, copy);
        addEqual(actions, move);
        addEqual(actions, pasteButton);
        addEqual(actions, share);
        addEqual(actions, delete);
        content.addView(actions);
        refreshPaste();

        home.setOnClickListener(v -> showHome());
        up.setOnClickListener(v -> goUp());
        refresh.setOnClickListener(v -> loadCurrent());
        folder.setOnClickListener(v -> createFolder());
        copy.setOnClickListener(v -> setClipboard(false));
        move.setOnClickListener(v -> setClipboard(true));
        pasteButton.setOnClickListener(v -> paste());
        share.setOnClickListener(v -> shareSelected());
        delete.setOnClickListener(v -> deleteSelected());

        list.setOnItemClickListener((parent, view, position, id) -> {
            if (position < 0 || position >= entries.size()) return;
            Entry e = entries.get(position);
            if (!selected.isEmpty()) {
                toggle(e);
                return;
            }
            if (e.directory) openDirectory(e);
            else if (e.isImage()) showImage(e);
            else if (e.isVideo()) showVideo(e);
            else openExternal(e);
        });
        list.setOnItemLongClickListener((parent, view, position, id) -> {
            if (position >= 0 && position < entries.size()) toggle(entries.get(position));
            return true;
        });

        loadCurrent();
    }

    private Button button(String text) {
        Button b = new Button(this);
        b.setText(text);
        b.setTextSize(10);
        b.setTextColor(NAVY);
        b.setAllCaps(false);
        b.setBackground(roundRect(YELLOW, dp(8), YELLOW));
        return b;
    }

    private void addEqual(LinearLayout row, View view) {
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(0, dp(44), 1f);
        p.setMargins(dp(2), 0, dp(2), 0);
        row.addView(view, p);
    }

    private String currentPath() {
        if (cloudMode) {
            StringBuilder b = new StringBuilder("Bulut");
            for (DocumentFile d : cloudStack) b.append(" / ").append(safeName(d));
            return b.toString();
        }
        if (localDir == null) return "";
        String rootPath = canonical(Environment.getExternalStorageDirectory()).getAbsolutePath();
        String p = canonical(localDir).getAbsolutePath();
        if (p.equals(rootPath)) return "Telefon";
        if (p.startsWith(rootPath + File.separator)) return "Telefon / " + p.substring(rootPath.length() + 1).replace(File.separatorChar, '/');
        return p;
    }

    private void openDirectory(Entry e) {
        selected.clear();
        if (e.local != null) {
            File target = canonical(e.local);
            if (localDir != null && canonical(localDir).equals(target)) {
                loadCurrent();
                return;
            }
            localDir = target;
        } else if (e.doc != null) {
            if (cloudDir != null && cloudDir.getUri().equals(e.doc.getUri())) {
                loadCurrent();
                return;
            }
            cloudDir = e.doc;
            if (cloudStack.isEmpty() || !cloudStack.peekLast().getUri().equals(e.doc.getUri())) cloudStack.addLast(e.doc);
        }
        subtitle.setText(currentPath());
        loadCurrent();
    }

    private void goUp() {
        selected.clear();
        if (cloudMode) {
            if (cloudStack.size() <= 1) {
                showHome();
                return;
            }
            cloudStack.removeLast();
            cloudDir = cloudStack.peekLast();
            subtitle.setText(currentPath());
            loadCurrent();
            return;
        }
        File rootDir = canonical(Environment.getExternalStorageDirectory());
        if (localDir == null || canonical(localDir).equals(rootDir)) {
            showHome();
            return;
        }
        File parent = localDir.getParentFile();
        if (parent == null || !canonical(parent).getAbsolutePath().startsWith(rootDir.getAbsolutePath())) {
            showHome();
            return;
        }
        localDir = canonical(parent);
        subtitle.setText(currentPath());
        loadCurrent();
    }

    private void loadCurrent() {
        final int generation = loadGeneration.incrementAndGet();
        final File localSnapshot = localDir;
        final DocumentFile cloudSnapshot = cloudDir;
        final boolean mode = cloudMode;
        status.setText("Klasör açılıyor…");
        io.execute(() -> {
            List<Entry> loaded = new ArrayList<>();
            try {
                if (!mode && localSnapshot != null) {
                    File[] files = localSnapshot.listFiles();
                    if (files != null) for (File f : files) loaded.add(Entry.local(f));
                } else if (mode && cloudSnapshot != null) {
                    for (DocumentFile d : cloudSnapshot.listFiles()) loaded.add(Entry.cloud(d));
                }
            } catch (Exception ignored) { }
            loaded.sort(Comparator.comparing((Entry e) -> !e.directory)
                    .thenComparing(e -> e.name.toLowerCase(Locale.getDefault())));
            runOnUiThread(() -> {
                if (generation != loadGeneration.get()) return;
                if (mode != cloudMode) return;
                if (!mode && localSnapshot != localDir) return;
                if (mode && (cloudDir == null || cloudSnapshot == null || !cloudDir.getUri().equals(cloudSnapshot.getUri()))) return;
                entries.clear();
                entries.addAll(loaded);
                selected.retainAll(entryKeys(loaded));
                if (adapter != null) adapter.notifyDataSetChanged();
                status.setText(entries.size() + " öğe");
            });
        });
    }

    private Set<String> entryKeys(List<Entry> list) {
        Set<String> out = new LinkedHashSet<>();
        for (Entry e : list) out.add(e.key());
        return out;
    }

    private void toggle(Entry e) {
        String key = e.key();
        if (selected.contains(key)) selected.remove(key); else selected.add(key);
        status.setText(selected.isEmpty() ? entries.size() + " öğe" : selected.size() + " öğe seçili");
        adapter.notifyDataSetChanged();
    }

    private List<Entry> selectedEntries() {
        List<Entry> out = new ArrayList<>();
        for (Entry e : entries) if (selected.contains(e.key())) out.add(e);
        return out;
    }

    private void setClipboard(boolean move) {
        List<Entry> picked = selectedEntries();
        if (picked.isEmpty()) {
            Toast.makeText(this, "Önce uzun basıp dosya seç", Toast.LENGTH_SHORT).show();
            return;
        }
        clipboard.clear();
        clipboard.addAll(picked);
        moveClipboard = move;
        selected.clear();
        adapter.notifyDataSetChanged();
        refreshPaste();
        status.setText(clipboard.size() + " öğe " + (move ? "taşınacak" : "kopyalanacak") + " • hedef klasöre git");
    }

    private void refreshPaste() {
        if (pasteButton == null) return;
        pasteButton.setEnabled(!clipboard.isEmpty());
        pasteButton.setAlpha(clipboard.isEmpty() ? 0.45f : 1f);
    }

    private void paste() {
        if (clipboard.isEmpty()) return;
        final File localTarget = cloudMode ? null : localDir;
        final DocumentFile cloudTarget = cloudMode ? cloudDir : null;
        if (cloudMode && (cloudTarget == null || !cloudTarget.canWrite())) {
            Toast.makeText(this, "Bu bulut klasörüne yazılamıyor", Toast.LENGTH_LONG).show();
            return;
        }
        if (!cloudMode && (localTarget == null || !localTarget.canWrite())) {
            Toast.makeText(this, "Bu klasöre yazılamıyor", Toast.LENGTH_LONG).show();
            return;
        }
        List<Entry> work = new ArrayList<>(clipboard);
        boolean move = moveClipboard;
        pasteButton.setEnabled(false);
        io.execute(() -> {
            int ok = 0;
            int fail = 0;
            for (int i = 0; i < work.size(); i++) {
                Entry src = work.get(i);
                boolean done = false;
                try {
                    if (localTarget != null && src.local != null && src.directory && isSameOrChild(localTarget, src.local)) {
                        done = false;
                    } else {
                        done = localTarget != null ? copyToLocal(src, localTarget) : copyToCloud(src, cloudTarget);
                        if (done && move) done = deleteEntry(src);
                    }
                } catch (Exception ignored) { }
                if (done) ok++; else fail++;
                int p = i + 1;
                runOnUiThread(() -> status.setText(p + " / " + work.size() + " işleniyor…"));
            }
            int good = ok;
            int bad = fail;
            runOnUiThread(() -> {
                if (bad == 0) clipboard.clear();
                refreshPaste();
                Toast.makeText(this, good + " tamamlandı" + (bad > 0 ? " • " + bad + " hata" : ""), Toast.LENGTH_LONG).show();
                loadCurrent();
            });
        });
    }

    private boolean copyToLocal(Entry src, File targetDir) throws Exception {
        String name = uniqueLocalName(targetDir, src.name, src.directory);
        File out = new File(targetDir, name);
        if (src.directory) {
            if (!out.mkdirs() && !out.isDirectory()) return false;
            for (Entry child : children(src)) if (!copyToLocal(child, out)) return false;
            return true;
        }
        try (InputStream in = input(src); OutputStream os = new FileOutputStream(out)) {
            if (in == null) return false;
            copyStream(in, os);
            return true;
        } catch (Exception e) {
            out.delete();
            throw e;
        }
    }

    private boolean copyToCloud(Entry src, DocumentFile targetDir) throws Exception {
        if (targetDir == null) return false;
        String name = uniqueCloudName(targetDir, src.name, src.directory);
        if (src.directory) {
            DocumentFile out = targetDir.createDirectory(name);
            if (out == null) return false;
            for (Entry child : children(src)) if (!copyToCloud(child, out)) return false;
            return true;
        }
        DocumentFile out = targetDir.createFile(src.mime == null ? "application/octet-stream" : src.mime, name);
        if (out == null) return false;
        try (InputStream in = input(src); OutputStream os = getContentResolver().openOutputStream(out.getUri(), "w")) {
            if (in == null || os == null) return false;
            copyStream(in, os);
            return true;
        } catch (Exception e) {
            try { out.delete(); } catch (Exception ignored) { }
            throw e;
        }
    }

    private List<Entry> children(Entry src) {
        List<Entry> out = new ArrayList<>();
        if (src.local != null) {
            File[] files = src.local.listFiles();
            if (files != null) for (File f : files) out.add(Entry.local(f));
        } else if (src.doc != null) {
            try { for (DocumentFile d : src.doc.listFiles()) out.add(Entry.cloud(d)); } catch (Exception ignored) { }
        }
        return out;
    }

    private InputStream input(Entry e) throws Exception {
        if (e.local != null) return new FileInputStream(e.local);
        return e.doc == null ? null : getContentResolver().openInputStream(e.doc.getUri());
    }

    private void copyStream(InputStream in, OutputStream out) throws Exception {
        byte[] buffer = new byte[512 * 1024];
        int n;
        while ((n = in.read(buffer)) != -1) out.write(buffer, 0, n);
        out.flush();
    }

    private boolean deleteEntry(Entry e) {
        try {
            if (e.local != null) return deleteLocal(e.local);
            return e.doc != null && e.doc.delete();
        } catch (Exception ignored) { return false; }
    }

    private boolean deleteLocal(File file) {
        if (file.isDirectory()) {
            File[] children = file.listFiles();
            if (children != null) for (File child : children) if (!deleteLocal(child)) return false;
        }
        return file.delete();
    }

    private boolean isSameOrChild(File target, File sourceDir) {
        try {
            String t = target.getCanonicalPath();
            String s = sourceDir.getCanonicalPath();
            return t.equals(s) || t.startsWith(s + File.separator);
        } catch (Exception e) { return true; }
    }

    private String uniqueLocalName(File dir, String original, boolean folder) {
        File first = new File(dir, original);
        if (!first.exists()) return original;
        String[] parts = splitName(original, folder);
        for (int i = 1; i < 10000; i++) {
            String candidate = parts[0] + " (" + i + ")" + parts[1];
            if (!new File(dir, candidate).exists()) return candidate;
        }
        return parts[0] + " " + System.currentTimeMillis() + parts[1];
    }

    private String uniqueCloudName(DocumentFile dir, String original, boolean folder) {
        if (dir.findFile(original) == null) return original;
        String[] parts = splitName(original, folder);
        for (int i = 1; i < 10000; i++) {
            String candidate = parts[0] + " (" + i + ")" + parts[1];
            if (dir.findFile(candidate) == null) return candidate;
        }
        return parts[0] + " " + System.currentTimeMillis() + parts[1];
    }

    private String[] splitName(String original, boolean folder) {
        if (folder) return new String[]{original, ""};
        int dot = original.lastIndexOf('.');
        if (dot > 0 && dot < original.length() - 1) return new String[]{original.substring(0, dot), original.substring(dot)};
        return new String[]{original, ""};
    }

    private void deleteSelected() {
        List<Entry> picked = selectedEntries();
        if (picked.isEmpty()) {
            Toast.makeText(this, "Önce uzun basıp dosya seç", Toast.LENGTH_SHORT).show();
            return;
        }
        new AlertDialog.Builder(this)
                .setTitle("Silinsin mi?")
                .setMessage(picked.size() + " öğe silinecek.")
                .setNegativeButton("Vazgeç", null)
                .setPositiveButton("Sil", (d, w) -> {
                    selected.clear();
                    adapter.notifyDataSetChanged();
                    io.execute(() -> {
                        int ok = 0;
                        for (Entry e : picked) if (deleteEntry(e)) ok++;
                        int count = ok;
                        runOnUiThread(() -> {
                            Toast.makeText(this, count + " öğe silindi", Toast.LENGTH_SHORT).show();
                            loadCurrent();
                        });
                    });
                }).show();
    }

    private void createFolder() {
        EditText input = new EditText(this);
        input.setHint("Klasör adı");
        new AlertDialog.Builder(this)
                .setTitle("Yeni klasör")
                .setView(input)
                .setNegativeButton("Vazgeç", null)
                .setPositiveButton("Oluştur", (d, w) -> {
                    String name = input.getText().toString().trim();
                    if (name.isEmpty()) return;
                    io.execute(() -> {
                        boolean ok;
                        if (cloudMode) ok = cloudDir != null && cloudDir.createDirectory(name) != null;
                        else {
                            File f = new File(localDir, name);
                            ok = f.mkdir() || f.isDirectory();
                        }
                        boolean result = ok;
                        runOnUiThread(() -> {
                            Toast.makeText(this, result ? "Klasör oluşturuldu" : "Oluşturulamadı", Toast.LENGTH_SHORT).show();
                            loadCurrent();
                        });
                    });
                }).show();
    }

    private void shareSelected() {
        List<Entry> picked = selectedEntries();
        ArrayList<Uri> uris = new ArrayList<>();
        for (Entry e : picked) if (!e.directory) {
            Uri u = shareUri(e);
            if (u != null) uris.add(u);
        }
        if (uris.isEmpty()) {
            Toast.makeText(this, "Paylaşmak için dosya seç", Toast.LENGTH_SHORT).show();
            return;
        }
        Intent i = new Intent(uris.size() == 1 ? Intent.ACTION_SEND : Intent.ACTION_SEND_MULTIPLE);
        i.setType("*/*");
        i.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
        if (uris.size() == 1) i.putExtra(Intent.EXTRA_STREAM, uris.get(0));
        else i.putParcelableArrayListExtra(Intent.EXTRA_STREAM, uris);
        ClipData clip = ClipData.newUri(getContentResolver(), "Dosyalar", uris.get(0));
        for (int x = 1; x < uris.size(); x++) clip.addItem(new ClipData.Item(uris.get(x)));
        i.setClipData(clip);
        startActivity(Intent.createChooser(i, "Paylaş"));
    }

    private Uri shareUri(Entry e) {
        try {
            if (e.local != null) return FileProvider.getUriForFile(this, getPackageName() + ".files", e.local);
            return e.doc == null ? null : e.doc.getUri();
        } catch (Exception ex) { return null; }
    }

    private Uri playableUri(Entry e) {
        if (e.local != null) return Uri.fromFile(e.local);
        return e.doc == null ? null : e.doc.getUri();
    }

    private void openExternal(Entry e) {
        try {
            Uri u = shareUri(e);
            if (u == null) throw new IllegalStateException();
            Intent i = new Intent(Intent.ACTION_VIEW);
            i.setDataAndType(u, e.mime == null ? "*/*" : e.mime);
            i.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            startActivity(i);
        } catch (Exception ex) {
            Toast.makeText(this, "Bu dosyayı açacak uygulama yok", Toast.LENGTH_SHORT).show();
        }
    }

    private void showImage(Entry e) {
        previewMode = true;
        content.removeAllViews();
        title.setText(e.name);
        subtitle.setText("Fotoğraf • çift dokun veya parmakla yakınlaştır");

        Button back = button("‹ GERİ");
        content.addView(back, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(46)));
        FrameLayout frame = new FrameLayout(this);
        frame.setBackgroundColor(Color.BLACK);
        ZoomImageView image = new ZoomImageView(this);
        image.setBackgroundColor(Color.BLACK);
        frame.addView(image, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        TextView loading = new TextView(this);
        loading.setText("Yükleniyor…");
        loading.setTextColor(Color.WHITE);
        loading.setTextSize(15);
        loading.setGravity(Gravity.CENTER);
        frame.addView(loading, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        content.addView(frame, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        back.setOnClickListener(v -> showBrowser());

        io.execute(() -> {
            Bitmap bmp = decodePreview(e, 4096);
            runOnUiThread(() -> {
                if (!previewMode) { if (bmp != null) bmp.recycle(); return; }
                loading.setVisibility(View.GONE);
                if (bmp != null) image.setImageBitmap(bmp);
                else Toast.makeText(this, "Fotoğraf açılamadı", Toast.LENGTH_SHORT).show();
            });
        });
    }

    private void showVideo(Entry e) {
        previewMode = true;
        content.removeAllViews();
        title.setText(e.name);
        subtitle.setText("Video");
        Button back = button("‹ GERİ");
        content.addView(back, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(46)));
        VideoView video = new VideoView(this);
        video.setBackgroundColor(Color.BLACK);
        MediaController controller = new MediaController(this);
        controller.setAnchorView(video);
        video.setMediaController(controller);
        content.addView(video, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        back.setOnClickListener(v -> {
            video.stopPlayback();
            showBrowser();
        });
        Uri uri = playableUri(e);
        if (uri == null) {
            Toast.makeText(this, "Video açılamadı", Toast.LENGTH_SHORT).show();
            return;
        }
        video.setVideoURI(uri);
        video.setOnPreparedListener(mp -> video.start());
        video.setOnErrorListener((mp, what, extra) -> {
            Toast.makeText(this, "Video oynatılamadı", Toast.LENGTH_SHORT).show();
            return true;
        });
    }

    private Bitmap decodePreview(Entry e, int maxSide) {
        try {
            if (e.local != null) {
                BitmapFactory.Options bounds = new BitmapFactory.Options();
                bounds.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(e.local.getAbsolutePath(), bounds);
                BitmapFactory.Options opts = new BitmapFactory.Options();
                opts.inSampleSize = sampleSize(bounds.outWidth, bounds.outHeight, maxSide);
                opts.inPreferredConfig = Bitmap.Config.ARGB_8888;
                return BitmapFactory.decodeFile(e.local.getAbsolutePath(), opts);
            }
            if (e.doc != null) {
                BitmapFactory.Options bounds = new BitmapFactory.Options();
                bounds.inJustDecodeBounds = true;
                try (InputStream in = getContentResolver().openInputStream(e.doc.getUri())) {
                    BitmapFactory.decodeStream(in, null, bounds);
                }
                BitmapFactory.Options opts = new BitmapFactory.Options();
                opts.inSampleSize = sampleSize(bounds.outWidth, bounds.outHeight, maxSide);
                try (InputStream in = getContentResolver().openInputStream(e.doc.getUri())) {
                    return BitmapFactory.decodeStream(in, null, opts);
                }
            }
        } catch (Exception ignored) { }
        return null;
    }

    private int sampleSize(int w, int h, int maxSide) {
        int sample = 1;
        while (w / sample > maxSide || h / sample > maxSide) sample *= 2;
        return Math.max(1, sample);
    }

    private void loadThumb(Entry e, ImageView image, TextView fallback) {
        if (!e.isImage() && !e.isVideo()) {
            image.setVisibility(View.GONE);
            fallback.setVisibility(View.VISIBLE);
            fallback.setText(e.directory ? "📁" : iconFor(e));
            return;
        }
        String key = e.key() + ":" + e.modified + ":thumb";
        image.setTag(key);
        Bitmap cached = thumbCache.get(key);
        if (cached != null && !cached.isRecycled()) {
            fallback.setVisibility(View.GONE);
            image.setVisibility(View.VISIBLE);
            image.setImageBitmap(cached);
            return;
        }
        image.setVisibility(View.GONE);
        fallback.setVisibility(View.VISIBLE);
        fallback.setText(e.isVideo() ? "▶" : "▧");
        thumbPool.execute(() -> {
            Bitmap bmp = createThumb(e);
            if (bmp != null) thumbCache.put(key, bmp);
            runOnUiThread(() -> {
                if (!key.equals(image.getTag())) return;
                if (bmp != null && !bmp.isRecycled()) {
                    fallback.setVisibility(View.GONE);
                    image.setVisibility(View.VISIBLE);
                    image.setImageBitmap(bmp);
                }
            });
        });
    }

    private Bitmap createThumb(Entry e) {
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                if (e.local != null && e.isVideo()) return ThumbnailUtils.createVideoThumbnail(e.local, new Size(dp(72), dp(72)), null);
                if (e.doc != null) return getContentResolver().loadThumbnail(e.doc.getUri(), new Size(dp(72), dp(72)), null);
            }
            if (e.local != null && e.isImage()) {
                BitmapFactory.Options bounds = new BitmapFactory.Options();
                bounds.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(e.local.getAbsolutePath(), bounds);
                BitmapFactory.Options opts = new BitmapFactory.Options();
                opts.inSampleSize = sampleSize(bounds.outWidth, bounds.outHeight, 240);
                return BitmapFactory.decodeFile(e.local.getAbsolutePath(), opts);
            }
            if (e.doc != null && e.isImage()) {
                try (InputStream in = getContentResolver().openInputStream(e.doc.getUri())) {
                    BitmapFactory.Options opts = new BitmapFactory.Options();
                    opts.inSampleSize = 4;
                    return BitmapFactory.decodeStream(in, null, opts);
                }
            }
        } catch (Exception ignored) { }
        return null;
    }

    @Override
    public void onBackPressed() {
        if (previewMode) {
            showBrowser();
            return;
        }
        if (!selected.isEmpty()) {
            selected.clear();
            if (adapter != null) adapter.notifyDataSetChanged();
            if (status != null) status.setText(entries.size() + " öğe");
            return;
        }
        if (localDir != null || cloudDir != null) goUp();
        else super.onBackPressed();
    }

    private File canonical(File f) {
        try { return f.getCanonicalFile(); } catch (Exception e) { return f.getAbsoluteFile(); }
    }

    private int dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }

    private String formatSize(long bytes) {
        if (bytes < 1024) return bytes + " B";
        double kb = bytes / 1024.0;
        if (kb < 1024) return String.format(Locale.getDefault(), "%.1f KB", kb);
        double mb = kb / 1024.0;
        if (mb < 1024) return String.format(Locale.getDefault(), "%.1f MB", mb);
        return String.format(Locale.getDefault(), "%.2f GB", mb / 1024.0);
    }

    private String fileDetail(Entry e) {
        String size = formatSize(e.size);
        if (e.modified <= 0) return size;
        return size + " • " + DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.SHORT).format(new Date(e.modified));
    }

    private String iconFor(Entry e) {
        if (e.directory) return "📁";
        if (e.isImage()) return "▧";
        if (e.isVideo()) return "▶";
        if (e.mime != null && e.mime.startsWith("audio/")) return "♫";
        String n = e.name.toLowerCase(Locale.ROOT);
        if (n.endsWith(".pdf")) return "PDF";
        if (n.endsWith(".zip") || n.endsWith(".rar") || n.endsWith(".7z")) return "ZIP";
        if (n.endsWith(".apk")) return "APK";
        return "📄";
    }

    @Override protected void onDestroy() {
        io.shutdownNow();
        thumbPool.shutdownNow();
        thumbCache.evictAll();
        super.onDestroy();
    }

    private final class EntryAdapter extends BaseAdapter {
        @Override public int getCount() { return entries.size(); }
        @Override public Entry getItem(int position) { return entries.get(position); }
        @Override public long getItemId(int position) { return position; }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            Holder h;
            if (convertView == null) {
                LinearLayout row = new LinearLayout(SimpleFileActivity.this);
                row.setOrientation(LinearLayout.HORIZONTAL);
                row.setGravity(Gravity.CENTER_VERTICAL);
                row.setPadding(dp(8), dp(5), dp(10), dp(5));

                FrameLayout media = new FrameLayout(SimpleFileActivity.this);
                ImageView thumb = new ImageView(SimpleFileActivity.this);
                thumb.setScaleType(ImageView.ScaleType.CENTER_CROP);
                media.addView(thumb, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
                TextView fallback = new TextView(SimpleFileActivity.this);
                fallback.setGravity(Gravity.CENTER);
                fallback.setTextSize(25);
                fallback.setTextColor(NAVY);
                media.addView(fallback, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
                row.addView(media, new LinearLayout.LayoutParams(dp(66), dp(66)));

                LinearLayout texts = new LinearLayout(SimpleFileActivity.this);
                texts.setOrientation(LinearLayout.VERTICAL);
                texts.setGravity(Gravity.CENTER_VERTICAL);
                texts.setPadding(dp(10), 0, 0, 0);
                TextView name = new TextView(SimpleFileActivity.this);
                name.setTextSize(16);
                name.setTextColor(NAVY);
                name.setSingleLine(true);
                TextView detail = new TextView(SimpleFileActivity.this);
                detail.setTextSize(11);
                detail.setTextColor(Color.GRAY);
                detail.setSingleLine(true);
                texts.addView(name);
                texts.addView(detail);
                row.addView(texts, new LinearLayout.LayoutParams(0, dp(66), 1f));
                h = new Holder(row, thumb, fallback, name, detail);
                row.setTag(h);
                convertView = row;
            } else h = (Holder) convertView.getTag();

            Entry e = entries.get(position);
            h.row.setBackgroundColor(selected.contains(e.key()) ? Color.rgb(255, 239, 179) : Color.WHITE);
            h.name.setText(e.name);
            h.detail.setText(e.directory ? "Klasör" : fileDetail(e));
            h.thumb.setImageDrawable(null);
            h.thumb.setTag(null);
            loadThumb(e, h.thumb, h.fallback);
            return convertView;
        }
    }

    private static final class Holder {
        final LinearLayout row;
        final ImageView thumb;
        final TextView fallback;
        final TextView name;
        final TextView detail;
        Holder(LinearLayout row, ImageView thumb, TextView fallback, TextView name, TextView detail) {
            this.row = row; this.thumb = thumb; this.fallback = fallback; this.name = name; this.detail = detail;
        }
    }

    private static final class Entry {
        final File local;
        final DocumentFile doc;
        final String name;
        final String mime;
        final boolean directory;
        final long size;
        final long modified;

        private Entry(File local, DocumentFile doc, String name, String mime, boolean directory, long size, long modified) {
            this.local = local; this.doc = doc; this.name = name; this.mime = mime; this.directory = directory; this.size = size; this.modified = modified;
        }

        static Entry local(File f) {
            String name = f.getName().isBlank() ? f.getAbsolutePath() : f.getName();
            boolean dir = f.isDirectory();
            return new Entry(f, null, name, dir ? null : mimeFor(name), dir, dir ? 0 : f.length(), f.lastModified());
        }

        static Entry cloud(DocumentFile d) {
            String name = d.getName();
            if (name == null || name.isBlank()) name = "Adsız";
            boolean dir = d.isDirectory();
            return new Entry(null, d, name, dir ? null : d.getType(), dir, dir ? 0 : d.length(), d.lastModified());
        }

        String key() {
            return local != null ? "f:" + local.getAbsolutePath() : "u:" + doc.getUri();
        }

        boolean isImage() {
            if (directory) return false;
            if (mime != null && mime.startsWith("image/")) return true;
            String n = name.toLowerCase(Locale.ROOT);
            return n.endsWith(".jpg") || n.endsWith(".jpeg") || n.endsWith(".png") || n.endsWith(".webp") || n.endsWith(".gif") || n.endsWith(".bmp") || n.endsWith(".heic") || n.endsWith(".heif");
        }

        boolean isVideo() {
            if (directory) return false;
            if (mime != null && mime.startsWith("video/")) return true;
            String n = name.toLowerCase(Locale.ROOT);
            return n.endsWith(".mp4") || n.endsWith(".mkv") || n.endsWith(".webm") || n.endsWith(".mov") || n.endsWith(".avi") || n.endsWith(".3gp") || n.endsWith(".m4v");
        }

        private static String mimeFor(String name) {
            String ext = MimeTypeMap.getFileExtensionFromUrl(name);
            if (ext == null || ext.isBlank()) {
                int dot = name.lastIndexOf('.');
                if (dot >= 0 && dot < name.length() - 1) ext = name.substring(dot + 1);
            }
            if (ext == null) return "application/octet-stream";
            String m = MimeTypeMap.getSingleton().getMimeTypeFromExtension(ext.toLowerCase(Locale.ROOT));
            return m == null ? "application/octet-stream" : m;
        }
    }

    private static String safeName(DocumentFile d) {
        String n = d == null ? null : d.getName();
        return n == null || n.isBlank() ? "Kök" : n;
    }
}
