package com.facebook.drawee.drawable;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
/* compiled from: ForwardingDrawable.java */
/* loaded from: classes2.dex */
public class h extends Drawable implements Drawable.Callback, t, s, d {

    /* renamed from: d  reason: collision with root package name */
    private static final Matrix f12057d = new Matrix();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Drawable f12058a;

    /* renamed from: b  reason: collision with root package name */
    private final e f12059b = new e();

    /* renamed from: c  reason: collision with root package name */
    protected t f12060c;

    public h(@Nullable Drawable drawable) {
        this.f12058a = drawable;
        f.e(drawable, this, this);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f12058a;
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    @Override // com.facebook.drawee.drawable.t
    public void e(Matrix matrix) {
        u(matrix);
    }

    @Override // com.facebook.drawee.drawable.d
    public Drawable f(@Nullable Drawable drawable) {
        return w(drawable);
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        Drawable drawable = this.f12058a;
        if (drawable == null) {
            return super.getConstantState();
        }
        return drawable.getConstantState();
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable getCurrent() {
        return this.f12058a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f12058a;
        if (drawable == null) {
            return super.getIntrinsicHeight();
        }
        return drawable.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f12058a;
        if (drawable == null) {
            return super.getIntrinsicWidth();
        }
        return drawable.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f12058a;
        if (drawable == null) {
            return 0;
        }
        return drawable.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        Drawable drawable = this.f12058a;
        if (drawable == null) {
            return super.getPadding(rect);
        }
        return drawable.getPadding(rect);
    }

    @Override // com.facebook.drawee.drawable.s
    public void i(t tVar) {
        this.f12060c = tVar;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f12058a;
        if (drawable == null) {
            return false;
        }
        return drawable.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f12058a;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // com.facebook.drawee.drawable.t
    public void o(RectF rectF) {
        t tVar = this.f12060c;
        if (tVar != null) {
            tVar.o(rectF);
        } else {
            rectF.set(getBounds());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f12058a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i2) {
        Drawable drawable = this.f12058a;
        if (drawable == null) {
            return super.onLevelChange(i2);
        }
        return drawable.setLevel(i2);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f12058a;
        if (drawable == null) {
            return super.onStateChange(iArr);
        }
        return drawable.setState(iArr);
    }

    @Override // com.facebook.drawee.drawable.d
    @Nullable
    public Drawable q() {
        return getCurrent();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j4) {
        scheduleSelf(runnable, j4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f12059b.b(i2);
        Drawable drawable = this.f12058a;
        if (drawable != null) {
            drawable.setAlpha(i2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f12059b.c(colorFilter);
        Drawable drawable = this.f12058a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z3) {
        this.f12059b.d(z3);
        Drawable drawable = this.f12058a;
        if (drawable != null) {
            drawable.setDither(z3);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z3) {
        this.f12059b.e(z3);
        Drawable drawable = this.f12058a;
        if (drawable != null) {
            drawable.setFilterBitmap(z3);
        }
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void setHotspot(float f4, float f5) {
        Drawable drawable = this.f12058a;
        if (drawable != null) {
            drawable.setHotspot(f4, f5);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z3, boolean z4) {
        boolean visible = super.setVisible(z3, z4);
        Drawable drawable = this.f12058a;
        return drawable == null ? visible : drawable.setVisible(z3, z4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void u(Matrix matrix) {
        t tVar = this.f12060c;
        if (tVar != null) {
            tVar.e(matrix);
        } else {
            matrix.reset();
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    public void v(RectF rectF) {
        Matrix matrix = f12057d;
        u(matrix);
        rectF.set(getBounds());
        matrix.mapRect(rectF);
    }

    @Nullable
    public Drawable w(@Nullable Drawable drawable) {
        Drawable x3 = x(drawable);
        invalidateSelf();
        return x3;
    }

    @Nullable
    protected Drawable x(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f12058a;
        f.e(drawable2, null, null);
        f.e(drawable, null, null);
        f.f(drawable, this.f12059b);
        f.b(drawable, this);
        f.e(drawable, this, this);
        this.f12058a = drawable;
        return drawable2;
    }
}
