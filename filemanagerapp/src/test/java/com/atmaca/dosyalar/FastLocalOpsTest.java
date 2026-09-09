package com.atmaca.dosyalar;

import static org.junit.Assert.*;
import org.junit.Test;
import java.io.File;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;

public class FastLocalOpsTest {
    @Test public void movesLocalFileDirectly() throws Exception {
        File dir = Files.createTempDirectory("atmaca-fastops").toFile();
        File src = new File(dir, "a.txt");
        File dstDir = new File(dir, "dst");
        assertTrue(dstDir.mkdir());
        Files.write(src.toPath(), "1907".getBytes(StandardCharsets.UTF_8));
        File out = FastLocalOps.moveRenameFirst(src, dstDir, "a.txt");
        assertFalse(src.exists());
        assertTrue(out.isFile());
        assertEquals("1907", new String(Files.readAllBytes(out.toPath()), StandardCharsets.UTF_8));
    }

    @Test public void removesOnlyNomediaRecursively() throws Exception {
        File root = Files.createTempDirectory("atmaca-1907").toFile();
        File nested = new File(root, "alt/derin");
        assertTrue(nested.mkdirs());
        File rootNomedia = new File(root, ".nomedia");
        File nestedNomedia = new File(nested, ".nomedia");
        File photo = new File(nested, "foto.jpg");
        File similarName = new File(nested, ".nomedia.bak");
        assertTrue(rootNomedia.createNewFile());
        assertTrue(nestedNomedia.createNewFile());
        assertTrue(photo.createNewFile());
        assertTrue(similarName.createNewFile());

        NomediaCleaner.Result result = NomediaCleaner.clean(root);

        assertEquals(2, result.deleted);
        assertEquals(0, result.failed);
        assertFalse(rootNomedia.exists());
        assertFalse(nestedNomedia.exists());
        assertTrue(photo.exists());
        assertTrue(similarName.exists());
        assertTrue(nested.isDirectory());
    }
}