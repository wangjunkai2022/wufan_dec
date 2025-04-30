package com.google.android.material.badge;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.PluralsRes;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.XmlRes;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.badge.BadgeState;
import com.google.android.material.internal.l;
import com.google.android.material.internal.o;
import com.google.android.material.resources.d;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import java.util.Locale;
/* loaded from: classes2.dex */
public class BadgeDrawable extends Drawable implements l.b {

    /* renamed from: n  reason: collision with root package name */
    public static final int f14028n = 8388661;

    /* renamed from: o  reason: collision with root package name */
    public static final int f14029o = 8388659;

    /* renamed from: p  reason: collision with root package name */
    public static final int f14030p = 8388693;

    /* renamed from: q  reason: collision with root package name */
    public static final int f14031q = 8388691;

    /* renamed from: r  reason: collision with root package name */
    private static final int f14032r = 9;
    @StyleRes

    /* renamed from: s  reason: collision with root package name */
    private static final int f14033s = R.style.Widget_MaterialComponents_Badge;
    @AttrRes

    /* renamed from: t  reason: collision with root package name */
    private static final int f14034t = R.attr.badgeStyle;

    /* renamed from: u  reason: collision with root package name */
    static final String f14035u = "+";
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<Context> f14036a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final MaterialShapeDrawable f14037b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final l f14038c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final Rect f14039d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final BadgeState f14040e;

    /* renamed from: f  reason: collision with root package name */
    private float f14041f;

    /* renamed from: g  reason: collision with root package name */
    private float f14042g;

    /* renamed from: h  reason: collision with root package name */
    private int f14043h;

    /* renamed from: i  reason: collision with root package name */
    private float f14044i;

    /* renamed from: j  reason: collision with root package name */
    private float f14045j;

    /* renamed from: k  reason: collision with root package name */
    private float f14046k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private WeakReference<View> f14047l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private WeakReference<FrameLayout> f14048m;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface BadgeGravity {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f14049a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ FrameLayout f14050b;

        a(View view, FrameLayout frameLayout) {
            this.f14049a = view;
            this.f14050b = frameLayout;
        }

        @Override // java.lang.Runnable
        public void run() {
            BadgeDrawable.this.i0(this.f14049a, this.f14050b);
        }
    }

    private BadgeDrawable(@NonNull Context context, @XmlRes int i2, @AttrRes int i4, @StyleRes int i5, @Nullable BadgeState.State state) {
        this.f14036a = new WeakReference<>(context);
        o.c(context);
        this.f14039d = new Rect();
        this.f14037b = new MaterialShapeDrawable();
        l lVar = new l(this);
        this.f14038c = lVar;
        lVar.e().setTextAlign(Paint.Align.CENTER);
        Z(R.style.TextAppearance_MaterialComponents_Badge);
        this.f14040e = new BadgeState(context, i2, i4, i5, state);
        J();
    }

    private void C() {
        this.f14038c.e().setAlpha(getAlpha());
        invalidateSelf();
    }

    private void D() {
        ColorStateList valueOf = ColorStateList.valueOf(this.f14040e.f());
        if (this.f14037b.y() != valueOf) {
            this.f14037b.o0(valueOf);
            invalidateSelf();
        }
    }

    private void E() {
        WeakReference<View> weakReference = this.f14047l;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        View view = this.f14047l.get();
        WeakReference<FrameLayout> weakReference2 = this.f14048m;
        i0(view, weakReference2 != null ? weakReference2.get() : null);
    }

    private void F() {
        this.f14038c.e().setColor(this.f14040e.h());
        invalidateSelf();
    }

    private void G() {
        k0();
        this.f14038c.j(true);
        j0();
        invalidateSelf();
    }

    private void H() {
        this.f14038c.j(true);
        j0();
        invalidateSelf();
    }

    private void I() {
        boolean u3 = this.f14040e.u();
        setVisible(u3, false);
        if (!com.google.android.material.badge.a.f14079a || p() == null || u3) {
            return;
        }
        ((ViewGroup) p().getParent()).invalidate();
    }

    private void J() {
        G();
        H();
        C();
        D();
        F();
        E();
        j0();
        I();
    }

    private void Y(@Nullable d dVar) {
        Context context;
        if (this.f14038c.d() == dVar || (context = this.f14036a.get()) == null) {
            return;
        }
        this.f14038c.i(dVar, context);
        j0();
    }

    private void Z(@StyleRes int i2) {
        Context context = this.f14036a.get();
        if (context == null) {
            return;
        }
        Y(new d(context, i2));
    }

