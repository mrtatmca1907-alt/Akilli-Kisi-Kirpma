package com.akillikisikirpma;

import android.Manifest;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import androidx.documentfile.provider.DocumentFile;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

public class MainActivity extends Activity {
    private static final int REQ_PHOTOS = 1001;
    private static final int REQ_FOLDER = 1002;
    private static final int REQ_WRITE = 1003;

    private final List<Uri> selectedImages = new ArrayList<>();
    private final List<Uri> selectedFolders = new ArrayList<>();
    private final ExecutorService executor = Executors.newSingleThreadExecutor();
    private final AtomicBoolean stopRequested = new AtomicBoolean(false);

    private Button btnPhotos;
    private Button btnFolder;
    private Button btnClear;
    private Button btnStart;
    private Button btnStop;
    private TextView txtSelection;
    private TextView txtStatus;
    private TextView txtLog;
    private ProgressBar progress;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        btnPhotos = findViewById(R.id.btnPhotos);
        btnFolder = findViewById(R.id.btnFolder);
        btnClear = findViewById(R.id.btnClear);
        btnStart = findViewById(R.id.btnStart);
        btnStop = findViewById(R.id.btnStop);
        txtSelection = findViewById(R.id.txtSelection);
        txtStatus = findViewById(R.id.txtStatus);
        txtLog = findViewById(R.id.txtLog);
        progress = findViewById(R.id.progress);

        btnPhotos.setOnClickListener(v -> choosePhotos());
        btnFolder.setOnClickListener(v -> chooseFolder());
        btnClear.setOnClickListener(v -> clearSelections());
        btnStart.setOnClickListener(v -> requestStart());
        btnStop.setOnClickListener(v -> {
            stopRequested.set(true);
            txtStatus.setText("Durdurma isteniyor…");
        });

