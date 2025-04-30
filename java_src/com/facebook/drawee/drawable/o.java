package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.facebook.common.internal.VisibleForTesting;
import java.util.Arrays;
/* compiled from: RoundedDrawable.java */
/* loaded from: classes2.dex */
public abstract class o extends Drawable implements l, s {
    @Nullable
    private t B;

    /* renamed from: a  reason: collision with root package name */
    private final Drawable f12095a;
    @Nullable
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    float[] f12105k;
    @Nullable
    @VisibleForTesting

    /* renamed from: p  reason: collision with root package name */
    RectF f12110p;
    @Nullable
    @VisibleForTesting

    /* renamed from: v  reason: collision with root package name */
    Matrix f12116v;
    @Nullable
    @VisibleForTesting

    /* renamed from: w  reason: collision with root package name */
    Matrix f12117w;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f12096b = false;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f12097c = false;

    /* renamed from: d  reason: collision with root package name */
    protected float f12098d = 0.0f;

    /* renamed from: e  reason: collision with root package name */
    protected final Path f12099e = new Path();

    /* renamed from: f  reason: collision with root package name */
    protected boolean f12100f = true;

    /* renamed from: g  reason: collision with root package name */
    protected int f12101g = 0;

    /* renamed from: h  reason: collision with root package name */
    protected final Path f12102h = new Path();

    /* renamed from: i  reason: collision with root package name */
    private final float[] f12103i = new float[8];
    @VisibleForTesting

    /* renamed from: j  reason: collision with root package name */
    final float[] f12104j = new float[8];
    @VisibleForTesting

    /* renamed from: l  reason: collision with root package name */
    final RectF f12106l = new RectF();
    @VisibleForTesting

    /* renamed from: m  reason: collision with root package name */
    final RectF f12107m = new RectF();
    @VisibleForTesting

    /* renamed from: n  reason: collision with root package name */
    final RectF f12108n = new RectF();
    @VisibleForTesting

    /* renamed from: o  reason: collision with root package name */
    final RectF f12109o = new RectF();
    @VisibleForTesting

    /* renamed from: q  reason: collision with root package name */
    final Matrix f12111q = new Matrix();
    @VisibleForTesting

    /* renamed from: r  reason: collision with root package name */
    final Matrix f12112r = new Matrix();
    @VisibleForTesting

    /* renamed from: s  reason: collision with root package name */
    final Matrix f12113s = new Matrix();
    @VisibleForTesting

    /* renamed from: t  reason: collision with root package name */
    final Matrix f12114t = new Matrix();
    @VisibleForTesting

    /* renamed from: u  reason: collision with root package name */
    final Matrix f12115u = new Matrix();
    @VisibleForTesting

    /* renamed from: x  reason: collision with root package name */
    final Matrix f12118x = new Matrix();

    /* renamed from: y  reason: collision with root package name */
    private float f12119y = 0.0f;

    /* renamed from: z  reason: collision with root package name */
    private boolean f12120z = false;
    private boolean A = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(Drawable drawable) {
        this.f12095a = drawable;
    }

