package com.atmaca.dosyalar;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ClipData;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.provider.DocumentsContract;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.documentfile.provider.DocumentFile;

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
    private static final int NAVY_2 = Color.rgb(18, 35, 56);
    private static final int YELLOW = Color.rgb(244, 196, 48);
    private static final int REQUEST_LOCAL = 101;
    private static final int REQUEST_CLOUD = 102;

    private static final String PREFS = "atmaca_files";
    private static final String KEY_LOCAL = "local_root";
    private static final String KEY_CLOUD = "cloud_root";

    private final ExecutorService io = Executors.newSingleThreadExecutor();
    private final AtomicInteger loadGeneration = new AtomicInteger();
    private final ArrayDeque<DocumentFile> navStack = new ArrayDeque<>();
    private final List<DocumentFile> items = new ArrayList<>();
    private final Set<String> selected = new LinkedHashSet<>();
    private final List<DocumentFile> clipboard = new ArrayList<>();

    private SharedPreferences prefs;
    private Uri localRootUri;
    private Uri cloudRootUri;
    private boolean showingCloud;
    private boolean moveClipboard;

    private DocumentFile currentDir;
    private FileAdapter adapter;
    private TextView title;
    private TextView path;
    private TextView status;
    private ListView list;
    private Button pasteButton;
    private Button phoneButton;
    private Button cloudButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setStatusBarColor(NAVY);
        getWindow().setNavigationBarColor(NAVY);
        prefs = getSharedPreferences(PREFS, MODE_PRIVATE);
        localRootUri = parseUri(prefs.getString(KEY_LOCAL, null));
        cloudRootUri = parseUri(prefs.getString(KEY_CLOUD, null));
        buildUi();

        if (localRootUri != null) {
            switchRoot(false);
        } else if (cloudRootUri != null) {
            switchRoot(true);
        } else {
            status.setText("İlk kurulum: TELEFON'a basıp telefon depolamasının kökünü seç. Bulut için BULUT'a bas.");
        }
    }

    private void buildUi() {
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(NAVY);

        LinearLayout header = new LinearLayout(this);
        header.setOrientation(LinearLayout.VERTICAL);
        header.setPadding(dp(12), dp(8), dp(12), dp(8));
        header.setBackgroundColor(NAVY);

        title = new TextView(this);
        title.setText("ATMACA Dosyalar");
        title.setTextSize(25);
        title.setTextColor(YELLOW);
        title.setGravity(Gravity.START);
        header.addView(title);

        path = new TextView(this);
        path.setText("Kök seçilmedi");
        path.setTextColor(Color.LTGRAY);
        path.setTextSize(12);
        path.setSingleLine(true);
        header.addView(path);

        root.addView(header, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        LinearLayout sourceRow = new LinearLayout(this);
        sourceRow.setOrientation(LinearLayout.HORIZONTAL);
        sourceRow.setPadding(dp(6), dp(4), dp(6), dp(4));

        phoneButton = actionButton("TELEFON");
        cloudButton = actionButton("BULUT");
        Button up = actionButton("↑ ÜST");
        Button refresh = actionButton("YENİLE");
        Button newFolder = actionButton("+ KLASÖR");

        addEqual(sourceRow, phoneButton);
        addEqual(sourceRow, cloudButton);
        addEqual(sourceRow, up);
        addEqual(sourceRow, refresh);
        addEqual(sourceRow, newFolder);
        root.addView(sourceRow);

        HorizontalScrollView shortcutsScroll = new HorizontalScrollView(this);
        shortcutsScroll.setHorizontalScrollBarEnabled(false);
        LinearLayout shortcuts = new LinearLayout(this);
        shortcuts.setOrientation(LinearLayout.HORIZONTAL);
        shortcuts.setPadding(dp(6), dp(2), dp(6), dp(4));
        shortcutsScroll.addView(shortcuts);
        addShortcut(shortcuts, "ReelDrop", new String[]{"Download", "ReelDrop"});
        addShortcut(shortcuts, "Kişi Kırpma", new String[]{"Pictures", "AkilliKisiKirpma"});
        addShortcut(shortcuts, "Video Kareleri", new String[]{"Pictures", "VideoKareleri"});
        addShortcut(shortcuts, "Video İndirici", new String[]{"Movies", "CokluVideoIndirici"});
        addShortcut(shortcuts, "İndirilenler", new String[]{"Download"});
        root.addView(shortcutsScroll, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        status = new TextView(this);
        status.setTextColor(Color.LTGRAY);
        status.setTextSize(12);
        status.setPadding(dp(12), dp(5), dp(12), dp(5));
        status.setText("Hazır");
        root.addView(status);

        list = new ListView(this);
        list.setDividerHeight(1);
        list.setBackgroundColor(Color.rgb(12, 26, 44));
        adapter = new FileAdapter();
        list.setAdapter(adapter);
        root.addView(list, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        LinearLayout actions1 = new LinearLayout(this);
        actions1.setOrientation(LinearLayout.HORIZONTAL);
        actions1.setPadding(dp(6), dp(4), dp(6), dp(2));
        Button copy = actionButton("KOPYALA");
        Button move = actionButton("TAŞI");
        pasteButton = actionButton("YAPIŞTIR");
        addEqual(actions1, copy);
        addEqual(actions1, move);
        addEqual(actions1, pasteButton);
        root.addView(actions1);

        LinearLayout actions2 = new LinearLayout(this);
        actions2.setOrientation(LinearLayout.HORIZONTAL);
        actions2.setPadding(dp(6), dp(2), dp(6), dp(6));
        Button share = actionButton("PAYLAŞ");
        Button delete = actionButton("SİL");
        Button selectAll = actionButton("TÜMÜ");
        addEqual(actions2, share);
        addEqual(actions2, delete);
        addEqual(actions2, selectAll);
        root.addView(actions2);

        setContentView(root);
        refreshPasteButton();

        phoneButton.setOnClickListener(v -> {
            if (localRootUri == null) pickTree(REQUEST_LOCAL);
            else switchRoot(false);
        });
        phoneButton.setOnLongClickListener(v -> { pickTree(REQUEST_LOCAL); return true; });
        cloudButton.setOnClickListener(v -> {
            if (cloudRootUri == null) pickTree(REQUEST_CLOUD);
            else switchRoot(true);
        });
        cloudButton.setOnLongClickListener(v -> { pickTree(REQUEST_CLOUD); return true; });
        up.setOnClickListener(v -> goUp());
        refresh.setOnClickListener(v -> loadCurrent());
        newFolder.setOnClickListener(v -> createFolderDialog());

        list.setOnItemClickListener((parent, view, position, id) -> {
            if (position < 0 || position >= items.size()) return;
            DocumentFile file = items.get(position);
            if (!selected.isEmpty()) {
                toggle(file);
                return;
            }
            if (file.isDirectory()) openDirectory(file);
            else openFile(file);
        });
        list.setOnItemLongClickListener((parent, view, position, id) -> {
            if (position >= 0 && position < items.size()) toggle(items.get(position));
            return true;
        });

        copy.setOnClickListener(v -> setClipboard(false));
        move.setOnClickListener(v -> setClipboard(true));
        pasteButton.setOnClickListener(v -> paste());
        share.setOnClickListener(v -> shareSelected());
        delete.setOnClickListener(v -> deleteSelected());
        selectAll.setOnClickListener(v -> {
            if (items.isEmpty()) return;
            if (selected.size() == items.size()) selected.clear();
            else {
                selected.clear();
                for (DocumentFile f : items) selected.add(f.getUri().toString());
            }
            updateSelectionStatus();
            adapter.notifyDataSetChanged();
        });
    }

    private Button actionButton(String text) {
        Button b = new Button(this);
        b.setText(text);
        b.setTextSize(11);
        b.setTextColor(NAVY);
        b.setBackgroundColor(YELLOW);
        b.setAllCaps(false);
        b.setPadding(dp(2), 0, dp(2), 0);
        return b;
    }

    private void addEqual(LinearLayout row, View view) {
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(0, dp(46), 1f);
        p.setMargins(dp(2), 0, dp(2), 0);
        row.addView(view, p);
    }

    private void addShortcut(LinearLayout row, String label, String[] segments) {
        Button b = actionButton(label);
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(dp(125), dp(40));
        p.setMargins(dp(2), 0, dp(2), 0);
        row.addView(b, p);
        b.setOnClickListener(v -> openQuickPath(segments));
    }

    private void pickTree(int requestCode) {
        Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE);
        intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION |
                Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION | Intent.FLAG_GRANT_PREFIX_URI_PERMISSION);
        startActivityForResult(intent, requestCode);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode != RESULT_OK || data == null || data.getData() == null) return;
        if (requestCode != REQUEST_LOCAL && requestCode != REQUEST_CLOUD) return;

        Uri uri = data.getData();
        int flags = data.getFlags() & (Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
        try { getContentResolver().takePersistableUriPermission(uri, flags); } catch (Exception ignored) { }

        if (requestCode == REQUEST_LOCAL) {
            localRootUri = uri;
            prefs.edit().putString(KEY_LOCAL, uri.toString()).apply();
            switchRoot(false);
        } else {
            cloudRootUri = uri;
            prefs.edit().putString(KEY_CLOUD, uri.toString()).apply();
            switchRoot(true);
        }
    }

    private void switchRoot(boolean cloud) {
        Uri uri = cloud ? cloudRootUri : localRootUri;
        if (uri == null) {
            pickTree(cloud ? REQUEST_CLOUD : REQUEST_LOCAL);
            return;
        }
        DocumentFile root = DocumentFile.fromTreeUri(this, uri);
        if (root == null || !root.exists()) {
            Toast.makeText(this, "Bu bağlantı artık açılamıyor. Yeniden seç.", Toast.LENGTH_LONG).show();
            if (cloud) pickTree(REQUEST_CLOUD); else pickTree(REQUEST_LOCAL);
            return;
        }
        showingCloud = cloud;
        navStack.clear();
        navStack.addLast(root);
        currentDir = root;
        selected.clear();
        updateSourceButtons();
        loadCurrent();
    }

    private void updateSourceButtons() {
        phoneButton.setText(showingCloud ? "TELEFON" : "● TELEFON");
        cloudButton.setText(showingCloud ? "● BULUT" : "BULUT");
    }

    private void openDirectory(DocumentFile dir) {
        if (!dir.isDirectory()) return;
        navStack.addLast(dir);
        currentDir = dir;
        selected.clear();
        loadCurrent();
    }

    private void goUp() {
        if (navStack.size() <= 1) {
            Toast.makeText(this, "Köktesin", Toast.LENGTH_SHORT).show();
            return;
        }
        navStack.removeLast();
        currentDir = navStack.peekLast();
        selected.clear();
        loadCurrent();
    }

    @Override
    public void onBackPressed() {
        if (!selected.isEmpty()) {
            selected.clear();
            updateSelectionStatus();
            adapter.notifyDataSetChanged();
        } else if (navStack.size() > 1) {
            goUp();
        } else {
            super.onBackPressed();
        }
    }

    private void loadCurrent() {
        DocumentFile dir = currentDir;
        if (dir == null) return;
        int generation = loadGeneration.incrementAndGet();
        status.setText("Klasör açılıyor…");
        path.setText((showingCloud ? "Bulut" : "Telefon") + " / " + breadcrumb());
        io.execute(() -> {
            DocumentFile[] files;
            try {
                files = dir.listFiles();
            } catch (Exception e) {
                files = new DocumentFile[0];
            }
            Arrays.sort(files, Comparator
                    .comparing((DocumentFile f) -> !f.isDirectory())
                    .thenComparing(f -> safeName(f).toLowerCase(Locale.getDefault())));
            List<DocumentFile> loaded = Arrays.asList(files);
            runOnUiThread(() -> {
                if (generation != loadGeneration.get() || currentDir != dir) return;
                items.clear();
                items.addAll(loaded);
                selected.retainAll(uriSet(items));
                adapter.notifyDataSetChanged();
                status.setText(items.size() + " öğe • sadece bu klasör listelendi, arka planda tarama yok");
            });
        });
    }

    private String breadcrumb() {
        StringBuilder b = new StringBuilder();
        boolean first = true;
        for (DocumentFile f : navStack) {
            if (!first) b.append(" / ");
            b.append(safeName(f));
            first = false;
        }
        return b.toString();
    }

    private void openQuickPath(String[] segments) {
        if (localRootUri == null) {
            Toast.makeText(this, "Önce TELEFON kökünü bağla", Toast.LENGTH_SHORT).show();
            pickTree(REQUEST_LOCAL);
            return;
        }
        DocumentFile root = DocumentFile.fromTreeUri(this, localRootUri);
        if (root == null) return;
        List<DocumentFile> stack = new ArrayList<>();
        stack.add(root);
        DocumentFile cursor = root;
        for (String segment : segments) {
            DocumentFile next = cursor.findFile(segment);
            if (next == null || !next.isDirectory()) {
                Toast.makeText(this, segment + " klasörü bulunamadı", Toast.LENGTH_SHORT).show();
                return;
            }
            cursor = next;
            stack.add(cursor);
        }
        showingCloud = false;
        navStack.clear();
        navStack.addAll(stack);
        currentDir = cursor;
        selected.clear();
        updateSourceButtons();
        loadCurrent();
    }

    private void toggle(DocumentFile file) {
        String key = file.getUri().toString();
        if (selected.contains(key)) selected.remove(key); else selected.add(key);
        updateSelectionStatus();
        adapter.notifyDataSetChanged();
    }

    private void updateSelectionStatus() {
        if (selected.isEmpty()) {
            status.setText(items.size() + " öğe");
        } else {
            status.setText(selected.size() + " öğe seçili");
        }
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
        status.setText(clipboard.size() + " öğe " + (move ? "taşınacak" : "kopyalanacak") + " • hedef klasöre git ve YAPIŞTIR'a bas");
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
        status.setText("İşlem hazırlanıyor…");
        pasteButton.setEnabled(false);
        io.execute(() -> {
            int ok = 0;
            int fail = 0;
            for (int i = 0; i < work.size(); i++) {
                DocumentFile src = work.get(i);
                boolean done = false;
                try {
                    if (sameDocument(src, target)) {
                        done = false;
                    } else {
                        done = copyRecursive(src, target);
                        if (done && move) done = src.delete();
                    }
                } catch (Exception ignored) { }
                if (done) ok++; else fail++;
                final int progress = i + 1;
                final int total = work.size();
                runOnUiThread(() -> status.setText(progress + " / " + total + " işleniyor…"));
            }
            final int good = ok;
            final int bad = fail;
            runOnUiThread(() -> {
                if (bad == 0) {
                    clipboard.clear();
                    refreshPasteButton();
                } else {
                    pasteButton.setEnabled(true);
                }
                Toast.makeText(this, good + " tamamlandı" + (bad > 0 ? " • " + bad + " hata" : ""), Toast.LENGTH_LONG).show();
                loadCurrent();
            });
        });
    }

    private boolean copyRecursive(DocumentFile src, DocumentFile targetDir) throws Exception {
        if (!src.exists()) return false;
        String name = uniqueName(targetDir, safeName(src), src.isDirectory());
        if (src.isDirectory()) {
            DocumentFile created = targetDir.createDirectory(name);
            if (created == null) return false;
            for (DocumentFile child : src.listFiles()) {
                if (!copyRecursive(child, created)) return false;
            }
            return true;
        }

        String mime = src.getType();
        if (mime == null || mime.isBlank()) mime = "application/octet-stream";
        DocumentFile outFile = targetDir.createFile(mime, name);
        if (outFile == null) return false;
        boolean ok = false;
        try (InputStream in = getContentResolver().openInputStream(src.getUri());
             OutputStream out = getContentResolver().openOutputStream(outFile.getUri(), "w")) {
            if (in == null || out == null) return false;
            byte[] buffer = new byte[256 * 1024];
            int n;
            while ((n = in.read(buffer)) != -1) out.write(buffer, 0, n);
            out.flush();
            ok = true;
        } finally {
            if (!ok) runCatchingDelete(outFile);
        }
        return ok;
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
            String candidate = base + " (" + i + ")" + ext;
            if (dir.findFile(candidate) == null) return candidate;
        }
        return base + " " + System.currentTimeMillis() + ext;
    }

    private boolean sameDocument(DocumentFile a, DocumentFile b) {
        return a != null && b != null && a.getUri().equals(b.getUri());
    }

    private void shareSelected() {
        List<DocumentFile> chosen = selectedFiles();
        ArrayList<Uri> uris = new ArrayList<>();
        for (DocumentFile f : chosen) if (f.isFile()) uris.add(f.getUri());
        if (uris.isEmpty()) {
            Toast.makeText(this, "Paylaşmak için dosya seç", Toast.LENGTH_SHORT).show();
            return;
        }

        Intent intent = new Intent(uris.size() == 1 ? Intent.ACTION_SEND : Intent.ACTION_SEND_MULTIPLE);
        intent.setType("*/*");
        intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
        if (uris.size() == 1) intent.putExtra(Intent.EXTRA_STREAM, uris.get(0));
        else intent.putParcelableArrayListExtra(Intent.EXTRA_STREAM, uris);

        ClipData clip = ClipData.newUri(getContentResolver(), "ATMACA", uris.get(0));
        for (int i = 1; i < uris.size(); i++) clip.addItem(new ClipData.Item(uris.get(i)));
        intent.setClipData(clip);
        startActivity(Intent.createChooser(intent, "Paylaş"));
    }

    private void deleteSelected() {
        List<DocumentFile> chosen = selectedFiles();
        if (chosen.isEmpty()) {
            Toast.makeText(this, "Önce silinecek öğeleri seç", Toast.LENGTH_SHORT).show();
            return;
        }
        new AlertDialog.Builder(this)
                .setTitle("Silinsin mi?")
                .setMessage(chosen.size() + " öğe silinecek. Bu işlem sağlayıcıya göre geri alınamayabilir.")
                .setNegativeButton("Vazgeç", null)
                .setPositiveButton("Sil", (d, w) -> {
                    selected.clear();
                    adapter.notifyDataSetChanged();
                    status.setText("Siliniyor…");
                    io.execute(() -> {
                        int ok = 0;
                        for (DocumentFile f : chosen) {
                            try { if (f.delete()) ok++; } catch (Exception ignored) { }
                        }
                        final int count = ok;
                        runOnUiThread(() -> {
                            Toast.makeText(this, count + " öğe silindi", Toast.LENGTH_LONG).show();
                            loadCurrent();
                        });
                    });
                })
                .show();
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
                            Toast.makeText(this, finalMade != null ? "Klasör oluşturuldu" : "Klasör oluşturulamadı", Toast.LENGTH_SHORT).show();
                            loadCurrent();
                        });
                    });
                })
                .show();
    }

    private void openFile(DocumentFile file) {
        try {
            Intent intent = new Intent(Intent.ACTION_VIEW);
            intent.setDataAndType(file.getUri(), file.getType() == null ? "*/*" : file.getType());
            intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            startActivity(intent);
        } catch (Exception e) {
            Toast.makeText(this, "Bu dosyayı açacak uygulama bulunamadı", Toast.LENGTH_SHORT).show();
        }
    }

    private Set<String> uriSet(List<DocumentFile> files) {
        Set<String> out = new LinkedHashSet<>();
        for (DocumentFile f : files) out.add(f.getUri().toString());
        return out;
    }

    private void runCatchingDelete(DocumentFile f) {
        try { if (f != null) f.delete(); } catch (Exception ignored) { }
    }

    private static String safeName(DocumentFile f) {
        String n = f == null ? null : f.getName();
        return (n == null || n.isBlank()) ? "Adsız" : n;
    }

    private Uri parseUri(String value) {
        try { return value == null || value.isBlank() ? null : Uri.parse(value); }
        catch (Exception e) { return null; }
    }

    private int dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
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
                row.addView(icon, new LinearLayout.LayoutParams(dp(46), dp(54)));

                LinearLayout texts = new LinearLayout(MainActivity.this);
                texts.setOrientation(LinearLayout.VERTICAL);
                name = new TextView(MainActivity.this);
                name.setTextSize(16);
                name.setTextColor(Color.WHITE);
                name.setSingleLine(true);
                detail = new TextView(MainActivity.this);
                detail.setTextSize(11);
                detail.setTextColor(Color.LTGRAY);
                detail.setSingleLine(true);
                texts.addView(name);
                texts.addView(detail);
                row.addView(texts, new LinearLayout.LayoutParams(0, dp(54), 1f));
            }

            DocumentFile f = items.get(position);
            boolean sel = selected.contains(f.getUri().toString());
            row.setBackgroundColor(sel ? Color.rgb(90, 76, 22) : (position % 2 == 0 ? Color.rgb(12, 26, 44) : NAVY_2));
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
        return "📄";
    }

    private String fileDetail(DocumentFile f) {
        String size = formatSize(f.length());
        long changed = f.lastModified();
        if (changed <= 0) return size;
        String date = DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.SHORT).format(new Date(changed));
        return size + " • " + date;
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
