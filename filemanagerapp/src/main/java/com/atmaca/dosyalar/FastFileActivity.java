package com.atmaca.dosyalar;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.Settings;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import androidx.documentfile.provider.DocumentFile;

import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;

/** Fast local file operations plus one-tap background photo collection. */
public class FastFileActivity extends MainActivity {
    private static final String HOOK_TAG = "atmaca_fast_move_hook";
    private static final String COLLECT_TAG = "atmaca_collect_all_photos";

    @Override protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().getDecorView().getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
            @Override public void onGlobalLayout() {
                hookPasteButton();
                hookPhotoCollectorButton();
            }
        });
    }

    private void hookPasteButton() {
        try {
            Button paste = (Button) field("pasteButton").get(this);
            if (paste == null || HOOK_TAG.equals(paste.getTag())) return;
            paste.setTag(HOOK_TAG);
            paste.setOnClickListener(v -> pasteFast());
        } catch (Throwable ignored) { }
    }

    private void hookPhotoCollectorButton() {
        try {
            Object current = field("currentDir").get(this);
            if (current != null) return;
            LinearLayout content = (LinearLayout) field("content").get(this);
            if (content == null || content.findViewWithTag(COLLECT_TAG) != null) return;

            Button collect = new Button(this);
            collect.setTag(COLLECT_TAG);
            collect.setText("Tüm Fotoğrafları Topla");
            collect.setAllCaps(false);
            collect.setOnClickListener(v -> startPhotoCollection());
            int m = dpReflect(14);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.MATCH_PARENT,
                    LinearLayout.LayoutParams.WRAP_CONTENT);
            lp.setMargins(m, m / 2, m, m);
            content.addView(collect, lp);
        } catch (Throwable ignored) { }
    }

    private void startPhotoCollection() {
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R && !Environment.isExternalStorageManager()) {
                Toast.makeText(this, "Önce tüm dosyalara erişim iznini ver", Toast.LENGTH_LONG).show();
                try {
                    startActivity(new Intent(Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION,
                            Uri.parse("package:" + getPackageName())));
                } catch (Exception e) {
                    startActivity(new Intent(Settings.ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION));
                }
                return;
            }
            Intent service = new Intent(this, PhotoCollectService.class);
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) startForegroundService(service);
            else startService(service);
            Toast.makeText(this, "Fotoğraflar Pictures/TUM_FOTOGRAFLAR içine taşınıyor", Toast.LENGTH_LONG).show();
        } catch (Throwable t) {
            Toast.makeText(this, "Fotoğraf taşıma başlatılamadı", Toast.LENGTH_LONG).show();
        }
    }

    @SuppressWarnings("unchecked")
    private void pasteFast() {
        try {
            DocumentFile target = (DocumentFile) field("currentDir").get(this);
            List<DocumentFile> clipboard = (List<DocumentFile>) field("clipboard").get(this);
            boolean move = field("moveClipboard").getBoolean(this);
            TextView status = (TextView) field("status").get(this);
            ExecutorService io = (ExecutorService) field("io").get(this);
            if (target == null || clipboard == null || clipboard.isEmpty()) return;
            List<DocumentFile> work = new ArrayList<>(clipboard);
            io.execute(() -> {
                int ok = 0, fail = 0;
                for (int i = 0; i < work.size(); i++) {
                    DocumentFile src = work.get(i);
                    boolean done = false;
                    try {
                        if (!src.getUri().equals(target.getUri())) {
                            if (move && isLocal(src) && isLocal(target)) {
                                File sourceFile = new File(src.getUri().getPath());
                                File targetDir = new File(target.getUri().getPath());
                                if (!unsafeTarget(sourceFile, targetDir)) {
                                    try {
                                        FastLocalOps.moveRenameFirst(sourceFile, targetDir, safeName(src));
                                        done = true;
                                    } catch (Exception directMoveFailed) {
                                        done = copyRecursive(src, target);
                                        if (done) done = src.delete();
                                    }
                                }
                            } else {
                                done = copyRecursive(src, target);
                                if (done && move) done = src.delete();
                            }
                        }
                    } catch (Throwable ignored) { done = false; }
                    if (done) ok++; else fail++;
                    int p = i + 1;
                    if (status != null) runOnUiThread(() -> status.setText(p + " / " + work.size() + " işleniyor…"));
                }
                int good = ok, bad = fail;
                runOnUiThread(() -> {
                    try {
                        if (bad == 0) clipboard.clear();
                        invoke("refreshPasteButton");
                        Toast.makeText(this, good + " tamamlandı" + (bad > 0 ? " • " + bad + " hata" : ""), Toast.LENGTH_LONG).show();
                        invoke("loadCurrent");
                    } catch (Throwable ignored) { }
                });
            });
        } catch (Throwable t) {
            Toast.makeText(this, "Taşıma başlatılamadı", Toast.LENGTH_SHORT).show();
        }
    }

    private boolean copyRecursive(DocumentFile src, DocumentFile target) throws Exception {
        Method m = MainActivity.class.getDeclaredMethod("copyRecursive", DocumentFile.class, DocumentFile.class);
        m.setAccessible(true);
        Object r = m.invoke(this, src, target);
        return Boolean.TRUE.equals(r);
    }

    private void invoke(String name) throws Exception {
        Method m = MainActivity.class.getDeclaredMethod(name);
        m.setAccessible(true);
        m.invoke(this);
    }

    private int dpReflect(int value) {
        return Math.max(1, Math.round(value * getResources().getDisplayMetrics().density));
    }

    private Field field(String name) throws Exception {
        Field f = MainActivity.class.getDeclaredField(name);
        f.setAccessible(true);
        return f;
    }

    private boolean isLocal(DocumentFile f) {
        return f != null && f.getUri() != null && "file".equalsIgnoreCase(f.getUri().getScheme()) && f.getUri().getPath() != null;
    }

    private boolean unsafeTarget(File source, File targetDir) {
        if (!source.isDirectory()) return false;
        try {
            String s = source.getCanonicalPath();
            String t = targetDir.getCanonicalPath();
            return t.equals(s) || t.startsWith(s + File.separator);
        } catch (Exception e) { return true; }
    }

    private String safeName(DocumentFile f) {
        String n = f == null ? null : f.getName();
        return n == null || n.isBlank() ? "Dosya" : n;
    }
}
