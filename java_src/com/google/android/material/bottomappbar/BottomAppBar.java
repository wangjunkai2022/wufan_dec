package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.MenuRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.animation.k;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.w;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.AttachedBehavior {
    public static final int A = 0;
    public static final int B = 1;
    private static final int C = 0;

    /* renamed from: w  reason: collision with root package name */
    private static final int f14123w = R.style.Widget_MaterialComponents_BottomAppBar;

    /* renamed from: x  reason: collision with root package name */
    private static final long f14124x = 300;

    /* renamed from: y  reason: collision with root package name */
    public static final int f14125y = 0;

    /* renamed from: z  reason: collision with root package name */
    public static final int f14126z = 1;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Integer f14127a;

    /* renamed from: b  reason: collision with root package name */
    private final int f14128b;

    /* renamed from: c  reason: collision with root package name */
    private final MaterialShapeDrawable f14129c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Animator f14130d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Animator f14131e;

    /* renamed from: f  reason: collision with root package name */
    private int f14132f;

    /* renamed from: g  reason: collision with root package name */
    private int f14133g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f14134h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f14135i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f14136j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f14137k;

    /* renamed from: l  reason: collision with root package name */
    private int f14138l;

    /* renamed from: m  reason: collision with root package name */
    private ArrayList<j> f14139m;
    @MenuRes

    /* renamed from: n  reason: collision with root package name */
    private int f14140n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f14141o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f14142p;

    /* renamed from: q  reason: collision with root package name */
    private Behavior f14143q;

    /* renamed from: r  reason: collision with root package name */
    private int f14144r;

    /* renamed from: s  reason: collision with root package name */
    private int f14145s;

    /* renamed from: t  reason: collision with root package name */
    private int f14146t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    AnimatorListenerAdapter f14147u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    k<FloatingActionButton> f14148v;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface FabAlignmentMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface FabAnimationMode {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        int f14154a;

        /* renamed from: b  reason: collision with root package name */
        boolean f14155b;

        /* loaded from: classes2.dex */
        class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @Nullable
            /* renamed from: a */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            /* renamed from: b */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: c */
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f14154a);
            parcel.writeInt(this.f14155b ? 1 : 0);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f14154a = parcel.readInt();
            this.f14155b = parcel.readInt() != 0;
        }
    }

    /* loaded from: classes2.dex */
    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (BottomAppBar.this.f14141o) {
                return;
            }
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.W(bottomAppBar.f14132f, BottomAppBar.this.f14142p);
        }
    }

    /* loaded from: classes2.dex */
    class b implements k<FloatingActionButton> {
        b() {
        }

        @Override // com.google.android.material.animation.k
        /* renamed from: c */
        public void a(@NonNull FloatingActionButton floatingActionButton) {
            BottomAppBar.this.f14129c.p0(floatingActionButton.getVisibility() == 0 ? floatingActionButton.getScaleY() : 0.0f);
        }

        @Override // com.google.android.material.animation.k
        /* renamed from: d */
        public void b(@NonNull FloatingActionButton floatingActionButton) {
            float translationX = floatingActionButton.getTranslationX();
            if (BottomAppBar.this.getTopEdgeTreatment().i() != translationX) {
                BottomAppBar.this.getTopEdgeTreatment().o(translationX);
                BottomAppBar.this.f14129c.invalidateSelf();
            }
            float max = Math.max(0.0f, -floatingActionButton.getTranslationY());
            if (BottomAppBar.this.getTopEdgeTreatment().d() != max) {
                BottomAppBar.this.getTopEdgeTreatment().j(max);
                BottomAppBar.this.f14129c.invalidateSelf();
            }
            BottomAppBar.this.f14129c.p0(floatingActionButton.getVisibility() == 0 ? floatingActionButton.getScaleY() : 0.0f);
        }
    }

    /* loaded from: classes2.dex */
    class c implements w.e {
        c() {
        }

        @Override // com.google.android.material.internal.w.e
        @NonNull
        public WindowInsetsCompat a(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull w.f fVar) {
            boolean z3;
            if (BottomAppBar.this.f14135i) {
                BottomAppBar.this.f14144r = windowInsetsCompat.getSystemWindowInsetBottom();
            }
            boolean z4 = false;
            if (BottomAppBar.this.f14136j) {
                z3 = BottomAppBar.this.f14146t != windowInsetsCompat.getSystemWindowInsetLeft();
                BottomAppBar.this.f14146t = windowInsetsCompat.getSystemWindowInsetLeft();
            } else {
                z3 = false;
            }
            if (BottomAppBar.this.f14137k) {
                boolean z5 = BottomAppBar.this.f14145s != windowInsetsCompat.getSystemWindowInsetRight();
                BottomAppBar.this.f14145s = windowInsetsCompat.getSystemWindowInsetRight();
                z4 = z5;
            }
            if (z3 || z4) {
                BottomAppBar.this.J();
                BottomAppBar.this.f0();
                BottomAppBar.this.e0();
            }
            return windowInsetsCompat;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.N();
            BottomAppBar.this.f14130d = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.O();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e extends FloatingActionButton.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f14160a;

        /* loaded from: classes2.dex */
        class a extends FloatingActionButton.b {
            a() {
            }

            @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.b
            public void b(FloatingActionButton floatingActionButton) {
                BottomAppBar.this.N();
            }
        }

        e(int i2) {
            this.f14160a = i2;
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.b
        public void a(@NonNull FloatingActionButton floatingActionButton) {
            floatingActionButton.setTranslationX(BottomAppBar.this.S(this.f14160a));
            floatingActionButton.A(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.N();
            BottomAppBar.this.f14141o = false;
            BottomAppBar.this.f14131e = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.O();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        public boolean f14164a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ActionMenuView f14165b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f14166c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ boolean f14167d;

        g(ActionMenuView actionMenuView, int i2, boolean z3) {
            this.f14165b = actionMenuView;
            this.f14166c = i2;
            this.f14167d = z3;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f14164a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f14164a) {
                return;
            }
            boolean z3 = BottomAppBar.this.f14140n != 0;
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.d0(bottomAppBar.f14140n);
            BottomAppBar.this.i0(this.f14165b, this.f14166c, this.f14167d, z3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ActionMenuView f14169a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f14170b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f14171c;

        h(ActionMenuView actionMenuView, int i2, boolean z3) {
            this.f14169a = actionMenuView;
            this.f14170b = i2;
            this.f14171c = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionMenuView actionMenuView = this.f14169a;
            actionMenuView.setTranslationX(BottomAppBar.this.R(actionMenuView, this.f14170b, this.f14171c));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class i extends AnimatorListenerAdapter {
        i() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.f14147u.onAnimationStart(animator);
            FloatingActionButton P = BottomAppBar.this.P();
            if (P != null) {
                P.setTranslationX(BottomAppBar.this.getFabTranslationX());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface j {
        void a(BottomAppBar bottomAppBar);

        void b(BottomAppBar bottomAppBar);
    }

    public BottomAppBar(@NonNull Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I(@NonNull FloatingActionButton floatingActionButton) {
        floatingActionButton.f(this.f14147u);
        floatingActionButton.g(new i());
        floatingActionButton.h(this.f14148v);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        Animator animator = this.f14131e;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.f14130d;
        if (animator2 != null) {
            animator2.cancel();
        }
    }

    private void L(int i2, @NonNull List<Animator> list) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(P(), "translationX", S(i2));
        ofFloat.setDuration(f14124x);
        list.add(ofFloat);
    }

    private void M(int i2, boolean z3, @NonNull List<Animator> list) {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null) {
            return;
        }
        Animator ofFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
        if (Math.abs(actionMenuView.getTranslationX() - R(actionMenuView, i2, z3)) > 1.0f) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
            ofFloat2.addListener(new g(actionMenuView, i2, z3));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setDuration(150L);
            animatorSet.playSequentially(ofFloat2, ofFloat);
            list.add(animatorSet);
        } else if (actionMenuView.getAlpha() < 1.0f) {
            list.add(ofFloat);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        ArrayList<j> arrayList;
        int i2 = this.f14138l - 1;
        this.f14138l = i2;
        if (i2 != 0 || (arrayList = this.f14139m) == null) {
            return;
        }
        Iterator<j> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next().a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        ArrayList<j> arrayList;
        int i2 = this.f14138l;
        this.f14138l = i2 + 1;
        if (i2 != 0 || (arrayList = this.f14139m) == null) {
            return;
        }
        Iterator<j> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next().b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public FloatingActionButton P() {
        View Q = Q();
        if (Q instanceof FloatingActionButton) {
            return (FloatingActionButton) Q;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001e  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View Q() {
        /*
            r4 = this;
            android.view.ViewParent r0 = r4.getParent()
            boolean r0 = r0 instanceof androidx.coordinatorlayout.widget.CoordinatorLayout
            r1 = 0
            if (r0 != 0) goto La
            return r1
        La:
            android.view.ViewParent r0 = r4.getParent()
            androidx.coordinatorlayout.widget.CoordinatorLayout r0 = (androidx.coordinatorlayout.widget.CoordinatorLayout) r0
            java.util.List r0 = r0.getDependents(r4)
            java.util.Iterator r0 = r0.iterator()
        L18:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L2d
            java.lang.Object r2 = r0.next()
            android.view.View r2 = (android.view.View) r2
            boolean r3 = r2 instanceof com.google.android.material.floatingactionbutton.FloatingActionButton
            if (r3 != 0) goto L2c
            boolean r3 = r2 instanceof com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton
            if (r3 == 0) goto L18
        L2c:
            return r2
        L2d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomappbar.BottomAppBar.Q():android.view.View");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float S(int i2) {
        boolean k4 = w.k(this);
        if (i2 == 1) {
            return ((getMeasuredWidth() / 2) - (this.f14128b + (k4 ? this.f14146t : this.f14145s))) * (k4 ? -1 : 1);
        }
        return 0.0f;
    }

    private boolean T() {
        FloatingActionButton P = P();
        return P != null && P.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W(int i2, boolean z3) {
        if (!ViewCompat.isLaidOut(this)) {
            this.f14141o = false;
            d0(this.f14140n);
            return;
        }
        Animator animator = this.f14131e;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (!T()) {
            i2 = 0;
            z3 = false;
        }
        M(i2, z3, arrayList);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.f14131e = animatorSet;
        animatorSet.addListener(new f());
        this.f14131e.start();
    }

    private void X(int i2) {
        if (this.f14132f == i2 || !ViewCompat.isLaidOut(this)) {
            return;
        }
        Animator animator = this.f14130d;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (this.f14133g == 1) {
            L(i2, arrayList);
        } else {
            K(i2, arrayList);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.f14130d = animatorSet;
        animatorSet.addListener(new d());
        this.f14130d.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0() {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null || this.f14131e != null) {
            return;
        }
        actionMenuView.setAlpha(1.0f);
        if (!T()) {
            h0(actionMenuView, 0, false);
        } else {
            h0(actionMenuView, this.f14132f, this.f14142p);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f0() {
        getTopEdgeTreatment().o(getFabTranslationX());
        View Q = Q();
        this.f14129c.p0((this.f14142p && T()) ? 1.0f : 0.0f);
        if (Q != null) {
            Q.setTranslationY(getFabTranslationY());
            Q.setTranslationX(getFabTranslationX());
        }
    }

    @Nullable
    private ActionMenuView getActionMenuView() {
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBottomInset() {
        return this.f14144r;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFabTranslationX() {
        return S(this.f14132f);
    }

    private float getFabTranslationY() {
        return -getTopEdgeTreatment().d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLeftInset() {
        return this.f14146t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRightInset() {
        return this.f14145s;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public com.google.android.material.bottomappbar.a getTopEdgeTreatment() {
        return (com.google.android.material.bottomappbar.a) this.f14129c.getShapeAppearanceModel().p();
    }

    private void h0(@NonNull ActionMenuView actionMenuView, int i2, boolean z3) {
        i0(actionMenuView, i2, z3, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0(@NonNull ActionMenuView actionMenuView, int i2, boolean z3, boolean z4) {
        h hVar = new h(actionMenuView, i2, z3);
        if (z4) {
            actionMenuView.post(hVar);
        } else {
            hVar.run();
        }
    }

    @Nullable
    private Drawable maybeTintNavigationIcon(@Nullable Drawable drawable) {
        if (drawable == null || this.f14127a == null) {
            return drawable;
        }
        Drawable wrap = DrawableCompat.wrap(drawable.mutate());
        DrawableCompat.setTint(wrap, this.f14127a.intValue());
        return wrap;
    }

    void H(@NonNull j jVar) {
        if (this.f14139m == null) {
            this.f14139m = new ArrayList<>();
        }
        this.f14139m.add(jVar);
    }

    protected void K(int i2, List<Animator> list) {
        FloatingActionButton P = P();
        if (P == null || P.q()) {
            return;
        }
        O();
        P.o(new e(i2));
    }

    protected int R(@NonNull ActionMenuView actionMenuView, int i2, boolean z3) {
        if (i2 == 1 && z3) {
            boolean k4 = w.k(this);
            int measuredWidth = k4 ? getMeasuredWidth() : 0;
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).gravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) == 8388611) {
                    if (k4) {
                        measuredWidth = Math.min(measuredWidth, childAt.getLeft());
                    } else {
                        measuredWidth = Math.max(measuredWidth, childAt.getRight());
                    }
                }
            }
            return measuredWidth - ((k4 ? actionMenuView.getRight() : actionMenuView.getLeft()) + (k4 ? this.f14145s : -this.f14146t));
        }
        return 0;
    }

    public boolean U() {
        return getBehavior().c();
    }

    public boolean V() {
        return getBehavior().d();
    }

    public void Y() {
        Z(true);
    }

    public void Z(boolean z3) {
        getBehavior().g(this, z3);
    }

    public void a0() {
        b0(true);
    }

    public void b0(boolean z3) {
        getBehavior().i(this, z3);
    }

    void c0(@NonNull j jVar) {
        ArrayList<j> arrayList = this.f14139m;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(jVar);
    }

    public void d0(@MenuRes int i2) {
        if (i2 != 0) {
            this.f14140n = 0;
            getMenu().clear();
            inflateMenu(i2);
        }
    }

    boolean g0(@Px int i2) {
        float f4 = i2;
        if (f4 != getTopEdgeTreatment().h()) {
            getTopEdgeTreatment().n(f4);
            this.f14129c.invalidateSelf();
            return true;
        }
        return false;
    }

    @Nullable
    public ColorStateList getBackgroundTint() {
        return this.f14129c.R();
    }

    @Dimension
    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().d();
    }

    public int getFabAlignmentMode() {
        return this.f14132f;
    }

    public int getFabAnimationMode() {
        return this.f14133g;
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().f();
    }

    @Dimension
    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().g();
    }

    public boolean getHideOnScroll() {
        return this.f14134h;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.google.android.material.shape.i.f(this, this.f14129c);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        if (z3) {
            J();
            f0();
        }
        e0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f14132f = savedState.f14154a;
        this.f14142p = savedState.f14155b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    @NonNull
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f14154a = this.f14132f;
        savedState.f14155b = this.f14142p;
        return savedState;
    }

    public void setBackgroundTint(@Nullable ColorStateList colorStateList) {
        DrawableCompat.setTintList(this.f14129c, colorStateList);
    }

    public void setCradleVerticalOffset(@Dimension float f4) {
        if (f4 != getCradleVerticalOffset()) {
            getTopEdgeTreatment().j(f4);
            this.f14129c.invalidateSelf();
            f0();
        }
    }

    @Override // android.view.View
    public void setElevation(float f4) {
        this.f14129c.n0(f4);
        getBehavior().e(this, this.f14129c.K() - this.f14129c.J());
    }

    public void setFabAlignmentMode(int i2) {
        setFabAlignmentModeAndReplaceMenu(i2, 0);
    }

    public void setFabAlignmentModeAndReplaceMenu(int i2, @MenuRes int i4) {
        this.f14140n = i4;
        this.f14141o = true;
        W(i2, this.f14142p);
        X(i2);
        this.f14132f = i2;
    }

    public void setFabAnimationMode(int i2) {
        this.f14133g = i2;
    }

    void setFabCornerSize(@Dimension float f4) {
        if (f4 != getTopEdgeTreatment().e()) {
            getTopEdgeTreatment().k(f4);
            this.f14129c.invalidateSelf();
        }
    }

    public void setFabCradleMargin(@Dimension float f4) {
        if (f4 != getFabCradleMargin()) {
            getTopEdgeTreatment().l(f4);
            this.f14129c.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(@Dimension float f4) {
        if (f4 != getFabCradleRoundedCornerRadius()) {
            getTopEdgeTreatment().m(f4);
            this.f14129c.invalidateSelf();
        }
    }

    public void setHideOnScroll(boolean z3) {
        this.f14134h = z3;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(@Nullable Drawable drawable) {
        super.setNavigationIcon(maybeTintNavigationIcon(drawable));
    }

    public void setNavigationIconTint(@ColorInt int i2) {
        this.f14127a = Integer.valueOf(i2);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    public BottomAppBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bottomAppBarStyle);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public Behavior getBehavior() {
        if (this.f14143q == null) {
            this.f14143q = new Behavior();
        }
        return this.f14143q;
    }

    /* loaded from: classes2.dex */
    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {
        @NonNull

        /* renamed from: i  reason: collision with root package name */
        private final Rect f14149i;

        /* renamed from: j  reason: collision with root package name */
        private WeakReference<BottomAppBar> f14150j;

        /* renamed from: k  reason: collision with root package name */
        private int f14151k;

        /* renamed from: l  reason: collision with root package name */
        private final View.OnLayoutChangeListener f14152l;

        /* loaded from: classes2.dex */
        class a implements View.OnLayoutChangeListener {
            a() {
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.f14150j.get();
                if (bottomAppBar != null && (view instanceof FloatingActionButton)) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                    floatingActionButton.l(Behavior.this.f14149i);
                    int height = Behavior.this.f14149i.height();
                    bottomAppBar.g0(height);
                    bottomAppBar.setFabCornerSize(floatingActionButton.getShapeAppearanceModel().r().a(new RectF(Behavior.this.f14149i)));
                    CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
                    if (Behavior.this.f14151k == 0) {
                        ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fab_bottom_margin) - ((floatingActionButton.getMeasuredHeight() - height) / 2));
                        ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = bottomAppBar.getLeftInset();
                        ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = bottomAppBar.getRightInset();
                        if (w.k(floatingActionButton)) {
                            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin += bottomAppBar.f14128b;
                            return;
                        } else {
                            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin += bottomAppBar.f14128b;
                            return;
                        }
                    }
                    return;
                }
                view.removeOnLayoutChangeListener(this);
            }
        }

        public Behavior() {
            this.f14152l = new a();
            this.f14149i = new Rect();
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: m */
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, int i2) {
            this.f14150j = new WeakReference<>(bottomAppBar);
            View Q = bottomAppBar.Q();
            if (Q != null && !ViewCompat.isLaidOut(Q)) {
                CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) Q.getLayoutParams();
                layoutParams.anchorGravity = 49;
                this.f14151k = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                if (Q instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) Q;
                    if (floatingActionButton.getShowMotionSpec() == null) {
                        floatingActionButton.setShowMotionSpecResource(R.animator.mtrl_fab_show_motion_spec);
                    }
                    if (floatingActionButton.getHideMotionSpec() == null) {
                        floatingActionButton.setHideMotionSpecResource(R.animator.mtrl_fab_hide_motion_spec);
                    }
                    floatingActionButton.addOnLayoutChangeListener(this.f14152l);
                    bottomAppBar.I(floatingActionButton);
                }
                bottomAppBar.f0();
            }
            coordinatorLayout.onLayoutChild(bottomAppBar, i2);
            return super.onLayoutChild(coordinatorLayout, bottomAppBar, i2);
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: n */
        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, @NonNull View view, @NonNull View view2, int i2, int i4) {
            return bottomAppBar.getHideOnScroll() && super.onStartNestedScroll(coordinatorLayout, bottomAppBar, view, view2, i2, i4);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f14152l = new a();
            this.f14149i = new Rect();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BottomAppBar(@androidx.annotation.NonNull android.content.Context r11, @androidx.annotation.Nullable android.util.AttributeSet r12, int r13) {
        /*
            r10 = this;
            int r6 = com.google.android.material.bottomappbar.BottomAppBar.f14123w
            android.content.Context r11 = com.google.android.material.theme.overlay.a.c(r11, r12, r13, r6)
            r10.<init>(r11, r12, r13)
            com.google.android.material.shape.MaterialShapeDrawable r11 = new com.google.android.material.shape.MaterialShapeDrawable
            r11.<init>()
            r10.f14129c = r11
            r7 = 0
            r10.f14138l = r7
            r10.f14140n = r7
            r10.f14141o = r7
            r0 = 1
            r10.f14142p = r0
            com.google.android.material.bottomappbar.BottomAppBar$a r0 = new com.google.android.material.bottomappbar.BottomAppBar$a
            r0.<init>()
            r10.f14147u = r0
            com.google.android.material.bottomappbar.BottomAppBar$b r0 = new com.google.android.material.bottomappbar.BottomAppBar$b
            r0.<init>()
            r10.f14148v = r0
            android.content.Context r8 = r10.getContext()
            int[] r2 = com.google.android.material.R.styleable.BottomAppBar
            int[] r5 = new int[r7]
            r0 = r8
            r1 = r12
            r3 = r13
            r4 = r6
            android.content.res.TypedArray r0 = com.google.android.material.internal.o.j(r0, r1, r2, r3, r4, r5)
            int r1 = com.google.android.material.R.styleable.BottomAppBar_backgroundTint
            android.content.res.ColorStateList r1 = com.google.android.material.resources.c.a(r8, r0, r1)
            int r2 = com.google.android.material.R.styleable.BottomAppBar_navigationIconTint
            boolean r3 = r0.hasValue(r2)
            if (r3 == 0) goto L4e
            r3 = -1
            int r2 = r0.getColor(r2, r3)
            r10.setNavigationIconTint(r2)
        L4e:
            int r2 = com.google.android.material.R.styleable.BottomAppBar_elevation
            int r2 = r0.getDimensionPixelSize(r2, r7)
            int r3 = com.google.android.material.R.styleable.BottomAppBar_fabCradleMargin
            int r3 = r0.getDimensionPixelOffset(r3, r7)
            float r3 = (float) r3
            int r4 = com.google.android.material.R.styleable.BottomAppBar_fabCradleRoundedCornerRadius
            int r4 = r0.getDimensionPixelOffset(r4, r7)
            float r4 = (float) r4
            int r5 = com.google.android.material.R.styleable.BottomAppBar_fabCradleVerticalOffset
            int r5 = r0.getDimensionPixelOffset(r5, r7)
            float r5 = (float) r5
            int r9 = com.google.android.material.R.styleable.BottomAppBar_fabAlignmentMode
            int r9 = r0.getInt(r9, r7)
            r10.f14132f = r9
            int r9 = com.google.android.material.R.styleable.BottomAppBar_fabAnimationMode
            int r9 = r0.getInt(r9, r7)
            r10.f14133g = r9
            int r9 = com.google.android.material.R.styleable.BottomAppBar_hideOnScroll
            boolean r9 = r0.getBoolean(r9, r7)
            r10.f14134h = r9
            int r9 = com.google.android.material.R.styleable.BottomAppBar_paddingBottomSystemWindowInsets
            boolean r9 = r0.getBoolean(r9, r7)
            r10.f14135i = r9
            int r9 = com.google.android.material.R.styleable.BottomAppBar_paddingLeftSystemWindowInsets
            boolean r9 = r0.getBoolean(r9, r7)
            r10.f14136j = r9
            int r9 = com.google.android.material.R.styleable.BottomAppBar_paddingRightSystemWindowInsets
            boolean r7 = r0.getBoolean(r9, r7)
            r10.f14137k = r7
            r0.recycle()
            android.content.res.Resources r0 = r10.getResources()
            int r7 = com.google.android.material.R.dimen.mtrl_bottomappbar_fabOffsetEndMode
            int r0 = r0.getDimensionPixelOffset(r7)
            r10.f14128b = r0
            com.google.android.material.bottomappbar.a r0 = new com.google.android.material.bottomappbar.a
            r0.<init>(r3, r4, r5)
            com.google.android.material.shape.m$b r3 = com.google.android.material.shape.m.a()
            com.google.android.material.shape.m$b r0 = r3.G(r0)
            com.google.android.material.shape.m r0 = r0.m()
            r11.setShapeAppearanceModel(r0)
            r0 = 2
            r11.x0(r0)
            android.graphics.Paint$Style r0 = android.graphics.Paint.Style.FILL
            r11.r0(r0)
            r11.Z(r8)
            float r0 = (float) r2
            r10.setElevation(r0)
            androidx.core.graphics.drawable.DrawableCompat.setTintList(r11, r1)
            androidx.core.view.ViewCompat.setBackground(r10, r11)
            com.google.android.material.bottomappbar.BottomAppBar$c r11 = new com.google.android.material.bottomappbar.BottomAppBar$c
            r11.<init>()
            com.google.android.material.internal.w.c(r10, r12, r13, r6, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomappbar.BottomAppBar.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