    private void b(@NonNull Context context, @NonNull Rect rect, @NonNull View view) {
        int i2;
        float f4;
        float f5;
        int x3 = x();
        int g4 = this.f14040e.g();
        if (g4 != 8388691 && g4 != 8388693) {
            this.f14042g = rect.top + x3;
        } else {
            this.f14042g = rect.bottom - x3;
        }
        if (u() <= 9) {
            float f6 = !B() ? this.f14040e.f14056c : this.f14040e.f14057d;
            this.f14044i = f6;
            this.f14046k = f6;
            this.f14045j = f6;
        } else {
            float f7 = this.f14040e.f14057d;
            this.f14044i = f7;
            this.f14046k = f7;
            this.f14045j = (this.f14038c.f(m()) / 2.0f) + this.f14040e.f14058e;
        }
        Resources resources = context.getResources();
        if (B()) {
            i2 = R.dimen.mtrl_badge_text_horizontal_edge_offset;
        } else {
            i2 = R.dimen.mtrl_badge_horizontal_edge_offset;
        }
        int dimensionPixelSize = resources.getDimensionPixelSize(i2);
        int w3 = w();
        int g5 = this.f14040e.g();
        if (g5 != 8388659 && g5 != 8388691) {
            if (ViewCompat.getLayoutDirection(view) == 0) {
                f5 = ((rect.right + this.f14045j) - dimensionPixelSize) - w3;
            } else {
                f5 = (rect.left - this.f14045j) + dimensionPixelSize + w3;
            }
            this.f14041f = f5;
            return;
        }
        if (ViewCompat.getLayoutDirection(view) == 0) {
            f4 = (rect.left - this.f14045j) + dimensionPixelSize + w3;
        } else {
            f4 = ((rect.right + this.f14045j) - dimensionPixelSize) - w3;
        }
        this.f14041f = f4;
    }

    @NonNull
    public static BadgeDrawable d(@NonNull Context context) {
        return new BadgeDrawable(context, 0, f14034t, f14033s, null);
    }

    @NonNull
    public static BadgeDrawable e(@NonNull Context context, @XmlRes int i2) {
        return new BadgeDrawable(context, i2, f14034t, f14033s, null);
    }

