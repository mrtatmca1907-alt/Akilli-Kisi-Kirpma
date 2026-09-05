package com.akillikisikirpma;

import android.graphics.Rect;
import android.graphics.RectF;

final class CropMath {
    private CropMath() {}

    static Rect toOriginalExpanded(RectF detected, int detectW, int detectH, int originalW, int originalH) {
        float sx = originalW / (float) Math.max(1, detectW);
        float sy = originalH / (float) Math.max(1, detectH);
        float leftF = detected.left * sx;
        float topF = detected.top * sy;
        float rightF = detected.right * sx;
        float bottomF = detected.bottom * sy;
        float bw = Math.max(1f, rightF - leftF);
        float bh = Math.max(1f, bottomF - topF);

        int left = Math.max(0, Math.round(leftF - bw * 0.28f));
        int right = Math.min(originalW, Math.round(rightF + bw * 0.28f));
        int top = Math.max(0, Math.round(topF - bh * 0.20f));
        int bottom = Math.min(originalH, Math.round(bottomF + bh * 0.28f));
        if (right <= left) right = Math.min(originalW, left + 1);
        if (bottom <= top) bottom = Math.min(originalH, top + 1);
        return new Rect(left, top, right, bottom);
    }
}
