package com.akillikisikirpma;

final class DetectionPolicy {
    private DetectionPolicy() {}

    static final class Box {
        final float left;
        final float top;
        final float right;
        final float bottom;

        Box(float left, float top, float right, float bottom) {
            this.left = left;
            this.top = top;
            this.right = right;
            this.bottom = bottom;
        }

        float width() { return Math.max(0f, right - left); }
        float height() { return Math.max(0f, bottom - top); }
        float area() { return width() * height(); }
    }

    static boolean isDuplicate(Box a, Box b) {
        float interLeft = Math.max(a.left, b.left);
        float interTop = Math.max(a.top, b.top);
        float interRight = Math.min(a.right, b.right);
        float interBottom = Math.min(a.bottom, b.bottom);
        float iw = Math.max(0f, interRight - interLeft);
        float ih = Math.max(0f, interBottom - interTop);
        float intersection = iw * ih;
        if (intersection <= 0f) return false;

        float areaA = Math.max(1f, a.area());
        float areaB = Math.max(1f, b.area());
        float union = areaA + areaB - intersection;
        float iou = intersection / Math.max(1f, union);
        float containment = intersection / Math.max(1f, Math.min(areaA, areaB));

        return iou >= 0.55f || containment >= 0.82f;
    }
}
