package com.atmaca.dosyalar;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;

final class FastLocalOps {
    private FastLocalOps() {}

    static File moveRenameFirst(File source, File targetDir, String wantedName) throws IOException {
        if (source == null || !source.exists()) throw new IOException("Kaynak yok");
        if (targetDir == null || (!targetDir.isDirectory() && !targetDir.mkdirs())) throw new IOException("Hedef klasor yok");
        File target = unique(targetDir, wantedName == null || wantedName.isBlank() ? source.getName() : wantedName, source.isDirectory());
        try {
            return Files.move(source.toPath(), target.toPath(), StandardCopyOption.ATOMIC_MOVE).toFile();
        } catch (Exception ignored) {
            try {
                return Files.move(source.toPath(), target.toPath()).toFile();
            } catch (Exception e) {
                throw new IOException("Dogrudan tasima olmadi", e);
            }
        }
    }

    private static File unique(File dir, String name, boolean folder) {
        File first = new File(dir, name);
        if (!first.exists()) return first;
        String base = name;
        String ext = "";
        if (!folder) {
            int dot = name.lastIndexOf('.');
            if (dot > 0 && dot < name.length() - 1) { base = name.substring(0, dot); ext = name.substring(dot); }
        }
        for (int i = 1; i < 100000; i++) {
            File f = new File(dir, base + " (" + i + ")" + ext);
            if (!f.exists()) return f;
        }
        return new File(dir, base + "_" + System.currentTimeMillis() + ext);
    }
}
