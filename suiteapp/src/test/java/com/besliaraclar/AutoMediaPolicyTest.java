package com.besliaraclar;

import org.junit.Test;
import static org.junit.Assert.*;

public class AutoMediaPolicyTest {
    @Test public void excludesOwnOutputFolders() {
        assertTrue(AutoMediaPolicy.isOwnOutputPath("Pictures/AkilliKisiKirpma/x/"));
        assertTrue(AutoMediaPolicy.isOwnOutputPath("Pictures/VideoKareleri/x/"));
        assertFalse(AutoMediaPolicy.isOwnOutputPath("DCIM/Camera/"));
    }

    @Test public void imageAndVideoTypesAreRecognized() {
        assertTrue(AutoMediaPolicy.isImage("a.JPG"));
        assertTrue(AutoMediaPolicy.isVideo("b.mp4"));
        assertFalse(AutoMediaPolicy.isVideo("c.jpg"));
    }

    @Test public void stableKeyChangesWhenMediaChanges() {
        String a = AutoMediaPolicy.stableKey(12L, "x.jpg", 100L, 10L);
        String b = AutoMediaPolicy.stableKey(12L, "x.jpg", 101L, 10L);
        assertNotEquals(a, b);
    }
}
