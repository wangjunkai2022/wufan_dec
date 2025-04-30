package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import com.facebook.common.internal.VisibleForTesting;
/* compiled from: AutoRotateDrawable.java */
/* loaded from: classes2.dex */
public class b extends h implements Runnable, c {

    /* renamed from: i  reason: collision with root package name */
    private static final int f12031i = 360;

    /* renamed from: j  reason: collision with root package name */
    private static final int f12032j = 20;

    /* renamed from: e  reason: collision with root package name */
    private int f12033e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f12034f;
    @VisibleForTesting

    /* renamed from: g  reason: collision with root package name */
    float f12035g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f12036h;

    public b(Drawable drawable, int i2) {
        this(drawable, i2, true);
    }

    private void B() {
        if (this.f12036h) {
            return;
        }
        this.f12036h = true;
        scheduleSelf(this, SystemClock.uptimeMillis() + 20);
    }

    private int z() {
        return (int) ((20.0f / this.f12033e) * 360.0f);
    }

    public void A() {
        this.f12035g = 0.0f;
        this.f12036h = false;
        unscheduleSelf(this);
        invalidateSelf();
    }

    public void C(boolean z3) {
        this.f12034f = z3;
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int save = canvas.save();
        Rect bounds = getBounds();
        int i2 = bounds.right;
        int i4 = bounds.left;
        int i5 = i2 - i4;
        int i6 = bounds.bottom;
        int i7 = bounds.top;
        int i8 = i6 - i7;
        float f4 = this.f12035g;
        if (!this.f12034f) {
            f4 = 360.0f - f4;
        }
        canvas.rotate(f4, i4 + (i5 / 2), i7 + (i8 / 2));
        super.draw(canvas);
        canvas.restoreToCount(save);
        B();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f12036h = false;
        this.f12035g += z();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.c
    /* renamed from: y */
    public b d() {
        return new b(f.a(q()), this.f12033e, this.f12034f);
    }

    public b(Drawable drawable, int i2, boolean z3) {
        super((Drawable) com.facebook.common.internal.h.i(drawable));
        this.f12035g = 0.0f;
        this.f12036h = false;
        this.f12033e = i2;
        this.f12034f = z3;
    }
}
