package com.akillikisikirpma;

final class RotationBoxMath {
    private RotationBoxMath() {}

    static float[] fromRotated90(float left, float top, float right, float bottom, int originalWidth, int originalHeight) {
        return new float[]{top, originalHeight - right, bottom, originalHeight - left};
    }

    static float[] fromRotated270(float left, float top, float right, float bottom, int originalWidth, int originalHeight) {
        return new float[]{originalWidth - bottom, left, originalWidth - top, right};
    }
}
