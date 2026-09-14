package com.besliaraclar;

import java.util.Locale;

public final class AutoMediaPolicy {
    private AutoMediaPolicy() {}

    public static boolean isOwnOutputPath(String relativePath) {
        if (relativePath == null) return false;
        String p = relativePath.replace('\\', '/').toLowerCase(Locale.ROOT);
        return p.contains("pictures/akillikisikirpma/") || p.contains("pictures/videokareleri/");
    }

    public static boolean isImage(String name) {
        if (name == null) return false;
        String n = name.toLowerCase(Locale.ROOT);
        return n.endsWith(".jpg") || n.endsWith(".jpeg") || n.endsWith(".png") || n.endsWith(".webp")
                || n.endsWith(".bmp") || n.endsWith(".gif") || n.endsWith(".heic") || n.endsWith(".heif");
    }

    public static boolean isVideo(String name) {
        if (name == null) return false;
        String n = name.toLowerCase(Locale.ROOT);
        return n.endsWith(".mp4") || n.endsWith(".mkv") || n.endsWith(".mov") || n.endsWith(".webm")
                || n.endsWith(".3gp") || n.endsWith(".avi") || n.endsWith(".m4v") || n.endsWith(".ts");
    }

    public static String stableKey(long id, String name, long size, long modifiedSeconds) {
        return id + "|" + (name == null ? "" : name) + "|" + size + "|" + modifiedSeconds;
    }
}
