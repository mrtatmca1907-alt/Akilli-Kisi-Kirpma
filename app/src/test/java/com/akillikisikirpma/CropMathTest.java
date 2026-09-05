package com.akillikisikirpma;

import android.graphics.Rect;
import android.graphics.RectF;

import org.junit.Test;

import static org.junit.Assert.*;

public class CropMathTest {
    @Test
    public void scalesDetectionBoxBackToOriginalAndKeepsInsideImage() {
        Rect r = CropMath.toOriginalExpanded(
                new RectF(100f, 80f, 300f, 580f),
                800, 600,
                4000, 3000
        );
        assertTrue(r.left >= 0);
        assertTrue(r.top >= 0);
        assertTrue(r.right <= 4000);
        assertTrue(r.bottom <= 3000);
        assertTrue((r.right - r.left) > 1000);
        assertTrue((r.bottom - r.top) > 2500);
    }

    @Test
    public void diagonalPersonNearEdgeIsNotClippedOutsideBounds() {
        Rect r = CropMath.toOriginalExpanded(
                new RectF(0f, 0f, 220f, 590f),
                800, 600,
                4000, 3000
        );
        assertEquals(0, r.left);
        assertEquals(0, r.top);
        assertTrue(r.right <= 4000);
        assertTrue(r.bottom <= 3000);
    }
}
