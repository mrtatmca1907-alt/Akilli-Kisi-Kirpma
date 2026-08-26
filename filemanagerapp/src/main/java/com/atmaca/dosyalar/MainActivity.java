package com.atmaca.dosyalar;

import android.Manifest;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ClipData;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.Settings;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridLayout;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

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

public class MainActivity extends Activity {
    private static final int NAVY = Color.rgb(8, 20, 38);
    private static final int NAVY_2 = Color.rgb(24, 42, 64);
    private static final int YELLOW = Color.rgb(244, 196, 48);
    private static final int REQUEST_CLOUD = 102;
    private static final int REQUEST_STORAGE = 103;
    private static final String PREFS = "atmaca_files";
    private static final String KEY_CLOUD = "cloud_root";

    private final ExecutorService io = Executors.newSingleThreadExecutor();
    private final AtomicInteger generation = new AtomicInteger();
    private final ArrayDeque<DocumentFile> navStack = new ArrayDeque<>();
    private final List<DocumentFile> items = new ArrayList<>();
    private final Set<String> selected = new LinkedHashSet<>();
    private final List<DocumentFile> clipboard = new ArrayList<>();

    private SharedPreferences prefs;
    private Uri cloudRootUri;
    private DocumentFile currentDir;
    private boolean showingCloud = false;
    private boolean moveClipboard = false;
    private File pendingLocalDir;

