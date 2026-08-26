package com.videokareleri;

import android.Manifest;
import android.app.Activity;
import android.content.ContentValues;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore;
import android.provider.OpenableColumns;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import androidx.documentfile.provider.DocumentFile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

public class MainActivity extends Activity {
    private static final int REQ_FOLDER = 2001;
    private static final int REQ_WRITE = 2002;

    private static final class VideoEntry {
        final Uri uri;
        final String name;
        VideoEntry(Uri uri, String name) {
            this.uri = uri;
            this.name = name;
        }
        @Override public String toString() { return name; }
    }

    private final List<Uri> folders = new ArrayList<>();
    private final List<VideoEntry> videos = new ArrayList<>();
    private final ExecutorService executor = Executors.newSingleThreadExecutor();
    private final AtomicBoolean stopRequested = new AtomicBoolean(false);

    private ArrayAdapter<VideoEntry> adapter;
    private ListView listVideos;
    private TextView txtFolders;
    private TextView txtCount;
    private TextView txtStatus;
    private ProgressBar progress;
    private Button btnFolder;
    private Button btnClearFolders;
    private Button btnAll;
    private Button btnNone;
    private Button btnStart;
    private Button btnStop;
    private boolean working = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        listVideos = findViewById(R.id.listVideos);
        txtFolders = findViewById(R.id.txtFolders);
        txtCount = findViewById(R.id.txtCount);
        txtStatus = findViewById(R.id.txtStatus);
        progress = findViewById(R.id.progress);
        btnFolder = findViewById(R.id.btnFolder);
        btnClearFolders = findViewById(R.id.btnClearFolders);
        btnAll = findViewById(R.id.btnAll);
        btnNone = findViewById(R.id.btnNone);
        btnStart = findViewById(R.id.btnStart);
        btnStop = findViewById(R.id.btnStop);

        adapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_multiple_choice, videos);
        listVideos.setAdapter(adapter);
        listVideos.setChoiceMode(ListView.CHOICE_MODE_MULTIPLE);
        listVideos.setOnItemClickListener((parent, view, position, id) -> updateCount());

        btnFolder.setOnClickListener(v -> chooseFolder());
        btnClearFolders.setOnClickListener(v -> clearFolders());
        btnAll.setOnClickListener(v -> setAllChecked(true));
        btnNone.setOnClickListener(v -> setAllChecked(false));
        btnStart.setOnClickListener(v -> requestStart());
        btnStop.setOnClickListener(v -> {
            stopRequested.set(true);
            txtStatus.setText("Durdurma isteniyor…");
        });

        updateFolderText();
        updateCount();
    }

    private void chooseFolder() {
        if (working) return;
        Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE);
        intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION
                | Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION
                | Intent.FLAG_GRANT_PREFIX_URI_PERMISSION);
        startActivityForResult(intent, REQ_FOLDER);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode != REQ_FOLDER || resultCode != RESULT_OK || data == null || data.getData() == null) return;
        Uri uri = data.getData();
        try {
            getContentResolver().takePersistableUriPermission(uri, Intent.FLAG_GRANT_READ_URI_PERMISSION);
        } catch (Throwable ignored) {}
        if (!folders.contains(uri)) folders.add(uri);
        updateFolderText();
        scanFolders();
    }

    private void clearFolders() {
        if (working) return;
        folders.clear();
        videos.clear();
        adapter.notifyDataSetChanged();
        listVideos.clearChoices();
        progress.setProgress(0);
        txtStatus.setText("Hazır");
        updateFolderText();
        updateCount();
    }

    private void scanFolders() {
        if (folders.isEmpty()) return;
        setWorking(true, false);
        txtStatus.setText("Seçilen klasörlerde videolar taranıyor…");
        executor.submit(() -> {
            Map<String, VideoEntry> found = new LinkedHashMap<>();
            for (Uri tree : new ArrayList<>(folders)) {
                collectVideos(DocumentFile.fromTreeUri(this, tree), found);
            }
            List<VideoEntry> result = new ArrayList<>(found.values());
            runOnUiThread(() -> {
                videos.clear();
                videos.addAll(result);
                adapter.notifyDataSetChanged();
                listVideos.clearChoices();
                for (int i = 0; i < videos.size(); i++) listVideos.setItemChecked(i, true);
                txtStatus.setText(videos.isEmpty() ? "Seçilen klasörlerde video bulunamadı" : videos.size() + " video bulundu");
                updateCount();
                setWorking(false, false);
            });
        });
    }

    private void collectVideos(DocumentFile file, Map<String, VideoEntry> out) {
        if (file == null) return;
        try {
            if (file.isFile()) {
                String type = file.getType();
                String name = file.getName();
                boolean video = type != null && type.startsWith("video/");
                if (!video && name != null) {
                    String l = name.toLowerCase();
                    video = l.endsWith(".mp4") || l.endsWith(".mkv") || l.endsWith(".mov")
                            || l.endsWith(".webm") || l.endsWith(".3gp") || l.endsWith(".avi")
                            || l.endsWith(".m4v") || l.endsWith(".ts");
                }
                if (video) {
                    Uri uri = file.getUri();
                    out.put(uri.toString(), new VideoEntry(uri, name == null ? "video" : name));
                }
                return;
            }
            if (file.isDirectory()) {
                for (DocumentFile child : file.listFiles()) collectVideos(child, out);
            }
        } catch (Throwable ignored) {}
    }

    private void updateFolderText() {
        if (folders.isEmpty()) {
            txtFolders.setText("Seçili klasör yok");
            return;
        }
        StringBuilder b = new StringBuilder("Seçilen klasörler (" + folders.size() + "):");
        for (Uri uri : folders) {
            String name = null;
            try {
                DocumentFile f = DocumentFile.fromTreeUri(this, uri);
                if (f != null) name = f.getName();
            } catch (Throwable ignored) {}
            b.append("\n• ").append(name == null ? uri.toString() : name);
        }
        txtFolders.setText(b.toString());
    }

    private void setAllChecked(boolean checked) {
        if (working) return;
        for (int i = 0; i < videos.size(); i++) listVideos.setItemChecked(i, checked);
        updateCount();
    }

    private int selectedCount() {
        int count = 0;
        for (int i = 0; i < videos.size(); i++) if (listVideos.isItemChecked(i)) count++;
        return count;
    }

    private void updateCount() {
        txtCount.setText(videos.size() + " video • " + selectedCount() + " seçili");
    }

    private List<VideoEntry> selectedVideos() {
        List<VideoEntry> selected = new ArrayList<>();
        for (int i = 0; i < videos.size(); i++) if (listVideos.isItemChecked(i)) selected.add(videos.get(i));
        return selected;
    }

    private void requestStart() {
        if (working) return;
        if (selectedCount() == 0) {
            Toast.makeText(this, "Önce en az bir video seç", Toast.LENGTH_SHORT).show();
            return;
        }
        if (Build.VERSION.SDK_INT <= Build.VERSION_CODES.P
                && checkSelfPermission(Manifest.permission.WRITE_EXTERNAL_STORAGE) != PackageManager.PERMISSION_GRANTED) {
            requestPermissions(new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE}, REQ_WRITE);
            return;
        }
        startProcessing();
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == REQ_WRITE && grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
            startProcessing();
        }
    }

    private void startProcessing() {
        List<VideoEntry> targets = selectedVideos();
        stopRequested.set(false);
        setWorking(true, true);
        progress.setProgress(0);
        txtStatus.setText("Kare çıkarma başladı…");

        executor.submit(() -> {
            int totalSaved = 0;
            int errors = 0;
            for (int v = 0; v < targets.size() && !stopRequested.get(); v++) {
                VideoEntry entry = targets.get(v);
                MediaMetadataRetriever retriever = new MediaMetadataRetriever();
                try {
                    retriever.setDataSource(this, entry.uri);
                    String durationText = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_DURATION);
                    long durationMs = durationText == null ? 0 : Long.parseLong(durationText);
                    long seconds = Math.max(1L, (durationMs + 999L) / 1000L);
                    String base = safeBase(entry.name);

                    for (long s = 0; s < seconds && !stopRequested.get(); s++) {
                        Bitmap frame = retriever.getFrameAtTime(s * 1_000_000L, MediaMetadataRetriever.OPTION_CLOSEST);
                        if (frame != null) {
                            if (saveFrame(frame, base, s + 1)) totalSaved++;
                            else errors++;
                            frame.recycle();
                        } else {
                            errors++;
                        }
                        final int fv = v;
                        final long fs = s + 1;
                        final long fseconds = seconds;
                        final int fsaved = totalSaved;
                        final int ferr = errors;
                        int percent = (int) ((((double) v + ((double) (s + 1) / seconds)) / targets.size()) * 100.0);
                        runOnUiThread(() -> {
                            progress.setProgress(Math.min(100, percent));
                            txtStatus.setText((fv + 1) + "/" + targets.size() + " • " + entry.name
                                    + "\nKare " + fs + "/" + fseconds + " • Kaydedilen: " + fsaved + " • Hata: " + ferr);
                        });
                    }
                } catch (Throwable t) {
                    errors++;
                } finally {
                    try { retriever.release(); } catch (Throwable ignored) {}
                }
            }
            final int saved = totalSaved;
            final int failed = errors;
            final boolean stopped = stopRequested.get();
            runOnUiThread(() -> {
                if (!stopped) progress.setProgress(100);
                txtStatus.setText((stopped ? "Durduruldu" : "Tamamlandı")
                        + " • " + saved + " kare kaydedildi" + (failed > 0 ? " • " + failed + " hata" : ""));
                setWorking(false, false);
            });
        });
    }

    private String safeBase(String name) {
        String n = name == null ? "video" : name;
        int dot = n.lastIndexOf('.');
        if (dot > 0) n = n.substring(0, dot);
        n = n.replaceAll("[\\/:*?\"<>|]", "_").trim();
        return n.isEmpty() ? "video" : n;
    }

    private boolean saveFrame(Bitmap frame, String base, long number) {
        String fileName = base + " " + number + ".jpg";
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                ContentValues values = new ContentValues();
                values.put(MediaStore.Images.Media.DISPLAY_NAME, fileName);
                values.put(MediaStore.Images.Media.MIME_TYPE, "image/jpeg");
                values.put(MediaStore.Images.Media.RELATIVE_PATH, Environment.DIRECTORY_PICTURES + "/VideoKareleri/" + base);
                values.put(MediaStore.Images.Media.IS_PENDING, 1);
                Uri out = getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, values);
                if (out == null) return false;
                boolean ok;
                try (OutputStream os = getContentResolver().openOutputStream(out)) {
                    ok = os != null && frame.compress(Bitmap.CompressFormat.JPEG, 94, os);
                }
                if (!ok) {
                    getContentResolver().delete(out, null, null);
                    return false;
                }
                values.clear();
                values.put(MediaStore.Images.Media.IS_PENDING, 0);
                getContentResolver().update(out, values, null, null);
                return true;
            }

            File dir = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "VideoKareleri/" + base);
            if (!dir.exists() && !dir.mkdirs()) return false;
            File out = new File(dir, fileName);
            try (FileOutputStream fos = new FileOutputStream(out)) {
                if (!frame.compress(Bitmap.CompressFormat.JPEG, 94, fos)) return false;
            }
            android.media.MediaScannerConnection.scanFile(this, new String[]{out.getAbsolutePath()}, new String[]{"image/jpeg"}, null);
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    private void setWorking(boolean value, boolean processing) {
        working = value;
        btnFolder.setEnabled(!value);
        btnClearFolders.setEnabled(!value);
        btnAll.setEnabled(!value);
        btnNone.setEnabled(!value);
        btnStart.setEnabled(!value);
        btnStop.setEnabled(value && processing);
        listVideos.setEnabled(!value);
    }

    @Override
    protected void onDestroy() {
        stopRequested.set(true);
        executor.shutdownNow();
        super.onDestroy();
    }
}
