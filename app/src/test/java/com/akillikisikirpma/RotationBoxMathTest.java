package com.akillikisikirpma;

import org.junit.Test;
import static org.junit.Assert.*;

public class RotationBoxMathTest {
    @Test public void mapsClockwise90BoxBackToOriginal() {
        float[] r = RotationBoxMath.fromRotated90(10, 20, 30, 40, 100, 60);
        assertArrayEquals(new float[]{20, 30, 40, 50}, r, 0.001f);
    }

    @Test public void mapsCounterClockwise90BoxBackToOriginal() {
        float[] r = RotationBoxMath.fromRotated270(10, 20, 30, 40, 100, 60);
        assertArrayEquals(new float[]{60, 10, 80, 30}, r, 0.001f);
    }
}
