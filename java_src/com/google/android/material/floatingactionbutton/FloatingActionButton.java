package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AnimatorRes;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatImageHelper;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.TintableBackgroundView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TintableImageSourceView;
import com.google.android.material.R;
import com.google.android.material.animation.h;
import com.google.android.material.animation.k;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.floatingactionbutton.d;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.shape.m;
import com.google.android.material.shape.q;
import com.google.android.material.stateful.ExtendableSavedState;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
/* loaded from: classes2.dex */
public class FloatingActionButton extends VisibilityAwareImageButton implements TintableBackgroundView, TintableImageSourceView, b1.a, q, CoordinatorLayout.AttachedBehavior {

    /* renamed from: r  reason: collision with root package name */
    private static final String f14901r = "FloatingActionButton";

    /* renamed from: s  reason: collision with root package name */
    private static final String f14902s = "expandableWidgetHelper";

    /* renamed from: t  reason: collision with root package name */
    private static final int f14903t = R.style.Widget_Design_FloatingActionButton;

    /* renamed from: u  reason: collision with root package name */
    public static final int f14904u = 1;

    /* renamed from: v  reason: collision with root package name */
    public static final int f14905v = 0;

    /* renamed from: w  reason: collision with root package name */
    public static final int f14906w = -1;

    /* renamed from: x  reason: collision with root package name */
    public static final int f14907x = 0;

    /* renamed from: y  reason: collision with root package name */
    private static final int f14908y = 470;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private ColorStateList f14909b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private PorterDuff.Mode f14910c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private ColorStateList f14911d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private PorterDuff.Mode f14912e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private ColorStateList f14913f;

    /* renamed from: g  reason: collision with root package name */
    private int f14914g;

    /* renamed from: h  reason: collision with root package name */
    private int f14915h;

    /* renamed from: i  reason: collision with root package name */
    private int f14916i;

    /* renamed from: j  reason: collision with root package name */
    private int f14917j;

    /* renamed from: k  reason: collision with root package name */
    private int f14918k;

    /* renamed from: l  reason: collision with root package name */
    boolean f14919l;

    /* renamed from: m  reason: collision with root package name */
    final Rect f14920m;

    /* renamed from: n  reason: collision with root package name */
    private final Rect f14921n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    private final AppCompatImageHelper f14922o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    private final b1.c f14923p;

    /* renamed from: q  reason: collision with root package name */
    private com.google.android.material.floatingactionbutton.d f14924q;

