package com.atmaca.batch50;

import org.junit.Test;
import java.io.File;
import java.nio.file.Files;

import static org.junit.Assert.*;

public class AppPathsNoMediaTest {
    @Test public void removeNoMediaDeletesMarkerAndLeavesOtherFiles() throws Exception {
        File root = Files.createTempDirectory("atmaca1907").toFile();
        File marker = new File(root, ".nomedia");
        File photo = new File(root, "foto.jpg");
        assertTrue(marker.createNewFile());
        assertTrue(photo.createNewFile());

        assertTrue(AppPaths.removeNoMedia(root));
        assertFalse(marker.exists());
        assertTrue(photo.exists());
    }

    @Test public void removeNoMediaSucceedsWhenMarkerDoesNotExist() throws Exception {
        File root = Files.createTempDirectory("atmaca1907_empty").toFile();
        assertTrue(AppPaths.removeNoMedia(root));
    }
}
