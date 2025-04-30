package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.math.MathUtils;
import androidx.core.text.TextDirectionHeuristicCompat;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.resources.a;
/* compiled from: CollapsingTextHelper.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: t0  reason: collision with root package name */
    private static final boolean f15090t0;

    /* renamed from: u0  reason: collision with root package name */
    private static final String f15091u0 = "CollapsingTextHelper";

    /* renamed from: v0  reason: collision with root package name */
    private static final String f15092v0 = "…";

    /* renamed from: w0  reason: collision with root package name */
    private static final float f15093w0 = 0.5f;

    /* renamed from: x0  reason: collision with root package name */
    private static final boolean f15094x0 = false;
    @NonNull

    /* renamed from: y0  reason: collision with root package name */
    private static final Paint f15095y0;
    private Typeface A;
    private Typeface B;
    private Typeface C;
    private Typeface D;
    private com.google.android.material.resources.a E;
    private com.google.android.material.resources.a F;
    @Nullable
    private CharSequence G;
    @Nullable
    private CharSequence H;
    private boolean I;
    private boolean K;
    @Nullable
    private Bitmap L;
    private Paint M;
    private float N;
    private float O;
    private float P;
    private float Q;
    private float R;
    private int S;
    private int[] T;
    private boolean U;
    @NonNull
    private final TextPaint V;
    @NonNull
    private final TextPaint W;
    private TimeInterpolator X;
    private TimeInterpolator Y;
    private float Z;

    /* renamed from: a  reason: collision with root package name */
    private final View f15096a;

    /* renamed from: a0  reason: collision with root package name */
    private float f15097a0;

    /* renamed from: b  reason: collision with root package name */
    private boolean f15098b;

    /* renamed from: b0  reason: collision with root package name */
    private float f15099b0;

    /* renamed from: c  reason: collision with root package name */
    private float f15100c;

    /* renamed from: c0  reason: collision with root package name */
    private ColorStateList f15101c0;

    /* renamed from: d  reason: collision with root package name */
    private boolean f15102d;

    /* renamed from: d0  reason: collision with root package name */
    private float f15103d0;

    /* renamed from: e  reason: collision with root package name */
    private float f15104e;

    /* renamed from: e0  reason: collision with root package name */
    private float f15105e0;

    /* renamed from: f  reason: collision with root package name */
    private float f15106f;

    /* renamed from: f0  reason: collision with root package name */
    private float f15107f0;

    /* renamed from: g  reason: collision with root package name */
    private int f15108g;

    /* renamed from: g0  reason: collision with root package name */
    private ColorStateList f15109g0;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final Rect f15110h;

    /* renamed from: h0  reason: collision with root package name */
    private float f15111h0;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final Rect f15112i;

    /* renamed from: i0  reason: collision with root package name */
    private float f15113i0;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    private final RectF f15114j;

    /* renamed from: j0  reason: collision with root package name */
    private float f15115j0;

    /* renamed from: k0  reason: collision with root package name */
    private StaticLayout f15117k0;

    /* renamed from: l0  reason: collision with root package name */
    private float f15119l0;

    /* renamed from: m0  reason: collision with root package name */
    private float f15121m0;

    /* renamed from: n0  reason: collision with root package name */
    private float f15123n0;

    /* renamed from: o  reason: collision with root package name */
    private ColorStateList f15124o;

    /* renamed from: o0  reason: collision with root package name */
    private CharSequence f15125o0;

    /* renamed from: p  reason: collision with root package name */
    private ColorStateList f15126p;

    /* renamed from: q  reason: collision with root package name */
    private int f15128q;

    /* renamed from: r  reason: collision with root package name */
    private float f15130r;

    /* renamed from: s  reason: collision with root package name */
    private float f15132s;

    /* renamed from: t  reason: collision with root package name */
    private float f15134t;

    /* renamed from: u  reason: collision with root package name */
    private float f15135u;

    /* renamed from: v  reason: collision with root package name */
    private float f15136v;

    /* renamed from: w  reason: collision with root package name */
    private float f15137w;

    /* renamed from: x  reason: collision with root package name */
    private Typeface f15138x;

    /* renamed from: y  reason: collision with root package name */
    private Typeface f15139y;

    /* renamed from: z  reason: collision with root package name */
    private Typeface f15140z;

    /* renamed from: k  reason: collision with root package name */
    private int f15116k = 16;

    /* renamed from: l  reason: collision with root package name */
    private int f15118l = 16;

    /* renamed from: m  reason: collision with root package name */
    private float f15120m = 15.0f;

    /* renamed from: n  reason: collision with root package name */
    private float f15122n = 15.0f;
    private boolean J = true;

    /* renamed from: p0  reason: collision with root package name */
    private int f15127p0 = 1;

    /* renamed from: q0  reason: collision with root package name */
    private float f15129q0 = 0.0f;

    /* renamed from: r0  reason: collision with root package name */
    private float f15131r0 = 1.0f;

    /* renamed from: s0  reason: collision with root package name */
    private int f15133s0 = StaticLayoutBuilderCompat.f15060n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CollapsingTextHelper.java */
    /* loaded from: classes2.dex */
    public class a implements a.InterfaceC0112a {
        a() {
        }

        @Override // com.google.android.material.resources.a.InterfaceC0112a
        public void a(Typeface typeface) {
            b.this.m0(typeface);
        }
    }

    /* compiled from: CollapsingTextHelper.java */
    /* renamed from: com.google.android.material.internal.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0109b implements a.InterfaceC0112a {
        C0109b() {
        }

        @Override // com.google.android.material.resources.a.InterfaceC0112a
        public void a(Typeface typeface) {
            b.this.x0(typeface);
        }
    }

    static {
        f15090t0 = Build.VERSION.SDK_INT < 18;
        f15095y0 = null;
    }

    public b(View view) {
        this.f15096a = view;
        TextPaint textPaint = new TextPaint(129);
        this.V = textPaint;
        this.W = new TextPaint(textPaint);
        this.f15112i = new Rect();
        this.f15110h = new Rect();
        this.f15114j = new RectF();
        this.f15106f = e();
        Z(view.getContext().getResources().getConfiguration());
    }

    private void D0(float f4) {
        h(f4);
        boolean z3 = f15090t0 && this.N != 1.0f;
        this.K = z3;
        if (z3) {
            n();
        }
        ViewCompat.postInvalidateOnAnimation(this.f15096a);
    }

    private Layout.Alignment N() {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.f15116k, this.I ? 1 : 0) & 7;
        if (absoluteGravity != 1) {
            return absoluteGravity != 5 ? this.I ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : this.I ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE;
        }
        return Layout.Alignment.ALIGN_CENTER;
    }

    private boolean N0() {
        return this.f15127p0 > 1 && (!this.I || this.f15102d) && !this.K;
    }

    private void Q(@NonNull TextPaint textPaint) {
        textPaint.setTextSize(this.f15122n);
        textPaint.setTypeface(this.f15138x);
        if (Build.VERSION.SDK_INT >= 21) {
            textPaint.setLetterSpacing(this.f15111h0);
        }
    }

    private void R(@NonNull TextPaint textPaint) {
        textPaint.setTextSize(this.f15120m);
        textPaint.setTypeface(this.A);
        if (Build.VERSION.SDK_INT >= 21) {
            textPaint.setLetterSpacing(this.f15113i0);
        }
    }

    private void S(float f4) {
        if (this.f15102d) {
            this.f15114j.set(f4 < this.f15106f ? this.f15110h : this.f15112i);
            return;
        }
        this.f15114j.left = Y(this.f15110h.left, this.f15112i.left, f4, this.X);
        this.f15114j.top = Y(this.f15130r, this.f15132s, f4, this.X);
        this.f15114j.right = Y(this.f15110h.right, this.f15112i.right, f4, this.X);
        this.f15114j.bottom = Y(this.f15110h.bottom, this.f15112i.bottom, f4, this.X);
    }

    private static boolean T(float f4, float f5) {
        return Math.abs(f4 - f5) < 1.0E-5f;
    }

    private boolean U() {
        return ViewCompat.getLayoutDirection(this.f15096a) == 1;
    }

    private boolean X(@NonNull CharSequence charSequence, boolean z3) {
        TextDirectionHeuristicCompat textDirectionHeuristicCompat;
        if (z3) {
            textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL;
        } else {
            textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR;
        }
        return textDirectionHeuristicCompat.isRtl(charSequence, 0, charSequence.length());
    }

    private static float Y(float f4, float f5, float f6, @Nullable TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f6 = timeInterpolator.getInterpolation(f6);
        }
        return com.google.android.material.animation.a.a(f4, f5, f6);
    }

    @ColorInt
    private static int a(@ColorInt int i2, @ColorInt int i4, @FloatRange(from = 0.0d, to = 1.0d) float f4) {
        float f5 = 1.0f - f4;
        return Color.argb(Math.round((Color.alpha(i2) * f5) + (Color.alpha(i4) * f4)), Math.round((Color.red(i2) * f5) + (Color.red(i4) * f4)), Math.round((Color.green(i2) * f5) + (Color.green(i4) * f4)), Math.round((Color.blue(i2) * f5) + (Color.blue(i4) * f4)));
    }

    private float a0(TextPaint textPaint, CharSequence charSequence) {
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    private void b(boolean z3) {
        StaticLayout staticLayout;
        StaticLayout staticLayout2;
        i(1.0f, z3);
        CharSequence charSequence = this.H;
        if (charSequence != null && (staticLayout2 = this.f15117k0) != null) {
            this.f15125o0 = TextUtils.ellipsize(charSequence, this.V, staticLayout2.getWidth(), TextUtils.TruncateAt.END);
        }
        CharSequence charSequence2 = this.f15125o0;
        float f4 = 0.0f;
        if (charSequence2 != null) {
            this.f15119l0 = a0(this.V, charSequence2);
        } else {
            this.f15119l0 = 0.0f;
        }
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.f15118l, this.I ? 1 : 0);
        int i2 = absoluteGravity & 112;
        if (i2 == 48) {
            this.f15132s = this.f15112i.top;
        } else if (i2 != 80) {
            this.f15132s = this.f15112i.centerY() - ((this.V.descent() - this.V.ascent()) / 2.0f);
        } else {
            this.f15132s = this.f15112i.bottom + this.V.ascent();
        }
        int i4 = absoluteGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i4 == 1) {
            this.f15135u = this.f15112i.centerX() - (this.f15119l0 / 2.0f);
        } else if (i4 != 5) {
            this.f15135u = this.f15112i.left;
        } else {
            this.f15135u = this.f15112i.right - this.f15119l0;
        }
        i(0.0f, z3);
        float height = this.f15117k0 != null ? staticLayout.getHeight() : 0.0f;
        StaticLayout staticLayout3 = this.f15117k0;
        if (staticLayout3 != null && this.f15127p0 > 1) {
            f4 = staticLayout3.getWidth();
        } else {
            CharSequence charSequence3 = this.H;
            if (charSequence3 != null) {
                f4 = a0(this.V, charSequence3);
            }
        }
        StaticLayout staticLayout4 = this.f15117k0;
        this.f15128q = staticLayout4 != null ? staticLayout4.getLineCount() : 0;
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(this.f15116k, this.I ? 1 : 0);
        int i5 = absoluteGravity2 & 112;
        if (i5 == 48) {
            this.f15130r = this.f15110h.top;
        } else if (i5 != 80) {
            this.f15130r = this.f15110h.centerY() - (height / 2.0f);
        } else {
            this.f15130r = (this.f15110h.bottom - height) + this.V.descent();
        }
        int i6 = absoluteGravity2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i6 == 1) {
            this.f15134t = this.f15110h.centerX() - (f4 / 2.0f);
        } else if (i6 != 5) {
            this.f15134t = this.f15110h.left;
        } else {
            this.f15134t = this.f15110h.right - f4;
        }
        j();
        D0(this.f15100c);
    }

    private void c() {
        g(this.f15100c);
    }

    private float d(@FloatRange(from = 0.0d, to = 1.0d) float f4) {
        float f5 = this.f15106f;
        if (f4 <= f5) {
            return com.google.android.material.animation.a.b(1.0f, 0.0f, this.f15104e, f5, f4);
        }
        return com.google.android.material.animation.a.b(0.0f, 1.0f, f5, 1.0f, f4);
    }

    private float e() {
        float f4 = this.f15104e;
        return f4 + ((1.0f - f4) * 0.5f);
    }

    private static boolean e0(@NonNull Rect rect, int i2, int i4, int i5, int i6) {
        return rect.left == i2 && rect.top == i4 && rect.right == i5 && rect.bottom == i6;
    }

    private boolean f(@NonNull CharSequence charSequence) {
        boolean U = U();
        return this.J ? X(charSequence, U) : U;
    }

    private void g(float f4) {
        float f5;
        S(f4);
        if (this.f15102d) {
            if (f4 < this.f15106f) {
                this.f15136v = this.f15134t;
                this.f15137w = this.f15130r;
                D0(0.0f);
                f5 = 0.0f;
            } else {
                this.f15136v = this.f15135u;
                this.f15137w = this.f15132s - Math.max(0, this.f15108g);
                D0(1.0f);
                f5 = 1.0f;
            }
        } else {
            this.f15136v = Y(this.f15134t, this.f15135u, f4, this.X);
            this.f15137w = Y(this.f15130r, this.f15132s, f4, this.X);
            D0(f4);
            f5 = f4;
        }
        TimeInterpolator timeInterpolator = com.google.android.material.animation.a.f14005b;
        i0(1.0f - Y(0.0f, 1.0f, 1.0f - f4, timeInterpolator));
        t0(Y(1.0f, 0.0f, f4, timeInterpolator));
        if (this.f15126p != this.f15124o) {
            this.V.setColor(a(y(), w(), f5));
        } else {
            this.V.setColor(w());
        }
        if (Build.VERSION.SDK_INT >= 21) {
            float f6 = this.f15111h0;
            float f7 = this.f15113i0;
            if (f6 != f7) {
                this.V.setLetterSpacing(Y(f7, f6, f4, timeInterpolator));
            } else {
                this.V.setLetterSpacing(f6);
            }
        }
        this.P = Y(this.f15103d0, this.Z, f4, null);
        this.Q = Y(this.f15105e0, this.f15097a0, f4, null);
        this.R = Y(this.f15107f0, this.f15099b0, f4, null);
        int a4 = a(x(this.f15109g0), x(this.f15101c0), f4);
        this.S = a4;
        this.V.setShadowLayer(this.P, this.Q, this.R, a4);
        if (this.f15102d) {
            int alpha = this.V.getAlpha();
            this.V.setAlpha((int) (d(f4) * alpha));
        }
        ViewCompat.postInvalidateOnAnimation(this.f15096a);
    }

    private void h(float f4) {
        i(f4, false);
    }

    private void i(float f4, boolean z3) {
        boolean z4;
        float f5;
        float f6;
        boolean z5;
        if (this.G == null) {
            return;
        }
        float width = this.f15112i.width();
        float width2 = this.f15110h.width();
        if (T(f4, 1.0f)) {
            f5 = this.f15122n;
            f6 = this.f15111h0;
            this.N = 1.0f;
            Typeface typeface = this.D;
            Typeface typeface2 = this.f15138x;
            if (typeface != typeface2) {
                this.D = typeface2;
                z5 = true;
            } else {
                z5 = false;
            }
        } else {
            float f7 = this.f15120m;
            float f8 = this.f15113i0;
            Typeface typeface3 = this.D;
            Typeface typeface4 = this.A;
            if (typeface3 != typeface4) {
                this.D = typeface4;
                z4 = true;
            } else {
                z4 = false;
            }
            if (T(f4, 0.0f)) {
                this.N = 1.0f;
            } else {
                this.N = Y(this.f15120m, this.f15122n, f4, this.Y) / this.f15120m;
            }
            float f9 = this.f15122n / this.f15120m;
            width = (!z3 && width2 * f9 > width) ? Math.min(width / f9, width2) : width2;
            f5 = f7;
            f6 = f8;
            z5 = z4;
        }
        if (width > 0.0f) {
            z5 = ((this.O > f5 ? 1 : (this.O == f5 ? 0 : -1)) != 0) || ((this.f15115j0 > f6 ? 1 : (this.f15115j0 == f6 ? 0 : -1)) != 0) || this.U || z5;
            this.O = f5;
            this.f15115j0 = f6;
            this.U = false;
        }
        if (this.H == null || z5) {
            this.V.setTextSize(this.O);
            this.V.setTypeface(this.D);
            if (Build.VERSION.SDK_INT >= 21) {
                this.V.setLetterSpacing(this.f15115j0);
            }
            this.V.setLinearText(this.N != 1.0f);
            this.I = f(this.G);
            StaticLayout k4 = k(N0() ? this.f15127p0 : 1, width, this.I);
            this.f15117k0 = k4;
            this.H = k4.getText();
        }
    }

    private void i0(float f4) {
        this.f15121m0 = f4;
        ViewCompat.postInvalidateOnAnimation(this.f15096a);
    }

    private void j() {
        Bitmap bitmap = this.L;
        if (bitmap != null) {
            bitmap.recycle();
            this.L = null;
        }
    }

    private StaticLayout k(int i2, float f4, boolean z3) {
        StaticLayout staticLayout;
        try {
            staticLayout = StaticLayoutBuilderCompat.c(this.G, this.V, (int) f4).e(TextUtils.TruncateAt.END).i(z3).d(i2 == 1 ? Layout.Alignment.ALIGN_NORMAL : N()).h(false).k(i2).j(this.f15129q0, this.f15131r0).g(this.f15133s0).a();
        } catch (StaticLayoutBuilderCompat.StaticLayoutBuilderCompatException e4) {
            e4.getCause().getMessage();
            staticLayout = null;
        }
        return (StaticLayout) Preconditions.checkNotNull(staticLayout);
    }

    private void m(@NonNull Canvas canvas, float f4, float f5) {
        int alpha = this.V.getAlpha();
        canvas.translate(f4, f5);
        float f6 = alpha;
        this.V.setAlpha((int) (this.f15123n0 * f6));
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31) {
            TextPaint textPaint = this.V;
            textPaint.setShadowLayer(this.P, this.Q, this.R, com.google.android.material.color.m.a(this.S, textPaint.getAlpha()));
        }
        this.f15117k0.draw(canvas);
        this.V.setAlpha((int) (this.f15121m0 * f6));
        if (i2 >= 31) {
            TextPaint textPaint2 = this.V;
            textPaint2.setShadowLayer(this.P, this.Q, this.R, com.google.android.material.color.m.a(this.S, textPaint2.getAlpha()));
        }
        int lineBaseline = this.f15117k0.getLineBaseline(0);
        CharSequence charSequence = this.f15125o0;
        float f7 = lineBaseline;
        canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f7, this.V);
        if (i2 >= 31) {
            this.V.setShadowLayer(this.P, this.Q, this.R, this.S);
        }
        if (this.f15102d) {
            return;
        }
        String trim = this.f15125o0.toString().trim();
        if (trim.endsWith(f15092v0)) {
            trim = trim.substring(0, trim.length() - 1);
        }
        String str = trim;
        this.V.setAlpha(alpha);
        canvas.drawText(str, 0, Math.min(this.f15117k0.getLineEnd(0), str.length()), 0.0f, f7, (Paint) this.V);
    }

    private void n() {
        if (this.L != null || this.f15110h.isEmpty() || TextUtils.isEmpty(this.H)) {
            return;
        }
        g(0.0f);
        int width = this.f15117k0.getWidth();
        int height = this.f15117k0.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        this.L = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        this.f15117k0.draw(new Canvas(this.L));
        if (this.M == null) {
            this.M = new Paint(3);
        }
    }

    private boolean n0(Typeface typeface) {
        com.google.android.material.resources.a aVar = this.F;
        if (aVar != null) {
            aVar.c();
        }
        if (this.f15140z != typeface) {
            this.f15140z = typeface;
            Typeface b4 = com.google.android.material.resources.g.b(this.f15096a.getContext().getResources().getConfiguration(), typeface);
            this.f15139y = b4;
            if (b4 == null) {
                b4 = this.f15140z;
            }
            this.f15138x = b4;
            return true;
        }
        return false;
    }

    private float s(int i2, int i4) {
        if (i4 == 17 || (i4 & 7) == 1) {
            return (i2 / 2.0f) - (this.f15119l0 / 2.0f);
        }
        return ((i4 & GravityCompat.END) == 8388613 || (i4 & 5) == 5) ? this.I ? this.f15112i.left : this.f15112i.right - this.f15119l0 : this.I ? this.f15112i.right - this.f15119l0 : this.f15112i.left;
    }

    private float t(@NonNull RectF rectF, int i2, int i4) {
        if (i4 == 17 || (i4 & 7) == 1) {
            return (i2 / 2.0f) + (this.f15119l0 / 2.0f);
        }
        return ((i4 & GravityCompat.END) == 8388613 || (i4 & 5) == 5) ? this.I ? rectF.left + this.f15119l0 : this.f15112i.right : this.I ? this.f15112i.right : rectF.left + this.f15119l0;
    }

    private void t0(float f4) {
        this.f15123n0 = f4;
        ViewCompat.postInvalidateOnAnimation(this.f15096a);
    }

    @ColorInt
    private int x(@Nullable ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.T;
        if (iArr != null) {
            return colorStateList.getColorForState(iArr, 0);
        }
        return colorStateList.getDefaultColor();
    }

    @ColorInt
    private int y() {
        return x(this.f15124o);
    }

    private boolean y0(Typeface typeface) {
        com.google.android.material.resources.a aVar = this.E;
        if (aVar != null) {
            aVar.c();
        }
        if (this.C != typeface) {
            this.C = typeface;
            Typeface b4 = com.google.android.material.resources.g.b(this.f15096a.getContext().getResources().getConfiguration(), typeface);
            this.B = b4;
            if (b4 == null) {
                b4 = this.C;
            }
            this.A = b4;
            return true;
        }
        return false;
    }

    public ColorStateList A() {
        return this.f15124o;
    }

    public void A0(boolean z3) {
        this.f15102d = z3;
    }

    public float B() {
        R(this.W);
        return (-this.W.ascent()) + this.W.descent();
    }

    public void B0(float f4) {
        this.f15104e = f4;
        this.f15106f = e();
    }

    public int C() {
        return this.f15116k;
    }

    @RequiresApi(23)
    public void C0(int i2) {
        this.f15133s0 = i2;
    }

    public float D() {
        R(this.W);
        return -this.W.ascent();
    }

    public float E() {
        return this.f15120m;
    }

    @RequiresApi(23)
    public void E0(float f4) {
        this.f15129q0 = f4;
    }

    public Typeface F() {
        Typeface typeface = this.A;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    @RequiresApi(23)
    public void F0(@FloatRange(from = 0.0d) float f4) {
        this.f15131r0 = f4;
    }

    public float G() {
        return this.f15100c;
    }

    public void G0(int i2) {
        if (i2 != this.f15127p0) {
            this.f15127p0 = i2;
            j();
            c0();
        }
    }

    public float H() {
        return this.f15106f;
    }

    public void H0(TimeInterpolator timeInterpolator) {
        this.X = timeInterpolator;
        c0();
    }

    @RequiresApi(23)
    public int I() {
        return this.f15133s0;
    }

    public void I0(boolean z3) {
        this.J = z3;
    }

    public int J() {
        StaticLayout staticLayout = this.f15117k0;
        if (staticLayout != null) {
            return staticLayout.getLineCount();
        }
        return 0;
    }

    public final boolean J0(int[] iArr) {
        this.T = iArr;
        if (W()) {
            c0();
            return true;
        }
        return false;
    }

    @RequiresApi(23)
    public float K() {
        return this.f15117k0.getSpacingAdd();
    }

    public void K0(@Nullable CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.G, charSequence)) {
            this.G = charSequence;
            this.H = null;
            j();
            c0();
        }
    }

    @RequiresApi(23)
    public float L() {
        return this.f15117k0.getSpacingMultiplier();
    }

    public void L0(TimeInterpolator timeInterpolator) {
        this.Y = timeInterpolator;
        c0();
    }

    public int M() {
        return this.f15127p0;
    }

    public void M0(Typeface typeface) {
        boolean n02 = n0(typeface);
        boolean y02 = y0(typeface);
        if (n02 || y02) {
            c0();
        }
    }

    @Nullable
    public TimeInterpolator O() {
        return this.X;
    }

    @Nullable
    public CharSequence P() {
        return this.G;
    }

    public boolean V() {
        return this.J;
    }

    public final boolean W() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f15126p;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f15124o) != null && colorStateList.isStateful());
    }

    public void Z(@NonNull Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 31) {
            Typeface typeface = this.f15140z;
            if (typeface != null) {
                this.f15139y = com.google.android.material.resources.g.b(configuration, typeface);
            }
            Typeface typeface2 = this.C;
            if (typeface2 != null) {
                this.B = com.google.android.material.resources.g.b(configuration, typeface2);
            }
            Typeface typeface3 = this.f15139y;
            if (typeface3 == null) {
                typeface3 = this.f15140z;
            }
            this.f15138x = typeface3;
            Typeface typeface4 = this.B;
            if (typeface4 == null) {
                typeface4 = this.C;
            }
            this.A = typeface4;
            d0(true);
        }
    }

    void b0() {
        this.f15098b = this.f15112i.width() > 0 && this.f15112i.height() > 0 && this.f15110h.width() > 0 && this.f15110h.height() > 0;
    }

    public void c0() {
        d0(false);
    }

    public void d0(boolean z3) {
        if ((this.f15096a.getHeight() <= 0 || this.f15096a.getWidth() <= 0) && !z3) {
            return;
        }
        b(z3);
        c();
    }

    public void f0(int i2, int i4, int i5, int i6) {
        if (e0(this.f15112i, i2, i4, i5, i6)) {
            return;
        }
        this.f15112i.set(i2, i4, i5, i6);
        this.U = true;
        b0();
    }

    public void g0(@NonNull Rect rect) {
        f0(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void h0(int i2) {
        com.google.android.material.resources.d dVar = new com.google.android.material.resources.d(this.f15096a.getContext(), i2);
        if (dVar.i() != null) {
            this.f15126p = dVar.i();
        }
        if (dVar.j() != 0.0f) {
            this.f15122n = dVar.j();
        }
        ColorStateList colorStateList = dVar.f15492c;
        if (colorStateList != null) {
            this.f15101c0 = colorStateList;
        }
        this.f15097a0 = dVar.f15497h;
        this.f15099b0 = dVar.f15498i;
        this.Z = dVar.f15499j;
        this.f15111h0 = dVar.f15501l;
        com.google.android.material.resources.a aVar = this.F;
        if (aVar != null) {
            aVar.c();
        }
        this.F = new com.google.android.material.resources.a(new a(), dVar.e());
        dVar.h(this.f15096a.getContext(), this.F);
        c0();
    }

    public void j0(ColorStateList colorStateList) {
        if (this.f15126p != colorStateList) {
            this.f15126p = colorStateList;
            c0();
        }
    }

    public void k0(int i2) {
        if (this.f15118l != i2) {
            this.f15118l = i2;
            c0();
        }
    }

    public void l(@NonNull Canvas canvas) {
        int save = canvas.save();
        if (this.H == null || !this.f15098b) {
            return;
        }
        this.V.setTextSize(this.O);
        float f4 = this.f15136v;
        float f5 = this.f15137w;
        boolean z3 = this.K && this.L != null;
        float f6 = this.N;
        if (f6 != 1.0f && !this.f15102d) {
            canvas.scale(f6, f6, f4, f5);
        }
        if (z3) {
            canvas.drawBitmap(this.L, f4, f5, this.M);
            canvas.restoreToCount(save);
            return;
        }
        if (N0() && (!this.f15102d || this.f15100c > this.f15106f)) {
            m(canvas, this.f15136v - this.f15117k0.getLineStart(0), f5);
        } else {
            canvas.translate(f4, f5);
            this.f15117k0.draw(canvas);
        }
        canvas.restoreToCount(save);
    }

    public void l0(float f4) {
        if (this.f15122n != f4) {
            this.f15122n = f4;
            c0();
        }
    }

    public void m0(Typeface typeface) {
        if (n0(typeface)) {
            c0();
        }
    }

    public void o(@NonNull RectF rectF, int i2, int i4) {
        this.I = f(this.G);
        rectF.left = s(i2, i4);
        rectF.top = this.f15112i.top;
        rectF.right = t(rectF, i2, i4);
        rectF.bottom = this.f15112i.top + r();
    }

    public void o0(int i2) {
        this.f15108g = i2;
    }

    public ColorStateList p() {
        return this.f15126p;
    }

    public void p0(int i2, int i4, int i5, int i6) {
        if (e0(this.f15110h, i2, i4, i5, i6)) {
            return;
        }
        this.f15110h.set(i2, i4, i5, i6);
        this.U = true;
        b0();
    }

    public int q() {
        return this.f15118l;
    }

    public void q0(@NonNull Rect rect) {
        p0(rect.left, rect.top, rect.right, rect.bottom);
    }

    public float r() {
        Q(this.W);
        return -this.W.ascent();
    }

    public void r0(float f4) {
        if (this.f15113i0 != f4) {
            this.f15113i0 = f4;
            c0();
        }
    }

    public void s0(int i2) {
        com.google.android.material.resources.d dVar = new com.google.android.material.resources.d(this.f15096a.getContext(), i2);
        if (dVar.i() != null) {
            this.f15124o = dVar.i();
        }
        if (dVar.j() != 0.0f) {
            this.f15120m = dVar.j();
        }
        ColorStateList colorStateList = dVar.f15492c;
        if (colorStateList != null) {
            this.f15109g0 = colorStateList;
        }
        this.f15105e0 = dVar.f15497h;
        this.f15107f0 = dVar.f15498i;
        this.f15103d0 = dVar.f15499j;
        this.f15113i0 = dVar.f15501l;
        com.google.android.material.resources.a aVar = this.E;
        if (aVar != null) {
            aVar.c();
        }
        this.E = new com.google.android.material.resources.a(new C0109b(), dVar.e());
        dVar.h(this.f15096a.getContext(), this.E);
        c0();
    }

    public float u() {
        return this.f15122n;
    }

    public void u0(ColorStateList colorStateList) {
        if (this.f15124o != colorStateList) {
            this.f15124o = colorStateList;
            c0();
        }
    }

    public Typeface v() {
        Typeface typeface = this.f15138x;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public void v0(int i2) {
        if (this.f15116k != i2) {
            this.f15116k = i2;
            c0();
        }
    }

    @ColorInt
    public int w() {
        return x(this.f15126p);
    }

    public void w0(float f4) {
        if (this.f15120m != f4) {
            this.f15120m = f4;
            c0();
        }
    }

    public void x0(Typeface typeface) {
        if (y0(typeface)) {
            c0();
        }
    }

    public int z() {
        return this.f15128q;
    }

    public void z0(float f4) {
        float clamp = MathUtils.clamp(f4, 0.0f, 1.0f);
        if (clamp != this.f15100c) {
            this.f15100c = clamp;
            c();
        }
    }
}
