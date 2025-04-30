package com.google.android.material.shadow;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.appcompat.graphics.drawable.DrawableWrapper;
import androidx.core.content.ContextCompat;
import com.google.android.material.R;
/* compiled from: ShadowDrawableWrapper.java */
@Deprecated
/* loaded from: classes2.dex */
public class a extends DrawableWrapper {

    /* renamed from: r  reason: collision with root package name */
    static final double f15530r = Math.cos(Math.toRadians(45.0d));

    /* renamed from: s  reason: collision with root package name */
    static final float f15531s = 1.5f;

    /* renamed from: t  reason: collision with root package name */
    static final float f15532t = 0.25f;

    /* renamed from: u  reason: collision with root package name */
    static final float f15533u = 0.5f;

    /* renamed from: v  reason: collision with root package name */
    static final float f15534v = 1.0f;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    final Paint f15535b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    final Paint f15536c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    final RectF f15537d;

    /* renamed from: e  reason: collision with root package name */
    float f15538e;

    /* renamed from: f  reason: collision with root package name */
    Path f15539f;

    /* renamed from: g  reason: collision with root package name */
    float f15540g;

    /* renamed from: h  reason: collision with root package name */
    float f15541h;

    /* renamed from: i  reason: collision with root package name */
    float f15542i;

    /* renamed from: j  reason: collision with root package name */
    float f15543j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f15544k;

    /* renamed from: l  reason: collision with root package name */
    private final int f15545l;

    /* renamed from: m  reason: collision with root package name */
    private final int f15546m;

    /* renamed from: n  reason: collision with root package name */
    private final int f15547n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f15548o;

    /* renamed from: p  reason: collision with root package name */
    private float f15549p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f15550q;

    public a(Context context, Drawable drawable, float f4, float f5, float f6) {
        super(drawable);
        this.f15544k = true;
        this.f15548o = true;
        this.f15550q = false;
        this.f15545l = ContextCompat.getColor(context, R.color.design_fab_shadow_start_color);
        this.f15546m = ContextCompat.getColor(context, R.color.design_fab_shadow_mid_color);
        this.f15547n = ContextCompat.getColor(context, R.color.design_fab_shadow_end_color);
        Paint paint = new Paint(5);
        this.f15535b = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f15538e = Math.round(f4);
        this.f15537d = new RectF();
        Paint paint2 = new Paint(paint);
        this.f15536c = paint2;
        paint2.setAntiAlias(false);
        p(f5, f6);
    }

    private void a(@NonNull Rect rect) {
        float f4 = this.f15541h;
        float f5 = f15531s * f4;
        this.f15537d.set(rect.left + f4, rect.top + f5, rect.right - f4, rect.bottom - f5);
        Drawable wrappedDrawable = getWrappedDrawable();
        RectF rectF = this.f15537d;
        wrappedDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        b();
    }