    /* loaded from: classes2.dex */
    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        public /* bridge */ /* synthetic */ boolean a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull Rect rect) {
            return super.getInsetDodgeRect(coordinatorLayout, floatingActionButton, rect);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        public /* bridge */ /* synthetic */ boolean b() {
            return super.b();
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        public /* bridge */ /* synthetic */ boolean e(CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, View view) {
            return super.onDependentViewChanged(coordinatorLayout, floatingActionButton, view);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        public /* bridge */ /* synthetic */ boolean f(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, int i2) {
            return super.onLayoutChild(coordinatorLayout, floatingActionButton, i2);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        public /* bridge */ /* synthetic */ void g(boolean z3) {
            super.g(z3);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        @VisibleForTesting
        public /* bridge */ /* synthetic */ void h(b bVar) {
            super.h(bVar);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
            super.onAttachedToLayoutParams(layoutParams);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface Size {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements d.k {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f14929a;

        a(b bVar) {
            this.f14929a = bVar;
        }

        @Override // com.google.android.material.floatingactionbutton.d.k
        public void onHidden() {
            this.f14929a.a(FloatingActionButton.this);
        }

        @Override // com.google.android.material.floatingactionbutton.d.k
        public void onShown() {
            this.f14929a.b(FloatingActionButton.this);
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class b {
        public void a(FloatingActionButton floatingActionButton) {
        }

        public void b(FloatingActionButton floatingActionButton) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class c implements com.google.android.material.shadow.c {
        c() {
        }

        @Override // com.google.android.material.shadow.c
        public boolean a() {
            return FloatingActionButton.this.f14919l;
        }

        @Override // com.google.android.material.shadow.c
        public float b() {
            return FloatingActionButton.this.getSizeDimension() / 2.0f;
        }

        @Override // com.google.android.material.shadow.c
        public void setBackgroundDrawable(@Nullable Drawable drawable) {
            if (drawable != null) {
                FloatingActionButton.super.setBackgroundDrawable(drawable);
            }
        }

        @Override // com.google.android.material.shadow.c
        public void setShadowPadding(int i2, int i4, int i5, int i6) {
            FloatingActionButton.this.f14920m.set(i2, i4, i5, i6);
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            floatingActionButton.setPadding(i2 + floatingActionButton.f14917j, i4 + FloatingActionButton.this.f14917j, i5 + FloatingActionButton.this.f14917j, i6 + FloatingActionButton.this.f14917j);
        }
    }

    /* loaded from: classes2.dex */
    class d<T extends FloatingActionButton> implements d.j {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final k<T> f14932a;

        d(@NonNull k<T> kVar) {
            this.f14932a = kVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.floatingactionbutton.d.j
        public void a() {
            this.f14932a.b(FloatingActionButton.this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.floatingactionbutton.d.j
        public void b() {
            this.f14932a.a(FloatingActionButton.this);
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof d) && ((d) obj).f14932a.equals(this.f14932a);
        }

        public int hashCode() {
            return this.f14932a.hashCode();
        }
    }

    public FloatingActionButton(@NonNull Context context) {
        this(context, null);
    }

    @Nullable
    private d.k C(@Nullable b bVar) {
        if (bVar == null) {
            return null;
        }
        return new a(bVar);
    }

    private com.google.android.material.floatingactionbutton.d getImpl() {
        if (this.f14924q == null) {
            this.f14924q = j();
        }
        return this.f14924q;
    }

    @NonNull
    private com.google.android.material.floatingactionbutton.d j() {
        if (Build.VERSION.SDK_INT >= 21) {
            return new e(this, new c());
        }
        return new com.google.android.material.floatingactionbutton.d(this, new c());
    }

    private int m(int i2) {
        int i4 = this.f14916i;
        if (i4 != 0) {
            return i4;
        }
        Resources resources = getResources();
        if (i2 != -1) {
            if (i2 != 1) {
                return resources.getDimensionPixelSize(R.dimen.design_fab_size_normal);
            }
            return resources.getDimensionPixelSize(R.dimen.design_fab_size_mini);
        } else if (Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < f14908y) {
            return m(1);
        } else {
            return m(0);
        }
    }

    private void s(@NonNull Rect rect) {
        int i2 = rect.left;
        Rect rect2 = this.f14920m;
        rect.left = i2 + rect2.left;
        rect.top += rect2.top;
        rect.right -= rect2.right;
        rect.bottom -= rect2.bottom;
    }

    private void t() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        ColorStateList colorStateList = this.f14911d;
        if (colorStateList == null) {
            DrawableCompat.clearColorFilter(drawable);
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.f14912e;
        if (mode == null) {
            mode = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(colorForState, mode));
    }

    private static int x(int i2, int i4) {
        int mode = View.MeasureSpec.getMode(i4);
        int size = View.MeasureSpec.getSize(i4);
        if (mode != Integer.MIN_VALUE) {
            if (mode != 0) {
                if (mode == 1073741824) {
                    return size;
                }
                throw new IllegalArgumentException();
            }
            return i2;
        }
        return Math.min(i2, size);
    }

    public void A(@Nullable b bVar) {
        B(bVar, true);
    }

    void B(@Nullable b bVar, boolean z3) {
        getImpl().f0(C(bVar), z3);
    }

    @Override // b1.b
    public boolean a(boolean z3) {
        return this.f14923p.f(z3);
    }

    @Override // b1.b
    public boolean b() {
        return this.f14923p.c();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().E(getDrawableState());
    }

    public void f(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().e(animatorListener);
    }

    public void g(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().f(animatorListener);
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return this.f14909b;
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.f14910c;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<FloatingActionButton> getBehavior() {
        return new Behavior();
    }

    public float getCompatElevation() {
        return getImpl().n();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().q();
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().t();
    }

    @Nullable
    public Drawable getContentBackground() {
        return getImpl().m();
    }

    @Px
    public int getCustomSize() {
        return this.f14916i;
    }

    @Override // b1.a
    public int getExpandedComponentIdHint() {
        return this.f14923p.b();
    }

    @Nullable
    public h getHideMotionSpec() {
        return getImpl().p();
    }

    @ColorInt
    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.f14913f;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    @Nullable
    public ColorStateList getRippleColorStateList() {
        return this.f14913f;
    }

    @Override // com.google.android.material.shape.q
    @NonNull
    public m getShapeAppearanceModel() {
        return (m) Preconditions.checkNotNull(getImpl().u());
    }

    @Nullable
    public h getShowMotionSpec() {
        return getImpl().v();
    }

    public int getSize() {
        return this.f14915h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSizeDimension() {
        return m(this.f14915h);
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    public ColorStateList getSupportImageTintList() {
        return this.f14911d;
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f14912e;
    }

    public boolean getUseCompatPadding() {
        return this.f14919l;
    }

    public void h(@NonNull k<? extends FloatingActionButton> kVar) {
        getImpl().g(new d(kVar));
    }

    public void i() {
        setCustomSize(0);
    }

    @Override // android.widget.ImageView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().A();
    }

    @Deprecated
    public boolean k(@NonNull Rect rect) {
        if (ViewCompat.isLaidOut(this)) {
            rect.set(0, 0, getWidth(), getHeight());
            s(rect);
            return true;
        }
        return false;
    }

    public void l(@NonNull Rect rect) {
        rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        s(rect);
    }

    public void n() {
        o(null);
    }

    public void o(@Nullable b bVar) {
        p(bVar, true);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getImpl().B();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getImpl().D();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i2, int i4) {
        int sizeDimension = getSizeDimension();
        this.f14917j = (sizeDimension - this.f14918k) / 2;
        getImpl().i0();
        int min = Math.min(x(sizeDimension, i2), x(sizeDimension, i4));
        Rect rect = this.f14920m;
        setMeasuredDimension(rect.left + min + rect.right, min + rect.top + rect.bottom);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(extendableSavedState.getSuperState());
        this.f14923p.d((Bundle) Preconditions.checkNotNull(extendableSavedState.f15868a.get(f14902s)));
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (onSaveInstanceState == null) {
            onSaveInstanceState = new Bundle();
        }
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(onSaveInstanceState);
        extendableSavedState.f15868a.put(f14902s, this.f14923p.e());
        return extendableSavedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && k(this.f14921n) && !this.f14921n.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    void p(@Nullable b bVar, boolean z3) {
        getImpl().w(C(bVar), z3);
    }

    public boolean q() {
        return getImpl().y();
    }

    public boolean r() {
        return getImpl().z();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (this.f14909b != colorStateList) {
            this.f14909b = colorStateList;
            getImpl().O(colorStateList);
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f14910c != mode) {
            this.f14910c = mode;
            getImpl().P(mode);
        }
    }

    public void setCompatElevation(float f4) {
        getImpl().Q(f4);
    }

    public void setCompatElevationResource(@DimenRes int i2) {
        setCompatElevation(getResources().getDimension(i2));
    }

    public void setCompatHoveredFocusedTranslationZ(float f4) {
        getImpl().T(f4);
    }

    public void setCompatHoveredFocusedTranslationZResource(@DimenRes int i2) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i2));
    }

    public void setCompatPressedTranslationZ(float f4) {
        getImpl().X(f4);
    }

    public void setCompatPressedTranslationZResource(@DimenRes int i2) {
        setCompatPressedTranslationZ(getResources().getDimension(i2));
    }

    public void setCustomSize(@Px int i2) {
        if (i2 >= 0) {
            if (i2 != this.f14916i) {
                this.f14916i = i2;
                requestLayout();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Custom size must be non-negative");
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f4) {
        super.setElevation(f4);
        getImpl().j0(f4);
    }

    public void setEnsureMinTouchTargetSize(boolean z3) {
        if (z3 != getImpl().o()) {
            getImpl().R(z3);
            requestLayout();
        }
    }

    @Override // b1.a
    public void setExpandedComponentIdHint(@IdRes int i2) {
        this.f14923p.g(i2);
    }

    public void setHideMotionSpec(@Nullable h hVar) {
        getImpl().S(hVar);
    }

    public void setHideMotionSpecResource(@AnimatorRes int i2) {
        setHideMotionSpec(h.d(getContext(), i2));
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            getImpl().h0();
            if (this.f14911d != null) {
                t();
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i2) {
        this.f14922o.setImageResource(i2);
        t();
    }

    public void setMaxImageSize(int i2) {
        this.f14918k = i2;
        getImpl().V(i2);
    }

    public void setRippleColor(@ColorInt int i2) {
        setRippleColor(ColorStateList.valueOf(i2));
    }

    @Override // android.view.View
    public void setScaleX(float f4) {
        super.setScaleX(f4);
        getImpl().I();
    }

    @Override // android.view.View
    public void setScaleY(float f4) {
        super.setScaleY(f4);
        getImpl().I();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void setShadowPaddingEnabled(boolean z3) {
        getImpl().Z(z3);
    }

    @Override // com.google.android.material.shape.q
    public void setShapeAppearanceModel(@NonNull m mVar) {
        getImpl().a0(mVar);
    }

    public void setShowMotionSpec(@Nullable h hVar) {
        getImpl().b0(hVar);
    }

    public void setShowMotionSpecResource(@AnimatorRes int i2) {
        setShowMotionSpec(h.d(getContext(), i2));
    }

    public void setSize(int i2) {
        this.f14916i = 0;
        if (i2 != this.f14915h) {
            this.f14915h = i2;
            requestLayout();
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    @Override // androidx.core.widget.TintableImageSourceView
    public void setSupportImageTintList(@Nullable ColorStateList colorStateList) {
        if (this.f14911d != colorStateList) {
            this.f14911d = colorStateList;
            t();
        }
    }

    @Override // androidx.core.widget.TintableImageSourceView
    public void setSupportImageTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f14912e != mode) {
            this.f14912e = mode;
            t();
        }
    }

    @Override // android.view.View
    public void setTranslationX(float f4) {
        super.setTranslationX(f4);
        getImpl().J();
    }

    @Override // android.view.View
    public void setTranslationY(float f4) {
        super.setTranslationY(f4);
        getImpl().J();
    }

    @Override // android.view.View
    public void setTranslationZ(float f4) {
        super.setTranslationZ(f4);
        getImpl().J();
    }

    public void setUseCompatPadding(boolean z3) {
        if (this.f14919l != z3) {
            this.f14919l = z3;
            getImpl().C();
        }
    }

    @Override // com.google.android.material.internal.VisibilityAwareImageButton, android.widget.ImageView, android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
    }

    public void u(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().K(animatorListener);
    }

    public void v(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().L(animatorListener);
    }

    public void w(@NonNull k<? extends FloatingActionButton> kVar) {
        getImpl().M(new d(kVar));
    }

    public boolean y() {
        return getImpl().o();
    }

    public void z() {
        A(null);
    }

    /* loaded from: classes2.dex */
    protected static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: d  reason: collision with root package name */
        private static final boolean f14925d = true;

        /* renamed from: a  reason: collision with root package name */
        private Rect f14926a;

        /* renamed from: b  reason: collision with root package name */
        private b f14927b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f14928c;

        public BaseBehavior() {
            this.f14928c = true;
        }

        private static boolean c(@NonNull View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                return ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof BottomSheetBehavior;
            }
            return false;
        }

        private void d(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton) {
            int i2;
            Rect rect = floatingActionButton.f14920m;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return;
            }
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams();
            int i4 = 0;
            if (floatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) {
                i2 = rect.right;
            } else {
                i2 = floatingActionButton.getLeft() <= ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin ? -rect.left : 0;
            }
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) {
                i4 = rect.bottom;
            } else if (floatingActionButton.getTop() <= ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) {
                i4 = -rect.top;
            }
            if (i4 != 0) {
                ViewCompat.offsetTopAndBottom(floatingActionButton, i4);
            }
            if (i2 != 0) {
                ViewCompat.offsetLeftAndRight(floatingActionButton, i2);
            }
        }

        private boolean i(@NonNull View view, @NonNull FloatingActionButton floatingActionButton) {
            return this.f14928c && ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams()).getAnchorId() == view.getId() && floatingActionButton.getUserSetVisibility() == 0;
        }

        private boolean j(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, @NonNull FloatingActionButton floatingActionButton) {
            if (i(appBarLayout, floatingActionButton)) {
                if (this.f14926a == null) {
                    this.f14926a = new Rect();
                }
                Rect rect = this.f14926a;
                com.google.android.material.internal.d.a(coordinatorLayout, appBarLayout, rect);
                if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                    floatingActionButton.p(this.f14927b, false);
                    return true;
                }
                floatingActionButton.B(this.f14927b, false);
                return true;
            }
            return false;
        }

        private boolean k(@NonNull View view, @NonNull FloatingActionButton floatingActionButton) {
            if (i(view, floatingActionButton)) {
                if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams())).topMargin) {
                    floatingActionButton.p(this.f14927b, false);
                    return true;
                }
                floatingActionButton.B(this.f14927b, false);
                return true;
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull Rect rect) {
            Rect rect2 = floatingActionButton.f14920m;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        public boolean b() {
            return this.f14928c;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: e */
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                j(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            } else if (c(view)) {
                k(view, floatingActionButton);
                return false;
            } else {
                return false;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: f */
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, int i2) {
            List<View> dependencies = coordinatorLayout.getDependencies(floatingActionButton);
            int size = dependencies.size();
            for (int i4 = 0; i4 < size; i4++) {
                View view = dependencies.get(i4);
                if (view instanceof AppBarLayout) {
                    if (j(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (c(view) && k(view, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.onLayoutChild(floatingActionButton, i2);
            d(coordinatorLayout, floatingActionButton);
            return true;
        }

        public void g(boolean z3) {
            this.f14928c = z3;
        }

        @VisibleForTesting
        public void h(b bVar) {
            this.f14927b = bVar;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.dodgeInsetEdges == 0) {
                layoutParams.dodgeInsetEdges = 80;
            }
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FloatingActionButton_Behavior_Layout);
            this.f14928c = obtainStyledAttributes.getBoolean(R.styleable.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            obtainStyledAttributes.recycle();
        }
    }

    public FloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.floatingActionButtonStyle);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f14913f != colorStateList) {
            this.f14913f = colorStateList;
            getImpl().Y(this.f14913f);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FloatingActionButton(@androidx.annotation.NonNull android.content.Context r11, @androidx.annotation.Nullable android.util.AttributeSet r12, int r13) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.floatingactionbutton.FloatingActionButton.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
