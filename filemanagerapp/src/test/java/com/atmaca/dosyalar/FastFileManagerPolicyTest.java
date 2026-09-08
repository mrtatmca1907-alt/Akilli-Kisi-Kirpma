package com.atmaca.dosyalar;

import static org.junit.Assert.*;
import org.junit.Test;

public class FastFileManagerPolicyTest {
    @Test public void launcherUsesFastBrowser() {
        assertEquals("MainActivity", FastFileManagerPolicy.launcherActivity());
    }

    @Test public void localMovePrefersRename() {
        assertEquals("RENAME_FIRST", FastFileManagerPolicy.localMoveStrategy());
    }

    @Test public void deleteIsPermanentWithoutTrash() {
        assertTrue(FastFileManagerPolicy.permanentDelete());
        assertFalse(FastFileManagerPolicy.useTrash());
    }

    @Test public void listingOnlyTouchesCurrentDirectory() {
        assertEquals("CURRENT_DIRECTORY_ONLY", FastFileManagerPolicy.listingScope());
    }
}
