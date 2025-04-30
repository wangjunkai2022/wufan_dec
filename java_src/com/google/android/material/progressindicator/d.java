package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.color.m;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CircularIndeterminateAnimatorDelegate.java */
/* loaded from: classes2.dex */
public final class d extends h<ObjectAnimator> {

    /* renamed from: l  reason: collision with root package name */
    private static final int f15392l = 4;

    /* renamed from: m  reason: collision with root package name */
    private static final int f15393m = 5400;

    /* renamed from: n  reason: collision with root package name */
    private static final int f15394n = 667;

    /* renamed from: o  reason: collision with root package name */
    private static final int f15395o = 667;

    /* renamed from: p  reason: collision with root package name */
    private static final int f15396p = 333;

    /* renamed from: q  reason: collision with root package name */
    private static final int f15397q = 333;

    /* renamed from: u  reason: collision with root package name */
    private static final int f15401u = -20;

    /* renamed from: v  reason: collision with root package name */
    private static final int f15402v = 250;

    /* renamed from: w  reason: collision with root package name */
    private static final int f15403w = 1520;

    /* renamed from: d  reason: collision with root package name */
    private ObjectAnimator f15406d;

    /* renamed from: e  reason: collision with root package name */
    private ObjectAnimator f15407e;

    /* renamed from: f  reason: collision with root package name */
    private final FastOutSlowInInterpolator f15408f;

    /* renamed from: g  reason: collision with root package name */
    private final com.google.android.material.progressindicator.b f15409g;

    /* renamed from: h  reason: collision with root package name */
    private int f15410h;

    /* renamed from: i  reason: collision with root package name */
    private float f15411i;

    /* renamed from: j  reason: collision with root package name */
    private float f15412j;

    /* renamed from: k  reason: collision with root package name */
    Animatable2Compat.AnimationCallback f15413k;

    /* renamed from: r  reason: collision with root package name */
    private static final int[] f15398r = {0, 1350, 2700, 4050};

    /* renamed from: s  reason: collision with root package name */
    private static final int[] f15399s = {667, 2017, 3367, 4717};

    /* renamed from: t  reason: collision with root package name */
    private static final int[] f15400t = {1000, 2350, 3700, 5050};

    /* renamed from: x  reason: collision with root package name */
    private static final Property<d, Float> f15404x = new c(Float.class, "animationFraction");

    /* renamed from: y  reason: collision with root package name */
    private static final Property<d, Float> f15405y = new C0111d(Float.class, "completeEndFraction");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CircularIndeterminateAnimatorDelegate.java */
    /* loaded from: classes2.dex */
    public class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            d dVar = d.this;
            dVar.f15410h = (dVar.f15410h + 4) % d.this.f15409g.f15384c.length;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CircularIndeterminateAnimatorDelegate.java */
    /* loaded from: classes2.dex */
    public class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            d.this.a();
            d dVar = d.this;
            Animatable2Compat.AnimationCallback animationCallback = dVar.f15413k;
            if (animationCallback != null) {
                animationCallback.onAnimationEnd(dVar.f15445a);
            }
        }
    }

    /* compiled from: CircularIndeterminateAnimatorDelegate.java */
    /* loaded from: classes2.dex */
    class c extends Property<d, Float> {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public Float get(d dVar) {
            return Float.valueOf(dVar.o());
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(d dVar, Float f4) {
            dVar.t(f4.floatValue());
        }
    }

    /* compiled from: CircularIndeterminateAnimatorDelegate.java */
    /* renamed from: com.google.android.material.progressindicator.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0111d extends Property<d, Float> {
        C0111d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public Float get(d dVar) {
            return Float.valueOf(dVar.p());
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(d dVar, Float f4) {
            dVar.u(f4.floatValue());
        }
    }

    public d(@NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(1);
        this.f15410h = 0;
        this.f15413k = null;
        this.f15409g = circularProgressIndicatorSpec;
        this.f15408f = new FastOutSlowInInterpolator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float o() {
        return this.f15411i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float p() {
        return this.f15412j;
    }

    private void q() {
        if (this.f15406d == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f15404x, 0.0f, 1.0f);
            this.f15406d = ofFloat;
            ofFloat.setDuration(5400L);
            this.f15406d.setInterpolator(null);
            this.f15406d.setRepeatCount(-1);
            this.f15406d.addListener(new a());
        }
        if (this.f15407e == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, f15405y, 0.0f, 1.0f);
            this.f15407e = ofFloat2;
            ofFloat2.setDuration(333L);
            this.f15407e.setInterpolator(this.f15408f);
            this.f15407e.addListener(new b());
        }
    }

    private void r(int i2) {
        for (int i4 = 0; i4 < 4; i4++) {
            float b4 = b(i2, f15400t[i4], cn.aigestudio.downloader.bizs.d.f8368g);
            if (b4 >= 0.0f && b4 <= 1.0f) {
                int i5 = i4 + this.f15410h;
                int[] iArr = this.f15409g.f15384c;
                int length = i5 % iArr.length;
                int a4 = m.a(iArr[length], this.f15445a.getAlpha());
                int a5 = m.a(this.f15409g.f15384c[(length + 1) % iArr.length], this.f15445a.getAlpha());
                this.f15447c[0] = com.google.android.material.animation.c.b().evaluate(this.f15408f.getInterpolation(b4), Integer.valueOf(a4), Integer.valueOf(a5)).intValue();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(float f4) {
        this.f15412j = f4;
    }

    private void v(int i2) {
        float[] fArr = this.f15446b;
        float f4 = this.f15411i;
        fArr[0] = (f4 * 1520.0f) - 20.0f;
        fArr[1] = f4 * 1520.0f;
        for (int i4 = 0; i4 < 4; i4++) {
            float b4 = b(i2, f15398r[i4], 667);
            float[] fArr2 = this.f15446b;
            fArr2[1] = fArr2[1] + (this.f15408f.getInterpolation(b4) * 250.0f);
            float b5 = b(i2, f15399s[i4], 667);
            float[] fArr3 = this.f15446b;
            fArr3[0] = fArr3[0] + (this.f15408f.getInterpolation(b5) * 250.0f);
        }
        float[] fArr4 = this.f15446b;
        fArr4[0] = fArr4[0] + ((fArr4[1] - fArr4[0]) * this.f15412j);
        fArr4[0] = fArr4[0] / 360.0f;
        fArr4[1] = fArr4[1] / 360.0f;
    }

    @Override // com.google.android.material.progressindicator.h
    void a() {
        ObjectAnimator objectAnimator = this.f15406d;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.h
    public void c() {
        s();
    }

    @Override // com.google.android.material.progressindicator.h
    public void d(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        this.f15413k = animationCallback;
    }

    @Override // com.google.android.material.progressindicator.h
    void f() {
        ObjectAnimator objectAnimator = this.f15407e;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        if (this.f15445a.isVisible()) {
            this.f15407e.start();
        } else {
            a();
        }
    }

    @Override // com.google.android.material.progressindicator.h
    void g() {
        q();
        s();
        this.f15406d.start();
    }

    @Override // com.google.android.material.progressindicator.h
    public void h() {
        this.f15413k = null;
    }

    @VisibleForTesting
    void s() {
        this.f15410h = 0;
        this.f15447c[0] = m.a(this.f15409g.f15384c[0], this.f15445a.getAlpha());
        this.f15412j = 0.0f;
    }

    @VisibleForTesting
    void t(float f4) {
        this.f15411i = f4;
        int i2 = (int) (f4 * 5400.0f);
        v(i2);
        r(i2);
        this.f15445a.invalidateSelf();
    }
}
