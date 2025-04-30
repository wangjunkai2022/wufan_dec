package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
/* compiled from: MatrixDrawable.java */
/* loaded from: classes2.dex */
public class i extends h {

    /* renamed from: e  reason: collision with root package name */
    private Matrix f12061e;

    /* renamed from: f  reason: collision with root package name */
    private Matrix f12062f;

    /* renamed from: g  reason: collision with root package name */
    private int f12063g;

    /* renamed from: h  reason: collision with root package name */
    private int f12064h;

    public i(Drawable drawable, Matrix matrix) {
        super((Drawable) com.facebook.common.internal.h.i(drawable));
        this.f12063g = 0;
        this.f12064h = 0;
        this.f12061e = matrix;
    }

    private void y() {
        Drawable current = getCurrent();
        Rect bounds = getBounds();
        int intrinsicWidth = current.getIntrinsicWidth();
        this.f12063g = intrinsicWidth;
        int intrinsicHeight = current.getIntrinsicHeight();
        this.f12064h = intrinsicHeight;
        if (intrinsicWidth > 0 && intrinsicHeight > 0) {
            current.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            this.f12062f = this.f12061e;
            return;
        }
        current.setBounds(bounds);
        this.f12062f = null;
    }

    private void z() {
        if (this.f12063g == getCurrent().getIntrinsicWidth() && this.f12064h == getCurrent().getIntrinsicHeight()) {
            return;
        }
        y();
    }

    public Matrix A() {
        return this.f12061e;
    }

    public void B(Matrix matrix) {
        this.f12061e = matrix;
        y();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        z();
        if (this.f12062f != null) {
            int save = canvas.save();
            canvas.clipRect(getBounds());
            canvas.concat(this.f12062f);
            super.draw(canvas);
            canvas.restoreToCount(save);
            return;
        }
        super.draw(canvas);
    }

    @Override // com.facebook.drawee.drawable.h, com.facebook.drawee.drawable.t
    public void e(Matrix matrix) {
        super.e(matrix);
        Matrix matrix2 = this.f12062f;
        if (matrix2 != null) {
            matrix.preConcat(matrix2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        y();
    }

    @Override // com.facebook.drawee.drawable.h
    public Drawable w(Drawable drawable) {
        Drawable w3 = super.w(drawable);
        y();
        return w3;
    }
}
