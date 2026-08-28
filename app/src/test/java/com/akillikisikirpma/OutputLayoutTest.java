package com.akillikisikirpma;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class OutputLayoutTest {
    @Test
    public void eachDetectedPersonGetsOwnFolderWithSourceAndCropNames() {
        assertEquals("FOTO_1234_Kisi_1", OutputLayout.personFolder("FOTO_1234", 1));
        assertEquals("FOTO_1234.jpg", OutputLayout.sourceFile("FOTO_1234"));
        assertEquals("FOTO_1234_kirpma_1.jpg", OutputLayout.cropFile("FOTO_1234", 1));

        assertEquals("FOTO_1234_Kisi_3", OutputLayout.personFolder("FOTO_1234", 3));
        assertEquals("FOTO_1234_kirpma_3.jpg", OutputLayout.cropFile("FOTO_1234", 3));
    }
}
