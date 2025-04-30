package com.google.android.material.floatingactionbutton;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.shape.m;
import com.google.android.material.shape.n;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BorderDrawable.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class c extends Drawable {

    /* renamed from: q  reason: collision with root package name */
    private static final float f14942q = 1.3333f;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final Paint f14944b;
    @Dimension

    /* renamed from: h  reason: collision with root package name */
    float f14950h;
    @ColorInt

    /* renamed from: i  reason: collision with root package name */
    private int f14951i;
    @ColorInt

    /* renamed from: j  reason: collision with root package name */
    private int f14952j;
    @ColorInt

    /* renamed from: k  reason: collision with root package name */
    private int f14953k;
    @ColorInt

    /* renamed from: l  reason: collision with root package name */
    private int f14954l;
    @ColorInt

    /* renamed from: m  reason: collision with root package name */
    private int f14955m;

    /* renamed from: o  reason: collision with root package name */
    private m f14957o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private ColorStateList f14958p;

    /* renamed from: a  reason: collision with root package name */
    private final n f14943a = n.k();

    /* renamed from: c  reason: collision with root package name */
    private final Path f14945c = new Path();

    /* renamed from: d  reason: collision with root package name */
    private final Rect f14946d = new Rect();

    /* renamed from: e  reason: collision with root package name */
    private final RectF f14947e = new RectF();

    /* renamed from: f  reason: collision with root package name */
    private final RectF f14948f = new RectF();

    /* renamed from: g  reason: collision with root package name */
    private final b f14949g = new b();

    /* renamed from: n  reason: collision with root package name */
    private boolean f14956n = true;

    /* compiled from: BorderDrawable.java */
    /* loaded from: classes2.dex */
    private class b extends Drawable.ConstantState {
        private b() {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return c.this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(m mVar) {
        this.f14957o = mVar;
        Paint paint = new Paint(1);
        this.f14944b = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    @NonNull
    private Shader a() {
        Rect rect = this.f14946d;
        copyBounds(rect);
        float height = this.f14950h / rect.height();
        return new LinearGradient(0.0f, rect.top, 0.0f, rect.bottom, new int[]{ColorUtils.compositeColors(this.f14951i, this.f14955m), ColorUtils.compositeColors(this.f14952j, this.f14955m), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.f14952j, 0), this.f14955m), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.f14954l, 0), this.f14955m), ColorUtils.compositeColors(this.f14954l, this.f14955m), ColorUtils.compositeColors(this.f14953k, this.f14955m)}, new float[]{0.0f, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP);
    }

    @NonNull
    protected RectF b() {
        this.f14948f.set(getBounds());
        return this.f14948f;
    }

    public m c() {
        return this.f14957o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f14955m = colorStateList.getColorForState(getState(), this.f14955m);
        }
        this.f14958p = colorStateList;
        this.f14956n = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.f14956n) {
            this.f14944b.setShader(a());
            this.f14956n = false;
        }
        float strokeWidth = this.f14944b.getStrokeWidth() / 2.0f;
        copyBounds(this.f14946d);
        this.f14947e.set(this.f14946d);
        float min = Math.min(this.f14957o.r().a(b()), this.f14947e.width() / 2.0f);
        if (this.f14957o.u(b())) {
            this.f14947e.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(this.f14947e, min, min, this.f14944b);
        }
    }

    public void e(@Dimension float f4) {
        if (this.f14950h != f4) {
            this.f14950h = f4;
            this.f14944b.setStrokeWidth(f4 * f14942q);
            this.f14956n = true;
            invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(@ColorInt int i2, @ColorInt int i4, @ColorInt int i5, @ColorInt int i6) {
        this.f14951i = i2;
        this.f14952j = i4;
        this.f14953k = i5;
        this.f14954l = i6;
    }

    public void g(m mVar) {
        this.f14957o = mVar;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f14949g;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f14950h > 0.0f ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.f14957o.u(b())) {
            outline.setRoundRect(getBounds(), this.f14957o.r().a(b()));
            return;
        }
        copyBounds(this.f14946d);
        this.f14947e.set(this.f14946d);
        this.f14943a.d(this.f14957o, 1.0f, this.f14947e, this.f14945c);
        if (this.f14945c.isConvex()) {
            outline.setConvexPath(this.f14945c);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        if (this.f14957o.u(b())) {
            int round = Math.round(this.f14950h);
            rect.set(round, round, round, round);
            return true;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f14958p;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f14956n = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.f14958p;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.f14955m)) != this.f14955m) {
            this.f14956n = true;
            this.f14955m = colorForState;
        }
        if (this.f14956n) {
            invalidateSelf();
        }
        return this.f14956n;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i2) {
        this.f14944b.setAlpha(i2);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f14944b.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
