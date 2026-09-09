package com.atmaca.dosyalar;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayDeque;
import java.util.Locale;

/** Moves image files from internal storage into one flat target folder without decoding media. */
public final class PhotoCollector {
    private PhotoCollector() {}

    public interface Progress {
        void onProgress(int moved, int failed, File current);
    }

    public static final class Result {
        public final int moved;
        public final int failed;
        public final int skipped;
        Result(int moved, int failed, int skipped) {
            this.moved = moved;
            this.failed = failed;
            this.skipped = skipped;
        }
    }

    public static Result movePhotos(File storageRoot, File targetDir, Progress progress) {
        if (storageRoot == null || !storageRoot.isDirectory()) return new Result(0, 1, 0);
        if (targetDir == null) return new Result(0, 1, 0);
        if (!targetDir.exists() && !targetDir.mkdirs()) return new Result(0, 1, 0);

        int moved = 0, failed = 0, skipped = 0;
        ArrayDeque<File> dirs = new ArrayDeque<>();
        dirs.add(storageRoot);

        String targetPath = canonical(targetDir);
        while (!dirs.isEmpty()) {
            File dir = dirs.removeFirst();
            String dirPath = canonical(dir);
            if (dirPath.equals(targetPath) || dirPath.startsWith(targetPath + File.separator)) continue;
            if (isExcludedDirectory(storageRoot, dir)) continue;

            File[] children = dir.listFiles();
            if (children == null) {
                failed++;
                continue;
            }
            for (File child : children) {
                if (child.isDirectory()) {
                    if (!isExcludedDirectory(storageRoot, child)) dirs.addLast(child);
                    continue;
                }
                if (!isPhoto(child)) {
                    skipped++;
                    continue;
                }
                try {
                    File destination = uniqueTarget(targetDir, child.getName());
                    moveOne(child, destination);
                    moved++;
                } catch (Exception e) {
                    failed++;
                }
                if (progress != null) progress.onProgress(moved, failed, child);
            }
        }
        return new Result(moved, failed, skipped);
    }

    static boolean isPhoto(File file) {
        String name = file == null ? "" : file.getName().toLowerCase(Locale.ROOT);
        String[] exts = {".jpg", ".jpeg", ".png", ".webp", ".heic", ".heif", ".gif", ".bmp", ".avif", ".dng", ".tif", ".tiff", ".jfif", ".arw", ".cr2", ".cr3", ".nef", ".nrw", ".orf", ".raf", ".rw2", ".pef", ".srw"};
        for (String ext : exts) if (name.endsWith(ext)) return true;
        return false;
    }

    private static boolean isExcludedDirectory(File storageRoot, File dir) {
        if (dir == null) return true;
        String rel;
        try {
            rel = storageRoot.toPath().relativize(dir.toPath()).toString().replace('\\', '/').toLowerCase(Locale.ROOT);
        } catch (Exception e) {
            return false;
        }
        if (rel.isEmpty()) return false;
        return rel.equals("android/data") || rel.startsWith("android/data/") ||
               rel.equals("android/obb") || rel.startsWith("android/obb/") ||
               rel.equals(".thumbnails") || rel.endsWith("/.thumbnails");
    }

    private static void moveOne(File source, File destination) throws IOException {
        try {
            Files.move(source.toPath(), destination.toPath(), StandardCopyOption.ATOMIC_MOVE);
            return;
        } catch (Exception ignored) { }
        try {
            Files.move(source.toPath(), destination.toPath());
            return;
        } catch (Exception ignored) { }
        Files.copy(source.toPath(), destination.toPath(), StandardCopyOption.COPY_ATTRIBUTES);
        if (source.length() != destination.length()) {
            Files.deleteIfExists(destination.toPath());
            throw new IOException("copy verification failed");
        }
        if (!source.delete()) {
            Files.deleteIfExists(destination.toPath());
            throw new IOException("source delete failed");
        }
    }

    private static File uniqueTarget(File dir, String originalName) {
        File first = new File(dir, originalName);
        if (!first.exists()) return first;
        int dot = originalName.lastIndexOf('.');
        String base = dot > 0 ? originalName.substring(0, dot) : originalName;
        String ext = dot > 0 ? originalName.substring(dot) : "";
        int n = 1;
        File candidate;
        do {
            candidate = new File(dir, base + " (" + n++ + ")" + ext);
        } while (candidate.exists());
        return candidate;
    }

    private static String canonical(File file) {
        try { return file.getCanonicalPath(); }
        catch (IOException e) { return file.getAbsolutePath(); }
    }
}