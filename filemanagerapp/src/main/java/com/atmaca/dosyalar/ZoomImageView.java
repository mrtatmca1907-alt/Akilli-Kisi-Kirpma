package com.atmaca.dosyalar;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;

import androidx.appcompat.widget.AppCompatImageView;

public class ZoomImageView extends AppCompatImageView {
    private final Matrix matrix = new Matrix();
    private final ScaleGestureDetector scaleDetector;
    private final GestureDetector gestureDetector;
    private float scale = 1f;
    private float lastX;
    private float lastY;
    private boolean dragging;

    public ZoomImageView(Context context) { this(context, null); }

    public ZoomImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
        setScaleType(ScaleType.MATRIX);
        scaleDetector = new ScaleGestureDetector(context, new ScaleGestureDetector.SimpleOnScaleGestureListener() {
            @Override public boolean onScale(ScaleGestureDetector detector) {
                Drawable d = getDrawable();
                if (d == null) return false;
                float next = Math.max(1f, Math.min(6f, scale * detector.getScaleFactor()));
                float factor = next / scale;
                scale = next;
                matrix.postScale(factor, factor, detector.getFocusX(), detector.getFocusY());
                clamp();
                setImageMatrix(matrix);
                return true;
            }
        });
        gestureDetector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() {
            @Override public boolean onDoubleTap(MotionEvent e) {
                if (scale > 1.05f) resetImage();
                else {
                    scale = 2.5f;
                    matrix.postScale(2.5f, 2.5f, e.getX(), e.getY());
                    clamp();
                    setImageMatrix(matrix);
                }
                return true;
            }
        });
    }

    @Override protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        resetImage();
    }

    @Override public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        post(this::resetImage);
    }

    private void resetImage() {
        Drawable d = getDrawable();
        if (d == null || getWidth() == 0 || getHeight() == 0) return;
        matrix.reset();
        float dw = d.getIntrinsicWidth();
        float dh = d.getIntrinsicHeight();
        if (dw <= 0 || dh <= 0) return;
        float fit = Math.min(getWidth() / dw, getHeight() / dh);
        float dx = (getWidth() - dw * fit) / 2f;
        float dy = (getHeight() - dh * fit) / 2f;
        matrix.postScale(fit, fit);
        matrix.postTranslate(dx, dy);
        scale = 1f;
        setImageMatrix(matrix);
    }

    private void clamp() {
        Drawable d = getDrawable();
        if (d == null) return;
        float[] values = new float[9];
        matrix.getValues(values);
        float sx = values[Matrix.MSCALE_X];
        float sy = values[Matrix.MSCALE_Y];
        float tx = values[Matrix.MTRANS_X];
        float ty = values[Matrix.MTRANS_Y];
        float width = d.getIntrinsicWidth() * sx;
        float height = d.getIntrinsicHeight() * sy;
        float fixX;
        float fixY;
        if (width <= getWidth()) fixX = (getWidth() - width) / 2f - tx;
        else if (tx > 0) fixX = -tx;
        else if (tx + width < getWidth()) fixX = getWidth() - (tx + width);
        else fixX = 0;
        if (height <= getHeight()) fixY = (getHeight() - height) / 2f - ty;
        else if (ty > 0) fixY = -ty;
        else if (ty + height < getHeight()) fixY = getHeight() - (ty + height);
        else fixY = 0;
        matrix.postTranslate(fixX, fixY);
    }

    @Override public boolean onTouchEvent(MotionEvent event) {
        gestureDetector.onTouchEvent(event);
        scaleDetector.onTouchEvent(event);
        if (scaleDetector.isInProgress()) return true;
        switch (event.getActionMasked()) {
            case MotionEvent.ACTION_DOWN:
                lastX = event.getX();
                lastY = event.getY();
                dragging = scale > 1f;
                return true;
            case MotionEvent.ACTION_MOVE:
                if (dragging) {
                    float dx = event.getX() - lastX;
                    float dy = event.getY() - lastY;
                    matrix.postTranslate(dx, dy);
                    clamp();
                    setImageMatrix(matrix);
                    lastX = event.getX();
                    lastY = event.getY();
                    return true;
                }
                break;
            case MotionEvent.ACTION_UP:
            case MotionEvent.ACTION_CANCEL:
                dragging = false;
                break;
        }
        return true;
    }
}
