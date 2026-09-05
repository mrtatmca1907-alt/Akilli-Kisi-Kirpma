package com.akillikisikirpma;

import android.graphics.Rect;
import android.graphics.RectF;

final class CropMath {
    private CropMath() {}

    static final class Box {
        final int left;
        final int top;
        final int right;
        final int bottom;

        Box(int left, int top, int right, int bottom) {
            this.left = left;
            this.top = top;
            this.right = right;
            this.bottom = bottom;
        }

        int width() { return right - left; }
        int height() { return bottom - top; }
    }

    static Box toOriginalExpanded(
            float detectedLeft, float detectedTop, float detectedRight, float detectedBottom,
            int detectW, int detectH, int originalW, int originalH) {
        float sx = originalW / (float) Math.max(1, detectW);
        float sy = originalH / (float) Math.max(1, detectH);
        float leftF = detectedLeft * sx;
        float topF = detectedTop * sy;
        float rightF = detectedRight * sx;
        float bottomF = detectedBottom * sy;
        float bw = Math.max(1f, rightF - leftF);
        float bh = Math.max(1f, bottomF - topF);

        int left = Math.max(0, Math.round(leftF - bw * 0.28f));
        int right = Math.min(originalW, Math.round(rightF + bw * 0.28f));
        int top = Math.max(0, Math.round(topF - bh * 0.20f));
        int bottom = Math.min(originalH, Math.round(bottomF + bh * 0.28f));
        if (right <= left) right = Math.min(originalW, left + 1);
        if (bottom <= top) bottom = Math.min(originalH, top + 1);
        return new Box(left, top, right, bottom);
    }

    static Rect toOriginalExpanded(RectF detected, int detectW, int detectH, int originalW, int originalH) {
        Box b = toOriginalExpanded(
                detected.left, detected.top, detected.right, detected.bottom,
                detectW, detectH, originalW, originalH
        );
        return new Rect(b.left, b.top, b.right, b.bottom);
    }
}
