package com.google.android.material.chip;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.AnimatorRes;
import androidx.annotation.AttrRes;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.XmlRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.internal.view.SupportMenu;
import androidx.core.text.BidiFormatter;
import com.google.android.material.R;
import com.google.android.material.animation.h;
import com.google.android.material.internal.l;
import com.google.android.material.internal.o;
import com.google.android.material.internal.w;
import com.google.android.material.resources.c;
import com.google.android.material.resources.d;
import com.google.android.material.ripple.b;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.lang.ref.WeakReference;
import java.util.Arrays;
/* compiled from: ChipDrawable.java */
/* loaded from: classes2.dex */
public class a extends MaterialShapeDrawable implements TintAwareDrawable, Drawable.Callback, l.b {

    /* renamed from: q1  reason: collision with root package name */
    private static final boolean f14427q1 = false;

    /* renamed from: s1  reason: collision with root package name */
    private static final String f14429s1 = "http://schemas.android.com/apk/res-auto";

    /* renamed from: t1  reason: collision with root package name */
    private static final int f14430t1 = 24;
    private boolean A0;
    @Nullable
    private Drawable B0;
    @Nullable
    private ColorStateList C0;
    @Nullable
    private h D0;
    @Nullable
    private ColorStateList E;
    @Nullable
    private h E0;
    @Nullable
    private ColorStateList F;
    private float F0;
    private float G;
    private float G0;
    private float H;
    private float H0;
    @Nullable
    private ColorStateList I;
    private float I0;
    private float J;
    private float J0;
    @Nullable
    private ColorStateList K;
    private float K0;
    private float L0;
    private float M0;
    @NonNull
    private final Context N0;
    private final Paint O0;
    @Nullable
    private final Paint P0;
    private final Paint.FontMetrics Q0;
    private final RectF R0;
    private final PointF S0;
    private final Path T0;
    @NonNull
    private final l U0;
    @ColorInt
    private int V0;
    @ColorInt
    private int W0;
    @ColorInt
    private int X0;
    @ColorInt
    private int Y0;
    @ColorInt
    private int Z0;
    @ColorInt

    /* renamed from: a1  reason: collision with root package name */
    private int f14432a1;

    /* renamed from: b1  reason: collision with root package name */
    private boolean f14433b1;
    @ColorInt

    /* renamed from: c1  reason: collision with root package name */
    private int f14434c1;

    /* renamed from: d1  reason: collision with root package name */
    private int f14435d1;
    @Nullable

    /* renamed from: e1  reason: collision with root package name */
    private ColorFilter f14436e1;
    @Nullable

    /* renamed from: f1  reason: collision with root package name */
    private PorterDuffColorFilter f14437f1;
    @Nullable

    /* renamed from: g1  reason: collision with root package name */
    private ColorStateList f14438g1;
    @Nullable

    /* renamed from: h1  reason: collision with root package name */
    private PorterDuff.Mode f14439h1;

    /* renamed from: i1  reason: collision with root package name */
    private int[] f14440i1;

    /* renamed from: j1  reason: collision with root package name */
    private boolean f14441j1;
    @Nullable

    /* renamed from: k1  reason: collision with root package name */
    private ColorStateList f14442k1;
    @NonNull

    /* renamed from: l1  reason: collision with root package name */
    private WeakReference<InterfaceC0103a> f14443l1;

    /* renamed from: m1  reason: collision with root package name */
    private TextUtils.TruncateAt f14444m1;
    @Nullable

    /* renamed from: n0  reason: collision with root package name */
    private CharSequence f14445n0;

    /* renamed from: n1  reason: collision with root package name */
    private boolean f14446n1;

    /* renamed from: o0  reason: collision with root package name */
    private boolean f14447o0;

    /* renamed from: o1  reason: collision with root package name */
    private int f14448o1;
    @Nullable

    /* renamed from: p0  reason: collision with root package name */
    private Drawable f14449p0;

    /* renamed from: p1  reason: collision with root package name */
    private boolean f14450p1;
    @Nullable

    /* renamed from: q0  reason: collision with root package name */
    private ColorStateList f14451q0;

    /* renamed from: r0  reason: collision with root package name */
    private float f14452r0;

    /* renamed from: s0  reason: collision with root package name */
    private boolean f14453s0;

    /* renamed from: t0  reason: collision with root package name */
    private boolean f14454t0;
    @Nullable

    /* renamed from: u0  reason: collision with root package name */
    private Drawable f14455u0;
    @Nullable

    /* renamed from: v0  reason: collision with root package name */
    private Drawable f14456v0;
    @Nullable

    /* renamed from: w0  reason: collision with root package name */
    private ColorStateList f14457w0;

    /* renamed from: x0  reason: collision with root package name */
    private float f14458x0;
    @Nullable

    /* renamed from: y0  reason: collision with root package name */
    private CharSequence f14459y0;

    /* renamed from: z0  reason: collision with root package name */
    private boolean f14460z0;

    /* renamed from: r1  reason: collision with root package name */
    private static final int[] f14428r1 = {16842910};

    /* renamed from: u1  reason: collision with root package name */
    private static final ShapeDrawable f14431u1 = new ShapeDrawable(new OvalShape());

