package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public final class ViewPropertyAnimatorCompat {

    /* renamed from: e  reason: collision with root package name */
    static final int f4851e = 2113929216;

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<View> f4852a;

    /* renamed from: b  reason: collision with root package name */
    Runnable f4853b = null;

    /* renamed from: c  reason: collision with root package name */
    Runnable f4854c = null;

    /* renamed from: d  reason: collision with root package name */
    int f4855d = -1;

    /* loaded from: classes.dex */
    static class ViewPropertyAnimatorListenerApi14 implements ViewPropertyAnimatorListener {

        /* renamed from: a  reason: collision with root package name */
        ViewPropertyAnimatorCompat f4862a;

        /* renamed from: b  reason: collision with root package name */
        boolean f4863b;

        ViewPropertyAnimatorListenerApi14(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat) {
            this.f4862a = viewPropertyAnimatorCompat;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationCancel(View view) {
            Object tag = view.getTag(ViewPropertyAnimatorCompat.f4851e);
            ViewPropertyAnimatorListener viewPropertyAnimatorListener = tag instanceof ViewPropertyAnimatorListener ? (ViewPropertyAnimatorListener) tag : null;
            if (viewPropertyAnimatorListener != null) {
                viewPropertyAnimatorListener.onAnimationCancel(view);
            }
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        @SuppressLint({"WrongConstant"})
        public void onAnimationEnd(View view) {
            int i2 = this.f4862a.f4855d;
            if (i2 > -1) {
                view.setLayerType(i2, null);
                this.f4862a.f4855d = -1;
            }
            if (Build.VERSION.SDK_INT >= 16 || !this.f4863b) {
                ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f4862a;
                Runnable runnable = viewPropertyAnimatorCompat.f4854c;
                if (runnable != null) {
                    viewPropertyAnimatorCompat.f4854c = null;
                    runnable.run();
                }
                Object tag = view.getTag(ViewPropertyAnimatorCompat.f4851e);
                ViewPropertyAnimatorListener viewPropertyAnimatorListener = tag instanceof ViewPropertyAnimatorListener ? (ViewPropertyAnimatorListener) tag : null;
                if (viewPropertyAnimatorListener != null) {
                    viewPropertyAnimatorListener.onAnimationEnd(view);
                }
                this.f4863b = true;
            }
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            this.f4863b = false;
            if (this.f4862a.f4855d > -1) {
                view.setLayerType(2, null);
            }
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f4862a;
            Runnable runnable = viewPropertyAnimatorCompat.f4853b;
            if (runnable != null) {
                viewPropertyAnimatorCompat.f4853b = null;
                runnable.run();
            }
            Object tag = view.getTag(ViewPropertyAnimatorCompat.f4851e);
            ViewPropertyAnimatorListener viewPropertyAnimatorListener = tag instanceof ViewPropertyAnimatorListener ? (ViewPropertyAnimatorListener) tag : null;
            if (viewPropertyAnimatorListener != null) {
                viewPropertyAnimatorListener.onAnimationStart(view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewPropertyAnimatorCompat(View view) {
        this.f4852a = new WeakReference<>(view);
    }

    private void a(final View view, final ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        if (viewPropertyAnimatorListener != null) {
            view.animate().setListener(new AnimatorListenerAdapter() { // from class: androidx.core.view.ViewPropertyAnimatorCompat.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    viewPropertyAnimatorListener.onAnimationCancel(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    viewPropertyAnimatorListener.onAnimationEnd(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    viewPropertyAnimatorListener.onAnimationStart(view);
                }
            });
        } else {
            view.animate().setListener(null);
        }
    }

    public ViewPropertyAnimatorCompat alpha(float f4) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().alpha(f4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat alphaBy(float f4) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().alphaBy(f4);
        }
        return this;
    }

    public void cancel() {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public long getDuration() {
        View view = this.f4852a.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    public Interpolator getInterpolator() {
        View view = this.f4852a.get();
        if (view == null || Build.VERSION.SDK_INT < 18) {
            return null;
        }
        return (Interpolator) view.animate().getInterpolator();
    }

    public long getStartDelay() {
        View view = this.f4852a.get();
        if (view != null) {
            return view.animate().getStartDelay();
        }
        return 0L;
    }

    public ViewPropertyAnimatorCompat rotation(float f4) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().rotation(f4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationBy(float f4) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().rotationBy(f4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationX(float f4) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().rotationX(f4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationXBy(float f4) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().rotationXBy(f4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationY(float f4) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().rotationY(f4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationYBy(float f4) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().rotationYBy(f4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat scaleX(float f4) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().scaleX(f4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat scaleXBy(float f4) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().scaleXBy(f4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat scaleY(float f4) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().scaleY(f4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat scaleYBy(float f4) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().scaleYBy(f4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat setDuration(long j4) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().setDuration(j4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat setInterpolator(Interpolator interpolator) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat setListener(ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        View view = this.f4852a.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                a(view, viewPropertyAnimatorListener);
            } else {
                view.setTag(f4851e, viewPropertyAnimatorListener);
                a(view, new ViewPropertyAnimatorListenerApi14(this));
            }
        }
        return this;
    }

    public ViewPropertyAnimatorCompat setStartDelay(long j4) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().setStartDelay(j4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat setUpdateListener(final ViewPropertyAnimatorUpdateListener viewPropertyAnimatorUpdateListener) {
        final View view = this.f4852a.get();
        if (view != null && Build.VERSION.SDK_INT >= 19) {
            view.animate().setUpdateListener(viewPropertyAnimatorUpdateListener != null ? new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.core.view.ViewPropertyAnimatorCompat.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    viewPropertyAnimatorUpdateListener.onAnimationUpdate(view);
                }
            } : null);
        }
        return this;
    }

    public void start() {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().start();
        }
    }

    public ViewPropertyAnimatorCompat translationX(float f4) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().translationX(f4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationXBy(float f4) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().translationXBy(f4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationY(float f4) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().translationY(f4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationYBy(float f4) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().translationYBy(f4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationZ(float f4) {
        View view = this.f4852a.get();
        if (view != null && Build.VERSION.SDK_INT >= 21) {
            view.animate().translationZ(f4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationZBy(float f4) {
        View view = this.f4852a.get();
        if (view != null && Build.VERSION.SDK_INT >= 21) {
            view.animate().translationZBy(f4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat withEndAction(Runnable runnable) {
        View view = this.f4852a.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                view.animate().withEndAction(runnable);
            } else {
                a(view, new ViewPropertyAnimatorListenerApi14(this));
                this.f4854c = runnable;
            }
        }
        return this;
    }

    @SuppressLint({"WrongConstant"})
    public ViewPropertyAnimatorCompat withLayer() {
        View view = this.f4852a.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                view.animate().withLayer();
            } else {
                this.f4855d = view.getLayerType();
                a(view, new ViewPropertyAnimatorListenerApi14(this));
            }
        }
        return this;
    }

    public ViewPropertyAnimatorCompat withStartAction(Runnable runnable) {
        View view = this.f4852a.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                view.animate().withStartAction(runnable);
            } else {
                a(view, new ViewPropertyAnimatorListenerApi14(this));
                this.f4853b = runnable;
            }
        }
        return this;
    }

    public ViewPropertyAnimatorCompat x(float f4) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().x(f4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat xBy(float f4) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().xBy(f4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat y(float f4) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().y(f4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat yBy(float f4) {
        View view = this.f4852a.get();
        if (view != null) {
            view.animate().yBy(f4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat z(float f4) {
        View view = this.f4852a.get();
        if (view != null && Build.VERSION.SDK_INT >= 21) {
            view.animate().z(f4);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat zBy(float f4) {
        View view = this.f4852a.get();
        if (view != null && Build.VERSION.SDK_INT >= 21) {
            view.animate().zBy(f4);
        }
        return this;
    }
}