    private void e0(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup == null || viewGroup.getId() != R.id.mtrl_anchor_parent) {
            WeakReference<FrameLayout> weakReference = this.f14048m;
            if (weakReference == null || weakReference.get() != viewGroup) {
                f0(view);
                FrameLayout frameLayout = new FrameLayout(view.getContext());
                frameLayout.setId(R.id.mtrl_anchor_parent);
                frameLayout.setClipChildren(false);
                frameLayout.setClipToPadding(false);
                frameLayout.setLayoutParams(view.getLayoutParams());
                frameLayout.setMinimumWidth(view.getWidth());
                frameLayout.setMinimumHeight(view.getHeight());
                int indexOfChild = viewGroup.indexOfChild(view);
                viewGroup.removeViewAt(indexOfChild);
                view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                frameLayout.addView(view);
                viewGroup.addView(frameLayout, indexOfChild);
                this.f14048m = new WeakReference<>(frameLayout);
                frameLayout.post(new a(view, frameLayout));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static BadgeDrawable f(@NonNull Context context, @NonNull BadgeState.State state) {
        return new BadgeDrawable(context, 0, f14034t, f14033s, state);
    }

    private static void f0(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
    }

    private void g(Canvas canvas) {
        Rect rect = new Rect();
        String m4 = m();
        this.f14038c.e().getTextBounds(m4, 0, m4.length(), rect);
        canvas.drawText(m4, this.f14041f, this.f14042g + (rect.height() / 2), this.f14038c.e());
    }

    private void j0() {
        Context context = this.f14036a.get();
        WeakReference<View> weakReference = this.f14047l;
        View view = weakReference != null ? weakReference.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        rect.set(this.f14039d);
        Rect rect2 = new Rect();
        view.getDrawingRect(rect2);
        WeakReference<FrameLayout> weakReference2 = this.f14048m;
        FrameLayout frameLayout = weakReference2 != null ? weakReference2.get() : null;
        if (frameLayout != null || com.google.android.material.badge.a.f14079a) {
            if (frameLayout == null) {
                frameLayout = (ViewGroup) view.getParent();
            }
            frameLayout.offsetDescendantRectToMyCoords(view, rect2);
        }
        b(context, rect2, view);
        com.google.android.material.badge.a.o(this.f14039d, this.f14041f, this.f14042g, this.f14045j, this.f14046k);
        this.f14037b.k0(this.f14044i);
        if (rect.equals(this.f14039d)) {
            return;
        }
        this.f14037b.setBounds(this.f14039d);
    }

    private void k0() {
        double d4;
        Double.isNaN(t());
        this.f14043h = ((int) Math.pow(10.0d, d4 - 1.0d)) - 1;
    }

    @NonNull
    private String m() {
        if (u() <= this.f14043h) {
            return NumberFormat.getInstance(this.f14040e.p()).format(u());
        }
        Context context = this.f14036a.get();
        return context == null ? "" : String.format(this.f14040e.p(), context.getString(R.string.mtrl_exceed_max_badge_number_suffix), Integer.valueOf(this.f14043h), f14035u);
    }

    private int w() {
        return (B() ? this.f14040e.l() : this.f14040e.m()) + this.f14040e.c();
    }

    private int x() {
        return (B() ? this.f14040e.r() : this.f14040e.s()) + this.f14040e.d();
    }

    @Px
    public int A() {
        return this.f14040e.s();
    }

    public boolean B() {
        return this.f14040e.t();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void K(int i2) {
        this.f14040e.w(i2);
        j0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void L(@Px int i2) {
        this.f14040e.x(i2);
        j0();
    }

    public void M(@ColorInt int i2) {
        this.f14040e.z(i2);
        D();
    }

    public void N(int i2) {
        if (this.f14040e.g() != i2) {
            this.f14040e.A(i2);
            E();
        }
    }

    public void O(@NonNull Locale locale) {
        if (locale.equals(this.f14040e.p())) {
            return;
        }
        this.f14040e.J(locale);
        invalidateSelf();
    }

    public void P(@ColorInt int i2) {
        if (this.f14038c.e().getColor() != i2) {
            this.f14040e.B(i2);
            F();
        }
    }

    public void Q(@StringRes int i2) {
        this.f14040e.C(i2);
    }

    public void R(CharSequence charSequence) {
        this.f14040e.D(charSequence);
    }

    public void S(@PluralsRes int i2) {
        this.f14040e.E(i2);
    }

    public void T(int i2) {
        V(i2);
        U(i2);
    }

    public void U(@Px int i2) {
        this.f14040e.F(i2);
        j0();
    }

    public void V(@Px int i2) {
        this.f14040e.G(i2);
        j0();
    }

    public void W(int i2) {
        if (this.f14040e.n() != i2) {
            this.f14040e.H(i2);
            G();
        }
    }

    public void X(int i2) {
        int max = Math.max(0, i2);
        if (this.f14040e.o() != max) {
            this.f14040e.I(max);
            H();
        }
    }

    @Override // com.google.android.material.internal.l.b
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void a() {
        invalidateSelf();
    }

    public void a0(int i2) {
        c0(i2);
        b0(i2);
    }

    public void b0(@Px int i2) {
        this.f14040e.K(i2);
        j0();
    }

    public void c() {
        if (B()) {
            this.f14040e.a();
            H();
        }
    }

    public void c0(@Px int i2) {
        this.f14040e.L(i2);
        j0();
    }

    public void d0(boolean z3) {
        this.f14040e.M(z3);
        I();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.f14037b.draw(canvas);
        if (B()) {
            g(canvas);
        }
    }

    public void g0(@NonNull View view) {
        i0(view, null);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f14040e.e();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f14039d.height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f14039d.width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    int h() {
        return this.f14040e.c();
    }

    @Deprecated
    public void h0(@NonNull View view, @Nullable ViewGroup viewGroup) {
        if (viewGroup instanceof FrameLayout) {
            i0(view, (FrameLayout) viewGroup);
            return;
        }
        throw new IllegalArgumentException("customBadgeParent must be a FrameLayout");
    }

    @Px
    int i() {
        return this.f14040e.d();
    }

    public void i0(@NonNull View view, @Nullable FrameLayout frameLayout) {
        this.f14047l = new WeakReference<>(view);
        boolean z3 = com.google.android.material.badge.a.f14079a;
        if (z3 && frameLayout == null) {
            e0(view);
        } else {
            this.f14048m = new WeakReference<>(frameLayout);
        }
        if (!z3) {
            f0(view);
        }
        j0();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return false;
    }

    @ColorInt
    public int j() {
        return this.f14037b.y().getDefaultColor();
    }

    public int k() {
        return this.f14040e.g();
    }

    @NonNull
    public Locale l() {
        return this.f14040e.p();
    }

    @ColorInt
    public int n() {
        return this.f14038c.e().getColor();
    }

    @Nullable
    public CharSequence o() {
        Context context;
        if (isVisible()) {
            if (B()) {
                if (this.f14040e.k() == 0 || (context = this.f14036a.get()) == null) {
                    return null;
                }
                if (u() <= this.f14043h) {
                    return context.getResources().getQuantityString(this.f14040e.k(), u(), Integer.valueOf(u()));
                }
                return context.getString(this.f14040e.i(), Integer.valueOf(this.f14043h));
            }
            return this.f14040e.j();
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.l.b
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Nullable
    public FrameLayout p() {
        WeakReference<FrameLayout> weakReference = this.f14048m;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public int q() {
        return this.f14040e.m();
    }

    @Px
    public int r() {
        return this.f14040e.l();
    }

    @Px
    public int s() {
        return this.f14040e.m();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f14040e.y(i2);
        C();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public int t() {
        return this.f14040e.n();
    }

    public int u() {
        if (B()) {
            return this.f14040e.o();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public BadgeState.State v() {
        return this.f14040e.q();
    }

    public int y() {
        return this.f14040e.s();
    }

    @Px
    public int z() {
        return this.f14040e.r();
    }
}