    @Override // com.facebook.drawee.drawable.l
    public void a(int i2, float f4) {
        if (this.f12101g == i2 && this.f12098d == f4) {
            return;
        }
        this.f12101g = i2;
        this.f12098d = f4;
        this.A = true;
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.l
    public boolean b() {
        return this.f12120z;
    }

    @Override // com.facebook.drawee.drawable.l
    public void c(boolean z3) {
        this.f12096b = z3;
        this.A = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void clearColorFilter() {
        this.f12095a.clearColorFilter();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public boolean d() {
        return this.f12096b || this.f12097c || this.f12098d > 0.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("RoundedDrawable#draw");
        }
        this.f12095a.draw(canvas);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e() {
        float[] fArr;
        if (this.A) {
            this.f12102h.reset();
            RectF rectF = this.f12106l;
            float f4 = this.f12098d;
            rectF.inset(f4 / 2.0f, f4 / 2.0f);
            if (this.f12096b) {
                this.f12102h.addCircle(this.f12106l.centerX(), this.f12106l.centerY(), Math.min(this.f12106l.width(), this.f12106l.height()) / 2.0f, Path.Direction.CW);
            } else {
                int i2 = 0;
                while (true) {
                    fArr = this.f12104j;
                    if (i2 >= fArr.length) {
                        break;
                    }
                    fArr[i2] = (this.f12103i[i2] + this.f12119y) - (this.f12098d / 2.0f);
                    i2++;
                }
                this.f12102h.addRoundRect(this.f12106l, fArr, Path.Direction.CW);
            }
            RectF rectF2 = this.f12106l;
            float f5 = this.f12098d;
            rectF2.inset((-f5) / 2.0f, (-f5) / 2.0f);
            this.f12099e.reset();
            float f6 = this.f12119y + (this.f12120z ? this.f12098d : 0.0f);
            this.f12106l.inset(f6, f6);
            if (this.f12096b) {
                this.f12099e.addCircle(this.f12106l.centerX(), this.f12106l.centerY(), Math.min(this.f12106l.width(), this.f12106l.height()) / 2.0f, Path.Direction.CW);
            } else if (this.f12120z) {
                if (this.f12105k == null) {
                    this.f12105k = new float[8];
                }
                for (int i4 = 0; i4 < this.f12104j.length; i4++) {
                    this.f12105k[i4] = this.f12103i[i4] - this.f12098d;
                }
                this.f12099e.addRoundRect(this.f12106l, this.f12105k, Path.Direction.CW);
            } else {
                this.f12099e.addRoundRect(this.f12106l, this.f12103i, Path.Direction.CW);
            }
            float f7 = -f6;
            this.f12106l.inset(f7, f7);
            this.f12099e.setFillType(Path.FillType.WINDING);
            this.A = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void f() {
        Matrix matrix;
        t tVar = this.B;
        if (tVar != null) {
            tVar.e(this.f12113s);
            this.B.o(this.f12106l);
        } else {
            this.f12113s.reset();
            this.f12106l.set(getBounds());
        }
        this.f12108n.set(0.0f, 0.0f, getIntrinsicWidth(), getIntrinsicHeight());
        this.f12109o.set(this.f12095a.getBounds());
        this.f12111q.setRectToRect(this.f12108n, this.f12109o, Matrix.ScaleToFit.FILL);
        if (this.f12120z) {
            RectF rectF = this.f12110p;
            if (rectF == null) {
                this.f12110p = new RectF(this.f12106l);
            } else {
                rectF.set(this.f12106l);
            }
            RectF rectF2 = this.f12110p;
            float f4 = this.f12098d;
            rectF2.inset(f4, f4);
            if (this.f12116v == null) {
                this.f12116v = new Matrix();
            }
            this.f12116v.setRectToRect(this.f12106l, this.f12110p, Matrix.ScaleToFit.FILL);
        } else {
            Matrix matrix2 = this.f12116v;
            if (matrix2 != null) {
                matrix2.reset();
            }
        }
        if (!this.f12113s.equals(this.f12114t) || !this.f12111q.equals(this.f12112r) || ((matrix = this.f12116v) != null && !matrix.equals(this.f12117w))) {
            this.f12100f = true;
            this.f12113s.invert(this.f12115u);
            this.f12118x.set(this.f12113s);
            if (this.f12120z) {
                this.f12118x.postConcat(this.f12116v);
            }
            this.f12118x.preConcat(this.f12111q);
            this.f12114t.set(this.f12113s);
            this.f12112r.set(this.f12111q);
            if (this.f12120z) {
                Matrix matrix3 = this.f12117w;
                if (matrix3 == null) {
                    this.f12117w = new Matrix(this.f12116v);
                } else {
                    matrix3.set(this.f12116v);
                }
            } else {
                Matrix matrix4 = this.f12117w;
                if (matrix4 != null) {
                    matrix4.reset();
                }
            }
        }
        if (this.f12106l.equals(this.f12107m)) {
            return;
        }
        this.A = true;
        this.f12107m.set(this.f12106l);
    }

    @Override // com.facebook.drawee.drawable.l
    public void g(float f4) {
        if (this.f12119y != f4) {
            this.f12119y = f4;
            this.A = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(api = 19)
    public int getAlpha() {
        return this.f12095a.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    @RequiresApi(api = 21)
    public ColorFilter getColorFilter() {
        return this.f12095a.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f12095a.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f12095a.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f12095a.getOpacity();
    }

    @Override // com.facebook.drawee.drawable.l
    public void h(float f4) {
        com.facebook.common.internal.h.o(f4 >= 0.0f);
        Arrays.fill(this.f12103i, f4);
        this.f12097c = f4 != 0.0f;
        this.A = true;
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.s
    public void i(@Nullable t tVar) {
        this.B = tVar;
    }

    @Override // com.facebook.drawee.drawable.l
    public boolean j() {
        return this.f12096b;
    }

    @Override // com.facebook.drawee.drawable.l
    public int k() {
        return this.f12101g;
    }

    @Override // com.facebook.drawee.drawable.l
    public float[] l() {
        return this.f12103i;
    }

    @Override // com.facebook.drawee.drawable.l
    public void m(boolean z3) {
        if (this.f12120z != z3) {
            this.f12120z = z3;
            this.A = true;
            invalidateSelf();
        }
    }

    @Override // com.facebook.drawee.drawable.l
    public float n() {
        return this.f12098d;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f12095a.setBounds(rect);
    }

    @Override // com.facebook.drawee.drawable.l
    public float r() {
        return this.f12119y;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f12095a.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(int i2, @NonNull PorterDuff.Mode mode) {
        this.f12095a.setColorFilter(i2, mode);
    }

    @Override // com.facebook.drawee.drawable.l
    public void t(float[] fArr) {
        if (fArr == null) {
            Arrays.fill(this.f12103i, 0.0f);
            this.f12097c = false;
        } else {
            com.facebook.common.internal.h.e(fArr.length == 8, "radii should have exactly 8 values");
            System.arraycopy(fArr, 0, this.f12103i, 0, 8);
            this.f12097c = false;
            for (int i2 = 0; i2 < 8; i2++) {
                this.f12097c |= fArr[i2] > 0.0f;
            }
        }
        this.A = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f12095a.setColorFilter(colorFilter);
    }
}
