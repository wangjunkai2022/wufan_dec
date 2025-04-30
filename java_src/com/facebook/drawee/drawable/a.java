package com.facebook.drawee.drawable;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import javax.annotation.Nullable;
/* compiled from: ArrayDrawable.java */
/* loaded from: classes.dex */
public class a extends Drawable implements Drawable.Callback, t, s {

    /* renamed from: a  reason: collision with root package name */
    private t f12021a;

    /* renamed from: c  reason: collision with root package name */
    private final Drawable[] f12023c;

    /* renamed from: d  reason: collision with root package name */
    private final d[] f12024d;

    /* renamed from: b  reason: collision with root package name */
    private final e f12022b = new e();

    /* renamed from: e  reason: collision with root package name */
    private final Rect f12025e = new Rect();

    /* renamed from: f  reason: collision with root package name */
    private boolean f12026f = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f12027g = false;

    /* renamed from: h  reason: collision with root package name */
    private boolean f12028h = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArrayDrawable.java */
    /* renamed from: com.facebook.drawee.drawable.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0068a implements d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f12029a;

        C0068a(int i2) {
            this.f12029a = i2;
        }

        @Override // com.facebook.drawee.drawable.d
        public Drawable f(Drawable drawable) {
            return a.this.f(this.f12029a, drawable);
        }

        @Override // com.facebook.drawee.drawable.d
        public Drawable q() {
            return a.this.b(this.f12029a);
        }
    }

    public a(Drawable[] drawableArr) {
        int i2 = 0;
        com.facebook.common.internal.h.i(drawableArr);
        this.f12023c = drawableArr;
        while (true) {
            Drawable[] drawableArr2 = this.f12023c;
            if (i2 < drawableArr2.length) {
                f.e(drawableArr2[i2], this, this);
                i2++;
            } else {
                this.f12024d = new d[drawableArr2.length];
                return;
            }
        }
    }

    private d a(int i2) {
        return new C0068a(i2);
    }

    @Nullable
    public Drawable b(int i2) {
        com.facebook.common.internal.h.d(i2 >= 0);
        com.facebook.common.internal.h.d(i2 < this.f12023c.length);
        return this.f12023c[i2];
    }

    public d c(int i2) {
        com.facebook.common.internal.h.d(i2 >= 0);
        com.facebook.common.internal.h.d(i2 < this.f12024d.length);
        d[] dVarArr = this.f12024d;
        if (dVarArr[i2] == null) {
            dVarArr[i2] = a(i2);
        }
        return this.f12024d[i2];
    }

    public int d() {
        return this.f12023c.length;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int i2 = 0;
        while (true) {
            Drawable[] drawableArr = this.f12023c;
            if (i2 >= drawableArr.length) {
                return;
            }
            Drawable drawable = drawableArr[i2];
            if (drawable != null) {
                drawable.draw(canvas);
            }
            i2++;
        }
    }

    @Override // com.facebook.drawee.drawable.t
    public void e(Matrix matrix) {
        t tVar = this.f12021a;
        if (tVar != null) {
            tVar.e(matrix);
        } else {
            matrix.reset();
        }
    }

    @Nullable
    public Drawable f(int i2, @Nullable Drawable drawable) {
        com.facebook.common.internal.h.d(i2 >= 0);
        com.facebook.common.internal.h.d(i2 < this.f12023c.length);
        Drawable drawable2 = this.f12023c[i2];
        if (drawable != drawable2) {
            if (drawable != null && this.f12028h) {
                drawable.mutate();
            }
            f.e(this.f12023c[i2], null, null);
            f.e(drawable, null, null);
            f.f(drawable, this.f12022b);
            f.b(drawable, this);
            f.e(drawable, this, this);
            this.f12027g = false;
            this.f12023c[i2] = drawable;
            invalidateSelf();
        }
        return drawable2;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        int i2 = 0;
        int i4 = -1;
        while (true) {
            Drawable[] drawableArr = this.f12023c;
            if (i2 >= drawableArr.length) {
                break;
            }
            Drawable drawable = drawableArr[i2];
            if (drawable != null) {
                i4 = Math.max(i4, drawable.getIntrinsicHeight());
            }
            i2++;
        }
        if (i4 > 0) {
            return i4;
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        int i2 = 0;
        int i4 = -1;
        while (true) {
            Drawable[] drawableArr = this.f12023c;
            if (i2 >= drawableArr.length) {
                break;
            }
            Drawable drawable = drawableArr[i2];
            if (drawable != null) {
                i4 = Math.max(i4, drawable.getIntrinsicWidth());
            }
            i2++;
        }
        if (i4 > 0) {
            return i4;
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (this.f12023c.length == 0) {
            return -2;
        }
        int i2 = -1;
        int i4 = 1;
        while (true) {
            Drawable[] drawableArr = this.f12023c;
            if (i4 >= drawableArr.length) {
                return i2;
            }
            Drawable drawable = drawableArr[i4];
            if (drawable != null) {
                i2 = Drawable.resolveOpacity(i2, drawable.getOpacity());
            }
            i4++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int i2 = 0;
        rect.left = 0;
        rect.top = 0;
        rect.right = 0;
        rect.bottom = 0;
        Rect rect2 = this.f12025e;
        while (true) {
            Drawable[] drawableArr = this.f12023c;
            if (i2 >= drawableArr.length) {
                return true;
            }
            Drawable drawable = drawableArr[i2];
            if (drawable != null) {
                drawable.getPadding(rect2);
                rect.left = Math.max(rect.left, rect2.left);
                rect.top = Math.max(rect.top, rect2.top);
                rect.right = Math.max(rect.right, rect2.right);
                rect.bottom = Math.max(rect.bottom, rect2.bottom);
            }
            i2++;
        }
    }

    @Override // com.facebook.drawee.drawable.s
    public void i(t tVar) {
        this.f12021a = tVar;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (!this.f12027g) {
            this.f12026f = false;
            int i2 = 0;
            while (true) {
                Drawable[] drawableArr = this.f12023c;
                boolean z3 = true;
                if (i2 >= drawableArr.length) {
                    break;
                }
                Drawable drawable = drawableArr[i2];
                boolean z4 = this.f12026f;
                if (drawable == null || !drawable.isStateful()) {
                    z3 = false;
                }
                this.f12026f = z4 | z3;
                i2++;
            }
            this.f12027g = true;
        }
        return this.f12026f;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        int i2 = 0;
        while (true) {
            Drawable[] drawableArr = this.f12023c;
            if (i2 < drawableArr.length) {
                Drawable drawable = drawableArr[i2];
                if (drawable != null) {
                    drawable.mutate();
                }
                i2++;
            } else {
                this.f12028h = true;
                return this;
            }
        }
    }

    @Override // com.facebook.drawee.drawable.t
    public void o(RectF rectF) {
        t tVar = this.f12021a;
        if (tVar != null) {
            tVar.o(rectF);
        } else {
            rectF.set(getBounds());
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        int i2 = 0;
        while (true) {
            Drawable[] drawableArr = this.f12023c;
            if (i2 >= drawableArr.length) {
                return;
            }
            Drawable drawable = drawableArr[i2];
            if (drawable != null) {
                drawable.setBounds(rect);
            }
            i2++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i2) {
        int i4 = 0;
        boolean z3 = false;
        while (true) {
            Drawable[] drawableArr = this.f12023c;
            if (i4 >= drawableArr.length) {
                return z3;
            }
            Drawable drawable = drawableArr[i4];
            if (drawable != null && drawable.setLevel(i2)) {
                z3 = true;
            }
            i4++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int i2 = 0;
        boolean z3 = false;
        while (true) {
            Drawable[] drawableArr = this.f12023c;
            if (i2 >= drawableArr.length) {
                return z3;
            }
            Drawable drawable = drawableArr[i2];
            if (drawable != null && drawable.setState(iArr)) {
                z3 = true;
            }
            i2++;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j4) {
        scheduleSelf(runnable, j4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f12022b.b(i2);
        int i4 = 0;
        while (true) {
            Drawable[] drawableArr = this.f12023c;
            if (i4 >= drawableArr.length) {
                return;
            }
            Drawable drawable = drawableArr[i4];
            if (drawable != null) {
                drawable.setAlpha(i2);
            }
            i4++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f12022b.c(colorFilter);
        int i2 = 0;
        while (true) {
            Drawable[] drawableArr = this.f12023c;
            if (i2 >= drawableArr.length) {
                return;
            }
            Drawable drawable = drawableArr[i2];
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
            i2++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z3) {
        this.f12022b.d(z3);
        int i2 = 0;
        while (true) {
            Drawable[] drawableArr = this.f12023c;
            if (i2 >= drawableArr.length) {
                return;
            }
            Drawable drawable = drawableArr[i2];
            if (drawable != null) {
                drawable.setDither(z3);
            }
            i2++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z3) {
        this.f12022b.e(z3);
        int i2 = 0;
        while (true) {
            Drawable[] drawableArr = this.f12023c;
            if (i2 >= drawableArr.length) {
                return;
            }
            Drawable drawable = drawableArr[i2];
            if (drawable != null) {
                drawable.setFilterBitmap(z3);
            }
            i2++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void setHotspot(float f4, float f5) {
        int i2 = 0;
        while (true) {
            Drawable[] drawableArr = this.f12023c;
            if (i2 >= drawableArr.length) {
                return;
            }
            Drawable drawable = drawableArr[i2];
            if (drawable != null) {
                drawable.setHotspot(f4, f5);
            }
            i2++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z3, boolean z4) {
        boolean visible = super.setVisible(z3, z4);
        int i2 = 0;
        while (true) {
            Drawable[] drawableArr = this.f12023c;
            if (i2 >= drawableArr.length) {
                return visible;
            }
            Drawable drawable = drawableArr[i2];
            if (drawable != null) {
                drawable.setVisible(z3, z4);
            }
            i2++;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
