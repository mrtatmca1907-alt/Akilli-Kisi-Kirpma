package com.atmaca.dosyalar;

import java.io.File;
import java.util.ArrayDeque;

/** Deletes only files named exactly .nomedia under the supplied root. */
public final class NomediaCleaner {
    private NomediaCleaner() { }

    public static final class Result {
        public final int deleted;
        public final int failed;

        Result(int deleted, int failed) {
            this.deleted = deleted;
            this.failed = failed;
        }
    }

    public static Result clean(File root) {
        if (root == null || !root.exists() || !root.isDirectory()) {
            return new Result(0, 0);
        }

        int deleted = 0;
        int failed = 0;
        ArrayDeque<File> pending = new ArrayDeque<>();
        pending.add(root);

        while (!pending.isEmpty()) {
            File dir = pending.removeFirst();
            File[] children = dir.listFiles();
            if (children == null) continue;

            for (File child : children) {
                if (child.isDirectory()) {
                    pending.addLast(child);
                } else if (".nomedia".equals(child.getName())) {
                    if (child.delete()) deleted++;
                    else failed++;
                }
            }
        }

        return new Result(deleted, failed);
    }
}