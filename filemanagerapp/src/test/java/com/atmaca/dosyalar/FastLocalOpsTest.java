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
}
