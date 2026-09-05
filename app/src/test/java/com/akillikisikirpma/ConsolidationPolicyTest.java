package com.akillikisikirpma;

import org.junit.Test;

import static org.junit.Assert.*;

public class ConsolidationPolicyTest {
    @Test
    public void sameNameAndSameSizeIsDuplicate() {
        assertTrue(ConsolidationPolicy.isDuplicate("foto.jpg", 12345L, "foto.jpg", 12345L));
    }

    @Test
    public void sameNameButDifferentSizeIsNotDestroyed() {
        assertFalse(ConsolidationPolicy.isDuplicate("foto.jpg", 12345L, "foto.jpg", 54321L));
    }

    @Test
    public void duplicateNameComparisonIsCaseInsensitive() {
        assertTrue(ConsolidationPolicy.isDuplicate("FOTO.JPG", 12345L, "foto.jpg", 12345L));
    }
}