    /* compiled from: ChipDrawable.java */
    /* renamed from: com.google.android.material.chip.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0103a {
        void a();
    }

    private a(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i4) {
        super(context, attributeSet, i2, i4);
        this.H = -1.0f;
        this.O0 = new Paint(1);
        this.Q0 = new Paint.FontMetrics();
        this.R0 = new RectF();
        this.S0 = new PointF();
        this.T0 = new Path();
        this.f14435d1 = 255;
        this.f14439h1 = PorterDuff.Mode.SRC_IN;
        this.f14443l1 = new WeakReference<>(null);
        Z(context);
        this.N0 = context;
        l lVar = new l(this);
        this.U0 = lVar;
        this.f14445n0 = "";
        lVar.e().density = context.getResources().getDisplayMetrics().density;
        this.P0 = null;
        int[] iArr = f14428r1;
        setState(iArr);
        f3(iArr);
        this.f14446n1 = true;
        if (b.f15517a) {
            f14431u1.setTint(-1);
        }
    }

    private float G1() {
        Drawable drawable = this.f14433b1 ? this.B0 : this.f14449p0;
        float f4 = this.f14452r0;
        if (f4 <= 0.0f && drawable != null) {
            f4 = (float) Math.ceil(w.e(this.N0, 24));
            if (drawable.getIntrinsicHeight() <= f4) {
                return drawable.getIntrinsicHeight();
            }
        }
        return f4;
    }

    private float H1() {
        Drawable drawable = this.f14433b1 ? this.B0 : this.f14449p0;
        float f4 = this.f14452r0;
        return (f4 > 0.0f || drawable == null) ? f4 : drawable.getIntrinsicWidth();
    }

    private boolean L3() {
        return this.A0 && this.B0 != null && this.f14433b1;
    }

    private boolean M3() {
        return this.f14447o0 && this.f14449p0 != null;
    }

    private boolean N3() {
        return this.f14454t0 && this.f14455u0 != null;
    }

    private void O3(@Nullable Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    private void P0(@Nullable Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        DrawableCompat.setLayoutDirection(drawable, DrawableCompat.getLayoutDirection(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.f14455u0) {
            if (drawable.isStateful()) {
                drawable.setState(D1());
            }
            DrawableCompat.setTintList(drawable, this.f14457w0);
            return;
        }
        Drawable drawable2 = this.f14449p0;
        if (drawable == drawable2 && this.f14453s0) {
            DrawableCompat.setTintList(drawable2, this.f14451q0);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    private void P3() {
        this.f14442k1 = this.f14441j1 ? b.d(this.K) : null;
    }

    private void Q0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (M3() || L3()) {
            float f4 = this.F0 + this.G0;
            float H1 = H1();
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f5 = rect.left + f4;
                rectF.left = f5;
                rectF.right = f5 + H1;
            } else {
                float f6 = rect.right - f4;
                rectF.right = f6;
                rectF.left = f6 - H1;
            }
            float G1 = G1();
            float exactCenterY = rect.exactCenterY() - (G1 / 2.0f);
            rectF.top = exactCenterY;
            rectF.bottom = exactCenterY + G1;
        }
    }

    @TargetApi(21)
    private void Q3() {
        this.f14456v0 = new RippleDrawable(b.d(N1()), this.f14455u0, f14431u1);
    }

    private void S0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.set(rect);
        if (N3()) {
            float f4 = this.M0 + this.L0 + this.f14458x0 + this.K0 + this.J0;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.right = rect.right - f4;
            } else {
                rectF.left = rect.left + f4;
            }
        }
    }

    private void T0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (N3()) {
            float f4 = this.M0 + this.L0;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f5 = rect.right - f4;
                rectF.right = f5;
                rectF.left = f5 - this.f14458x0;
            } else {
                float f6 = rect.left + f4;
                rectF.left = f6;
                rectF.right = f6 + this.f14458x0;
            }
            float exactCenterY = rect.exactCenterY();
            float f7 = this.f14458x0;
            float f8 = exactCenterY - (f7 / 2.0f);
            rectF.top = f8;
            rectF.bottom = f8 + f7;
        }
    }

    @Nullable
    private ColorFilter T1() {
        ColorFilter colorFilter = this.f14436e1;
        return colorFilter != null ? colorFilter : this.f14437f1;
    }

    private void T2(@Nullable ColorStateList colorStateList) {
        if (this.E != colorStateList) {
            this.E = colorStateList;
            onStateChange(getState());
        }
    }

    private void U0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (N3()) {
            float f4 = this.M0 + this.L0 + this.f14458x0 + this.K0 + this.J0;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f5 = rect.right;
                rectF.right = f5;
                rectF.left = f5 - f4;
            } else {
                int i2 = rect.left;
                rectF.left = i2;
                rectF.right = i2 + f4;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    private static boolean V1(@Nullable int[] iArr, @AttrRes int i2) {
        if (iArr == null) {
            return false;
        }
        for (int i4 : iArr) {
            if (i4 == i2) {
                return true;
            }
        }
        return false;
    }

    private void W0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (this.f14445n0 != null) {
            float R0 = this.F0 + R0() + this.I0;
            float V0 = this.M0 + V0() + this.J0;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.left = rect.left + R0;
                rectF.right = rect.right - V0;
            } else {
                rectF.left = rect.left + V0;
                rectF.right = rect.right - R0;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    private float X0() {
        this.U0.e().getFontMetrics(this.Q0);
        Paint.FontMetrics fontMetrics = this.Q0;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    private boolean Z0() {
        return this.A0 && this.B0 != null && this.f14460z0;
    }

    @NonNull
    public static a a1(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i4) {
        a aVar = new a(context, attributeSet, i2, i4);
        aVar.i2(attributeSet, i2, i4);
        return aVar;
    }

    @NonNull
    public static a b1(@NonNull Context context, @XmlRes int i2) {
        AttributeSet a4 = a1.a.a(context, i2, "chip");
        int styleAttribute = a4.getStyleAttribute();
        if (styleAttribute == 0) {
            styleAttribute = R.style.Widget_MaterialComponents_Chip_Entry;
        }
        return a1(context, a4, R.attr.chipStandaloneStyle, styleAttribute);
    }

    private void c1(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (L3()) {
            Q0(rect, this.R0);
            RectF rectF = this.R0;
            float f4 = rectF.left;
            float f5 = rectF.top;
            canvas.translate(f4, f5);
            this.B0.setBounds(0, 0, (int) this.R0.width(), (int) this.R0.height());
            this.B0.draw(canvas);
            canvas.translate(-f4, -f5);
        }
    }

    private void d1(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.f14450p1) {
            return;
        }
        this.O0.setColor(this.W0);
        this.O0.setStyle(Paint.Style.FILL);
        this.O0.setColorFilter(T1());
        this.R0.set(rect);
        canvas.drawRoundRect(this.R0, o1(), o1(), this.O0);
    }

    private void e1(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (M3()) {
            Q0(rect, this.R0);
            RectF rectF = this.R0;
            float f4 = rectF.left;
            float f5 = rectF.top;
            canvas.translate(f4, f5);
            this.f14449p0.setBounds(0, 0, (int) this.R0.width(), (int) this.R0.height());
            this.f14449p0.draw(canvas);
            canvas.translate(-f4, -f5);
        }
    }

    private void f1(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.J <= 0.0f || this.f14450p1) {
            return;
        }
        this.O0.setColor(this.Y0);
        this.O0.setStyle(Paint.Style.STROKE);
        if (!this.f14450p1) {
            this.O0.setColorFilter(T1());
        }
        RectF rectF = this.R0;
        float f4 = this.J;
        rectF.set(rect.left + (f4 / 2.0f), rect.top + (f4 / 2.0f), rect.right - (f4 / 2.0f), rect.bottom - (f4 / 2.0f));
        float f5 = this.H - (this.J / 2.0f);
        canvas.drawRoundRect(this.R0, f5, f5, this.O0);
    }

    private static boolean f2(@Nullable ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    private void g1(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.f14450p1) {
            return;
        }
        this.O0.setColor(this.V0);
        this.O0.setStyle(Paint.Style.FILL);
        this.R0.set(rect);
        canvas.drawRoundRect(this.R0, o1(), o1(), this.O0);
    }

    private static boolean g2(@Nullable Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    private void h1(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (N3()) {
            T0(rect, this.R0);
            RectF rectF = this.R0;
            float f4 = rectF.left;
            float f5 = rectF.top;
            canvas.translate(f4, f5);
            this.f14455u0.setBounds(0, 0, (int) this.R0.width(), (int) this.R0.height());
            if (b.f15517a) {
                this.f14456v0.setBounds(this.f14455u0.getBounds());
                this.f14456v0.jumpToCurrentState();
                this.f14456v0.draw(canvas);
            } else {
                this.f14455u0.draw(canvas);
            }
            canvas.translate(-f4, -f5);
        }
    }

    private static boolean h2(@Nullable d dVar) {
        return (dVar == null || dVar.i() == null || !dVar.i().isStateful()) ? false : true;
    }

    private void i1(@NonNull Canvas canvas, @NonNull Rect rect) {
        this.O0.setColor(this.Z0);
        this.O0.setStyle(Paint.Style.FILL);
        this.R0.set(rect);
        if (!this.f14450p1) {
            canvas.drawRoundRect(this.R0, o1(), o1(), this.O0);
            return;
        }
        h(new RectF(rect), this.T0);
        super.q(canvas, this.O0, this.T0, v());
    }

    private void i2(@Nullable AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i4) {
        TypedArray j4 = o.j(this.N0, attributeSet, R.styleable.Chip, i2, i4, new int[0]);
        this.f14450p1 = j4.hasValue(R.styleable.Chip_shapeAppearance);
        T2(c.a(this.N0, j4, R.styleable.Chip_chipSurfaceColor));
        v2(c.a(this.N0, j4, R.styleable.Chip_chipBackgroundColor));
        L2(j4.getDimension(R.styleable.Chip_chipMinHeight, 0.0f));
        int i5 = R.styleable.Chip_chipCornerRadius;
        if (j4.hasValue(i5)) {
            x2(j4.getDimension(i5, 0.0f));
        }
        P2(c.a(this.N0, j4, R.styleable.Chip_chipStrokeColor));
        R2(j4.getDimension(R.styleable.Chip_chipStrokeWidth, 0.0f));
        t3(c.a(this.N0, j4, R.styleable.Chip_rippleColor));
        y3(j4.getText(R.styleable.Chip_android_text));
        d g4 = c.g(this.N0, j4, R.styleable.Chip_android_textAppearance);
        g4.l(j4.getDimension(R.styleable.Chip_android_textSize, g4.j()));
        if (Build.VERSION.SDK_INT < 23) {
            g4.k(c.a(this.N0, j4, R.styleable.Chip_android_textColor));
        }
        z3(g4);
        int i6 = j4.getInt(R.styleable.Chip_android_ellipsize, 0);
        if (i6 == 1) {
            l3(TextUtils.TruncateAt.START);
        } else if (i6 == 2) {
            l3(TextUtils.TruncateAt.MIDDLE);
        } else if (i6 == 3) {
            l3(TextUtils.TruncateAt.END);
        }
        K2(j4.getBoolean(R.styleable.Chip_chipIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue(f14429s1, "chipIconEnabled") != null && attributeSet.getAttributeValue(f14429s1, "chipIconVisible") == null) {
            K2(j4.getBoolean(R.styleable.Chip_chipIconEnabled, false));
        }
        B2(c.e(this.N0, j4, R.styleable.Chip_chipIcon));
        int i7 = R.styleable.Chip_chipIconTint;
        if (j4.hasValue(i7)) {
            H2(c.a(this.N0, j4, i7));
        }
        F2(j4.getDimension(R.styleable.Chip_chipIconSize, -1.0f));
        j3(j4.getBoolean(R.styleable.Chip_closeIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue(f14429s1, "closeIconEnabled") != null && attributeSet.getAttributeValue(f14429s1, "closeIconVisible") == null) {
            j3(j4.getBoolean(R.styleable.Chip_closeIconEnabled, false));
        }
        U2(c.e(this.N0, j4, R.styleable.Chip_closeIcon));
        g3(c.a(this.N0, j4, R.styleable.Chip_closeIconTint));
        b3(j4.getDimension(R.styleable.Chip_closeIconSize, 0.0f));
        l2(j4.getBoolean(R.styleable.Chip_android_checkable, false));
        u2(j4.getBoolean(R.styleable.Chip_checkedIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue(f14429s1, "checkedIconEnabled") != null && attributeSet.getAttributeValue(f14429s1, "checkedIconVisible") == null) {
            u2(j4.getBoolean(R.styleable.Chip_checkedIconEnabled, false));
        }
        n2(c.e(this.N0, j4, R.styleable.Chip_checkedIcon));
        int i8 = R.styleable.Chip_checkedIconTint;
        if (j4.hasValue(i8)) {
            r2(c.a(this.N0, j4, i8));
        }
        w3(h.c(this.N0, j4, R.styleable.Chip_showMotionSpec));
        m3(h.c(this.N0, j4, R.styleable.Chip_hideMotionSpec));
        N2(j4.getDimension(R.styleable.Chip_chipStartPadding, 0.0f));
        q3(j4.getDimension(R.styleable.Chip_iconStartPadding, 0.0f));
        o3(j4.getDimension(R.styleable.Chip_iconEndPadding, 0.0f));
        H3(j4.getDimension(R.styleable.Chip_textStartPadding, 0.0f));
        D3(j4.getDimension(R.styleable.Chip_textEndPadding, 0.0f));
        d3(j4.getDimension(R.styleable.Chip_closeIconStartPadding, 0.0f));
        Y2(j4.getDimension(R.styleable.Chip_closeIconEndPadding, 0.0f));
        z2(j4.getDimension(R.styleable.Chip_chipEndPadding, 0.0f));
        s3(j4.getDimensionPixelSize(R.styleable.Chip_android_maxWidth, Integer.MAX_VALUE));
        j4.recycle();
    }

    private void j1(@NonNull Canvas canvas, @NonNull Rect rect) {
        Paint paint = this.P0;
        if (paint != null) {
            paint.setColor(ColorUtils.setAlphaComponent(-16777216, 127));
            canvas.drawRect(rect, this.P0);
            if (M3() || L3()) {
                Q0(rect, this.R0);
                canvas.drawRect(this.R0, this.P0);
            }
            if (this.f14445n0 != null) {
                canvas.drawLine(rect.left, rect.exactCenterY(), rect.right, rect.exactCenterY(), this.P0);
            }
            if (N3()) {
                T0(rect, this.R0);
                canvas.drawRect(this.R0, this.P0);
            }
            this.P0.setColor(ColorUtils.setAlphaComponent(SupportMenu.CATEGORY_MASK, 127));
            S0(rect, this.R0);
            canvas.drawRect(this.R0, this.P0);
            this.P0.setColor(ColorUtils.setAlphaComponent(-16711936, 127));
            U0(rect, this.R0);
            canvas.drawRect(this.R0, this.P0);
        }
    }

    private void k1(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.f14445n0 != null) {
            Paint.Align Y0 = Y0(rect, this.S0);
            W0(rect, this.R0);
            if (this.U0.d() != null) {
                this.U0.e().drawableState = getState();
                this.U0.k(this.N0);
            }
            this.U0.e().setTextAlign(Y0);
            int i2 = 0;
            boolean z3 = Math.round(this.U0.f(P1().toString())) > Math.round(this.R0.width());
            if (z3) {
                i2 = canvas.save();
                canvas.clipRect(this.R0);
            }
            CharSequence charSequence = this.f14445n0;
            if (z3 && this.f14444m1 != null) {
                charSequence = TextUtils.ellipsize(charSequence, this.U0.e(), this.R0.width(), this.f14444m1);
            }
            CharSequence charSequence2 = charSequence;
            int length = charSequence2.length();
            PointF pointF = this.S0;
            canvas.drawText(charSequence2, 0, length, pointF.x, pointF.y, this.U0.e());
            if (z3) {
                canvas.restoreToCount(i2);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0156  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean k2(@androidx.annotation.NonNull int[] r7, @androidx.annotation.NonNull int[] r8) {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.a.k2(int[], int[]):boolean");
    }

    public float A1() {
        return this.L0;
    }

    public void A2(@DimenRes int i2) {
        z2(this.N0.getResources().getDimension(i2));
    }

    public void A3(@StyleRes int i2) {
        z3(new d(this.N0, i2));
    }

    public float B1() {
        return this.f14458x0;
    }

    public void B2(@Nullable Drawable drawable) {
        Drawable q12 = q1();
        if (q12 != drawable) {
            float R0 = R0();
            this.f14449p0 = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            float R02 = R0();
            O3(q12);
            if (M3()) {
                P0(this.f14449p0);
            }
            invalidateSelf();
            if (R0 != R02) {
                j2();
            }
        }
    }

    public void B3(@ColorInt int i2) {
        C3(ColorStateList.valueOf(i2));
    }

    public float C1() {
        return this.K0;
    }

    @Deprecated
    public void C2(boolean z3) {
        K2(z3);
    }

    public void C3(@Nullable ColorStateList colorStateList) {
        d Q1 = Q1();
        if (Q1 != null) {
            Q1.k(colorStateList);
            invalidateSelf();
        }
    }

    @NonNull
    public int[] D1() {
        return this.f14440i1;
    }

    @Deprecated
    public void D2(@BoolRes int i2) {
        J2(i2);
    }

    public void D3(float f4) {
        if (this.J0 != f4) {
            this.J0 = f4;
            invalidateSelf();
            j2();
        }
    }

    @Nullable
    public ColorStateList E1() {
        return this.f14457w0;
    }

    public void E2(@DrawableRes int i2) {
        B2(AppCompatResources.getDrawable(this.N0, i2));
    }

    public void E3(@DimenRes int i2) {
        D3(this.N0.getResources().getDimension(i2));
    }

    public void F1(@NonNull RectF rectF) {
        U0(getBounds(), rectF);
    }

    public void F2(float f4) {
        if (this.f14452r0 != f4) {
            float R0 = R0();
            this.f14452r0 = f4;
            float R02 = R0();
            invalidateSelf();
            if (R0 != R02) {
                j2();
            }
        }
    }

    public void F3(@StringRes int i2) {
        y3(this.N0.getResources().getString(i2));
    }

    public void G2(@DimenRes int i2) {
        F2(this.N0.getResources().getDimension(i2));
    }

    public void G3(@Dimension float f4) {
        d Q1 = Q1();
        if (Q1 != null) {
            Q1.l(f4);
            this.U0.e().setTextSize(f4);
            a();
        }
    }

    public void H2(@Nullable ColorStateList colorStateList) {
        this.f14453s0 = true;
        if (this.f14451q0 != colorStateList) {
            this.f14451q0 = colorStateList;
            if (M3()) {
                DrawableCompat.setTintList(this.f14449p0, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void H3(float f4) {
        if (this.I0 != f4) {
            this.I0 = f4;
            invalidateSelf();
            j2();
        }
    }

    public TextUtils.TruncateAt I1() {
        return this.f14444m1;
    }

    public void I2(@ColorRes int i2) {
        H2(AppCompatResources.getColorStateList(this.N0, i2));
    }

    public void I3(@DimenRes int i2) {
        H3(this.N0.getResources().getDimension(i2));
    }

    @Nullable
    public h J1() {
        return this.E0;
    }

    public void J2(@BoolRes int i2) {
        K2(this.N0.getResources().getBoolean(i2));
    }

    public void J3(boolean z3) {
        if (this.f14441j1 != z3) {
            this.f14441j1 = z3;
            P3();
            onStateChange(getState());
        }
    }

    public float K1() {
        return this.H0;
    }

    public void K2(boolean z3) {
        if (this.f14447o0 != z3) {
            boolean M3 = M3();
            this.f14447o0 = z3;
            boolean M32 = M3();
            if (M3 != M32) {
                if (M32) {
                    P0(this.f14449p0);
                } else {
                    O3(this.f14449p0);
                }
                invalidateSelf();
                j2();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean K3() {
        return this.f14446n1;
    }

    public float L1() {
        return this.G0;
    }

    public void L2(float f4) {
        if (this.G != f4) {
            this.G = f4;
            invalidateSelf();
            j2();
        }
    }

    @Px
    public int M1() {
        return this.f14448o1;
    }

    public void M2(@DimenRes int i2) {
        L2(this.N0.getResources().getDimension(i2));
    }

    @Nullable
    public ColorStateList N1() {
        return this.K;
    }

    public void N2(float f4) {
        if (this.F0 != f4) {
            this.F0 = f4;
            invalidateSelf();
            j2();
        }
    }

    @Nullable
    public h O1() {
        return this.D0;
    }

    public void O2(@DimenRes int i2) {
        N2(this.N0.getResources().getDimension(i2));
    }

    @Nullable
    public CharSequence P1() {
        return this.f14445n0;
    }

    public void P2(@Nullable ColorStateList colorStateList) {
        if (this.I != colorStateList) {
            this.I = colorStateList;
            if (this.f14450p1) {
                F0(colorStateList);
            }
            onStateChange(getState());
        }
    }

    @Nullable
    public d Q1() {
        return this.U0.d();
    }

    public void Q2(@ColorRes int i2) {
        P2(AppCompatResources.getColorStateList(this.N0, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float R0() {
        if (M3() || L3()) {
            return this.G0 + H1() + this.H0;
        }
        return 0.0f;
    }

    public float R1() {
        return this.J0;
    }

    public void R2(float f4) {
        if (this.J != f4) {
            this.J = f4;
            this.O0.setStrokeWidth(f4);
            if (this.f14450p1) {
                super.I0(f4);
            }
            invalidateSelf();
        }
    }

    public float S1() {
        return this.I0;
    }

    public void S2(@DimenRes int i2) {
        R2(this.N0.getResources().getDimension(i2));
    }

    public boolean U1() {
        return this.f14441j1;
    }

    public void U2(@Nullable Drawable drawable) {
        Drawable y12 = y1();
        if (y12 != drawable) {
            float V0 = V0();
            this.f14455u0 = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            if (b.f15517a) {
                Q3();
            }
            float V02 = V0();
            O3(y12);
            if (N3()) {
                P0(this.f14455u0);
            }
            invalidateSelf();
            if (V0 != V02) {
                j2();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float V0() {
        if (N3()) {
            return this.K0 + this.f14458x0 + this.L0;
        }
        return 0.0f;
    }

    public void V2(@Nullable CharSequence charSequence) {
        if (this.f14459y0 != charSequence) {
            this.f14459y0 = BidiFormatter.getInstance().unicodeWrap(charSequence);
            invalidateSelf();
        }
    }

    public boolean W1() {
        return this.f14460z0;
    }

    @Deprecated
    public void W2(boolean z3) {
        j3(z3);
    }

    @Deprecated
    public boolean X1() {
        return Y1();
    }

    @Deprecated
    public void X2(@BoolRes int i2) {
        i3(i2);
    }

    @NonNull
    Paint.Align Y0(@NonNull Rect rect, @NonNull PointF pointF) {
        pointF.set(0.0f, 0.0f);
        Paint.Align align = Paint.Align.LEFT;
        if (this.f14445n0 != null) {
            float R0 = this.F0 + R0() + this.I0;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                pointF.x = rect.left + R0;
                align = Paint.Align.LEFT;
            } else {
                pointF.x = rect.right - R0;
                align = Paint.Align.RIGHT;
            }
            pointF.y = rect.centerY() - X0();
        }
        return align;
    }

    public boolean Y1() {
        return this.A0;
    }

    public void Y2(float f4) {
        if (this.L0 != f4) {
            this.L0 = f4;
            invalidateSelf();
            if (N3()) {
                j2();
            }
        }
    }

    @Deprecated
    public boolean Z1() {
        return a2();
    }

    public void Z2(@DimenRes int i2) {
        Y2(this.N0.getResources().getDimension(i2));
    }

    @Override // com.google.android.material.internal.l.b
    public void a() {
        j2();
        invalidateSelf();
    }

    public boolean a2() {
        return this.f14447o0;
    }

    public void a3(@DrawableRes int i2) {
        U2(AppCompatResources.getDrawable(this.N0, i2));
    }

    @Deprecated
    public boolean b2() {
        return d2();
    }

    public void b3(float f4) {
        if (this.f14458x0 != f4) {
            this.f14458x0 = f4;
            invalidateSelf();
            if (N3()) {
                j2();
            }
        }
    }

    public boolean c2() {
        return g2(this.f14455u0);
    }

    public void c3(@DimenRes int i2) {
        b3(this.N0.getResources().getDimension(i2));
    }

    public boolean d2() {
        return this.f14454t0;
    }

    public void d3(float f4) {
        if (this.K0 != f4) {
            this.K0 = f4;
            invalidateSelf();
            if (N3()) {
                j2();
            }
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.isEmpty() || getAlpha() == 0) {
            return;
        }
        int i2 = this.f14435d1;
        int a4 = i2 < 255 ? z0.a.a(canvas, bounds.left, bounds.top, bounds.right, bounds.bottom, i2) : 0;
        g1(canvas, bounds);
        d1(canvas, bounds);
        if (this.f14450p1) {
            super.draw(canvas);
        }
        f1(canvas, bounds);
        i1(canvas, bounds);
        e1(canvas, bounds);
        c1(canvas, bounds);
        if (this.f14446n1) {
            k1(canvas, bounds);
        }
        h1(canvas, bounds);
        j1(canvas, bounds);
        if (this.f14435d1 < 255) {
            canvas.restoreToCount(a4);
        }
    }

    boolean e2() {
        return this.f14450p1;
    }

    public void e3(@DimenRes int i2) {
        d3(this.N0.getResources().getDimension(i2));
    }

    public boolean f3(@NonNull int[] iArr) {
        if (Arrays.equals(this.f14440i1, iArr)) {
            return false;
        }
        this.f14440i1 = iArr;
        if (N3()) {
            return k2(getState(), iArr);
        }
        return false;
    }

    public void g3(@Nullable ColorStateList colorStateList) {
        if (this.f14457w0 != colorStateList) {
            this.f14457w0 = colorStateList;
            if (N3()) {
                DrawableCompat.setTintList(this.f14455u0, colorStateList);
            }
            onStateChange(getState());
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f14435d1;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public ColorFilter getColorFilter() {
        return this.f14436e1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.G;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.min(Math.round(this.F0 + R0() + this.I0 + this.U0.f(P1().toString()) + this.J0 + V0() + this.M0), this.f14448o1);
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.f14450p1) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            outline.setRoundRect(bounds, this.H);
        } else {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.H);
        }
        outline.setAlpha(getAlpha() / 255.0f);
    }

    public void h3(@ColorRes int i2) {
        g3(AppCompatResources.getColorStateList(this.N0, i2));
    }

    public void i3(@BoolRes int i2) {
        j3(this.N0.getResources().getBoolean(i2));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return f2(this.E) || f2(this.F) || f2(this.I) || (this.f14441j1 && f2(this.f14442k1)) || h2(this.U0.d()) || Z0() || g2(this.f14449p0) || g2(this.B0) || f2(this.f14438g1);
    }

    protected void j2() {
        InterfaceC0103a interfaceC0103a = this.f14443l1.get();
        if (interfaceC0103a != null) {
            interfaceC0103a.a();
        }
    }

    public void j3(boolean z3) {
        if (this.f14454t0 != z3) {
            boolean N3 = N3();
            this.f14454t0 = z3;
            boolean N32 = N3();
            if (N3 != N32) {
                if (N32) {
                    P0(this.f14455u0);
                } else {
                    O3(this.f14455u0);
                }
                invalidateSelf();
                j2();
            }
        }
    }

    public void k3(@Nullable InterfaceC0103a interfaceC0103a) {
        this.f14443l1 = new WeakReference<>(interfaceC0103a);
    }

    @Nullable
    public Drawable l1() {
        return this.B0;
    }

    public void l2(boolean z3) {
        if (this.f14460z0 != z3) {
            this.f14460z0 = z3;
            float R0 = R0();
            if (!z3 && this.f14433b1) {
                this.f14433b1 = false;
            }
            float R02 = R0();
            invalidateSelf();
            if (R0 != R02) {
                j2();
            }
        }
    }

    public void l3(@Nullable TextUtils.TruncateAt truncateAt) {
        this.f14444m1 = truncateAt;
    }

    @Nullable
    public ColorStateList m1() {
        return this.C0;
    }

    public void m2(@BoolRes int i2) {
        l2(this.N0.getResources().getBoolean(i2));
    }

    public void m3(@Nullable h hVar) {
        this.E0 = hVar;
    }

    @Nullable
    public ColorStateList n1() {
        return this.F;
    }

    public void n2(@Nullable Drawable drawable) {
        if (this.B0 != drawable) {
            float R0 = R0();
            this.B0 = drawable;
            float R02 = R0();
            O3(this.B0);
            P0(this.B0);
            invalidateSelf();
            if (R0 != R02) {
                j2();
            }
        }
    }

    public void n3(@AnimatorRes int i2) {
        m3(h.d(this.N0, i2));
    }

    public float o1() {
        return this.f14450p1 ? S() : this.H;
    }

    @Deprecated
    public void o2(boolean z3) {
        u2(z3);
    }

    public void o3(float f4) {
        if (this.H0 != f4) {
            float R0 = R0();
            this.H0 = f4;
            float R02 = R0();
            invalidateSelf();
            if (R0 != R02) {
                j2();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i2) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i2);
        if (M3()) {
            onLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.f14449p0, i2);
        }
        if (L3()) {
            onLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.B0, i2);
        }
        if (N3()) {
            onLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.f14455u0, i2);
        }
        if (onLayoutDirectionChanged) {
            invalidateSelf();
            return true;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i2) {
        boolean onLevelChange = super.onLevelChange(i2);
        if (M3()) {
            onLevelChange |= this.f14449p0.setLevel(i2);
        }
        if (L3()) {
            onLevelChange |= this.B0.setLevel(i2);
        }
        if (N3()) {
            onLevelChange |= this.f14455u0.setLevel(i2);
        }
        if (onLevelChange) {
            invalidateSelf();
        }
        return onLevelChange;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, com.google.android.material.internal.l.b
    public boolean onStateChange(@NonNull int[] iArr) {
        if (this.f14450p1) {
            super.onStateChange(iArr);
        }
        return k2(iArr, D1());
    }

    public float p1() {
        return this.M0;
    }

    @Deprecated
    public void p2(@BoolRes int i2) {
        u2(this.N0.getResources().getBoolean(i2));
    }

    public void p3(@DimenRes int i2) {
        o3(this.N0.getResources().getDimension(i2));
    }

    @Nullable
    public Drawable q1() {
        Drawable drawable = this.f14449p0;
        if (drawable != null) {
            return DrawableCompat.unwrap(drawable);
        }
        return null;
    }

    public void q2(@DrawableRes int i2) {
        n2(AppCompatResources.getDrawable(this.N0, i2));
    }

    public void q3(float f4) {
        if (this.G0 != f4) {
            float R0 = R0();
            this.G0 = f4;
            float R02 = R0();
            invalidateSelf();
            if (R0 != R02) {
                j2();
            }
        }
    }

    public float r1() {
        return this.f14452r0;
    }

    public void r2(@Nullable ColorStateList colorStateList) {
        if (this.C0 != colorStateList) {
            this.C0 = colorStateList;
            if (Z0()) {
                DrawableCompat.setTintList(this.B0, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void r3(@DimenRes int i2) {
        q3(this.N0.getResources().getDimension(i2));
    }

    @Nullable
    public ColorStateList s1() {
        return this.f14451q0;
    }

    public void s2(@ColorRes int i2) {
        r2(AppCompatResources.getColorStateList(this.N0, i2));
    }

    public void s3(@Px int i2) {
        this.f14448o1 = i2;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j4) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j4);
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (this.f14435d1 != i2) {
            this.f14435d1 = i2;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        if (this.f14436e1 != colorFilter) {
            this.f14436e1 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        if (this.f14438g1 != colorStateList) {
            this.f14438g1 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        if (this.f14439h1 != mode) {
            this.f14439h1 = mode;
            this.f14437f1 = a1.a.c(this, this.f14438g1, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z3, boolean z4) {
        boolean visible = super.setVisible(z3, z4);
        if (M3()) {
            visible |= this.f14449p0.setVisible(z3, z4);
        }
        if (L3()) {
            visible |= this.B0.setVisible(z3, z4);
        }
        if (N3()) {
            visible |= this.f14455u0.setVisible(z3, z4);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    public float t1() {
        return this.G;
    }

    public void t2(@BoolRes int i2) {
        u2(this.N0.getResources().getBoolean(i2));
    }

    public void t3(@Nullable ColorStateList colorStateList) {
        if (this.K != colorStateList) {
            this.K = colorStateList;
            P3();
            onStateChange(getState());
        }
    }

    public float u1() {
        return this.F0;
    }

    public void u2(boolean z3) {
        if (this.A0 != z3) {
            boolean L3 = L3();
            this.A0 = z3;
            boolean L32 = L3();
            if (L3 != L32) {
                if (L32) {
                    P0(this.B0);
                } else {
                    O3(this.B0);
                }
                invalidateSelf();
                j2();
            }
        }
    }

    public void u3(@ColorRes int i2) {
        t3(AppCompatResources.getColorStateList(this.N0, i2));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    @Nullable
    public ColorStateList v1() {
        return this.I;
    }

    public void v2(@Nullable ColorStateList colorStateList) {
        if (this.F != colorStateList) {
            this.F = colorStateList;
            onStateChange(getState());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v3(boolean z3) {
        this.f14446n1 = z3;
    }

    public float w1() {
        return this.J;
    }

    public void w2(@ColorRes int i2) {
        v2(AppCompatResources.getColorStateList(this.N0, i2));
    }

    public void w3(@Nullable h hVar) {
        this.D0 = hVar;
    }

    public void x1(@NonNull RectF rectF) {
        S0(getBounds(), rectF);
    }

    @Deprecated
    public void x2(float f4) {
        if (this.H != f4) {
            this.H = f4;
            setShapeAppearanceModel(getShapeAppearanceModel().w(f4));
        }
    }

    public void x3(@AnimatorRes int i2) {
        w3(h.d(this.N0, i2));
    }

    @Nullable
    public Drawable y1() {
        Drawable drawable = this.f14455u0;
        if (drawable != null) {
            return DrawableCompat.unwrap(drawable);
        }
        return null;
    }

    @Deprecated
    public void y2(@DimenRes int i2) {
        x2(this.N0.getResources().getDimension(i2));
    }

    public void y3(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        if (TextUtils.equals(this.f14445n0, charSequence)) {
            return;
        }
        this.f14445n0 = charSequence;
        this.U0.j(true);
        invalidateSelf();
        j2();
    }

    @Nullable
    public CharSequence z1() {
        return this.f14459y0;
    }

    public void z2(float f4) {
        if (this.M0 != f4) {
            this.M0 = f4;
            invalidateSelf();
            j2();
        }
    }

    public void z3(@Nullable d dVar) {
        this.U0.i(dVar, this.N0);
    }
}
