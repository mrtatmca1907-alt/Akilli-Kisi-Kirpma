package com.besliaraclar;

import android.Manifest;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.Settings;

import com.akillikisikirpma.AutoMediaScheduler;

public class AutoSetupActivity extends Activity {
    private static final int REQ_MEDIA = 701;
    private static final int REQ_ALL_FILES = 702;

    @Override protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ensurePermissionsAndStart();
    }

    private void ensurePermissionsAndStart() {
        if (Build.VERSION.SDK_INT >= 33) {
            boolean images = checkSelfPermission(Manifest.permission.READ_MEDIA_IMAGES) == PackageManager.PERMISSION_GRANTED;
            boolean videos = checkSelfPermission(Manifest.permission.READ_MEDIA_VIDEO) == PackageManager.PERMISSION_GRANTED;
            if (!images || !videos) {
                requestPermissions(new String[]{Manifest.permission.READ_MEDIA_IMAGES, Manifest.permission.READ_MEDIA_VIDEO}, REQ_MEDIA);
                return;
            }
        }
        if (Build.VERSION.SDK_INT >= 30 && !Environment.isExternalStorageManager()) {
            try {
                Intent i = new Intent(Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION,
                        Uri.parse("package:" + getPackageName()));
                startActivityForResult(i, REQ_ALL_FILES);
                return;
            } catch (Throwable ignored) {
                try {
                    startActivityForResult(new Intent(Settings.ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION), REQ_ALL_FILES);
                    return;
                } catch (Throwable ignoredToo) { }
            }
        }
        bootstrap();
    }

    private void bootstrap() {
        AutoMediaScheduler.scheduleWatcher(this);
        AutoMediaScheduler.scheduleRunNow(this);
        try {
            Intent service = new Intent(this, com.akillikisikirpma.AutoMediaService.class)
                    .setAction(com.akillikisikirpma.AutoMediaService.ACTION_RUN);
            if (Build.VERSION.SDK_INT >= 26) startForegroundService(service);
            else startService(service);
        } catch (Throwable ignored) { }
        startActivity(new Intent(this, LauncherActivity.class));
        finish();
    }

    @Override public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == REQ_MEDIA) ensurePermissionsAndStart();
    }

    @Override protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == REQ_ALL_FILES) ensurePermissionsAndStart();
    }
}
