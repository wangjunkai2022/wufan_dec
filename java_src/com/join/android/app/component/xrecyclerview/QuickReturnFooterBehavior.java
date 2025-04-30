package com.join.android.app.component.xrecyclerview;

import android.animation.Animator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
/* loaded from: classes2.dex */
public class QuickReturnFooterBehavior extends CoordinatorLayout.Behavior<View> {

    /* renamed from: e  reason: collision with root package name */
    private static final Interpolator f17761e = new FastOutSlowInInterpolator();

    /* renamed from: a  reason: collision with root package name */
    private int f17762a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f17763b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f17764c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f17765d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Animator.AnimatorListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f17766a;

        a(View view) {
            this.f17766a = view;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            QuickReturnFooterBehavior.this.f17764c = false;
            if (QuickReturnFooterBehavior.this.f17763b) {
                return;
            }
            QuickReturnFooterBehavior.this.i(this.f17766a);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            QuickReturnFooterBehavior.this.f17764c = false;
            this.f17766a.setVisibility(8);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Animator.AnimatorListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f17768a;

        b(View view) {
            this.f17768a = view;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            QuickReturnFooterBehavior.this.f17763b = false;
            if (QuickReturnFooterBehavior.this.f17764c) {
                return;
            }
            QuickReturnFooterBehavior.this.g(this.f17768a);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            QuickReturnFooterBehavior.this.f17763b = false;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f17768a.setVisibility(0);
        }
    }

    public QuickReturnFooterBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17765d = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(View view) {
        this.f17764c = true;
        ViewPropertyAnimator duration = view.animate().translationY(view.getHeight()).setInterpolator(f17761e).setDuration(200L);
        duration.setListener(new a(view));
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(View view) {
        this.f17763b = true;
        ViewPropertyAnimator duration = view.animate().translationY(0.0f).setInterpolator(f17761e).setDuration(200L);
        duration.setListener(new b(view));
        duration.start();
    }

    public void h(View view, boolean z3) {
        boolean z4 = this.f17765d;
        if (z4 == z3) {
            if (z4) {
                if (view.getVisibility() == 0) {
                    return;
                }
            } else if (view.getVisibility() == 8) {
                return;
            }
        }
        this.f17765d = z3;
        view.animate().cancel();
        if (this.f17765d) {
            if (this.f17763b) {
                return;
            }
            i(view);
        } else if (this.f17764c) {
        } else {
            g(view);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i2, int i4, int[] iArr) {
        if (this.f17765d) {
            if ((i4 > 0 && this.f17762a < 0) || (i4 < 0 && this.f17762a > 0)) {
                view.animate().cancel();
                this.f17762a = 0;
            }
            int i5 = this.f17762a + i4;
            this.f17762a = i5;
            if (i5 > view.getHeight() && view.getVisibility() == 0 && !this.f17764c) {
                g(view);
            } else if (this.f17762a >= 0 || view.getVisibility() != 8 || this.f17763b) {
            } else {
                i(view);
            }
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i2) {
        return this.f17765d && (i2 & 2) != 0;
    }
}
