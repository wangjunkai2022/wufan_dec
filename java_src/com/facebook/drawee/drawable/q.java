package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.drawee.drawable.r;
/* compiled from: ScaleTypeDrawable.java */
/* loaded from: classes2.dex */
public class q extends h {
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    r.c f12121e;
    @VisibleForTesting

    /* renamed from: f  reason: collision with root package name */
    Object f12122f;
    @Nullable
    @VisibleForTesting

    /* renamed from: g  reason: collision with root package name */
    PointF f12123g;
    @VisibleForTesting

    /* renamed from: h  reason: collision with root package name */
    int f12124h;
    @VisibleForTesting

    /* renamed from: i  reason: collision with root package name */
    int f12125i;
    @VisibleForTesting

    /* renamed from: j  reason: collision with root package name */
    Matrix f12126j;

    /* renamed from: k  reason: collision with root package name */
    private Matrix f12127k;

    public q(Drawable drawable, r.c cVar) {
        super((Drawable) com.facebook.common.internal.h.i(drawable));
        this.f12123g = null;
        this.f12124h = 0;
        this.f12125i = 0;
        this.f12127k = new Matrix();
        this.f12121e = cVar;
    }

    private void z() {
        boolean z3;
        r.c cVar = this.f12121e;
        boolean z4 = true;
        if (cVar instanceof r.m) {
            Object state = ((r.m) cVar).getState();
            z3 = state == null || !state.equals(this.f12122f);
            this.f12122f = state;
        } else {
            z3 = false;
        }
        if (this.f12124h == getCurrent().getIntrinsicWidth() && this.f12125i == getCurrent().getIntrinsicHeight()) {
            z4 = false;
        }
        if (z4 || z3) {
            y();
        }
    }

    @Nullable
    public PointF A() {
        return this.f12123g;
    }

    public r.c B() {
        return this.f12121e;
    }

    public void C(PointF pointF) {
        if (com.facebook.common.internal.g.a(this.f12123g, pointF)) {
            return;
        }
        if (this.f12123g == null) {
            this.f12123g = new PointF();
        }
        this.f12123g.set(pointF);
        y();
        invalidateSelf();
    }

    public void D(r.c cVar) {
        if (com.facebook.common.internal.g.a(this.f12121e, cVar)) {
            return;
        }
        this.f12121e = cVar;
        this.f12122f = null;
        y();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        z();
        if (this.f12126j != null) {
            int save = canvas.save();
            canvas.clipRect(getBounds());
            canvas.concat(this.f12126j);
            super.draw(canvas);
            canvas.restoreToCount(save);
            return;
        }
        super.draw(canvas);
    }

    @Override // com.facebook.drawee.drawable.h, com.facebook.drawee.drawable.t
    public void e(Matrix matrix) {
        u(matrix);
        z();
        Matrix matrix2 = this.f12126j;
        if (matrix2 != null) {
            matrix.preConcat(matrix2);
        }
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        y();
    }

    @Override // com.facebook.drawee.drawable.h
    public Drawable w(Drawable drawable) {
        Drawable w3 = super.w(drawable);
        y();
        return w3;
    }

    @VisibleForTesting
    void y() {
        Drawable current = getCurrent();
        Rect bounds = getBounds();
        int width = bounds.width();
        int height = bounds.height();
        int intrinsicWidth = current.getIntrinsicWidth();
        this.f12124h = intrinsicWidth;
        int intrinsicHeight = current.getIntrinsicHeight();
        this.f12125i = intrinsicHeight;
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            current.setBounds(bounds);
            this.f12126j = null;
        } else if (intrinsicWidth == width && intrinsicHeight == height) {
            current.setBounds(bounds);
            this.f12126j = null;
        } else if (this.f12121e == r.c.f12138a) {
            current.setBounds(bounds);
            this.f12126j = null;
        } else {
            current.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            r.c cVar = this.f12121e;
            Matrix matrix = this.f12127k;
            PointF pointF = this.f12123g;
            cVar.a(matrix, bounds, intrinsicWidth, intrinsicHeight, pointF != null ? pointF.x : 0.5f, pointF != null ? pointF.y : 0.5f);
            this.f12126j = this.f12127k;
        }
    }

    public q(Drawable drawable, r.c cVar, @Nullable PointF pointF) {
        super((Drawable) com.facebook.common.internal.h.i(drawable));
        this.f12123g = null;
        this.f12124h = 0;
        this.f12125i = 0;
        this.f12127k = new Matrix();
        this.f12121e = cVar;
        this.f12123g = pointF;
    }
}
