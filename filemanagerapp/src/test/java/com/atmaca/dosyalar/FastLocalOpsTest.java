package com.atmaca.dosyalar;

import static org.junit.Assert.*;
import org.junit.Test;
import java.io.File;
import java.nio.file.Files;

public class FastLocalOpsTest {
    @Test public void movesLocalFileDirectly() throws Exception {
        File dir = Files.createTempDirectory("atmaca-fastops").toFile();
        File src = new File(dir, "a.txt");
        File dstDir = new File(dir, "dst");
        assertTrue(dstDir.mkdir());
        Files.writeString(src.toPath(), "1907");
        File out = FastLocalOps.moveRenameFirst(src, dstDir, "a.txt");
        assertFalse(src.exists());
        assertTrue(out.isFile());
        assertEquals("1907", Files.readString(out.toPath()));
    }
}