    private void b() {
        float f4 = this.f15538e;
        RectF rectF = new RectF(-f4, -f4, f4, f4);
        RectF rectF2 = new RectF(rectF);
        float f5 = this.f15542i;
        rectF2.inset(-f5, -f5);
        Path path = this.f15539f;
        if (path == null) {
            this.f15539f = new Path();
        } else {
            path.reset();
        }
        this.f15539f.setFillType(Path.FillType.EVEN_ODD);
        this.f15539f.moveTo(-this.f15538e, 0.0f);
        this.f15539f.rLineTo(-this.f15542i, 0.0f);
        this.f15539f.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f15539f.arcTo(rectF, 270.0f, -90.0f, false);
        this.f15539f.close();
        float f6 = -rectF2.top;
        if (f6 > 0.0f) {
            float f7 = this.f15538e / f6;
            this.f15535b.setShader(new RadialGradient(0.0f, 0.0f, f6, new int[]{0, this.f15545l, this.f15546m, this.f15547n}, new float[]{0.0f, f7, ((1.0f - f7) / 2.0f) + f7, 1.0f}, Shader.TileMode.CLAMP));
        }
        this.f15536c.setShader(new LinearGradient(0.0f, rectF.top, 0.0f, rectF2.top, new int[]{this.f15545l, this.f15546m, this.f15547n}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f15536c.setAntiAlias(false);
    }

    public static float c(float f4, float f5, boolean z3) {
        if (z3) {
            double d4 = f4;
            double d5 = f5;
            Double.isNaN(d5);
            Double.isNaN(d4);
            return (float) (d4 + ((1.0d - f15530r) * d5));
        }
        return f4;
    }

    public static float d(float f4, float f5, boolean z3) {
        if (z3) {
            double d4 = f4 * f15531s;
            double d5 = f5;
            Double.isNaN(d5);
            Double.isNaN(d4);
            return (float) (d4 + ((1.0d - f15530r) * d5));
        }
        return f4 * f15531s;
    }

    private void e(@NonNull Canvas canvas) {
        int i2;
        float f4;
        int i4;
        float f5;
        float f6;
        float f7;
        int save = canvas.save();
        canvas.rotate(this.f15549p, this.f15537d.centerX(), this.f15537d.centerY());
        float f8 = this.f15538e;
        float f9 = (-f8) - this.f15542i;
        float f10 = f8 * 2.0f;
        boolean z3 = this.f15537d.width() - f10 > 0.0f;
        boolean z4 = this.f15537d.height() - f10 > 0.0f;
        float f11 = this.f15543j;
        float f12 = f8 / ((f11 - (0.5f * f11)) + f8);
        float f13 = f8 / ((f11 - (f15532t * f11)) + f8);
        float f14 = f8 / ((f11 - (f11 * 1.0f)) + f8);
        int save2 = canvas.save();
        RectF rectF = this.f15537d;
        canvas.translate(rectF.left + f8, rectF.top + f8);
        canvas.scale(f12, f13);
        canvas.drawPath(this.f15539f, this.f15535b);
        if (z3) {
            canvas.scale(1.0f / f12, 1.0f);
            i2 = save2;
            f4 = f14;
            i4 = save;
            f5 = f13;
            canvas.drawRect(0.0f, f9, this.f15537d.width() - f10, -this.f15538e, this.f15536c);
        } else {
            i2 = save2;
            f4 = f14;
            i4 = save;
            f5 = f13;
        }
        canvas.restoreToCount(i2);
        int save3 = canvas.save();
        RectF rectF2 = this.f15537d;
        canvas.translate(rectF2.right - f8, rectF2.bottom - f8);
        float f15 = f4;
        canvas.scale(f12, f15);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f15539f, this.f15535b);
        if (z3) {
            canvas.scale(1.0f / f12, 1.0f);
            f6 = f5;
            f7 = f15;
            canvas.drawRect(0.0f, f9, this.f15537d.width() - f10, (-this.f15538e) + this.f15542i, this.f15536c);
        } else {
            f6 = f5;
            f7 = f15;
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        RectF rectF3 = this.f15537d;
        canvas.translate(rectF3.left + f8, rectF3.bottom - f8);
        canvas.scale(f12, f7);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f15539f, this.f15535b);
        if (z4) {
            canvas.scale(1.0f / f7, 1.0f);
            canvas.drawRect(0.0f, f9, this.f15537d.height() - f10, -this.f15538e, this.f15536c);
        }
        canvas.restoreToCount(save4);
        int save5 = canvas.save();
        RectF rectF4 = this.f15537d;
        canvas.translate(rectF4.right - f8, rectF4.top + f8);
        float f16 = f6;
        canvas.scale(f12, f16);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f15539f, this.f15535b);
        if (z4) {
            canvas.scale(1.0f / f16, 1.0f);
            canvas.drawRect(0.0f, f9, this.f15537d.height() - f10, -this.f15538e, this.f15536c);
        }
        canvas.restoreToCount(save5);
        canvas.restoreToCount(i4);
    }

    private static int q(float f4) {
        int round = Math.round(f4);
        return round % 2 == 1 ? round - 1 : round;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.f15544k) {
            a(getBounds());
            this.f15544k = false;
        }
        e(canvas);
        super.draw(canvas);
    }

    public float f() {
        return this.f15538e;
    }

    public float g() {
        return this.f15541h;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        int ceil = (int) Math.ceil(d(this.f15541h, this.f15538e, this.f15548o));
        int ceil2 = (int) Math.ceil(c(this.f15541h, this.f15538e, this.f15548o));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    public float h() {
        float f4 = this.f15541h;
        return (Math.max(f4, this.f15538e + ((f4 * f15531s) / 2.0f)) * 2.0f) + (this.f15541h * f15531s * 2.0f);
    }

    public float i() {
        float f4 = this.f15541h;
        return (Math.max(f4, this.f15538e + (f4 / 2.0f)) * 2.0f) + (this.f15541h * 2.0f);
    }

    public float j() {
        return this.f15543j;
    }

    public void k(boolean z3) {
        this.f15548o = z3;
        invalidateSelf();
    }

    public void l(float f4) {
        float round = Math.round(f4);
        if (this.f15538e == round) {
            return;
        }
        this.f15538e = round;
        this.f15544k = true;
        invalidateSelf();
    }

    public void m(float f4) {
        p(this.f15543j, f4);
    }

    public final void n(float f4) {
        if (this.f15549p != f4) {
            this.f15549p = f4;
            invalidateSelf();
        }
    }

    public void o(float f4) {
        p(f4, this.f15541h);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f15544k = true;
    }

    public void p(float f4, float f5) {
        if (f4 >= 0.0f && f5 >= 0.0f) {
            float q3 = q(f4);
            float q4 = q(f5);
            if (q3 > q4) {
                if (!this.f15550q) {
                    this.f15550q = true;
                }
                q3 = q4;
            }
            if (this.f15543j == q3 && this.f15541h == q4) {
                return;
            }
            this.f15543j = q3;
            this.f15541h = q4;
            this.f15542i = Math.round(q3 * f15531s);
            this.f15540g = q4;
            this.f15544k = true;
            invalidateSelf();
            return;
        }
        throw new IllegalArgumentException("invalid shadow size");
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        super.setAlpha(i2);
        this.f15535b.setAlpha(i2);
        this.f15536c.setAlpha(i2);
    }
}