    private LinearLayout root;
    private LinearLayout content;
    private TextView title;
    private TextView subtitle;
    private TextView status;
    private ListView list;
    private FileAdapter adapter;
    private Button pasteButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setStatusBarColor(NAVY);
        getWindow().setNavigationBarColor(NAVY);
        prefs = getSharedPreferences(PREFS, MODE_PRIVATE);
        String savedCloud = prefs.getString(KEY_CLOUD, null);
        if (savedCloud != null && !savedCloud.isBlank()) {
            try { cloudRootUri = Uri.parse(savedCloud); } catch (Exception ignored) { }
        }
        buildBaseUi();
        showHome();
    }

    private void buildBaseUi() {
        root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(Color.rgb(247, 247, 247));

        LinearLayout bar = new LinearLayout(this);
        bar.setOrientation(LinearLayout.VERTICAL);
        bar.setPadding(dp(16), dp(10), dp(16), dp(10));
        bar.setBackgroundColor(NAVY);

        title = new TextView(this);
        title.setText("ATMACA Dosyalar");
        title.setTextSize(24);
        title.setTextColor(YELLOW);
        title.setGravity(Gravity.START);
        bar.addView(title);

        subtitle = new TextView(this);
        subtitle.setText("Basit • hızlı • tarama yapmaz");
        subtitle.setTextSize(12);
        subtitle.setTextColor(Color.LTGRAY);
        bar.addView(subtitle);
        root.addView(bar);

        content = new LinearLayout(this);
        content.setOrientation(LinearLayout.VERTICAL);
        content.setBackgroundColor(Color.rgb(247, 247, 247));
        root.addView(content, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        setContentView(root);
    }

    private void showHome() {
        generation.incrementAndGet();
        currentDir = null;
        showingCloud = false;
        navStack.clear();
        selected.clear();
        content.removeAllViews();
        title.setText("ATMACA Dosyalar");
        subtitle.setText("İstediğine bas, direkt açılsın");

        GridLayout grid = new GridLayout(this);
        grid.setColumnCount(2);
        grid.setPadding(dp(10), dp(14), dp(10), dp(10));
        grid.setUseDefaultMargins(false);

        addHomeTile(grid, "📁", "Ana bellek", "Tüm klasörler", () -> openLocal(Environment.getExternalStorageDirectory()));
        addHomeTile(grid, "⬇", "İndirilenler", "Download", () -> openLocal(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS)));
        addHomeTile(grid, "🖼", "Görüntüler", "Pictures", () -> openLocal(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES)));
        addHomeTile(grid, "▶", "Videolar", "Movies", () -> openLocal(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MOVIES)));
        addHomeTile(grid, "📄", "Belgeler", "Documents", () -> openLocal(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)));
        addHomeTile(grid, "☁", "Bulut", "Drive / OneDrive vb.", this::openCloud);

        content.addView(grid, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        TextView note = new TextView(this);
        note.setText("Bellek analizi, yeni dosyalar taraması, gereksiz sayaçlar yok. Uygulama sadece açtığın klasörü listeler.");
        note.setTextColor(Color.DKGRAY);
        note.setTextSize(13);
        note.setPadding(dp(20), dp(16), dp(20), dp(10));
        content.addView(note);
    }

    private void addHomeTile(GridLayout grid, String icon, String name, String small, Runnable action) {
        LinearLayout tile = new LinearLayout(this);
        tile.setOrientation(LinearLayout.VERTICAL);
        tile.setGravity(Gravity.CENTER);
        tile.setPadding(dp(8), dp(16), dp(8), dp(16));
        tile.setBackground(roundRect(Color.WHITE, dp(18), Color.rgb(220, 220, 220)));

        TextView i = new TextView(this);
        i.setText(icon);
        i.setTextSize(36);
        i.setGravity(Gravity.CENTER);
        tile.addView(i);

        TextView n = new TextView(this);
        n.setText(name);
        n.setTextSize(18);
        n.setTextColor(NAVY);
        n.setGravity(Gravity.CENTER);
        tile.addView(n);

        TextView s = new TextView(this);
        s.setText(small);
        s.setTextSize(11);
        s.setTextColor(Color.GRAY);
        s.setGravity(Gravity.CENTER);
        tile.addView(s);

        GridLayout.LayoutParams p = new GridLayout.LayoutParams();
        p.width = 0;
        p.height = dp(142);
        p.columnSpec = GridLayout.spec(GridLayout.UNDEFINED, 1f);
        p.setMargins(dp(6), dp(6), dp(6), dp(6));
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
        showingCloud = false;
        navStack.clear();
        DocumentFile rootDoc = DocumentFile.fromFile(Environment.getExternalStorageDirectory());
        navStack.add(rootDoc);
        if (!dir.equals(Environment.getExternalStorageDirectory())) {
            DocumentFile target = DocumentFile.fromFile(dir);
            navStack.add(target);
            currentDir = target;
        } else {
            currentDir = rootDoc;
        }
        selected.clear();
        showBrowser();
    }

    private boolean hasStorageAccess() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) return Environment.isExternalStorageManager();
        return checkSelfPermission(Manifest.permission.READ_EXTERNAL_STORAGE) == PackageManager.PERMISSION_GRANTED &&
                checkSelfPermission(Manifest.permission.WRITE_EXTERNAL_STORAGE) == PackageManager.PERMISSION_GRANTED;
    }

    private void requestStorageAccess() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            try {
                Intent i = new Intent(Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION,
                        Uri.parse("package:" + getPackageName()));
                startActivity(i);
            } catch (Exception e) {
                startActivity(new Intent(Settings.ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION));
            }
        } else {
            requestPermissions(new String[]{Manifest.permission.READ_EXTERNAL_STORAGE, Manifest.permission.WRITE_EXTERNAL_STORAGE}, REQUEST_STORAGE);
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (pendingLocalDir != null && hasStorageAccess() && currentDir == null) {
            File wanted = pendingLocalDir;
            pendingLocalDir = null;
            openLocal(wanted);
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == REQUEST_STORAGE && hasStorageAccess() && pendingLocalDir != null) {
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
        showingCloud = true;
        navStack.clear();
        navStack.add(rootDoc);
        currentDir = rootDoc;
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
        content.removeAllViews();
        title.setText(showingCloud ? "Bulut" : "Dosyalar");
        subtitle.setText(breadcrumb());

        LinearLayout top = new LinearLayout(this);
        top.setOrientation(LinearLayout.HORIZONTAL);
        top.setPadding(dp(6), dp(5), dp(6), dp(5));
        Button home = smallButton("⌂ ANA");
        Button up = smallButton("↑ ÜST");
        Button refresh = smallButton("YENİLE");
        Button folder = smallButton("+ KLASÖR");
        addEqual(top, home);
        addEqual(top, up);
        addEqual(top, refresh);
        addEqual(top, folder);
        content.addView(top);

        status = new TextView(this);
        status.setTextColor(Color.DKGRAY);
        status.setTextSize(12);
        status.setPadding(dp(12), dp(4), dp(12), dp(6));
        status.setText("Açılıyor…");
        content.addView(status);

        list = new ListView(this);
        list.setDividerHeight(1);
        list.setBackgroundColor(Color.WHITE);
        adapter = new FileAdapter();
        list.setAdapter(adapter);
        content.addView(list, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        LinearLayout actions = new LinearLayout(this);
        actions.setOrientation(LinearLayout.HORIZONTAL);
        actions.setPadding(dp(6), dp(4), dp(6), dp(6));
        Button copy = smallButton("KOPYALA");
        Button move = smallButton("TAŞI");
        pasteButton = smallButton("YAPIŞTIR");
        Button share = smallButton("PAYLAŞ");
        Button delete = smallButton("SİL");
        addEqual(actions, copy);
        addEqual(actions, move);
        addEqual(actions, pasteButton);
        addEqual(actions, share);
        addEqual(actions, delete);
        content.addView(actions);
        refreshPasteButton();

        home.setOnClickListener(v -> showHome());
        up.setOnClickListener(v -> goUp());
        refresh.setOnClickListener(v -> loadCurrent());
        folder.setOnClickListener(v -> createFolderDialog());
        copy.setOnClickListener(v -> setClipboard(false));
        move.setOnClickListener(v -> setClipboard(true));
        pasteButton.setOnClickListener(v -> paste());
        share.setOnClickListener(v -> shareSelected());
        delete.setOnClickListener(v -> deleteSelected());

        list.setOnItemClickListener((parent, view, position, id) -> {
            if (position < 0 || position >= items.size()) return;
            DocumentFile f = items.get(position);
            if (!selected.isEmpty()) toggle(f);
            else if (f.isDirectory()) openDirectory(f);
            else openFile(f);
        });
        list.setOnItemLongClickListener((parent, view, position, id) -> {
            if (position >= 0 && position < items.size()) toggle(items.get(position));
            return true;
        });

        loadCurrent();
    }

    private Button smallButton(String text) {
        Button b = new Button(this);
        b.setText(text);
        b.setTextSize(10);
        b.setTextColor(NAVY);
        b.setBackground(roundRect(YELLOW, dp(8), YELLOW));
        b.setAllCaps(false);
        b.setPadding(dp(2), 0, dp(2), 0);
        return b;
    }

    private void addEqual(LinearLayout row, View v) {
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(0, dp(44), 1f);
        p.setMargins(dp(2), 0, dp(2), 0);
        row.addView(v, p);
    }

    private void openDirectory(DocumentFile dir) {
        navStack.addLast(dir);
        currentDir = dir;
        selected.clear();
        subtitle.setText(breadcrumb());
        loadCurrent();
    }

    private void goUp() {
        if (navStack.size() <= 1) {
            showHome();
            return;
        }
        navStack.removeLast();
        currentDir = navStack.peekLast();
        selected.clear();
        subtitle.setText(breadcrumb());
        loadCurrent();
    }

    private String breadcrumb() {
        if (navStack.isEmpty()) return "";
        StringBuilder b = new StringBuilder(showingCloud ? "Bulut" : "Telefon");
        for (DocumentFile f : navStack) {
            String n = safeName(f);
            if (n.equalsIgnoreCase("emulated") || n.equals("0")) continue;
            b.append(" / ").append(n);
        }
        return b.toString();
    }

    private void loadCurrent() {
        DocumentFile dir = currentDir;
        if (dir == null) return;
        int g = generation.incrementAndGet();
        status.setText("Klasör açılıyor…");
        io.execute(() -> {
            DocumentFile[] files;
            try { files = dir.listFiles(); }
            catch (Exception e) { files = new DocumentFile[0]; }
            Arrays.sort(files, Comparator
                    .comparing((DocumentFile f) -> !f.isDirectory())
                    .thenComparing(f -> safeName(f).toLowerCase(Locale.getDefault())));
            List<DocumentFile> loaded = Arrays.asList(files);
            runOnUiThread(() -> {
                if (g != generation.get() || currentDir != dir) return;
                items.clear();
                items.addAll(loaded);
                selected.retainAll(uriSet(items));
                adapter.notifyDataSetChanged();
                status.setText(items.size() + " öğe • arka planda tarama yok");
            });
        });
    }

    private void toggle(DocumentFile f) {
        String key = f.getUri().toString();
        if (selected.contains(key)) selected.remove(key); else selected.add(key);
        status.setText(selected.isEmpty() ? items.size() + " öğe" : selected.size() + " öğe seçili");
        adapter.notifyDataSetChanged();
    }

    private List<DocumentFile> selectedFiles() {
        List<DocumentFile> out = new ArrayList<>();
        for (DocumentFile f : items) if (selected.contains(f.getUri().toString())) out.add(f);
        return out;
    }

    private void setClipboard(boolean move) {
        List<DocumentFile> chosen = selectedFiles();
        if (chosen.isEmpty()) {
            Toast.makeText(this, "Önce dosya veya klasör seç", Toast.LENGTH_SHORT).show();
            return;
        }
        clipboard.clear();
        clipboard.addAll(chosen);
        moveClipboard = move;
        selected.clear();
        adapter.notifyDataSetChanged();
        refreshPasteButton();
        status.setText(clipboard.size() + " öğe " + (move ? "taşınacak" : "kopyalanacak") + " • hedefe git, YAPIŞTIR de");
    }

    private void refreshPasteButton() {
        if (pasteButton == null) return;
        pasteButton.setEnabled(!clipboard.isEmpty());
        pasteButton.setAlpha(clipboard.isEmpty() ? 0.45f : 1f);
    }

    private void paste() {
        DocumentFile target = currentDir;
        if (target == null || clipboard.isEmpty()) return;
        if (!target.canWrite()) {
            Toast.makeText(this, "Bu klasöre yazma izni yok", Toast.LENGTH_LONG).show();
            return;
        }
        List<DocumentFile> work = new ArrayList<>(clipboard);
        boolean move = moveClipboard;
        pasteButton.setEnabled(false);
        io.execute(() -> {
            int ok = 0;
            int fail = 0;
            for (int i = 0; i < work.size(); i++) {
                DocumentFile src = work.get(i);
                boolean done = false;
                try {
                    if (!src.getUri().equals(target.getUri())) {
                        done = copyRecursive(src, target);
                        if (done && move) done = src.delete();
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
                refreshPasteButton();
                Toast.makeText(this, good + " tamamlandı" + (bad > 0 ? " • " + bad + " hata" : ""), Toast.LENGTH_LONG).show();
                loadCurrent();
            });
        });
    }

    private boolean copyRecursive(DocumentFile src, DocumentFile targetDir) throws Exception {
        if (!src.exists()) return false;
        String name = uniqueName(targetDir, safeName(src), src.isDirectory());
        if (src.isDirectory()) {
            DocumentFile made = targetDir.createDirectory(name);
            if (made == null) return false;
            for (DocumentFile child : src.listFiles()) if (!copyRecursive(child, made)) return false;
            return true;
        }
        String mime = src.getType();
        if (mime == null || mime.isBlank()) mime = "application/octet-stream";
        DocumentFile out = targetDir.createFile(mime, name);
        if (out == null) return false;
        boolean ok = false;
        try (InputStream in = openInput(src); OutputStream os = openOutput(out)) {
            if (in == null || os == null) return false;
            byte[] buffer = new byte[512 * 1024];
            int n;
            while ((n = in.read(buffer)) != -1) os.write(buffer, 0, n);
            os.flush();
            ok = true;
            return true;
        } finally {
            if (!ok) try { out.delete(); } catch (Exception ignored) { }
        }
    }

    private InputStream openInput(DocumentFile f) throws Exception {
        Uri u = f.getUri();
        if ("file".equalsIgnoreCase(u.getScheme())) return new FileInputStream(new File(u.getPath()));
        return getContentResolver().openInputStream(u);
    }

    private OutputStream openOutput(DocumentFile f) throws Exception {
        Uri u = f.getUri();
        if ("file".equalsIgnoreCase(u.getScheme())) return new FileOutputStream(new File(u.getPath()));
        return getContentResolver().openOutputStream(u, "w");
    }

    private String uniqueName(DocumentFile dir, String original, boolean folder) {
        if (dir.findFile(original) == null) return original;
        String base = original;
        String ext = "";
        if (!folder) {
            int dot = original.lastIndexOf('.');
            if (dot > 0 && dot < original.length() - 1) {
                base = original.substring(0, dot);
                ext = original.substring(dot);
            }
        }
        for (int i = 1; i < 10000; i++) {
            String n = base + " (" + i + ")" + ext;
            if (dir.findFile(n) == null) return n;
        }
        return base + " " + System.currentTimeMillis() + ext;
    }

    private void shareSelected() {
        List<DocumentFile> chosen = selectedFiles();
        ArrayList<Uri> uris = new ArrayList<>();
        for (DocumentFile f : chosen) {
            if (!f.isFile()) continue;
            Uri u = f.getUri();
            if ("file".equalsIgnoreCase(u.getScheme())) {
                try {
                    u = FileProvider.getUriForFile(this, getPackageName() + ".files", new File(u.getPath()));
                } catch (Exception ignored) { continue; }
            }
            uris.add(u);
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
        ClipData clip = ClipData.newUri(getContentResolver(), "ATMACA", uris.get(0));
        for (int x = 1; x < uris.size(); x++) clip.addItem(new ClipData.Item(uris.get(x)));
        i.setClipData(clip);
        startActivity(Intent.createChooser(i, "Paylaş"));
    }

    private void deleteSelected() {
        List<DocumentFile> chosen = selectedFiles();
        if (chosen.isEmpty()) {
            Toast.makeText(this, "Önce silinecek öğeleri seç", Toast.LENGTH_SHORT).show();
            return;
        }
        new AlertDialog.Builder(this)
                .setTitle("Silinsin mi?")
                .setMessage(chosen.size() + " öğe silinecek.")
                .setNegativeButton("Vazgeç", null)
                .setPositiveButton("Sil", (d, w) -> {
                    selected.clear();
                    adapter.notifyDataSetChanged();
                    io.execute(() -> {
                        int ok = 0;
                        for (DocumentFile f : chosen) {
                            try { if (f.delete()) ok++; } catch (Exception ignored) { }
                        }
                        int count = ok;
                        runOnUiThread(() -> {
                            Toast.makeText(this, count + " öğe silindi", Toast.LENGTH_LONG).show();
                            loadCurrent();
                        });
                    });
                }).show();
    }

    private void createFolderDialog() {
        if (currentDir == null || !currentDir.canWrite()) {
            Toast.makeText(this, "Bu konuma klasör oluşturulamıyor", Toast.LENGTH_SHORT).show();
            return;
        }
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
                        DocumentFile made = null;
                        try { made = currentDir.createDirectory(name); } catch (Exception ignored) { }
                        DocumentFile finalMade = made;
                        runOnUiThread(() -> {
                            Toast.makeText(this, finalMade != null ? "Klasör oluşturuldu" : "Oluşturulamadı", Toast.LENGTH_SHORT).show();
                            loadCurrent();
                        });
                    });
                }).show();
    }

    private void openFile(DocumentFile f) {
        try {
            Uri u = f.getUri();
            if ("file".equalsIgnoreCase(u.getScheme())) {
                u = FileProvider.getUriForFile(this, getPackageName() + ".files", new File(u.getPath()));
            }
            Intent i = new Intent(Intent.ACTION_VIEW);
            i.setDataAndType(u, f.getType() == null ? "*/*" : f.getType());
            i.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            startActivity(i);
        } catch (Exception e) {
            Toast.makeText(this, "Bu dosyayı açacak uygulama bulunamadı", Toast.LENGTH_SHORT).show();
        }
    }

    @Override
    public void onBackPressed() {
        if (!selected.isEmpty()) {
            selected.clear();
            if (adapter != null) adapter.notifyDataSetChanged();
            if (status != null) status.setText(items.size() + " öğe");
        } else if (currentDir != null) {
            if (navStack.size() > 1) goUp(); else showHome();
        } else {
            super.onBackPressed();
        }
    }

    private Set<String> uriSet(List<DocumentFile> files) {
        Set<String> out = new LinkedHashSet<>();
        for (DocumentFile f : files) out.add(f.getUri().toString());
        return out;
    }

    private static String safeName(DocumentFile f) {
        String n = f == null ? null : f.getName();
        return n == null || n.isBlank() ? "Adsız" : n;
    }

    private int dp(int v) {
        return Math.round(v * getResources().getDisplayMetrics().density);
    }

    @Override
    protected void onDestroy() {
        io.shutdownNow();
        super.onDestroy();
    }

    private final class FileAdapter extends BaseAdapter {
        @Override public int getCount() { return items.size(); }
        @Override public DocumentFile getItem(int position) { return items.get(position); }
        @Override public long getItemId(int position) { return position; }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            LinearLayout row;
            TextView icon;
            TextView name;
            TextView detail;
            if (convertView instanceof LinearLayout) {
                row = (LinearLayout) convertView;
                icon = (TextView) row.getChildAt(0);
                LinearLayout texts = (LinearLayout) row.getChildAt(1);
                name = (TextView) texts.getChildAt(0);
                detail = (TextView) texts.getChildAt(1);
            } else {
                row = new LinearLayout(MainActivity.this);
                row.setOrientation(LinearLayout.HORIZONTAL);
                row.setGravity(Gravity.CENTER_VERTICAL);
                row.setPadding(dp(10), dp(7), dp(10), dp(7));
                icon = new TextView(MainActivity.this);
                icon.setTextSize(24);
                icon.setGravity(Gravity.CENTER);
                row.addView(icon, new LinearLayout.LayoutParams(dp(48), dp(58)));
                LinearLayout texts = new LinearLayout(MainActivity.this);
                texts.setOrientation(LinearLayout.VERTICAL);
                name = new TextView(MainActivity.this);
                name.setTextSize(16);
                name.setTextColor(NAVY);
                name.setSingleLine(true);
                detail = new TextView(MainActivity.this);
                detail.setTextSize(11);
                detail.setTextColor(Color.GRAY);
                detail.setSingleLine(true);
                texts.addView(name);
                texts.addView(detail);
                row.addView(texts, new LinearLayout.LayoutParams(0, dp(58), 1f));
            }
            DocumentFile f = items.get(position);
            boolean sel = selected.contains(f.getUri().toString());
            row.setBackgroundColor(sel ? Color.rgb(255, 239, 179) : Color.WHITE);
            icon.setText(f.isDirectory() ? "📁" : iconFor(f));
            name.setText(safeName(f));
            detail.setText(f.isDirectory() ? "Klasör" : fileDetail(f));
            return row;
        }
    }

    private String iconFor(DocumentFile f) {
        String type = f.getType();
        if (type == null) return "📄";
        if (type.startsWith("image/")) return "🖼";
        if (type.startsWith("video/")) return "▶";
        if (type.startsWith("audio/")) return "♫";
        if (type.contains("pdf")) return "PDF";
        if (type.contains("zip") || type.contains("rar") || type.contains("archive")) return "ZIP";
        if (type.contains("android.package-archive")) return "APK";
        return "📄";
    }

    private String fileDetail(DocumentFile f) {
        String size = formatSize(f.length());
        long changed = f.lastModified();
        if (changed <= 0) return size;
        return size + " • " + DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.SHORT).format(new Date(changed));
    }

    private String formatSize(long bytes) {
        if (bytes < 1024) return bytes + " B";
        double kb = bytes / 1024.0;
        if (kb < 1024) return String.format(Locale.getDefault(), "%.1f KB", kb);
        double mb = kb / 1024.0;
        if (mb < 1024) return String.format(Locale.getDefault(), "%.1f MB", mb);
        return String.format(Locale.getDefault(), "%.2f GB", mb / 1024.0);
    }
}
