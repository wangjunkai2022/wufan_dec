package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
/* compiled from: ProgressBarDrawable.java */
/* loaded from: classes2.dex */
public class k extends Drawable implements c {

    /* renamed from: a  reason: collision with root package name */
    private final Paint f12070a = new Paint(1);

    /* renamed from: b  reason: collision with root package name */
    private final Path f12071b = new Path();

    /* renamed from: c  reason: collision with root package name */
    private final RectF f12072c = new RectF();

    /* renamed from: d  reason: collision with root package name */
    private int f12073d = Integer.MIN_VALUE;

    /* renamed from: e  reason: collision with root package name */
    private int f12074e = -2147450625;

    /* renamed from: f  reason: collision with root package name */
    private int f12075f = 10;

    /* renamed from: g  reason: collision with root package name */
    private int f12076g = 20;

    /* renamed from: h  reason: collision with root package name */
    private int f12077h = 0;

    /* renamed from: i  reason: collision with root package name */
    private int f12078i = 0;

    /* renamed from: j  reason: collision with root package name */
    private boolean f12079j = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f12080k = false;

    private void a(Canvas canvas, int i2) {
        this.f12070a.setColor(i2);
        this.f12070a.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f12071b.reset();
        this.f12071b.setFillType(Path.FillType.EVEN_ODD);
        this.f12071b.addRoundRect(this.f12072c, Math.min(this.f12078i, this.f12076g / 2), Math.min(this.f12078i, this.f12076g / 2), Path.Direction.CW);
        canvas.drawPath(this.f12071b, this.f12070a);
    }

    private void b(Canvas canvas, int i2, int i4) {
        Rect bounds = getBounds();
        int width = bounds.width();
        int i5 = this.f12075f;
        int i6 = bounds.left + i5;
        int i7 = bounds.bottom - i5;
        int i8 = this.f12076g;
        int i9 = i7 - i8;
        this.f12072c.set(i6, i9, i6 + (((width - (i5 * 2)) * i2) / 10000), i9 + i8);
        a(canvas, i4);
    }

    private void c(Canvas canvas, int i2, int i4) {
        Rect bounds = getBounds();
        int height = bounds.height();
        int i5 = this.f12075f;
        int i6 = bounds.left + i5;
        int i7 = bounds.top + i5;
        this.f12072c.set(i6, i7, i6 + this.f12076g, i7 + (((height - (i5 * 2)) * i2) / 10000));
        a(canvas, i4);
    }

    @Override // com.facebook.drawee.drawable.c
    public Drawable d() {
        k kVar = new k();
        kVar.f12073d = this.f12073d;
        kVar.f12074e = this.f12074e;
        kVar.f12075f = this.f12075f;
        kVar.f12076g = this.f12076g;
        kVar.f12077h = this.f12077h;
        kVar.f12078i = this.f12078i;
        kVar.f12079j = this.f12079j;
        kVar.f12080k = this.f12080k;
        return kVar;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f12079j && this.f12077h == 0) {
            return;
        }
        if (this.f12080k) {
            c(canvas, 10000, this.f12073d);
            c(canvas, this.f12077h, this.f12074e);
            return;
        }
        b(canvas, 10000, this.f12073d);
        b(canvas, this.f12077h, this.f12074e);
    }

    public int e() {
        return this.f12073d;
    }

    public int f() {
        return this.f12076g;
    }

    public int g() {
        return this.f12074e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return f.c(this.f12070a.getColor());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int i2 = this.f12075f;
        rect.set(i2, i2, i2, i2);
        return this.f12075f != 0;
    }

    public boolean h() {
        return this.f12079j;
    }

    public boolean i() {
        return this.f12080k;
    }

    public int j() {
        return this.f12078i;
    }

    public void k(int i2) {
        if (this.f12073d != i2) {
            this.f12073d = i2;
            invalidateSelf();
        }
    }

    public void l(int i2) {
        if (this.f12076g != i2) {
            this.f12076g = i2;
            invalidateSelf();
        }
    }

    public void m(int i2) {
        if (this.f12074e != i2) {
            this.f12074e = i2;
            invalidateSelf();
        }
    }

    public void n(boolean z3) {
        this.f12079j = z3;
    }

    public void o(boolean z3) {
        if (this.f12080k != z3) {
            this.f12080k = z3;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i2) {
        this.f12077h = i2;
        invalidateSelf();
        return true;
    }

    public void p(int i2) {
        if (this.f12075f != i2) {
            this.f12075f = i2;
            invalidateSelf();
        }
    }

    public void q(int i2) {
        if (this.f12078i != i2) {
            this.f12078i = i2;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f12070a.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f12070a.setColorFilter(colorFilter);
    }
}
