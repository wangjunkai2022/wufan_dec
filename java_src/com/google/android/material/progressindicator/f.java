package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Property;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DrawableWithAnimatedVisibilityChange.java */
/* loaded from: classes2.dex */
public abstract class f extends Drawable implements Animatable2Compat {

    /* renamed from: o  reason: collision with root package name */
    private static final boolean f15424o = false;

    /* renamed from: p  reason: collision with root package name */
    private static final int f15425p = 500;

    /* renamed from: q  reason: collision with root package name */
    private static final Property<f, Float> f15426q = new c(Float.class, "growFraction");

    /* renamed from: a  reason: collision with root package name */
    final Context f15427a;

    /* renamed from: b  reason: collision with root package name */
    final com.google.android.material.progressindicator.b f15428b;

    /* renamed from: d  reason: collision with root package name */
    private ValueAnimator f15430d;

    /* renamed from: e  reason: collision with root package name */
    private ValueAnimator f15431e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f15432f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f15433g;

    /* renamed from: h  reason: collision with root package name */
    private float f15434h;

    /* renamed from: i  reason: collision with root package name */
    private List<Animatable2Compat.AnimationCallback> f15435i;

    /* renamed from: j  reason: collision with root package name */
    private Animatable2Compat.AnimationCallback f15436j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f15437k;

    /* renamed from: l  reason: collision with root package name */
    private float f15438l;

    /* renamed from: n  reason: collision with root package name */
    private int f15440n;

    /* renamed from: m  reason: collision with root package name */
    final Paint f15439m = new Paint();

