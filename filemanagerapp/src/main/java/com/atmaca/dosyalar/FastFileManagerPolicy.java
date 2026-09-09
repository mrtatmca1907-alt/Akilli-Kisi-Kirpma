package com.atmaca.dosyalar;

public final class FastFileManagerPolicy {
    private FastFileManagerPolicy() {}
    public static String launcherActivity() { return "FastFileActivity"; }
    public static String localMoveStrategy() { return "RENAME_FIRST"; }
    public static boolean permanentDelete() { return true; }
    public static boolean useTrash() { return false; }
    public static String listingScope() { return "CURRENT_DIRECTORY_ONLY"; }
}
