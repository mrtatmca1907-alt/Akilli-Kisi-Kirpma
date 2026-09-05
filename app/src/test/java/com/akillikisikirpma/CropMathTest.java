package com.akillikisikirpma;

import org.junit.Test;

import static org.junit.Assert.*;

public class CropMathTest {
    @Test
    public void scalesDetectionBoxBackToOriginalAndKeepsInsideImage() {
        CropMath.Box r = CropMath.toOriginalExpanded(
                100f, 80f, 300f, 580f,
                800, 600,
                4000, 3000
        );
        assertTrue(r.left >= 0);
        assertTrue(r.top >= 0);
        assertTrue(r.right <= 4000);
        assertTrue(r.bottom <= 3000);
        assertTrue(r.width() > 1000);
        assertTrue(r.height() > 2500);
    }

    @Test
    public void diagonalPersonNearEdgeIsNotClippedOutsideBounds() {
        CropMath.Box r = CropMath.toOriginalExpanded(
                0f, 0f, 220f, 590f,
                800, 600,
                4000, 3000
        );
        assertEquals(0, r.left);
        assertEquals(0, r.top);
        assertTrue(r.right <= 4000);
        assertTrue(r.bottom <= 3000);
    }
}
