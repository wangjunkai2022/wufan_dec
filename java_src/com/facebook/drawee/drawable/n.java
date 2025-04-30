package com.facebook.drawee.drawable;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import com.facebook.common.internal.VisibleForTesting;
import java.util.Arrays;
import javax.annotation.Nullable;
/* compiled from: RoundedColorDrawable.java */
/* loaded from: classes.dex */
public class n extends Drawable implements l {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f12081a;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final float[] f12082b;
    @VisibleForTesting
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    float[] f12083c;
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    final Paint f12084d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f12085e;

    /* renamed from: f  reason: collision with root package name */
    private float f12086f;

    /* renamed from: g  reason: collision with root package name */
    private float f12087g;

    /* renamed from: h  reason: collision with root package name */
    private int f12088h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f12089i;
    @VisibleForTesting

    /* renamed from: j  reason: collision with root package name */
    final Path f12090j;
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    final Path f12091k;

    /* renamed from: l  reason: collision with root package name */
    private int f12092l;

    /* renamed from: m  reason: collision with root package name */
    private final RectF f12093m;

    /* renamed from: n  reason: collision with root package name */
    private int f12094n;

    public n(int i2) {
        this.f12081a = new float[8];
        this.f12082b = new float[8];
        this.f12084d = new Paint(1);
        this.f12085e = false;
        this.f12086f = 0.0f;
        this.f12087g = 0.0f;
        this.f12088h = 0;
        this.f12089i = false;
        this.f12090j = new Path();
        this.f12091k = new Path();
        this.f12092l = 0;
        this.f12093m = new RectF();
        this.f12094n = 255;
        f(i2);
    }

    @TargetApi(11)
    public static n d(ColorDrawable colorDrawable) {
        return new n(colorDrawable.getColor());
    }

    private void i() {
        float[] fArr;
        float[] fArr2;
        this.f12090j.reset();
        this.f12091k.reset();
        this.f12093m.set(getBounds());
        RectF rectF = this.f12093m;
        float f4 = this.f12086f;
        rectF.inset(f4 / 2.0f, f4 / 2.0f);
        int i2 = 0;
        if (this.f12085e) {
            this.f12091k.addCircle(this.f12093m.centerX(), this.f12093m.centerY(), Math.min(this.f12093m.width(), this.f12093m.height()) / 2.0f, Path.Direction.CW);
        } else {
            int i4 = 0;
            while (true) {
                fArr = this.f12082b;
                if (i4 >= fArr.length) {
                    break;
                }
                fArr[i4] = (this.f12081a[i4] + this.f12087g) - (this.f12086f / 2.0f);
                i4++;
            }
            this.f12091k.addRoundRect(this.f12093m, fArr, Path.Direction.CW);
        }
        RectF rectF2 = this.f12093m;
        float f5 = this.f12086f;
        rectF2.inset((-f5) / 2.0f, (-f5) / 2.0f);
        float f6 = this.f12087g + (this.f12089i ? this.f12086f : 0.0f);
        this.f12093m.inset(f6, f6);
        if (this.f12085e) {
            this.f12090j.addCircle(this.f12093m.centerX(), this.f12093m.centerY(), Math.min(this.f12093m.width(), this.f12093m.height()) / 2.0f, Path.Direction.CW);
        } else if (this.f12089i) {
            if (this.f12083c == null) {
                this.f12083c = new float[8];
            }
            while (true) {
                fArr2 = this.f12083c;
                if (i2 >= fArr2.length) {
                    break;
                }
                fArr2[i2] = this.f12081a[i2] - this.f12086f;
                i2++;
            }
            this.f12090j.addRoundRect(this.f12093m, fArr2, Path.Direction.CW);
        } else {
            this.f12090j.addRoundRect(this.f12093m, this.f12081a, Path.Direction.CW);
        }
        float f7 = -f6;
        this.f12093m.inset(f7, f7);
    }

    @Override // com.facebook.drawee.drawable.l
    public void a(int i2, float f4) {
        if (this.f12088h != i2) {
            this.f12088h = i2;
            invalidateSelf();
        }
        if (this.f12086f != f4) {
            this.f12086f = f4;
            i();
            invalidateSelf();
        }
    }

    @Override // com.facebook.drawee.drawable.l
    public boolean b() {
        return this.f12089i;
    }

    @Override // com.facebook.drawee.drawable.l
    public void c(boolean z3) {
        this.f12085e = z3;
        i();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f12084d.setColor(f.d(this.f12092l, this.f12094n));
        this.f12084d.setStyle(Paint.Style.FILL);
        canvas.drawPath(this.f12090j, this.f12084d);
        if (this.f12086f != 0.0f) {
            this.f12084d.setColor(f.d(this.f12088h, this.f12094n));
            this.f12084d.setStyle(Paint.Style.STROKE);
            this.f12084d.setStrokeWidth(this.f12086f);
            canvas.drawPath(this.f12091k, this.f12084d);
        }
    }

    public int e() {
        return this.f12092l;
    }

    public void f(int i2) {
        if (this.f12092l != i2) {
            this.f12092l = i2;
            invalidateSelf();
        }
    }

    @Override // com.facebook.drawee.drawable.l
    public void g(float f4) {
        if (this.f12087g != f4) {
            this.f12087g = f4;
            i();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f12094n;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return f.c(f.d(this.f12092l, this.f12094n));
    }

    @Override // com.facebook.drawee.drawable.l
    public void h(float f4) {
        com.facebook.common.internal.h.e(f4 >= 0.0f, "radius should be non negative");
        Arrays.fill(this.f12081a, f4);
        i();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.l
    public boolean j() {
        return this.f12085e;
    }

    @Override // com.facebook.drawee.drawable.l
    public int k() {
        return this.f12088h;
    }

    @Override // com.facebook.drawee.drawable.l
    public float[] l() {
        return this.f12081a;
    }

    @Override // com.facebook.drawee.drawable.l
    public void m(boolean z3) {
        if (this.f12089i != z3) {
            this.f12089i = z3;
            i();
            invalidateSelf();
        }
    }

    @Override // com.facebook.drawee.drawable.l
    public float n() {
        return this.f12086f;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        i();
    }

    @Override // com.facebook.drawee.drawable.l
    public float r() {
        return this.f12087g;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (i2 != this.f12094n) {
            this.f12094n = i2;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // com.facebook.drawee.drawable.l
    public void t(float[] fArr) {
        if (fArr == null) {
            Arrays.fill(this.f12081a, 0.0f);
        } else {
            com.facebook.common.internal.h.e(fArr.length == 8, "radii should have exactly 8 values");
            System.arraycopy(fArr, 0, this.f12081a, 0, 8);
        }
        i();
        invalidateSelf();
    }

    public n(float[] fArr, int i2) {
        this(i2);
        t(fArr);
    }

    public n(float f4, int i2) {
        this(i2);
        h(f4);
    }
}
