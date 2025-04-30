package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AnimatorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import java.util.List;
/* loaded from: classes2.dex */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.AttachedBehavior {

    /* renamed from: r0  reason: collision with root package name */
    private static final int f14872r0 = 0;

    /* renamed from: s0  reason: collision with root package name */
    private static final int f14873s0 = 1;

    /* renamed from: t0  reason: collision with root package name */
    private static final int f14874t0 = 2;
    private int A;
    private final com.google.android.material.floatingactionbutton.a B;
    @NonNull
    private final com.google.android.material.floatingactionbutton.f C;
    @NonNull
    private final com.google.android.material.floatingactionbutton.f D;
    private final com.google.android.material.floatingactionbutton.f E;
    private final com.google.android.material.floatingactionbutton.f F;
    private final int G;
    private int H;
    private int I;
    @NonNull
    private final CoordinatorLayout.Behavior<ExtendedFloatingActionButton> J;
    private boolean K;

    /* renamed from: n0  reason: collision with root package name */
    private boolean f14879n0;

    /* renamed from: o0  reason: collision with root package name */
    private boolean f14880o0;
    @NonNull

    /* renamed from: p0  reason: collision with root package name */
    protected ColorStateList f14881p0;

    /* renamed from: q0  reason: collision with root package name */
    private static final int f14871q0 = R.style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon;

    /* renamed from: u0  reason: collision with root package name */
    static final Property<View, Float> f14875u0 = new d(Float.class, "width");

    /* renamed from: v0  reason: collision with root package name */
    static final Property<View, Float> f14876v0 = new e(Float.class, "height");

    /* renamed from: w0  reason: collision with root package name */
    static final Property<View, Float> f14877w0 = new f(Float.class, "paddingStart");

    /* renamed from: x0  reason: collision with root package name */
    static final Property<View, Float> f14878x0 = new g(Float.class, "paddingEnd");

    /* loaded from: classes2.dex */
    class a implements l {
        a() {
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.l
        public int a() {
            return (ExtendedFloatingActionButton.this.getMeasuredWidth() - (ExtendedFloatingActionButton.this.getCollapsedPadding() * 2)) + ExtendedFloatingActionButton.this.H + ExtendedFloatingActionButton.this.I;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.l
        public int b() {
            return ExtendedFloatingActionButton.this.I;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.l
        public ViewGroup.LayoutParams c() {
            return new ViewGroup.LayoutParams(-2, -2);
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.l
        public int d() {
            return ExtendedFloatingActionButton.this.H;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.l
        public int getHeight() {
            return ExtendedFloatingActionButton.this.getMeasuredHeight();
        }
    }

    /* loaded from: classes2.dex */
    class b implements l {
        b() {
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.l
        public int a() {
            return ExtendedFloatingActionButton.this.getCollapsedSize();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.l
        public int b() {
            return ExtendedFloatingActionButton.this.getCollapsedPadding();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.l
        public ViewGroup.LayoutParams c() {
            return new ViewGroup.LayoutParams(a(), getHeight());
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.l
        public int d() {
            return ExtendedFloatingActionButton.this.getCollapsedPadding();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.l
        public int getHeight() {
            return ExtendedFloatingActionButton.this.getCollapsedSize();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private boolean f14891a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.google.android.material.floatingactionbutton.f f14892b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ j f14893c;

        c(com.google.android.material.floatingactionbutton.f fVar, j jVar) {
            this.f14892b = fVar;
            this.f14893c = jVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f14891a = true;
            this.f14892b.f();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f14892b.i();
            if (this.f14891a) {
                return;
            }
            this.f14892b.m(this.f14893c);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f14892b.onAnimationStart(animator);
            this.f14891a = false;
        }
    }

    /* loaded from: classes2.dex */
    class d extends Property<View, Float> {
        d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        @NonNull
        /* renamed from: a */
        public Float get(@NonNull View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(@NonNull View view, @NonNull Float f4) {
            view.getLayoutParams().width = f4.intValue();
            view.requestLayout();
        }
    }

    /* loaded from: classes2.dex */
    class e extends Property<View, Float> {
        e(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        @NonNull
        /* renamed from: a */
        public Float get(@NonNull View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(@NonNull View view, @NonNull Float f4) {
            view.getLayoutParams().height = f4.intValue();
            view.requestLayout();
        }
    }

    /* loaded from: classes2.dex */
    class f extends Property<View, Float> {
        f(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        @NonNull
        /* renamed from: a */
        public Float get(@NonNull View view) {
            return Float.valueOf(ViewCompat.getPaddingStart(view));
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(@NonNull View view, @NonNull Float f4) {
            ViewCompat.setPaddingRelative(view, f4.intValue(), view.getPaddingTop(), ViewCompat.getPaddingEnd(view), view.getPaddingBottom());
        }
    }

    /* loaded from: classes2.dex */
    class g extends Property<View, Float> {
        g(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        @NonNull
        /* renamed from: a */
        public Float get(@NonNull View view) {
            return Float.valueOf(ViewCompat.getPaddingEnd(view));
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(@NonNull View view, @NonNull Float f4) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), view.getPaddingTop(), f4.intValue(), view.getPaddingBottom());
        }
    }

    /* loaded from: classes2.dex */
    class h extends com.google.android.material.floatingactionbutton.b {

        /* renamed from: g  reason: collision with root package name */
        private final l f14895g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean f14896h;

        h(com.google.android.material.floatingactionbutton.a aVar, l lVar, boolean z3) {
            super(ExtendedFloatingActionButton.this, aVar);
            this.f14895g = lVar;
            this.f14896h = z3;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void b() {
            ExtendedFloatingActionButton.this.K = this.f14896h;
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.width = this.f14895g.c().width;
            layoutParams.height = this.f14895g.c().height;
            ViewCompat.setPaddingRelative(ExtendedFloatingActionButton.this, this.f14895g.d(), ExtendedFloatingActionButton.this.getPaddingTop(), this.f14895g.b(), ExtendedFloatingActionButton.this.getPaddingBottom());
            ExtendedFloatingActionButton.this.requestLayout();
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public boolean d() {
            return this.f14896h == ExtendedFloatingActionButton.this.K || ExtendedFloatingActionButton.this.getIcon() == null || TextUtils.isEmpty(ExtendedFloatingActionButton.this.getText());
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public int g() {
            if (this.f14896h) {
                return R.animator.mtrl_extended_fab_change_size_expand_motion_spec;
            }
            return R.animator.mtrl_extended_fab_change_size_collapse_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void i() {
            super.i();
            ExtendedFloatingActionButton.this.f14879n0 = false;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(false);
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.width = this.f14895g.c().width;
            layoutParams.height = this.f14895g.c().height;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        @NonNull
        public AnimatorSet k() {
            com.google.android.material.animation.h a4 = a();
            if (a4.j("width")) {
                PropertyValuesHolder[] g4 = a4.g("width");
                g4[0].setFloatValues(ExtendedFloatingActionButton.this.getWidth(), this.f14895g.a());
                a4.l("width", g4);
            }
            if (a4.j("height")) {
                PropertyValuesHolder[] g5 = a4.g("height");
                g5[0].setFloatValues(ExtendedFloatingActionButton.this.getHeight(), this.f14895g.getHeight());
                a4.l("height", g5);
            }
            if (a4.j("paddingStart")) {
                PropertyValuesHolder[] g6 = a4.g("paddingStart");
                g6[0].setFloatValues(ViewCompat.getPaddingStart(ExtendedFloatingActionButton.this), this.f14895g.d());
                a4.l("paddingStart", g6);
            }
            if (a4.j("paddingEnd")) {
                PropertyValuesHolder[] g7 = a4.g("paddingEnd");
                g7[0].setFloatValues(ViewCompat.getPaddingEnd(ExtendedFloatingActionButton.this), this.f14895g.b());
                a4.l("paddingEnd", g7);
            }
            if (a4.j("labelOpacity")) {
                PropertyValuesHolder[] g8 = a4.g("labelOpacity");
                boolean z3 = this.f14896h;
                g8[0].setFloatValues(z3 ? 0.0f : 1.0f, z3 ? 1.0f : 0.0f);
                a4.l("labelOpacity", g8);
            }
            return super.o(a4);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void m(@Nullable j jVar) {
            if (jVar == null) {
                return;
            }
            if (this.f14896h) {
                jVar.a(ExtendedFloatingActionButton.this);
            } else {
                jVar.d(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.K = this.f14896h;
            ExtendedFloatingActionButton.this.f14879n0 = true;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(true);
        }
    }

    /* loaded from: classes2.dex */
    class i extends com.google.android.material.floatingactionbutton.b {

        /* renamed from: g  reason: collision with root package name */
        private boolean f14898g;

        public i(com.google.android.material.floatingactionbutton.a aVar) {
            super(ExtendedFloatingActionButton.this, aVar);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void b() {
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public boolean d() {
            return ExtendedFloatingActionButton.this.I();
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void f() {
            super.f();
            this.f14898g = true;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public int g() {
            return R.animator.mtrl_extended_fab_hide_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void i() {
            super.i();
            ExtendedFloatingActionButton.this.A = 0;
            if (this.f14898g) {
                return;
            }
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void m(@Nullable j jVar) {
            if (jVar != null) {
                jVar.b(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            this.f14898g = false;
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.A = 1;
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class j {
        public void a(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void b(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void c(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void d(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }
    }

    /* loaded from: classes2.dex */
    class k extends com.google.android.material.floatingactionbutton.b {
        public k(com.google.android.material.floatingactionbutton.a aVar) {
            super(ExtendedFloatingActionButton.this, aVar);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void b() {
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.setAlpha(1.0f);
            ExtendedFloatingActionButton.this.setScaleY(1.0f);
            ExtendedFloatingActionButton.this.setScaleX(1.0f);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public boolean d() {
            return ExtendedFloatingActionButton.this.J();
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public int g() {
            return R.animator.mtrl_extended_fab_show_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void i() {
            super.i();
            ExtendedFloatingActionButton.this.A = 0;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void m(@Nullable j jVar) {
            if (jVar != null) {
                jVar.c(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.A = 2;
        }
    }

    /* loaded from: classes2.dex */
    interface l {
        int a();

        int b();

        ViewGroup.LayoutParams c();

        int d();

        int getHeight();
    }

    public ExtendedFloatingActionButton(@NonNull Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean I() {
        return getVisibility() == 0 ? this.A == 1 : this.A != 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean J() {
        return getVisibility() != 0 ? this.A == 2 : this.A != 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K(@NonNull com.google.android.material.floatingactionbutton.f fVar, @Nullable j jVar) {
        if (fVar.d()) {
            return;
        }
        if (!Q()) {
            fVar.b();
            fVar.m(jVar);
            return;
        }
        measure(0, 0);
        AnimatorSet k4 = fVar.k();
        k4.addListener(new c(fVar, jVar));
        for (Animator.AnimatorListener animatorListener : fVar.l()) {
            k4.addListener(animatorListener);
        }
        k4.start();
    }

    private void P() {
        this.f14881p0 = getTextColors();
    }

    private boolean Q() {
        return (ViewCompat.isLaidOut(this) || (!J() && this.f14880o0)) && !isInEditMode();
    }

    public void A(@NonNull Animator.AnimatorListener animatorListener) {
        this.F.h(animatorListener);
    }

    public void B(@NonNull Animator.AnimatorListener animatorListener) {
        this.E.h(animatorListener);
    }

    public void C(@NonNull Animator.AnimatorListener animatorListener) {
        this.C.h(animatorListener);
    }

    public void D() {
        K(this.D, null);
    }

    public void E(@NonNull j jVar) {
        K(this.D, jVar);
    }

    public void F() {
        K(this.F, null);
    }

    public void G(@NonNull j jVar) {
        K(this.F, jVar);
    }

    public final boolean H() {
        return this.K;
    }

    public void L(@NonNull Animator.AnimatorListener animatorListener) {
        this.D.e(animatorListener);
    }

    public void M(@NonNull Animator.AnimatorListener animatorListener) {
        this.F.e(animatorListener);
    }

    public void N(@NonNull Animator.AnimatorListener animatorListener) {
        this.E.e(animatorListener);
    }

    public void O(@NonNull Animator.AnimatorListener animatorListener) {
        this.C.e(animatorListener);
    }

    public void R() {
        K(this.E, null);
    }

    public void S(@NonNull j jVar) {
        K(this.E, jVar);
    }

    public void T() {
        K(this.C, null);
    }

    public void U(@NonNull j jVar) {
        K(this.C, jVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void V(@NonNull ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<ExtendedFloatingActionButton> getBehavior() {
        return this.J;
    }

    int getCollapsedPadding() {
        return (getCollapsedSize() - getIconSize()) / 2;
    }

    @VisibleForTesting
    int getCollapsedSize() {
        int i2 = this.G;
        return i2 < 0 ? (Math.min(ViewCompat.getPaddingStart(this), ViewCompat.getPaddingEnd(this)) * 2) + getIconSize() : i2;
    }

    @Nullable
    public com.google.android.material.animation.h getExtendMotionSpec() {
        return this.D.c();
    }

    @Nullable
    public com.google.android.material.animation.h getHideMotionSpec() {
        return this.F.c();
    }

    @Nullable
    public com.google.android.material.animation.h getShowMotionSpec() {
        return this.E.c();
    }

    @Nullable
    public com.google.android.material.animation.h getShrinkMotionSpec() {
        return this.C.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.K && TextUtils.isEmpty(getText()) && getIcon() != null) {
            this.K = false;
            this.C.b();
        }
    }

    public void setAnimateShowBeforeLayout(boolean z3) {
        this.f14880o0 = z3;
    }

    public void setExtendMotionSpec(@Nullable com.google.android.material.animation.h hVar) {
        this.D.j(hVar);
    }

    public void setExtendMotionSpecResource(@AnimatorRes int i2) {
        setExtendMotionSpec(com.google.android.material.animation.h.d(getContext(), i2));
    }

    public void setExtended(boolean z3) {
        if (this.K == z3) {
            return;
        }
        com.google.android.material.floatingactionbutton.f fVar = z3 ? this.D : this.C;
        if (fVar.d()) {
            return;
        }
        fVar.b();
    }

    public void setHideMotionSpec(@Nullable com.google.android.material.animation.h hVar) {
        this.F.j(hVar);
    }

    public void setHideMotionSpecResource(@AnimatorRes int i2) {
        setHideMotionSpec(com.google.android.material.animation.h.d(getContext(), i2));
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i2, int i4, int i5, int i6) {
        super.setPadding(i2, i4, i5, i6);
        if (!this.K || this.f14879n0) {
            return;
        }
        this.H = ViewCompat.getPaddingStart(this);
        this.I = ViewCompat.getPaddingEnd(this);
    }

    @Override // android.widget.TextView, android.view.View
    public void setPaddingRelative(int i2, int i4, int i5, int i6) {
        super.setPaddingRelative(i2, i4, i5, i6);
        if (!this.K || this.f14879n0) {
            return;
        }
        this.H = i2;
        this.I = i5;
    }

    public void setShowMotionSpec(@Nullable com.google.android.material.animation.h hVar) {
        this.E.j(hVar);
    }

    public void setShowMotionSpecResource(@AnimatorRes int i2) {
        setShowMotionSpec(com.google.android.material.animation.h.d(getContext(), i2));
    }

    public void setShrinkMotionSpec(@Nullable com.google.android.material.animation.h hVar) {
        this.C.j(hVar);
    }

    public void setShrinkMotionSpecResource(@AnimatorRes int i2) {
        setShrinkMotionSpec(com.google.android.material.animation.h.d(getContext(), i2));
    }

    @Override // android.widget.TextView
    public void setTextColor(int i2) {
        super.setTextColor(i2);
        P();
    }

    public void z(@NonNull Animator.AnimatorListener animatorListener) {
        this.D.h(animatorListener);
    }

    public ExtendedFloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.extendedFloatingActionButtonStyle);
    }

    /* loaded from: classes2.dex */
    protected static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: f  reason: collision with root package name */
        private static final boolean f14882f = false;

        /* renamed from: g  reason: collision with root package name */
        private static final boolean f14883g = true;

        /* renamed from: a  reason: collision with root package name */
        private Rect f14884a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private j f14885b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private j f14886c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f14887d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f14888e;

        public ExtendedFloatingActionButtonBehavior() {
            this.f14887d = false;
            this.f14888e = true;
        }

        private static boolean e(@NonNull View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                return ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof BottomSheetBehavior;
            }
            return false;
        }

        private boolean l(@NonNull View view, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            return (this.f14887d || this.f14888e) && ((CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams()).getAnchorId() == view.getId();
        }

        private boolean n(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (l(appBarLayout, extendedFloatingActionButton)) {
                if (this.f14884a == null) {
                    this.f14884a = new Rect();
                }
                Rect rect = this.f14884a;
                com.google.android.material.internal.d.a(coordinatorLayout, appBarLayout, rect);
                if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                    m(extendedFloatingActionButton);
                    return true;
                }
                a(extendedFloatingActionButton);
                return true;
            }
            return false;
        }

        private boolean o(@NonNull View view, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (l(view, extendedFloatingActionButton)) {
                if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                    m(extendedFloatingActionButton);
                    return true;
                }
                a(extendedFloatingActionButton);
                return true;
            }
            return false;
        }

        protected void a(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            j jVar;
            boolean z3 = this.f14888e;
            if (z3) {
                jVar = this.f14886c;
            } else {
                jVar = this.f14885b;
            }
            extendedFloatingActionButton.K(z3 ? extendedFloatingActionButton.D : extendedFloatingActionButton.E, jVar);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: b */
        public boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, @NonNull Rect rect) {
            return super.getInsetDodgeRect(coordinatorLayout, extendedFloatingActionButton, rect);
        }

        public boolean c() {
            return this.f14887d;
        }

        public boolean d() {
            return this.f14888e;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: f */
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                n(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton);
                return false;
            } else if (e(view)) {
                o(view, extendedFloatingActionButton);
                return false;
            } else {
                return false;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: g */
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, int i2) {
            List<View> dependencies = coordinatorLayout.getDependencies(extendedFloatingActionButton);
            int size = dependencies.size();
            for (int i4 = 0; i4 < size; i4++) {
                View view = dependencies.get(i4);
                if (view instanceof AppBarLayout) {
                    if (n(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton)) {
                        break;
                    }
                } else {
                    if (e(view) && o(view, extendedFloatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.onLayoutChild(extendedFloatingActionButton, i2);
            return true;
        }

        public void h(boolean z3) {
            this.f14887d = z3;
        }

        public void i(boolean z3) {
            this.f14888e = z3;
        }

        @VisibleForTesting
        void j(@Nullable j jVar) {
            this.f14885b = jVar;
        }

        @VisibleForTesting
        void k(@Nullable j jVar) {
            this.f14886c = jVar;
        }

        protected void m(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            j jVar;
            boolean z3 = this.f14888e;
            if (z3) {
                jVar = this.f14886c;
            } else {
                jVar = this.f14885b;
            }
            extendedFloatingActionButton.K(z3 ? extendedFloatingActionButton.C : extendedFloatingActionButton.F, jVar);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.dodgeInsetEdges == 0) {
                layoutParams.dodgeInsetEdges = 80;
            }
        }

        public ExtendedFloatingActionButtonBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ExtendedFloatingActionButton_Behavior_Layout);
            this.f14887d = obtainStyledAttributes.getBoolean(R.styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide, false);
            this.f14888e = obtainStyledAttributes.getBoolean(R.styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink, true);
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ExtendedFloatingActionButton(@androidx.annotation.NonNull android.content.Context r17, @androidx.annotation.Nullable android.util.AttributeSet r18, int r19) {
        /*
            r16 = this;
            r0 = r16
            r7 = r18
            r8 = r19
            int r9 = com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.f14871q0
            r1 = r17
            android.content.Context r1 = com.google.android.material.theme.overlay.a.c(r1, r7, r8, r9)
            r0.<init>(r1, r7, r8)
            r10 = 0
            r0.A = r10
            com.google.android.material.floatingactionbutton.a r1 = new com.google.android.material.floatingactionbutton.a
            r1.<init>()
            r0.B = r1
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$k r11 = new com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$k
            r11.<init>(r1)
            r0.E = r11
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$i r12 = new com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$i
            r12.<init>(r1)
            r0.F = r12
            r13 = 1
            r0.K = r13
            r0.f14879n0 = r10
            r0.f14880o0 = r10
            android.content.Context r14 = r16.getContext()
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior r1 = new com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior
            r1.<init>(r14, r7)
            r0.J = r1
            int[] r3 = com.google.android.material.R.styleable.ExtendedFloatingActionButton
            int[] r6 = new int[r10]
            r1 = r14
            r2 = r18
            r4 = r19
            r5 = r9
            android.content.res.TypedArray r1 = com.google.android.material.internal.o.j(r1, r2, r3, r4, r5, r6)
            int r2 = com.google.android.material.R.styleable.ExtendedFloatingActionButton_showMotionSpec
            com.google.android.material.animation.h r2 = com.google.android.material.animation.h.c(r14, r1, r2)
            int r3 = com.google.android.material.R.styleable.ExtendedFloatingActionButton_hideMotionSpec
            com.google.android.material.animation.h r3 = com.google.android.material.animation.h.c(r14, r1, r3)
            int r4 = com.google.android.material.R.styleable.ExtendedFloatingActionButton_extendMotionSpec
            com.google.android.material.animation.h r4 = com.google.android.material.animation.h.c(r14, r1, r4)
            int r5 = com.google.android.material.R.styleable.ExtendedFloatingActionButton_shrinkMotionSpec
            com.google.android.material.animation.h r5 = com.google.android.material.animation.h.c(r14, r1, r5)
            int r6 = com.google.android.material.R.styleable.ExtendedFloatingActionButton_collapsedSize
            r15 = -1
            int r6 = r1.getDimensionPixelSize(r6, r15)
            r0.G = r6
            int r6 = androidx.core.view.ViewCompat.getPaddingStart(r16)
            r0.H = r6
            int r6 = androidx.core.view.ViewCompat.getPaddingEnd(r16)
            r0.I = r6
            com.google.android.material.floatingactionbutton.a r6 = new com.google.android.material.floatingactionbutton.a
            r6.<init>()
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$h r15 = new com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$h
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$a r10 = new com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$a
            r10.<init>()
            r15.<init>(r6, r10, r13)
            r0.D = r15
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$h r10 = new com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$h
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$b r13 = new com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$b
            r13.<init>()
            r7 = 0
            r10.<init>(r6, r13, r7)
            r0.C = r10
            r11.j(r2)
            r12.j(r3)
            r15.j(r4)
            r10.j(r5)
            r1.recycle()
            com.google.android.material.shape.c r1 = com.google.android.material.shape.m.f15633m
            r2 = r18
            com.google.android.material.shape.m$b r1 = com.google.android.material.shape.m.g(r14, r2, r8, r9, r1)
            com.google.android.material.shape.m r1 = r1.m()
            r0.setShapeAppearanceModel(r1)
            r16.P()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    @Override // android.widget.TextView
    public void setTextColor(@NonNull ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        P();
    }
}
