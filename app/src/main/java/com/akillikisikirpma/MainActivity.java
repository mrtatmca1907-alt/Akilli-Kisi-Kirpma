package com.akillikisikirpma;

import android.app.Activity;
import android.content.ClipData;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.provider.DocumentsContract;
import android.provider.Settings;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import java.io.File;
import java.util.ArrayList;

public class MainActivity extends Activity {
    private static final int REQ_TREE = 1907;
    private static final int REQ_IMAGES = 1908;
    private final Handler handler = new Handler(Looper.getMainLooper());

    private Button btnPhotos, btnFolder, btnScreenshots, btnStop;
    private TextView txtStatus, txtStats;

    private final Runnable refresh = new Runnable() {
        @Override public void run() {
            SharedPreferences p = getSharedPreferences(UnifiedCropService.PREFS, MODE_PRIVATE);
            boolean running = p.getBoolean("running", false);
            int total = p.getInt("total", 0);
            int processed = p.getInt("processed", 0);
            int skipped = p.getInt("skipped", 0);
            int people = p.getInt("people", 0);
            int crops = p.getInt("crops", 0);
            int errors = p.getInt("errors", 0);
            String phase = p.getString("phase", "Hazır");
            String current = p.getString("current", "");

            btnPhotos.setEnabled(!running);
            btnFolder.setEnabled(!running);
            btnScreenshots.setEnabled(!running);
            btnStop.setEnabled(running);
            txtStatus.setText(phase == null ? "Hazır" : phase);
            txtStats.setText(
                    "Toplam: " + total +
                    "\nİşlenen: " + processed +
                    "\nDaha önce tamamlanan / atlanan: " + skipped +
                    "\nBulunan kişi: " + people +
                    "\nKaydedilen kırpım: " + crops +
                    "\nHata: " + errors +
                    (current == null || current.isEmpty() ? "" : "\nŞu an: " + current)
            );
            handler.postDelayed(this, 750);
        }
    };

    @Override protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        btnPhotos = findViewById(R.id.btnPhotos);
        btnFolder = findViewById(R.id.btnFolder);
        btnScreenshots = findViewById(R.id.btnScreenshots);
        btnStop = findViewById(R.id.btnStop);
        txtStatus = findViewById(R.id.txtStatus);
        txtStats = findViewById(R.id.txtStats);

        btnPhotos.setOnClickListener(v -> openPhotoPicker());
        btnFolder.setOnClickListener(v -> {
            if (!hasAllFilesAccess()) requestAllFilesAccess(); else openFolderPicker();
        });
        btnScreenshots.setOnClickListener(v -> {
            if (!hasAllFilesAccess()) requestAllFilesAccess(); else startScreenshots();
        });
        btnStop.setOnClickListener(v -> {
            Intent i = new Intent(this, UnifiedCropService.class);
            i.setAction(UnifiedCropService.ACTION_STOP);
            startService(i);
        });
    }

    private void openPhotoPicker() {
        Intent i = new Intent(Intent.ACTION_OPEN_DOCUMENT);
        i.setType("image/*");
        i.putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true);
        i.addCategory(Intent.CATEGORY_OPENABLE);
        i.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION);
        startActivityForResult(i, REQ_IMAGES);
    }

    private void openFolderPicker() {
        Intent i = new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE);
        i.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION |
                Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION | Intent.FLAG_GRANT_PREFIX_URI_PERMISSION);
        startActivityForResult(i, REQ_TREE);
    }

    @Override protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode != RESULT_OK || data == null) return;

        if (requestCode == REQ_IMAGES) {
            ArrayList<Uri> uris = new ArrayList<>();
            ClipData clip = data.getClipData();
            if (clip != null) {
                for (int n = 0; n < clip.getItemCount(); n++) uris.add(clip.getItemAt(n).getUri());
            } else if (data.getData() != null) uris.add(data.getData());
            if (uris.isEmpty()) return;
            for (Uri uri : uris) {
                try { getContentResolver().takePersistableUriPermission(uri, Intent.FLAG_GRANT_READ_URI_PERMISSION); }
                catch (Throwable ignored) {}
            }
            Intent i = new Intent(this, UnifiedCropService.class);
            i.setAction(UnifiedCropService.ACTION_URIS);
            i.putParcelableArrayListExtra(UnifiedCropService.EXTRA_URIS, uris);
            startUnified(i);
            return;
        }

        if (requestCode == REQ_TREE && data.getData() != null) {
            Uri treeUri = data.getData();
            try {
                getContentResolver().takePersistableUriPermission(treeUri,
                        Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
            } catch (Throwable ignored) {}
            try {
                String docId = DocumentsContract.getTreeDocumentId(treeUri);
                File direct = StoragePathResolver.fromDocumentId(docId, Environment.getExternalStorageDirectory());
                if (direct == null || !direct.isDirectory()) {
                    Toast.makeText(this, "Telefonun ana depolamasından bir klasör seç", Toast.LENGTH_LONG).show();
                    return;
                }
                Intent i = new Intent(this, UnifiedCropService.class);
                i.setAction(UnifiedCropService.ACTION_FOLDER);
                i.putExtra(UnifiedCropService.EXTRA_PATH, direct.getAbsolutePath());
                startUnified(i);
            } catch (Throwable t) {
                Toast.makeText(this, "Klasör yolu çözülemedi", Toast.LENGTH_LONG).show();
            }
        }
    }

    private void startScreenshots() {
        Intent i = new Intent(this, UnifiedCropService.class);
        i.setAction(UnifiedCropService.ACTION_SCREENSHOTS);
        startUnified(i);
    }

    private void startUnified(Intent i) {
        getSharedPreferences(UnifiedCropService.PREFS, MODE_PRIVATE).edit()
                .putInt("total", 0).putInt("processed", 0).putInt("skipped", 0)
                .putInt("people", 0).putInt("crops", 0).putInt("errors", 0)
                .putString("phase", "Hazırlanıyor").putString("current", "").apply();
        if (Build.VERSION.SDK_INT >= 26) startForegroundService(i); else startService(i);
    }

    private boolean hasAllFilesAccess() {
        return Build.VERSION.SDK_INT < 30 || Environment.isExternalStorageManager();
    }

    private void requestAllFilesAccess() {
        if (Build.VERSION.SDK_INT < 30) return;
        try {
            startActivity(new Intent(Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION, Uri.parse("package:" + getPackageName())));
        } catch (Throwable t) {
            startActivity(new Intent(Settings.ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION));
        }
        Toast.makeText(this, "Klasör ve Screenshots modu için 'Tüm dosyalara erişim'e izin ver", Toast.LENGTH_LONG).show();
    }

    @Override protected void onResume() { super.onResume(); handler.removeCallbacks(refresh); handler.post(refresh); }
    @Override protected void onPause() { handler.removeCallbacks(refresh); super.onPause(); }
}
