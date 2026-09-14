package com.besliaraclar;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.view.Gravity;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.akillikisikirpma.AutoMediaScheduler;
import com.akillikisikirpma.AutoMediaService;

public class LauncherActivity extends Activity {
    private static final int NAVY = Color.rgb(7, 20, 38);
    private static final int GOLD = Color.rgb(244, 196, 48);

    @Override protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setStatusBarColor(NAVY);
        getWindow().setNavigationBarColor(NAVY);

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setGravity(Gravity.CENTER_HORIZONTAL);
        root.setPadding(dp(24), dp(40), dp(24), dp(32));
        root.setBackgroundColor(NAVY);

        TextView title = new TextView(this);
        title.setText("ATMACA Otomatik Medya");
        title.setTextColor(GOLD);
        title.setTextSize(27);
        title.setTypeface(android.graphics.Typeface.DEFAULT_BOLD);
        title.setGravity(Gravity.CENTER);
        root.addView(title, new LinearLayout.LayoutParams(-1, -2));

        TextView status = new TextView(this);
        status.setText("Sistem aktif.\n\nYeni fotoğraf veya video geldiğinde otomatik uyanır. İş kuyruğu bittiğinde servis kapanır ve RAM kullanmaz.\n\nFotoğraf → orijinal + her kişi ayrı çıktı\nVideo → saniyede 1 kare + başarıdan sonra kaynak video silme\n\nYarım kalan video kaldığı saniyeden devam eder; bitmiş dosyalar tekrar işlenmez.");
        status.setTextColor(Color.WHITE);
        status.setTextSize(16);
        status.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams statusLp = new LinearLayout.LayoutParams(-1, -2);
        statusLp.setMargins(0, dp(26), 0, dp(28));
        root.addView(status, statusLp);

        Button runNow = new Button(this);
        runNow.setText("ŞİMDİ KONTROL ET");
        runNow.setTextColor(NAVY);
        runNow.setBackgroundTintList(android.content.res.ColorStateList.valueOf(GOLD));
        runNow.setOnClickListener(v -> {
            AutoMediaScheduler.scheduleWatcher(this);
            AutoMediaScheduler.scheduleRunNow(this);
            try {
                Intent service = new Intent(this, AutoMediaService.class).setAction(AutoMediaService.ACTION_RUN);
                if (Build.VERSION.SDK_INT >= 26) startForegroundService(service);
                else startService(service);
            } catch (Throwable ignored) { }
        });
        root.addView(runNow, new LinearLayout.LayoutParams(-1, dp(54)));

        setContentView(root);
    }

    private int dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }
}
