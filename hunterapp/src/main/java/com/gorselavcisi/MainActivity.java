package com.gorselavcisi;

import android.Manifest;
import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import androidx.core.content.ContextCompat;

public class MainActivity extends Activity {
    private EditText query;
    private EditText aliases;
    private Spinner mode;
    private Spinner outputMode;
    private Button start;
    private Button stop;
    private TextView status;
    private TextView counts;
    private TextView source;
    private ProgressBar progress;
    private final Handler handler = new Handler(Looper.getMainLooper());

    private final Runnable poll = new Runnable() {
        @Override public void run() {
            SharedPreferences p = getSharedPreferences("hunter_status", MODE_PRIVATE);
            boolean running = p.getBoolean("running", false);
            status.setText(p.getString("message", "Hazır"));
            source.setText("Kaynak: " + p.getString("source", "-"));
            counts.setText(
                    "Bulunan fotoğraf: " + p.getInt("images", 0) +
                    "\nVideo kaynağı: " + p.getInt("videos", 0) +
                    "\nKaydedilen: " + p.getInt("saved", 0) +
                    "\nTekrar: " + p.getInt("duplicates", 0) +
                    "\nAtlanan/Hata: " + p.getInt("errors", 0));
            start.setEnabled(!running);
            stop.setEnabled(running);
            progress.setVisibility(running ? ProgressBar.VISIBLE : ProgressBar.GONE);
            handler.postDelayed(this, 700);
        }
    };

    @Override protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        query = findViewById(R.id.query);
        aliases = findViewById(R.id.aliases);
        mode = findViewById(R.id.mode);
        outputMode = findViewById(R.id.outputMode);
        start = findViewById(R.id.start);
        stop = findViewById(R.id.stop);
        status = findViewById(R.id.status);
        counts = findViewById(R.id.counts);
        source = findViewById(R.id.source);
        progress = findViewById(R.id.progress);

        ArrayAdapter<String> modes = new ArrayAdapter<>(this,
                android.R.layout.simple_spinner_dropdown_item,
                new String[]{"Hızlı Tara", "Derin Tara", "Sınırsız Tara"});
        mode.setAdapter(modes);
        mode.setSelection(1);

        ArrayAdapter<String> outputs = new ArrayAdapter<>(this,
                android.R.layout.simple_spinner_dropdown_item,
                new String[]{"Doğrudan indir", "ZIP oluştur", "İkisini birden"});
        outputMode.setAdapter(outputs);
        outputMode.setSelection(2);

        SharedPreferences p = getSharedPreferences("hunter_status", MODE_PRIVATE);
        query.setText(p.getString("last_query", ""));
        aliases.setText(p.getString("last_aliases", ""));

        start.setOnClickListener(v -> startHunter());
        stop.setOnClickListener(v -> {
            Intent i = new Intent(this, HunterService.class);
            i.setAction(HunterService.ACTION_STOP);
            startService(i);
        });

        if (Build.VERSION.SDK_INT >= 33 && checkSelfPermission(Manifest.permission.POST_NOTIFICATIONS)
                != PackageManager.PERMISSION_GRANTED) {
            requestPermissions(new String[]{Manifest.permission.POST_NOTIFICATIONS}, 901);
        }
    }

    private void startHunter() {
        String q = query.getText().toString().trim();
        if (q.length() < 2) {
            Toast.makeText(this, "Önce arayacağın ismi yaz", Toast.LENGTH_SHORT).show();
            return;
        }

        String a = aliases.getText().toString().trim();
        String m = mode.getSelectedItemPosition() == 0 ? "FAST" :
                mode.getSelectedItemPosition() == 1 ? "DEEP" : "UNLIMITED";
        String out = outputMode.getSelectedItemPosition() == 0 ? "DIRECT" :
                outputMode.getSelectedItemPosition() == 1 ? "ZIP" : "BOTH";

        getSharedPreferences("hunter_status", MODE_PRIVATE).edit()
                .putString("last_query", q)
                .putString("last_aliases", a)
                .apply();

        Intent i = new Intent(this, HunterService.class);
        i.setAction(HunterService.ACTION_START);
        i.putExtra("query", q);
        i.putExtra("aliases", a);
        i.putExtra("mode", m);
        i.putExtra("output", out);
        ContextCompat.startForegroundService(this, i);
    }

    @Override protected void onResume() {
        super.onResume();
        handler.removeCallbacks(poll);
        handler.post(poll);
    }

    @Override protected void onPause() {
        handler.removeCallbacks(poll);
        super.onPause();
    }
}
