package com.google.android.material.tooltip;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.R;
import com.google.android.material.color.m;
import com.google.android.material.internal.l;
import com.google.android.material.internal.o;
import com.google.android.material.resources.c;
import com.google.android.material.resources.d;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.f;
import com.google.android.material.shape.h;
import com.google.android.material.shape.j;
/* compiled from: TooltipDrawable.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class a extends MaterialShapeDrawable implements l.b {
    @StyleRes

    /* renamed from: x0  reason: collision with root package name */
    private static final int f16296x0 = R.style.Widget_MaterialComponents_Tooltip;
    @AttrRes

    /* renamed from: y0  reason: collision with root package name */
    private static final int f16297y0 = R.attr.tooltipStyle;
    @Nullable
    private CharSequence E;
    @NonNull
    private final Context F;
    @Nullable
    private final Paint.FontMetrics G;
    @NonNull
    private final l H;
    @NonNull
    private final View.OnLayoutChangeListener I;
    @NonNull
    private final Rect J;
    private int K;

    /* renamed from: n0  reason: collision with root package name */
    private int f16298n0;

    /* renamed from: o0  reason: collision with root package name */
    private int f16299o0;

    /* renamed from: p0  reason: collision with root package name */
    private int f16300p0;

    /* renamed from: q0  reason: collision with root package name */
    private int f16301q0;

    /* renamed from: r0  reason: collision with root package name */
    private int f16302r0;

    /* renamed from: s0  reason: collision with root package name */
    private float f16303s0;

    /* renamed from: t0  reason: collision with root package name */
    private float f16304t0;

    /* renamed from: u0  reason: collision with root package name */
    private final float f16305u0;

    /* renamed from: v0  reason: collision with root package name */
    private float f16306v0;

    /* renamed from: w0  reason: collision with root package name */
    private float f16307w0;

    /* compiled from: TooltipDrawable.java */
    /* renamed from: com.google.android.material.tooltip.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class View$OnLayoutChangeListenerC0121a implements View.OnLayoutChangeListener {
        View$OnLayoutChangeListenerC0121a() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
            a.this.r1(view);
        }
    }

    private a(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i4) {
        super(context, attributeSet, i2, i4);
        this.G = new Paint.FontMetrics();
        l lVar = new l(this);
        this.H = lVar;
        this.I = new View$OnLayoutChangeListenerC0121a();
        this.J = new Rect();
        this.f16303s0 = 1.0f;
        this.f16304t0 = 1.0f;
        this.f16305u0 = 0.5f;
        this.f16306v0 = 0.5f;
        this.f16307w0 = 1.0f;
        this.F = context;
        lVar.e().density = context.getResources().getDisplayMetrics().density;
        lVar.e().setTextAlign(Paint.Align.CENTER);
    }

    private float Q0() {
        int i2;
        if (((this.J.right - getBounds().right) - this.f16302r0) - this.f16300p0 < 0) {
            i2 = ((this.J.right - getBounds().right) - this.f16302r0) - this.f16300p0;
        } else if (((this.J.left - getBounds().left) - this.f16302r0) + this.f16300p0 <= 0) {
            return 0.0f;
        } else {
            i2 = ((this.J.left - getBounds().left) - this.f16302r0) + this.f16300p0;
        }
        return i2;
    }

    private float R0() {
        this.H.e().getFontMetrics(this.G);
        Paint.FontMetrics fontMetrics = this.G;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    private float S0(@NonNull Rect rect) {
        return rect.centerY() - R0();
    }

    @NonNull
    public static a T0(@NonNull Context context) {
        return V0(context, null, f16297y0, f16296x0);
    }

    @NonNull
    public static a U0(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        return V0(context, attributeSet, f16297y0, f16296x0);
    }

    @NonNull
    public static a V0(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i4) {
        a aVar = new a(context, attributeSet, i2, i4);
        aVar.g1(attributeSet, i2, i4);
        return aVar;
    }

    private f W0() {
        double width = getBounds().width();
        double d4 = this.f16301q0;
        double sqrt = Math.sqrt(2.0d);
        Double.isNaN(d4);
        Double.isNaN(width);
        float f4 = ((float) (width - (d4 * sqrt))) / 2.0f;
        return new j(new h(this.f16301q0), Math.min(Math.max(-Q0(), -f4), f4));
    }

    private void Y0(@NonNull Canvas canvas) {
        if (this.E == null) {
            return;
        }
        Rect bounds = getBounds();
        int S0 = (int) S0(bounds);
        if (this.H.d() != null) {
            this.H.e().drawableState = getState();
            this.H.k(this.F);
            this.H.e().setAlpha((int) (this.f16307w0 * 255.0f));
        }
        CharSequence charSequence = this.E;
        canvas.drawText(charSequence, 0, charSequence.length(), bounds.centerX(), S0, this.H.e());
    }

    private float f1() {
        CharSequence charSequence = this.E;
        if (charSequence == null) {
            return 0.0f;
        }
        return this.H.f(charSequence.toString());
    }

    private void g1(@Nullable AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i4) {
        TypedArray j4 = o.j(this.F, attributeSet, R.styleable.Tooltip, i2, i4, new int[0]);
        this.f16301q0 = this.F.getResources().getDimensionPixelSize(R.dimen.mtrl_tooltip_arrowSize);
        setShapeAppearanceModel(getShapeAppearanceModel().v().t(W0()).m());
        m1(j4.getText(R.styleable.Tooltip_android_text));
        d g4 = c.g(this.F, j4, R.styleable.Tooltip_android_textAppearance);
        if (g4 != null) {
            int i5 = R.styleable.Tooltip_android_textColor;
            if (j4.hasValue(i5)) {
                g4.k(c.a(this.F, j4, i5));
            }
        }
        n1(g4);
        o0(ColorStateList.valueOf(j4.getColor(R.styleable.Tooltip_backgroundTint, m.l(ColorUtils.setAlphaComponent(m.c(this.F, 16842801, a.class.getCanonicalName()), 229), ColorUtils.setAlphaComponent(m.c(this.F, R.attr.colorOnBackground, a.class.getCanonicalName()), 153)))));
        F0(ColorStateList.valueOf(m.c(this.F, R.attr.colorSurface, a.class.getCanonicalName())));
        this.K = j4.getDimensionPixelSize(R.styleable.Tooltip_android_padding, 0);
        this.f16298n0 = j4.getDimensionPixelSize(R.styleable.Tooltip_android_minWidth, 0);
        this.f16299o0 = j4.getDimensionPixelSize(R.styleable.Tooltip_android_minHeight, 0);
        this.f16300p0 = j4.getDimensionPixelSize(R.styleable.Tooltip_android_layout_margin, 0);
        j4.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r1(@NonNull View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        this.f16302r0 = iArr[0];
        view.getWindowVisibleDisplayFrame(this.J);
    }

    public void X0(@Nullable View view) {
        if (view == null) {
            return;
        }
        view.removeOnLayoutChangeListener(this.I);
    }

    public int Z0() {
        return this.f16300p0;
    }

    @Override // com.google.android.material.internal.l.b
    public void a() {
        invalidateSelf();
    }

    public int a1() {
        return this.f16299o0;
    }

    public int b1() {
        return this.f16298n0;
    }

    @Nullable
    public CharSequence c1() {
        return this.E;
    }

    @Nullable
    public d d1() {
        return this.H.d();
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        canvas.save();
        float Q0 = Q0();
        double d4 = this.f16301q0;
        double sqrt = Math.sqrt(2.0d);
        Double.isNaN(d4);
        double d5 = d4 * sqrt;
        double d6 = this.f16301q0;
        Double.isNaN(d6);
        canvas.scale(this.f16303s0, this.f16304t0, getBounds().left + (getBounds().width() * 0.5f), getBounds().top + (getBounds().height() * this.f16306v0));
        canvas.translate(Q0, (float) (-(d5 - d6)));
        super.draw(canvas);
        Y0(canvas);
        canvas.restore();
    }

    public int e1() {
        return this.K;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) Math.max(this.H.e().getTextSize(), this.f16299o0);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) Math.max((this.K * 2) + f1(), this.f16298n0);
    }

    public void h1(@Px int i2) {
        this.f16300p0 = i2;
        invalidateSelf();
    }

    public void i1(@Px int i2) {
        this.f16299o0 = i2;
        invalidateSelf();
    }

    public void j1(@Px int i2) {
        this.f16298n0 = i2;
        invalidateSelf();
    }

    public void k1(@Nullable View view) {
        if (view == null) {
            return;
        }
        r1(view);
        view.addOnLayoutChangeListener(this.I);
    }

    public void l1(@FloatRange(from = 0.0d, to = 1.0d) float f4) {
        this.f16306v0 = 1.2f;
        this.f16303s0 = f4;
        this.f16304t0 = f4;
        this.f16307w0 = com.google.android.material.animation.a.b(0.0f, 1.0f, 0.19f, 1.0f, f4);
        invalidateSelf();
    }

    public void m1(@Nullable CharSequence charSequence) {
        if (TextUtils.equals(this.E, charSequence)) {
            return;
        }
        this.E = charSequence;
        this.H.j(true);
        invalidateSelf();
    }

    public void n1(@Nullable d dVar) {
        this.H.i(dVar, this.F);
    }

    public void o1(@StyleRes int i2) {
        n1(new d(this.F, i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        setShapeAppearanceModel(getShapeAppearanceModel().v().t(W0()).m());
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, com.google.android.material.internal.l.b
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    public void p1(@Px int i2) {
        this.K = i2;
        invalidateSelf();
    }

    public void q1(@StringRes int i2) {
        m1(this.F.getResources().getString(i2));
    }
}
