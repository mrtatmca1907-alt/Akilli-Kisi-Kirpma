package com.atmaca.batch50;

import android.os.Environment;
import java.io.File;

final class AppPaths {
    static final String SOURCE_RELATIVE = "DCIM/1907";
    static final String WORK_RELATIVE = "Pictures/ATMACA_50";

    static File sourceRoot() { return new File(Environment.getExternalStorageDirectory(), SOURCE_RELATIVE); }
    static File workRoot() { return new File(Environment.getExternalStorageDirectory(), WORK_RELATIVE); }
    static File originalDir() { return new File(workRoot(), "ORJINAL"); }
    static File croppedDir() { return new File(workRoot(), "KIRPILAN"); }

    static boolean removeNoMedia(File root) {
        if (root == null) return false;
        File marker = new File(root, ".nomedia");
        return !marker.exists() || marker.delete();
    }

    static boolean isImageName(String name) {
        if (name == null) return false;
        String n = name.toLowerCase(java.util.Locale.ROOT);
        return n.endsWith(".jpg") || n.endsWith(".jpeg") || n.endsWith(".png") || n.endsWith(".webp") || n.endsWith(".heic") || n.endsWith(".heif") || n.endsWith(".bmp");
    }

    private AppPaths() {}
}
