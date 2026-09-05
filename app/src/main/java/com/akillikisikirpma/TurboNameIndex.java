package com.akillikisikirpma;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

final class TurboNameIndex {
    private final Map<String, Long> files = new HashMap<>();

    void put(String name, long size) {
        if (name == null) return;
        files.put(name.toLowerCase(Locale.ROOT), size);
    }

    boolean isDuplicate(String name, long size) {
        if (name == null || size <= 0L) return false;
        Long existing = files.get(name.toLowerCase(Locale.ROOT));
        return existing != null && existing > 0L && existing == size;
    }

    String allocateName(String name, long size) {
        if (name == null || name.trim().isEmpty()) name = "fotograf.jpg";
        if (!files.containsKey(name.toLowerCase(Locale.ROOT))) return name;
        if (isDuplicate(name, size)) return name;
        String base = name;
        String ext = "";
        int dot = name.lastIndexOf('.');
        if (dot > 0) {
            base = name.substring(0, dot);
            ext = name.substring(dot);
        }
        for (int i = 1; i < 1000000; i++) {
            String candidate = base + " (" + i + ")" + ext;
            if (!files.containsKey(candidate.toLowerCase(Locale.ROOT))) return candidate;
        }
        return base + "_turbo" + System.nanoTime() + ext;
    }
}
