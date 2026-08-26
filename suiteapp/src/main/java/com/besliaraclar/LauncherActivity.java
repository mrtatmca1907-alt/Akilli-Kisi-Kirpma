package com.besliaraclar;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.Gravity;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

public class LauncherActivity extends Activity {
    private static final int NAVY = Color.rgb(7, 20, 38);
    private static final int GOLD = Color.rgb(244, 196, 48);
    private static final int PANEL = Color.rgb(20, 36, 58);

    @Override protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setStatusBarColor(NAVY);
        getWindow().setNavigationBarColor(NAVY);

        ScrollView scroll = new ScrollView(this);
        scroll.setFillViewport(true);
        scroll.setBackgroundColor(NAVY);

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dp(20), dp(22), dp(20), dp(28));
        scroll.addView(root);

        TextView title = text("5'li Araçlar", 31, GOLD, true);
        root.addView(title);

        TextView sub = text("Tek kapıdan tüm araçlara gir. Her motor kendi işini bağımsız yürütür.", 15, Color.rgb(210, 220, 235), false);
        LinearLayout.LayoutParams subLp = new LinearLayout.LayoutParams(-1, -2);
        subLp.setMargins(0, dp(7), 0, dp(18));
        root.addView(sub, subLp);

        addTool(root, "Akıllı Kişi Kırpma", "Fotoğraflardaki kişileri algılar ve ayrı ayrı kırpar.", () ->
                startActivity(new Intent(this, com.akillikisikirpma.MainActivity.class)));

        addTool(root, "Video Kareleri", "Klasörlerden video seçer, saniyede bir kare çıkarır.", () ->
                startActivity(new Intent(this, com.videokareleri.MainActivity.class)));

        addTool(root, "Çoklu Video İndirici", "Tarayıcıda medya akışlarını yakalar ve indirme kuyruğuna alır.", () ->
                startActivity(new Intent(this, com.cokluvideoindirici.StableBrowserActivity.class)));

        addTool(root, "ReelDrop", "Instagram profil indirme motoru. Bu denemede Python motoru mevcut ReelDrop kurulumuna bağlanır.", this::openReelDrop);

        addTool(root, "Görsel Avcısı", "Açık web kaynaklarında fotoğraf ve video kaynaklarını tarar, ZIP hazırlayabilir.", () ->
                startActivity(new Intent(this, com.gorselavcisi.MainActivity.class)));

        TextView note = text("Deneme birleşimi • Galeri ve dosya yöneticisi bu pakete dahil değil.", 12,
                Color.rgb(135, 153, 177), false);
        note.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams noteLp = new LinearLayout.LayoutParams(-1, -2);
        noteLp.setMargins(0, dp(18), 0, 0);
        root.addView(note, noteLp);

        setContentView(scroll);
    }

    private void addTool(LinearLayout root, String name, String description, Runnable action) {
        LinearLayout card = new LinearLayout(this);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setPadding(dp(16), dp(14), dp(16), dp(14));
        card.setBackgroundColor(PANEL);

        TextView nameView = text(name, 19, GOLD, true);
        card.addView(nameView);

        TextView desc = text(description, 13, Color.WHITE, false);
        LinearLayout.LayoutParams descLp = new LinearLayout.LayoutParams(-1, -2);
        descLp.setMargins(0, dp(5), 0, dp(10));
        card.addView(desc, descLp);

        Button open = new Button(this);
        open.setText("AÇ");
        open.setTextColor(NAVY);
        open.setTextSize(15);
        open.setAllCaps(false);
        open.setBackgroundTintList(android.content.res.ColorStateList.valueOf(GOLD));
        open.setOnClickListener(v -> action.run());
        card.addView(open, new LinearLayout.LayoutParams(-1, dp(50)));

        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, -2);
        lp.setMargins(0, 0, 0, dp(10));
        root.addView(card, lp);
    }

    private void openReelDrop() {
        try {
            Intent launch = getPackageManager().getLaunchIntentForPackage("org.reeldrop.reeldrop");
            if (launch != null) {
                startActivity(launch);
            } else {
                Toast.makeText(this,
                        "ReelDrop'un Python motoru bu ilk birleşik denemede henüz gömülü değil.",
                        Toast.LENGTH_LONG).show();
            }
        } catch (Throwable t) {
            Toast.makeText(this, "ReelDrop açılamadı.", Toast.LENGTH_SHORT).show();
        }
    }

    private TextView text(String value, int sp, int color, boolean bold) {
        TextView t = new TextView(this);
        t.setText(value);
        t.setTextSize(sp);
        t.setTextColor(color);
        if (bold) t.setTypeface(android.graphics.Typeface.DEFAULT_BOLD);
        return t;
    }

    private int dp(int n) {
        return Math.round(n * getResources().getDisplayMetrics().density);
    }
}
