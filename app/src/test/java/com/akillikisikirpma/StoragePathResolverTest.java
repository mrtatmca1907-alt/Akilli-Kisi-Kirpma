package com.akillikisikirpma;

import org.junit.Test;
import java.io.File;
import static org.junit.Assert.*;

public class StoragePathResolverTest {
    @Test public void primaryTreeResolvesToDirectFilePath() {
        File root = new File("/storage/emulated/0");
        File out = StoragePathResolver.fromDocumentId("primary:Pictures/Test", root);
        assertEquals(new File(root, "Pictures/Test").getPath(), out.getPath());
    }

    @Test public void primaryRootResolvesToStorageRoot() {
        File root = new File("/storage/emulated/0");
        File out = StoragePathResolver.fromDocumentId("primary:", root);
        assertEquals(root.getPath(), out.getPath());
    }

    @Test public void rejectsNonPrimaryVolumeWithoutExplicitMount() {
        File root = new File("/storage/emulated/0");
        assertNull(StoragePathResolver.fromDocumentId("1234-5678:DCIM", root));
    }
}
