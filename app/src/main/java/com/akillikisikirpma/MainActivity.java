package com.akillikisikirpma;

import android.app.Activity;
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

public class MainActivity extends Activity {
    private static final int REQ_TREE = 1907;
    private final Handler handler = new Handler(Looper.getMainLooper());

    private Button btnSelectFolder;
    private Button btnStart;
    private Button btnStop;
    private TextView txtFolder;
    private TextView txtStatus;
    private TextView txtLog;

    private final Runnable refresh = new Runnable() {
        @Override public void run() {
            SharedPreferences p = getSharedPreferences(CropForegroundService.PREFS, MODE_PRIVATE);
            boolean running = p.getBoolean("running", false);
            boolean finished = p.getBoolean("finished", false);
            int gathered = p.getInt("gathered", 0);
            int duplicates = p.getInt("duplicates", 0);
            int processed = p.getInt("processed", 0);
            int people = p.getInt("people", 0);
            int crops = p.getInt("crops", 0);
            int moved = p.getInt("moved", 0);
            int errors = p.getInt("errors", 0);
            String phase = p.getString("phase", "Hazır");
            String current = p.getString("current", "");
            String directPath = p.getString(CropForegroundService.KEY_DIRECT_PATH, "");
            boolean allFiles = hasAllFilesAccess();

            btnSelectFolder.setEnabled(!running && allFiles);
            btnStart.setEnabled(!running && allFiles && directPath != null && !directPath.isEmpty());
            btnStop.setEnabled(running);
            txtStatus.setText(allFiles ? (running ? phase : (finished ? "Tamamlandı" : phase)) : "Tüm dosyalara erişim gerekli");
            txtFolder.setText(directPath == null || directPath.isEmpty() ? "Kaynak klasör: Seçilmedi" : "Kaynak klasör: " + directPath);
            txtLog.setText(
                    "GERÇEK TURBO: doğrudan dosya sistemi" +
                    "\nTek klasöre taşınan: " + gathered +
                    "\nTeke düşürülen kopya: " + duplicates +
                    "\nKırpma için işlenen: " + processed +
                    "\nÇıktıya taşınan orijinal: " + moved +
                    "\nBulunan kişi: " + people +
                    "\nKaydedilen kişi kırpımı: " + crops +
                    "\nHata: " + errors +
                    (current == null || current.isEmpty() ? "" : "\nŞu an: " + current)
            );
            handler.postDelayed(this, 1000);
        }
    };

    @Override protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        btnSelectFolder = findViewById(R.id.btnSelectFolder);
        btnStart = findViewById(R.id.btnStart);
        btnStop = findViewById(R.id.btnStop);
        txtFolder = findViewById(R.id.txtFolder);
        txtStatus = findViewById(R.id.txtStatus);
        txtLog = findViewById(R.id.txtLog);

        btnSelectFolder.setOnClickListener(v -> {
            if (!hasAllFilesAccess()) requestAllFilesAccess();
            else openFolderPicker();
        });
        btnStart.setOnClickListener(v -> startCropService());
        btnStop.setOnClickListener(v -> {
            Intent i = new Intent(this, CropForegroundService.class);
            i.setAction(CropForegroundService.ACTION_STOP);
            startService(i);
        });

        if (!hasAllFilesAccess()) requestAllFilesAccess();
    }

    private boolean hasAllFilesAccess() {
        return Build.VERSION.SDK_INT < 30 || Environment.isExternalStorageManager();
    }

    private void requestAllFilesAccess() {
        if (Build.VERSION.SDK_INT < 30) return;
        try {
            Intent i = new Intent(Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION, Uri.parse("package:" + getPackageName()));
            startActivity(i);
        } catch (Throwable t) {
            startActivity(new Intent(Settings.ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION));
        }
        Toast.makeText(this, "Akıllı Kişi Kırpma için 'Tüm dosyalara erişim'e izin ver", Toast.LENGTH_LONG).show();
    }

    private void openFolderPicker() {
        Intent i = new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE);
        i.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION |
                Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION | Intent.FLAG_GRANT_PREFIX_URI_PERMISSION);
        startActivityForResult(i, REQ_TREE);
    }

    @Override protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode != REQ_TREE || resultCode != RESULT_OK || data == null || data.getData() == null) return;
        Uri treeUri = data.getData();
        try {
            String docId = DocumentsContract.getTreeDocumentId(treeUri);
            File direct = StoragePathResolver.fromDocumentId(docId, Environment.getExternalStorageDirectory());
            if (direct == null || !direct.isDirectory()) {
                Toast.makeText(this, "Bu sürümde telefonun ana depolamasından bir klasör seç", Toast.LENGTH_LONG).show();
                return;
            }
            getSharedPreferences(CropForegroundService.PREFS, MODE_PRIVATE).edit()
                    .putString(CropForegroundService.KEY_TREE_URI, treeUri.toString())
                    .putString(CropForegroundService.KEY_DIRECT_PATH, direct.getAbsolutePath())
                    .putInt("gathered", 0).putInt("duplicates", 0).putInt("processed", 0)
                    .putInt("people", 0).putInt("crops", 0).putInt("moved", 0).putInt("errors", 0)
                    .putBoolean("finished", false).putString("phase", "Hazır").putString("current", "").apply();
            Toast.makeText(this, "Klasör seçildi • Gerçek turbo hazır", Toast.LENGTH_SHORT).show();
        } catch (Throwable t) {
            Toast.makeText(this, "Klasör yolu çözülemedi", Toast.LENGTH_LONG).show();
        }
    }

    private void startCropService() {
        if (!hasAllFilesAccess()) { requestAllFilesAccess(); return; }
        SharedPreferences p = getSharedPreferences(CropForegroundService.PREFS, MODE_PRIVATE);
        String path = p.getString(CropForegroundService.KEY_DIRECT_PATH, "");
        if (path == null || path.isEmpty()) {
            Toast.makeText(this, "Önce klasör seç", Toast.LENGTH_LONG).show();
            return;
        }
        Intent i = new Intent(this, CropForegroundService.class);
        i.setAction(CropForegroundService.ACTION_START);
        if (Build.VERSION.SDK_INT >= 26) startForegroundService(i); else startService(i);
        Toast.makeText(this, "Gerçek turbo başladı", Toast.LENGTH_SHORT).show();
    }

    @Override protected void onResume() { super.onResume(); handler.removeCallbacks(refresh); handler.post(refresh); }
    @Override protected void onPause() { handler.removeCallbacks(refresh); super.onPause(); }
}