    /* renamed from: c  reason: collision with root package name */
    com.google.android.material.progressindicator.a f15429c = new com.google.android.material.progressindicator.a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DrawableWithAnimatedVisibilityChange.java */
    /* loaded from: classes2.dex */
    public class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            f.this.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DrawableWithAnimatedVisibilityChange.java */
    /* loaded from: classes2.dex */
    public class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            f.super.setVisible(false, false);
            f.this.d();
        }
    }

    /* compiled from: DrawableWithAnimatedVisibilityChange.java */
    /* loaded from: classes2.dex */
    class c extends Property<f, Float> {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public Float get(f fVar) {
            return Float.valueOf(fVar.g());
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(f fVar, Float f4) {
            fVar.m(f4.floatValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(@NonNull Context context, @NonNull com.google.android.material.progressindicator.b bVar) {
        this.f15427a = context;
        this.f15428b = bVar;
        setAlpha(255);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        Animatable2Compat.AnimationCallback animationCallback = this.f15436j;
        if (animationCallback != null) {
            animationCallback.onAnimationEnd(this);
        }
        List<Animatable2Compat.AnimationCallback> list = this.f15435i;
        if (list == null || this.f15437k) {
            return;
        }
        for (Animatable2Compat.AnimationCallback animationCallback2 : list) {
            animationCallback2.onAnimationEnd(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        Animatable2Compat.AnimationCallback animationCallback = this.f15436j;
        if (animationCallback != null) {
            animationCallback.onAnimationStart(this);
        }
        List<Animatable2Compat.AnimationCallback> list = this.f15435i;
        if (list == null || this.f15437k) {
            return;
        }
        for (Animatable2Compat.AnimationCallback animationCallback2 : list) {
            animationCallback2.onAnimationStart(this);
        }
    }

    private void f(@NonNull ValueAnimator... valueAnimatorArr) {
        boolean z3 = this.f15437k;
        this.f15437k = true;
        for (ValueAnimator valueAnimator : valueAnimatorArr) {
            valueAnimator.end();
        }
        this.f15437k = z3;
    }

    private void l() {
        if (this.f15430d == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f15426q, 0.0f, 1.0f);
            this.f15430d = ofFloat;
            ofFloat.setDuration(500L);
            this.f15430d.setInterpolator(com.google.android.material.animation.a.f14005b);
            r(this.f15430d);
        }
        if (this.f15431e == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, f15426q, 1.0f, 0.0f);
            this.f15431e = ofFloat2;
            ofFloat2.setDuration(500L);
            this.f15431e.setInterpolator(com.google.android.material.animation.a.f14005b);
            n(this.f15431e);
        }
    }

    private void n(@NonNull ValueAnimator valueAnimator) {
        ValueAnimator valueAnimator2 = this.f15431e;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            throw new IllegalArgumentException("Cannot set hideAnimator while the current hideAnimator is running.");
        }
        this.f15431e = valueAnimator;
        valueAnimator.addListener(new b());
    }

    private void r(@NonNull ValueAnimator valueAnimator) {
        ValueAnimator valueAnimator2 = this.f15430d;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            throw new IllegalArgumentException("Cannot set showAnimator while the current showAnimator is running.");
        }
        this.f15430d = valueAnimator;
        valueAnimator.addListener(new a());
    }

    public void clearAnimationCallbacks() {
        this.f15435i.clear();
        this.f15435i = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float g() {
        if (this.f15428b.b() || this.f15428b.a()) {
            if (!this.f15433g && !this.f15432f) {
                return this.f15438l;
            }
            return this.f15434h;
        }
        return 1.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f15440n;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @NonNull
    ValueAnimator h() {
        return this.f15431e;
    }

    public boolean i() {
        return s(false, false, false);
    }

    public boolean isRunning() {
        return k() || j();
    }

    public boolean j() {
        ValueAnimator valueAnimator = this.f15431e;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.f15433g;
    }

    public boolean k() {
        ValueAnimator valueAnimator = this.f15430d;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.f15432f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(@FloatRange(from = 0.0d, to = 1.0d) float f4) {
        if (this.f15438l != f4) {
            this.f15438l = f4;
            invalidateSelf();
        }
    }

    void o(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        this.f15436j = animationCallback;
    }

    @VisibleForTesting
    void p(boolean z3, @FloatRange(from = 0.0d, to = 1.0d) float f4) {
        this.f15433g = z3;
        this.f15434h = f4;
    }

    @VisibleForTesting
    void q(boolean z3, @FloatRange(from = 0.0d, to = 1.0d) float f4) {
        this.f15432f = z3;
        this.f15434h = f4;
    }

    public void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        if (this.f15435i == null) {
            this.f15435i = new ArrayList();
        }
        if (this.f15435i.contains(animationCallback)) {
            return;
        }
        this.f15435i.add(animationCallback);
    }

    public boolean s(boolean z3, boolean z4, boolean z5) {
        return t(z3, z4, z5 && this.f15429c.a(this.f15427a.getContentResolver()) > 0.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f15440n = i2;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f15439m.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z3, boolean z4) {
        return s(z3, z4, true);
    }

    public void start() {
        t(true, true, false);
    }

    public void stop() {
        t(false, true, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean t(boolean z3, boolean z4, boolean z5) {
        l();
        if (isVisible() || z3) {
            ValueAnimator valueAnimator = z3 ? this.f15430d : this.f15431e;
            if (!z5) {
                if (valueAnimator.isRunning()) {
                    valueAnimator.end();
                } else {
                    f(valueAnimator);
                }
                return super.setVisible(z3, false);
            } else if (z5 && valueAnimator.isRunning()) {
                return false;
            } else {
                boolean z6 = !z3 || super.setVisible(z3, false);
                if (!(z3 ? this.f15428b.b() : this.f15428b.a())) {
                    f(valueAnimator);
                    return z6;
                }
                if (!z4 && Build.VERSION.SDK_INT >= 19 && valueAnimator.isPaused()) {
                    valueAnimator.resume();
                } else {
                    valueAnimator.start();
                }
                return z6;
            }
        }
        return false;
    }

    public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        List<Animatable2Compat.AnimationCallback> list = this.f15435i;
        if (list == null || !list.contains(animationCallback)) {
            return false;
        }
        this.f15435i.remove(animationCallback);
        if (this.f15435i.isEmpty()) {
            this.f15435i = null;
            return true;
        }
        return true;
    }
}
