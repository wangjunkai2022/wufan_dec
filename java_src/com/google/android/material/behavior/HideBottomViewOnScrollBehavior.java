package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* loaded from: classes2.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: e  reason: collision with root package name */
    protected static final int f14087e = 225;

    /* renamed from: f  reason: collision with root package name */
    protected static final int f14088f = 175;

    /* renamed from: g  reason: collision with root package name */
    private static final int f14089g = 1;

    /* renamed from: h  reason: collision with root package name */
    private static final int f14090h = 2;

    /* renamed from: a  reason: collision with root package name */
    private int f14091a;

    /* renamed from: b  reason: collision with root package name */
    private int f14092b;

    /* renamed from: c  reason: collision with root package name */
    private int f14093c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private ViewPropertyAnimator f14094d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.f14094d = null;
        }
    }

    public HideBottomViewOnScrollBehavior() {
        this.f14091a = 0;
        this.f14092b = 2;
        this.f14093c = 0;
    }

    private void b(@NonNull V v3, int i2, long j4, TimeInterpolator timeInterpolator) {
        this.f14094d = v3.animate().translationY(i2).setInterpolator(timeInterpolator).setDuration(j4).setListener(new a());
    }

    public boolean c() {
        return this.f14092b == 1;
    }

    public boolean d() {
        return this.f14092b == 2;
    }

    public void e(@NonNull V v3, @Dimension int i2) {
        this.f14093c = i2;
        if (this.f14092b == 1) {
            v3.setTranslationY(this.f14091a + i2);
        }
    }

    public void f(@NonNull V v3) {
        g(v3, true);
    }

    public void g(@NonNull V v3, boolean z3) {
        if (c()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f14094d;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v3.clearAnimation();
        }
        this.f14092b = 1;
        int i2 = this.f14091a + this.f14093c;
        if (z3) {
            b(v3, i2, 175L, com.google.android.material.animation.a.f14006c);
        } else {
            v3.setTranslationY(i2);
        }
    }

    public void h(@NonNull V v3) {
        i(v3, true);
    }

    public void i(@NonNull V v3, boolean z3) {
        if (d()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f14094d;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v3.clearAnimation();
        }
        this.f14092b = 2;
        if (z3) {
            b(v3, 0, 225L, com.google.android.material.animation.a.f14007d);
        } else {
            v3.setTranslationY(0);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, int i2) {
        this.f14091a = v3.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) v3.getLayoutParams()).bottomMargin;
        return super.onLayoutChild(coordinatorLayout, v3, i2);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull View view, int i2, int i4, int i5, int i6, int i7, @NonNull int[] iArr) {
        if (i4 > 0) {
            f(v3);
        } else if (i4 < 0) {
            h(v3);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull View view, @NonNull View view2, int i2, int i4) {
        return i2 == 2;
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f14091a = 0;
        this.f14092b = 2;
        this.f14093c = 0;
    }
}
