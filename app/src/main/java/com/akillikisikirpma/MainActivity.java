package com.akillikisikirpma;

import android.Manifest;
import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends Activity {
    private static final int REQ_PERMS = 1907;
    private final Handler handler = new Handler(Looper.getMainLooper());

    private Button btnStart;
    private Button btnStop;
    private TextView txtStatus;
    private TextView txtLog;

    private final Runnable refresh = new Runnable() {
        @Override public void run() {
            SharedPreferences p = getSharedPreferences(CropForegroundService.PREFS, MODE_PRIVATE);
            boolean running = p.getBoolean("running", false);
            boolean finished = p.getBoolean("finished", false);
            int processed = p.getInt("processed", 0);
            int people = p.getInt("people", 0);
            int crops = p.getInt("crops", 0);
            int errors = p.getInt("errors", 0);
            String current = p.getString("current", "");

            btnStart.setEnabled(!running);
            btnStop.setEnabled(running);
            txtStatus.setText(running ? "Arka planda çalışıyor" : (finished ? "Tamamlandı" : "Hazır"));
            txtLog.setText(
                    "İşlenen fotoğraf: " + processed +
                    "\nBulunan kişi: " + people +
                    "\nKaydedilen kişi kırpımı: " + crops +
                    "\nHata: " + errors +
                    (current == null || current.isEmpty() ? "" : "\nSon fotoğraf: " + current)
            );
            handler.postDelayed(this, 1000);
        }
    };

    @Override protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        btnStart = findViewById(R.id.btnStart);
        btnStop = findViewById(R.id.btnStop);
        txtStatus = findViewById(R.id.txtStatus);
        txtLog = findViewById(R.id.txtLog);

        btnStart.setOnClickListener(v -> requestStart());
        btnStop.setOnClickListener(v -> {
            Intent i = new Intent(this, CropForegroundService.class);
            i.setAction(CropForegroundService.ACTION_STOP);
            startService(i);
        });
    }

    private void requestStart() {
        if (!hasImagePermission()) {
            if (Build.VERSION.SDK_INT >= 33) {
                requestPermissions(new String[]{Manifest.permission.READ_MEDIA_IMAGES, Manifest.permission.POST_NOTIFICATIONS}, REQ_PERMS);
            } else {
                requestPermissions(new String[]{Manifest.permission.READ_EXTERNAL_STORAGE}, REQ_PERMS);
            }
            return;
        }
        startCropService();
    }

    private boolean hasImagePermission() {
        if (Build.VERSION.SDK_INT >= 33) {
            return checkSelfPermission(Manifest.permission.READ_MEDIA_IMAGES) == PackageManager.PERMISSION_GRANTED;
        }
        return checkSelfPermission(Manifest.permission.READ_EXTERNAL_STORAGE) == PackageManager.PERMISSION_GRANTED;
    }

    private void startCropService() {
        Intent i = new Intent(this, CropForegroundService.class);
        i.setAction(CropForegroundService.ACTION_START);
        if (Build.VERSION.SDK_INT >= 26) startForegroundService(i);
        else startService(i);
        Toast.makeText(this, "Kırpma arka planda başladı", Toast.LENGTH_SHORT).show();
    }

    @Override public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == REQ_PERMS && hasImagePermission()) startCropService();
        else if (requestCode == REQ_PERMS) Toast.makeText(this, "Fotoğraf izni gerekli", Toast.LENGTH_LONG).show();
    }

    @Override protected void onResume() {
        super.onResume();
        handler.removeCallbacks(refresh);
        handler.post(refresh);
    }

    @Override protected void onPause() {
        handler.removeCallbacks(refresh);
        super.onPause();
    }
}
