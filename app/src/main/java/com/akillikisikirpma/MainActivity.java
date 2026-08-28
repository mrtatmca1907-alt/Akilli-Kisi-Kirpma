package com.akillikisikirpma;

import android.Manifest;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends Activity {
    private static final int REQ_PHOTOS = 1001;
    private static final int REQ_FOLDER = 1002;
    private static final int REQ_WRITE = 1003;
    private static final int REQ_NOTIFICATIONS = 1004;

    private final List<Uri> selectedImages = new ArrayList<>();
    private final List<Uri> selectedFolders = new ArrayList<>();
    private final Handler handler = new Handler(Looper.getMainLooper());

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
        btnStop.setOnClickListener(v -> requestStop());

        updateSelectionText();
        requestNotificationPermissionIfNeeded();
        handler.post(statusPoller);
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
            int takeFlags = flags & Intent.FLAG_GRANT_READ_URI_PERMISSION;
            getContentResolver().takePersistableUriPermission(uri, takeFlags);
        } catch (Throwable ignored) {
        }
    }

    private void clearSelections() {
        if (StatusStore.read(this).running) return;
        selectedImages.clear();
        selectedFolders.clear();
        progress.setProgress(0);
        txtStatus.setText("Hazır");
        txtLog.setText("İşlenen 0 • Algılanan 0 • Kaydedilen 0 • Hata 0");
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
        startProcessingService();
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == REQ_WRITE && grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
            startProcessingService();
        }
    }

    private void startProcessingService() {
        ArrayList<String> images = new ArrayList<>();
        for (Uri uri : selectedImages) images.add(uri.toString());
        ArrayList<String> folders = new ArrayList<>();
        for (Uri uri : selectedFolders) folders.add(uri.toString());

        Intent service = new Intent(this, CropForegroundService.class)
                .setAction(CropForegroundService.ACTION_START)
                .putStringArrayListExtra(CropForegroundService.EXTRA_IMAGES, images)
                .putStringArrayListExtra(CropForegroundService.EXTRA_FOLDERS, folders);

        StatusStore.write(this, true, 0, 0, 0, 0, 0, "Başlatılıyor…");
        startForegroundService(service);
    }

    private void requestStop() {
        Intent stop = new Intent(this, CropForegroundService.class).setAction(CropForegroundService.ACTION_STOP);
        startService(stop);
        txtStatus.setText("Durdurma isteniyor…");
    }

    private void requestNotificationPermissionIfNeeded() {
        if (Build.VERSION.SDK_INT >= 33
                && checkSelfPermission(Manifest.permission.POST_NOTIFICATIONS) != PackageManager.PERMISSION_GRANTED) {
            requestPermissions(new String[]{Manifest.permission.POST_NOTIFICATIONS}, REQ_NOTIFICATIONS);
        }
    }

    private final Runnable statusPoller = new Runnable() {
        @Override
        public void run() {
            StatusStore.Snapshot s = StatusStore.read(MainActivity.this);
            txtStatus.setText(s.status);
            txtLog.setText(
                    "İşlenen " + s.processed
                            + " • Algılanan " + s.detected
                            + " • Kaydedilen " + s.saved
                            + " • Atlanan " + s.skipped
                            + " • Hata " + s.failed
            );
            progress.setIndeterminate(s.running);
            if (!s.running) progress.setProgress(s.status.startsWith("Tamamlandı") ? 100 : 0);
            setRunning(s.running);
            handler.postDelayed(this, 650);
        }
    };

    private void setRunning(boolean running) {
        btnPhotos.setEnabled(!running);
        btnFolder.setEnabled(!running);
        btnClear.setEnabled(!running);
        btnStart.setEnabled(!running);
        btnStop.setEnabled(running);
    }

    @Override
    protected void onDestroy() {
        handler.removeCallbacks(statusPoller);
        super.onDestroy();
    }
}
