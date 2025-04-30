package com.join.mgps.Util;

import android.animation.Animator;
import android.app.Activity;
import android.os.Build;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.animation.Interpolator;
import androidx.annotation.IdRes;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
/* compiled from: ViewUtils.java */
/* loaded from: classes3.dex */
public class p2 {

    /* compiled from: ViewUtils.java */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: e  reason: collision with root package name */
        private static final Interpolator f27760e = new FastOutSlowInInterpolator();

        /* renamed from: a  reason: collision with root package name */
        private boolean f27761a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f27762b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f27763c = true;

        /* renamed from: d  reason: collision with root package name */
        private View f27764d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ViewUtils.java */
        /* renamed from: com.join.mgps.Util.p2$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0145a implements Animator.AnimatorListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ View f27765a;

            C0145a(View view) {
                this.f27765a = view;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                a.this.f27762b = false;
                if (a.this.f27761a) {
                    return;
                }
                a.this.m(this.f27765a);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                a.this.f27762b = false;
                this.f27765a.setVisibility(8);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ViewUtils.java */
        /* loaded from: classes3.dex */
        public class b implements Animator.AnimatorListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ View f27767a;

            b(View view) {
                this.f27767a = view;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                a.this.f27761a = false;
                if (a.this.f27762b) {
                    return;
                }
                a.this.j(this.f27767a);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                a.this.f27761a = false;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                this.f27767a.setVisibility(0);
            }
        }

        public a(View view) {
            this.f27764d = view;
            k(view, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void j(View view) {
            int i2 = i();
            this.f27762b = true;
            ViewPropertyAnimator duration = view.animate().translationY(i2).setInterpolator(f27760e).setDuration(200L);
            duration.setListener(new C0145a(view));
            duration.start();
        }

        private void k(View view, boolean z3) {
            if (view == null) {
                return;
            }
            boolean z4 = this.f27763c;
            if (z4 == z3) {
                if (z4) {
                    if (view.getVisibility() == 0) {
                        return;
                    }
                } else if (view.getVisibility() == 8) {
                    return;
                }
            }
            this.f27763c = z3;
            view.animate().cancel();
            if (this.f27763c) {
                if (this.f27761a) {
                    return;
                }
                m(view);
            } else if (this.f27762b) {
            } else {
                j(view);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void m(View view) {
            this.f27761a = true;
            ViewPropertyAnimator duration = view.animate().translationY(0.0f).setInterpolator(f27760e).setDuration(200L);
            duration.setListener(new b(view));
            duration.start();
        }

        public void g() {
            View view = this.f27764d;
            if (view != null) {
                view.animate().cancel();
            }
        }

        public int h() {
            View view = this.f27764d;
            if (view == null) {
                return 0;
            }
            return view.getHeight();
        }

        public int i() {
            int height = this.f27764d.getHeight();
            if (this.f27764d.getParent() == null || !(this.f27764d.getParent() instanceof View)) {
                return height;
            }
            View view = (View) this.f27764d.getParent();
            return view.getBottom() != this.f27764d.getBottom() ? view.getBottom() - this.f27764d.getTop() : height;
        }

        public void l(boolean z3) {
            k(this.f27764d, z3);
        }
    }

    private p2() {
    }

    public static <V extends View> V a(Activity activity, @IdRes int i2) {
        return (V) activity.findViewById(i2);
    }

    public static <V extends View> V b(View view, @IdRes int i2) {
        return (V) view.findViewById(i2);
    }

    public static void c(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (Build.VERSION.SDK_INT >= 16) {
            return;
        }
        viewTreeObserver.removeGlobalOnLayoutListener(onGlobalLayoutListener);
    }
}