        updateSelectionText();
    }

    private void choosePhotos() {
        Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT);
        intent.addCategory(Intent.CATEGORY_OPENABLE);
        intent.setType("image/*");
        intent.putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true);
        intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION);
        startActivityForResult(intent, REQ_PHOTOS);
    }

    private void chooseFolder() {
        Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE);
        intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION
                | Intent.FLAG_GRANT_WRITE_URI_PERMISSION
                | Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION
                | Intent.FLAG_GRANT_PREFIX_URI_PERMISSION);
        startActivityForResult(intent, REQ_FOLDER);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode != RESULT_OK || data == null) return;

        if (requestCode == REQ_PHOTOS) {
            if (data.getClipData() != null) {
                for (int i = 0; i < data.getClipData().getItemCount(); i++) {
                    Uri uri = data.getClipData().getItemAt(i).getUri();
                    persistRead(uri, data.getFlags());
                    if (!selectedImages.contains(uri)) selectedImages.add(uri);
                }
            } else if (data.getData() != null) {
                Uri uri = data.getData();
                persistRead(uri, data.getFlags());
                if (!selectedImages.contains(uri)) selectedImages.add(uri);
            }
            updateSelectionText();
            return;
        }

        if (requestCode == REQ_FOLDER && data.getData() != null) {
            Uri uri = data.getData();
            persistRead(uri, data.getFlags());
            if (!selectedFolders.contains(uri)) selectedFolders.add(uri);
            updateSelectionText();
        }
    }

    private void persistRead(Uri uri, int flags) {
        try {
            int takeFlags = flags & (Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
            getContentResolver().takePersistableUriPermission(uri, takeFlags);
        } catch (Throwable ignored) {
        }
    }

    private void clearSelections() {
        if (btnStop.isEnabled()) return;
        selectedImages.clear();
        selectedFolders.clear();
        progress.setProgress(0);
        txtStatus.setText("Hazır");
        txtLog.setText("");
        updateSelectionText();
    }

    private void updateSelectionText() {
        String text = "Seçili fotoğraf: " + selectedImages.size() + "\nEklenen klasör: " + selectedFolders.size();
        if (selectedImages.isEmpty() && selectedFolders.isEmpty()) text += "\nHenüz seçim yok";
        txtSelection.setText(text);
    }

    private void requestStart() {
        if (selectedImages.isEmpty() && selectedFolders.isEmpty()) {
            Toast.makeText(this, "Önce fotoğraf veya klasör seç", Toast.LENGTH_SHORT).show();
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
        stopRequested.set(false);
        setRunning(true);
        progress.setProgress(0);
        txtStatus.setText("Dosyalar hazırlanıyor…");
        txtLog.setText("");

        executor.submit(() -> {
            Map<String, Uri> unique = new LinkedHashMap<>();
            for (Uri uri : selectedImages) unique.put(uri.toString(), uri);
            for (Uri tree : selectedFolders) collectImages(DocumentFile.fromTreeUri(this, tree), unique);

            List<Uri> all = new ArrayList<>(unique.values());
            if (all.isEmpty()) {
                runOnUiThread(() -> {
                    txtStatus.setText("Seçilen yerde fotoğraf bulunamadı");
                    setRunning(false);
                });
                return;
            }

            int totalSaved = 0;
            int totalBlocked = 0;
            int totalDetected = 0;
            int totalFailed = 0;

            try (PersonCropEngine engine = new PersonCropEngine(this)) {
                for (int i = 0; i < all.size(); i++) {
                    if (stopRequested.get()) break;
                    final int current = i + 1;
                    runOnUiThread(() -> {
                        progress.setProgress((int) ((current - 1) * 100f / all.size()));
                        txtStatus.setText(current + "/" + all.size() + " işleniyor…");
                    });

                    PersonCropEngine.ProcessResult r = engine.process(all.get(i));
                    totalSaved += r.saved;
                    totalBlocked += r.blocked;
                    totalDetected += r.detected;
                    totalFailed += r.failed;

                    final int fSaved = totalSaved;
                    final int fBlocked = totalBlocked;
                    final int fDetected = totalDetected;
                    final int fFailed = totalFailed;
                    runOnUiThread(() -> txtLog.setText(
                            "Algılanan kişi: " + fDetected
                                    + "\nKaydedilen: " + fSaved
                                    + "\nÇocuk/belirsiz diye atlanan: " + fBlocked
                                    + "\nHata: " + fFailed
                    ));
                }
            } catch (Throwable t) {
                final String msg = t.getMessage() == null ? t.getClass().getSimpleName() : t.getMessage();
                runOnUiThread(() -> txtLog.setText(txtLog.getText() + "\nMotor hatası: " + msg));
            }

            final boolean stopped = stopRequested.get();
            final int fSaved = totalSaved;
            runOnUiThread(() -> {
                progress.setProgress(stopped ? progress.getProgress() : 100);
                txtStatus.setText(stopped ? "Durduruldu • " + fSaved + " çıktı" : "Tamamlandı • " + fSaved + " çıktı");
                setRunning(false);
            });
        });
    }

    private void collectImages(DocumentFile file, Map<String, Uri> out) {
        if (file == null || stopRequested.get()) return;
        try {
            if (file.isFile()) {
                String type = file.getType();
                String name = file.getName();
                boolean image = type != null && type.startsWith("image/");
                if (!image && name != null) {
                    String lower = name.toLowerCase();
                    image = lower.endsWith(".jpg") || lower.endsWith(".jpeg") || lower.endsWith(".png")
                            || lower.endsWith(".webp") || lower.endsWith(".heic") || lower.endsWith(".heif");
                }
                if (image) out.put(file.getUri().toString(), file.getUri());
                return;
            }
            if (file.isDirectory()) {
                for (DocumentFile child : file.listFiles()) {
                    if (stopRequested.get()) return;
                    collectImages(child, out);
                }
            }
        } catch (Throwable ignored) {
        }
    }

    private void setRunning(boolean running) {
        btnPhotos.setEnabled(!running);
        btnFolder.setEnabled(!running);
        btnClear.setEnabled(!running);
        btnStart.setEnabled(!running);
        btnStop.setEnabled(running);
    }

    @Override
    protected void onDestroy() {
        stopRequested.set(true);
        executor.shutdownNow();
        super.onDestroy();
    }
}
