package com.akillikisikirpma;

import org.junit.Test;

import static org.junit.Assert.*;

public class TurboNameIndexTest {
    @Test public void findsDuplicateWithoutDirectoryScan() {
        TurboNameIndex index = new TurboNameIndex();
        index.put("Foto.JPG", 1234L);
        assertTrue(index.isDuplicate("foto.jpg", 1234L));
    }

    @Test public void allocatesUniqueNameInMemory() {
        TurboNameIndex index = new TurboNameIndex();
        index.put("foto.jpg", 100L);
        assertEquals("foto (1).jpg", index.allocateName("foto.jpg", 200L));
        index.put("foto (1).jpg", 200L);
        assertEquals("foto (2).jpg", index.allocateName("foto.jpg", 300L));
    }

    @Test public void sameNameDifferentSizeIsNotDuplicate() {
        TurboNameIndex index = new TurboNameIndex();
        index.put("foto.jpg", 100L);
        assertFalse(index.isDuplicate("foto.jpg", 101L));
    }
}
