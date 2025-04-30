package com.androidquery.util;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public class RatioDrawable extends BitmapDrawable {
    private boolean adjusted;
    private float anchor;

    /* renamed from: m  reason: collision with root package name */
    private Matrix f9967m;
    private float ratio;
    private WeakReference<ImageView> ref;

    /* renamed from: w  reason: collision with root package name */
    private int f9968w;

    public RatioDrawable(Resources resources, Bitmap bitmap, ImageView imageView, float f4, float f5) {
        super(resources, bitmap);
        this.ref = new WeakReference<>(imageView);
        this.ratio = f4;
        this.anchor = f5;
        imageView.setScaleType(ImageView.ScaleType.MATRIX);
        imageView.setImageMatrix(new Matrix());
        adjust(imageView, bitmap, false);
    }

    private void adjust(ImageView imageView, Bitmap bitmap, boolean z3) {
        int width = getWidth(imageView);
        if (width <= 0) {
            return;
        }
        int targetHeight = targetHeight(bitmap.getWidth(), bitmap.getHeight(), width) + imageView.getPaddingTop() + imageView.getPaddingBottom();
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        if (targetHeight != layoutParams.height) {
            layoutParams.height = targetHeight;
            imageView.setLayoutParams(layoutParams);
        }
        if (z3) {
            this.adjusted = true;
        }
    }

    private Matrix getMatrix(ImageView imageView, Bitmap bitmap) {
        float f4;
        float f5;
        int width = bitmap.getWidth();
        Matrix matrix = this.f9967m;
        if (matrix == null || width != this.f9968w) {
            int height = bitmap.getHeight();
            int width2 = getWidth(imageView);
            int targetHeight = targetHeight(width, height, width2);
            if (width <= 0 || height <= 0 || width2 <= 0 || targetHeight <= 0) {
                return null;
            }
            if (this.f9967m == null || width != this.f9968w) {
                this.f9967m = new Matrix();
                float f6 = 0.0f;
                if (width * targetHeight >= width2 * height) {
                    f4 = targetHeight / height;
                    f6 = (width2 - (width * f4)) * 0.5f;
                    f5 = 0.0f;
                } else {
                    float f7 = width2 / width;
                    float yOffset = (targetHeight - (height * f7)) * getYOffset(width, height);
                    f4 = f7;
                    f5 = yOffset;
                }
                this.f9967m.setScale(f4, f4);
                this.f9967m.postTranslate(f6, f5);
                this.f9968w = width;
            }
            return this.f9967m;
        }
        return matrix;
    }

    private int getWidth(ImageView imageView) {
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        int i2 = layoutParams != null ? layoutParams.width : 0;
        if (i2 <= 0) {
            i2 = imageView.getWidth();
        }
        return i2 > 0 ? (i2 - imageView.getPaddingLeft()) - imageView.getPaddingRight() : i2;
    }

    private float getYOffset(int i2, int i4) {
        float f4 = this.anchor;
        return f4 != Float.MAX_VALUE ? (1.0f - f4) / 2.0f : ((1.5f - Math.max(1.0f, Math.min(1.5f, i4 / i2))) / 2.0f) + 0.25f;
    }

    private int targetHeight(int i2, int i4, int i5) {
        float f4 = this.ratio;
        if (f4 == Float.MAX_VALUE) {
            f4 = i4 / i2;
        }
        return (int) (i5 * f4);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        WeakReference<ImageView> weakReference = this.ref;
        ImageView imageView = weakReference != null ? weakReference.get() : null;
        if (this.ratio != 0.0f && imageView != null) {
            draw(canvas, imageView, getBitmap());
        } else {
            super.draw(canvas);
        }
    }

    private void draw(Canvas canvas, ImageView imageView, Bitmap bitmap) {
        Matrix matrix = getMatrix(imageView, bitmap);
        if (matrix != null) {
            int paddingTop = imageView.getPaddingTop() + imageView.getPaddingBottom();
            int paddingLeft = imageView.getPaddingLeft() + imageView.getPaddingRight();
            if (paddingTop > 0 || paddingLeft > 0) {
                canvas.clipRect(0, 0, imageView.getWidth() - paddingLeft, imageView.getHeight() - paddingTop);
            }
            canvas.drawBitmap(bitmap, matrix, getPaint());
        }
        if (this.adjusted) {
            return;
        }
        adjust(imageView, bitmap, true);
    }
}
