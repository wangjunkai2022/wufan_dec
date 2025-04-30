package com.nineoldandroids.view;

import android.animation.Animator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import com.nineoldandroids.animation.a;
import java.lang.ref.WeakReference;
/* compiled from: ViewPropertyAnimatorICS.java */
/* loaded from: classes4.dex */
class d extends b {

    /* renamed from: c  reason: collision with root package name */
    private static final long f54553c = -1;

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<ViewPropertyAnimator> f54554b;

    /* compiled from: ViewPropertyAnimatorICS.java */
    /* loaded from: classes4.dex */
    class a implements Animator.AnimatorListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a.InterfaceC0259a f54555a;

        a(a.InterfaceC0259a interfaceC0259a) {
            this.f54555a = interfaceC0259a;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f54555a.a(null);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f54555a.d(null);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            this.f54555a.b(null);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f54555a.c(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(View view) {
        this.f54554b = new WeakReference<>(view.animate());
    }

    @Override // com.nineoldandroids.view.b
    public b A(float f4) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.xBy(f4);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public b B(float f4) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.y(f4);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public b C(float f4) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.yBy(f4);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public b a(float f4) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.alpha(f4);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public b b(float f4) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.alphaBy(f4);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public void d() {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    @Override // com.nineoldandroids.view.b
    public long e() {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            return viewPropertyAnimator.getDuration();
        }
        return -1L;
    }

    @Override // com.nineoldandroids.view.b
    public long f() {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            return viewPropertyAnimator.getStartDelay();
        }
        return -1L;
    }

    @Override // com.nineoldandroids.view.b
    public b g(float f4) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.rotation(f4);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public b h(float f4) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.rotationBy(f4);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public b i(float f4) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.rotationX(f4);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public b j(float f4) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.rotationXBy(f4);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public b k(float f4) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.rotationY(f4);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public b l(float f4) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.rotationYBy(f4);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public b m(float f4) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.scaleX(f4);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public b n(float f4) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.scaleXBy(f4);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public b o(float f4) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.scaleY(f4);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public b p(float f4) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.scaleYBy(f4);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public b q(long j4) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.setDuration(j4);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public b r(Interpolator interpolator) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.setInterpolator(interpolator);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public b s(a.InterfaceC0259a interfaceC0259a) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            if (interfaceC0259a == null) {
                viewPropertyAnimator.setListener(null);
            } else {
                viewPropertyAnimator.setListener(new a(interfaceC0259a));
            }
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public b t(long j4) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.setStartDelay(j4);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public void u() {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.start();
        }
    }

    @Override // com.nineoldandroids.view.b
    public b v(float f4) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.translationX(f4);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public b w(float f4) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.translationXBy(f4);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public b x(float f4) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.translationY(f4);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public b y(float f4) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.translationYBy(f4);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public b z(float f4) {
        ViewPropertyAnimator viewPropertyAnimator = this.f54554b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.x(f4);
        }
        return this;
    }
}
