package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.Property;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import androidx.vectordrawable.graphics.drawable.AnimationUtilsCompat;
import com.google.android.material.R;
import com.google.android.material.color.m;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LinearIndeterminateDisjointAnimatorDelegate.java */
/* loaded from: classes2.dex */
public final class l extends h<ObjectAnimator> {

    /* renamed from: l  reason: collision with root package name */
    private static final int f15463l = 1800;

    /* renamed from: m  reason: collision with root package name */
    private static final int[] f15464m = {533, 567, 850, 750};

    /* renamed from: n  reason: collision with root package name */
    private static final int[] f15465n = {1267, 1000, cn.aigestudio.downloader.bizs.d.f8368g, 0};

    /* renamed from: o  reason: collision with root package name */
    private static final Property<l, Float> f15466o = new c(Float.class, "animationFraction");

    /* renamed from: d  reason: collision with root package name */
    private ObjectAnimator f15467d;

    /* renamed from: e  reason: collision with root package name */
    private ObjectAnimator f15468e;

    /* renamed from: f  reason: collision with root package name */
    private final Interpolator[] f15469f;

    /* renamed from: g  reason: collision with root package name */
    private final com.google.android.material.progressindicator.b f15470g;

    /* renamed from: h  reason: collision with root package name */
    private int f15471h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f15472i;

    /* renamed from: j  reason: collision with root package name */
    private float f15473j;

    /* renamed from: k  reason: collision with root package name */
    Animatable2Compat.AnimationCallback f15474k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LinearIndeterminateDisjointAnimatorDelegate.java */
    /* loaded from: classes2.dex */
    public class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            l lVar = l.this;
            lVar.f15471h = (lVar.f15471h + 1) % l.this.f15470g.f15384c.length;
            l.this.f15472i = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LinearIndeterminateDisjointAnimatorDelegate.java */
    /* loaded from: classes2.dex */
    public class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            l.this.a();
            l lVar = l.this;
            Animatable2Compat.AnimationCallback animationCallback = lVar.f15474k;
            if (animationCallback != null) {
                animationCallback.onAnimationEnd(lVar.f15445a);
            }
        }
    }

    /* compiled from: LinearIndeterminateDisjointAnimatorDelegate.java */
    /* loaded from: classes2.dex */
    class c extends Property<l, Float> {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public Float get(l lVar) {
            return Float.valueOf(lVar.n());
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(l lVar, Float f4) {
            lVar.r(f4.floatValue());
        }
    }

    public l(@NonNull Context context, @NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(2);
        this.f15471h = 0;
        this.f15474k = null;
        this.f15470g = linearProgressIndicatorSpec;
        this.f15469f = new Interpolator[]{AnimationUtilsCompat.loadInterpolator(context, R.animator.linear_indeterminate_line1_head_interpolator), AnimationUtilsCompat.loadInterpolator(context, R.animator.linear_indeterminate_line1_tail_interpolator), AnimationUtilsCompat.loadInterpolator(context, R.animator.linear_indeterminate_line2_head_interpolator), AnimationUtilsCompat.loadInterpolator(context, R.animator.linear_indeterminate_line2_tail_interpolator)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float n() {
        return this.f15473j;
    }

    private void o() {
        if (this.f15467d == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f15466o, 0.0f, 1.0f);
            this.f15467d = ofFloat;
            ofFloat.setDuration(1800L);
            this.f15467d.setInterpolator(null);
            this.f15467d.setRepeatCount(-1);
            this.f15467d.addListener(new a());
        }
        if (this.f15468e == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, f15466o, 1.0f);
            this.f15468e = ofFloat2;
            ofFloat2.setDuration(1800L);
            this.f15468e.setInterpolator(null);
            this.f15468e.addListener(new b());
        }
    }

    private void p() {
        if (this.f15472i) {
            Arrays.fill(this.f15447c, m.a(this.f15470g.f15384c[this.f15471h], this.f15445a.getAlpha()));
            this.f15472i = false;
        }
    }

    private void s(int i2) {
        for (int i4 = 0; i4 < 4; i4++) {
            this.f15446b[i4] = Math.max(0.0f, Math.min(1.0f, this.f15469f[i4].getInterpolation(b(i2, f15465n[i4], f15464m[i4]))));
        }
    }

    @Override // com.google.android.material.progressindicator.h
    public void a() {
        ObjectAnimator objectAnimator = this.f15467d;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.h
    public void c() {
        q();
    }

    @Override // com.google.android.material.progressindicator.h
    public void d(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        this.f15474k = animationCallback;
    }

    @Override // com.google.android.material.progressindicator.h
    public void f() {
        ObjectAnimator objectAnimator = this.f15468e;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        a();
        if (this.f15445a.isVisible()) {
            this.f15468e.setFloatValues(this.f15473j, 1.0f);
            this.f15468e.setDuration((1.0f - this.f15473j) * 1800.0f);
            this.f15468e.start();
        }
    }

    @Override // com.google.android.material.progressindicator.h
    public void g() {
        o();
        q();
        this.f15467d.start();
    }

    @Override // com.google.android.material.progressindicator.h
    public void h() {
        this.f15474k = null;
    }

    @VisibleForTesting
    void q() {
        this.f15471h = 0;
        int a4 = m.a(this.f15470g.f15384c[0], this.f15445a.getAlpha());
        int[] iArr = this.f15447c;
        iArr[0] = a4;
        iArr[1] = a4;
    }

    @VisibleForTesting
    void r(float f4) {
        this.f15473j = f4;
        s((int) (f4 * 1800.0f));
        p();
        this.f15445a.invalidateSelf();
    }
}
