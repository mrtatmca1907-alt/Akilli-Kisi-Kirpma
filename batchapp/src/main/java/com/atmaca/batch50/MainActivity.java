package com.atmaca.batch50;

import android.Manifest;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.Settings;
import android.view.Gravity;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import java.io.File;
import java.io.FileOutputStream;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class MainActivity extends Activity {
    private final ExecutorService executor = Executors.newSingleThreadExecutor();
    private BatchQueueDb db;
    private TextView totalText, doneText, pendingText, statusText;
    private ProgressBar progress;
    private Button scanButton, giveButton;

    private final BroadcastReceiver receiver = new BroadcastReceiver() {
        @Override public void onReceive(Context context, Intent intent) {
            String msg = intent.getStringExtra(BatchForegroundService.EXTRA_MESSAGE);
            int done = intent.getIntExtra(BatchForegroundService.EXTRA_DONE, 0);
            int total = intent.getIntExtra(BatchForegroundService.EXTRA_TOTAL, 0);
            statusText.setText(msg == null ? "" : msg);
            progress.setIndeterminate(total <= 0);
            if (total > 0) { progress.setMax(total); progress.setProgress(done); }
            refreshCounts();
            giveButton.setEnabled(true);
        }
    };

    @Override protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        db = new BatchQueueDb(this);
        setContentView(buildUi());
        if (Build.VERSION.SDK_INT >= 33) requestPermissions(new String[]{Manifest.permission.POST_NOTIFICATIONS}, 81);
        if (!hasStorageAccess()) statusText.setText("İlk kez: DOSYA İZNİ VER düğmesine bas.");
        else if (db.countAll() == 0) startScan();
        else refreshCounts();
    }

    @Override protected void onResume() {
        super.onResume();
        IntentFilter f = new IntentFilter(BatchForegroundService.ACTION_PROGRESS);
        if (Build.VERSION.SDK_INT >= 33) registerReceiver(receiver, f, Context.RECEIVER_NOT_EXPORTED); else registerReceiver(receiver, f);
        refreshCounts();
    }

    @Override protected void onPause() {
        try { unregisterReceiver(receiver); } catch (Throwable ignored) {}
        super.onPause();
    }

    private View buildUi() {
        LinearLayout box = new LinearLayout(this);
        box.setOrientation(LinearLayout.VERTICAL);
        box.setPadding(dp(18),dp(20),dp(18),dp(20));
        box.setBackgroundColor(Color.rgb(245,247,250));

        TextView title = text("ATMACA 50", 28, true);
        title.setTextColor(Color.rgb(6,26,58)); box.addView(title);
        TextView sub = text("Kaynak: DCIM/1907  •  Çıktı: Pictures/ATMACA_50", 14, false);
        sub.setTextColor(Color.DKGRAY); box.addView(sub, lp(-1,dp(48)));

        LinearLayout cards = new LinearLayout(this); cards.setOrientation(LinearLayout.HORIZONTAL);
        totalText = counter("Toplam\n0"); doneText = counter("Verilen\n0"); pendingText = counter("Bekleyen\n0");
        cards.addView(totalText, weight()); cards.addView(doneText, weight()); cards.addView(pendingText, weight());
        box.addView(cards, lp(-1,dp(92)));

        Button permission = button("DOSYA İZNİ VER"); permission.setOnClickListener(v -> requestStorageAccess()); box.addView(permission, lp(-1,dp(58)));
        scanButton = button("HIZLI TARA + GALERİDEN GİZLE"); scanButton.setOnClickListener(v -> startScan()); box.addView(scanButton, marginLp());
        giveButton = button("VER — SIRADAKİ 50"); giveButton.setTextSize(20); giveButton.setOnClickListener(v -> give50()); box.addView(giveButton, marginLp());
        progress = new ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal); progress.setIndeterminate(false); box.addView(progress, marginLp());
        statusText = text("Hazır.", 16, false); statusText.setPadding(0,dp(16),0,0); box.addView(statusText);
        TextView note = text("Kaynak fotoğraflar taşınmaz/silinmez. Yalnız DCIM/1907 yönetilir. Pictures/Screenshots'a dokunulmaz. ATMACA_50 klasörünü sen sildikten sonra yeniden VER'e bas.", 14, false);
        note.setTextColor(Color.DKGRAY); note.setPadding(0,dp(18),0,0); box.addView(note);
        ScrollView sv = new ScrollView(this); sv.addView(box); return sv;
    }

    private void requestStorageAccess() {
        if (Build.VERSION.SDK_INT >= 30) {
            Intent i = new Intent(Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION, Uri.parse("package:" + getPackageName()));
            startActivity(i);
        }
    }

    private boolean hasStorageAccess() { return Build.VERSION.SDK_INT < 30 || Environment.isExternalStorageManager(); }

    private void startScan() {
        if (!hasStorageAccess()) { requestStorageAccess(); return; }
        scanButton.setEnabled(false); giveButton.setEnabled(false); progress.setIndeterminate(true); statusText.setText("DCIM/1907 hızlı taranıyor…");
        executor.execute(() -> {
            String result;
            try {
                File root = AppPaths.sourceRoot();
                if (!root.isDirectory()) result = "DCIM/1907 bulunamadı.";
                else {
                    hideFromGallery(root);
                    int added = db.scan(root);
                    result = "Tarama bitti. Yeni bulunan: " + added + ". Kaynak galeriden gizlendi.";
                }
            } catch (Throwable t) { result = "Tarama hatası: " + t.getMessage(); }
            String finalResult = result;
            runOnUiThread(() -> { scanButton.setEnabled(true); giveButton.setEnabled(true); progress.setIndeterminate(false); statusText.setText(finalResult); refreshCounts(); });
        });
    }

    private void hideFromGallery(File root) throws Exception {
        File marker = new File(root, ".nomedia");
        if (!marker.exists()) try (FileOutputStream ignored = new FileOutputStream(marker)) {}
        android.media.MediaScannerConnection.scanFile(this, new String[]{marker.getAbsolutePath()}, null, null);
    }

    private void give50() {
        if (!hasStorageAccess()) { requestStorageAccess(); return; }
        if (hasWorkFiles(AppPaths.workRoot())) { Toast.makeText(this, "Önce Pictures/ATMACA_50 klasörünü sil.", Toast.LENGTH_LONG).show(); return; }
        if (db.countPending() <= 0) { Toast.makeText(this, "Bekleyen fotoğraf yok.", Toast.LENGTH_SHORT).show(); return; }
        giveButton.setEnabled(false); progress.setIndeterminate(true); statusText.setText("50 foto hazırlanıyor…");
        Intent i = new Intent(this, BatchForegroundService.class);
        if (Build.VERSION.SDK_INT >= 26) startForegroundService(i); else startService(i);
    }

    private static boolean hasWorkFiles(File dir) {
        if (!dir.exists()) return false; File[] fs=dir.listFiles(); if(fs==null)return false;
        for(File f:fs){ if(f.isFile())return true; if(f.isDirectory()&&hasWorkFiles(f))return true; } return false;
    }

    private void refreshCounts() {
        if (db == null) return;
        long all=db.countAll(), done=db.countDone(), pending=db.countPending();
        totalText.setText("Toplam\n"+all); doneText.setText("Verilen\n"+done); pendingText.setText("Bekleyen\n"+pending);
    }

    private TextView text(String s,int sp,boolean bold){TextView t=new TextView(this);t.setText(s);t.setTextSize(sp);if(bold)t.setTypeface(android.graphics.Typeface.DEFAULT_BOLD);return t;}
    private TextView counter(String s){TextView t=text(s,18,true);t.setGravity(Gravity.CENTER);t.setTextColor(Color.rgb(6,26,58));t.setBackgroundColor(Color.WHITE);return t;}
    private Button button(String s){Button b=new Button(this);b.setText(s);b.setAllCaps(false);return b;}
    private LinearLayout.LayoutParams lp(int w,int h){return new LinearLayout.LayoutParams(w,h);}
    private LinearLayout.LayoutParams marginLp(){LinearLayout.LayoutParams p=lp(-1,dp(58));p.topMargin=dp(10);return p;}
    private LinearLayout.LayoutParams weight(){LinearLayout.LayoutParams p=lp(0,-1);p.weight=1;p.setMargins(dp(3),dp(3),dp(3),dp(3));return p;}
    private int dp(int v){return Math.round(v*getResources().getDisplayMetrics().density);}

    @Override protected void onDestroy() { executor.shutdownNow(); if(db!=null)db.close(); super.onDestroy(); }
}
