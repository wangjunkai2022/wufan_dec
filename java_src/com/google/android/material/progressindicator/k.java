package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.color.m;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LinearIndeterminateContiguousAnimatorDelegate.java */
/* loaded from: classes2.dex */
public final class k extends h<ObjectAnimator> {

    /* renamed from: j  reason: collision with root package name */
    private static final int f15453j = 667;

    /* renamed from: k  reason: collision with root package name */
    private static final int f15454k = 333;

    /* renamed from: l  reason: collision with root package name */
    private static final Property<k, Float> f15455l = new b(Float.class, "animationFraction");

    /* renamed from: d  reason: collision with root package name */
    private ObjectAnimator f15456d;

    /* renamed from: e  reason: collision with root package name */
    private FastOutSlowInInterpolator f15457e;

    /* renamed from: f  reason: collision with root package name */
    private final com.google.android.material.progressindicator.b f15458f;

    /* renamed from: g  reason: collision with root package name */
    private int f15459g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f15460h;

    /* renamed from: i  reason: collision with root package name */
    private float f15461i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LinearIndeterminateContiguousAnimatorDelegate.java */
    /* loaded from: classes2.dex */
    public class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            k kVar = k.this;
            kVar.f15459g = (kVar.f15459g + 1) % k.this.f15458f.f15384c.length;
            k.this.f15460h = true;
        }
    }

    /* compiled from: LinearIndeterminateContiguousAnimatorDelegate.java */
    /* loaded from: classes2.dex */
    class b extends Property<k, Float> {
        b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public Float get(k kVar) {
            return Float.valueOf(kVar.n());
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(k kVar, Float f4) {
            kVar.r(f4.floatValue());
        }
    }

    public k(@NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(3);
        this.f15459g = 1;
        this.f15458f = linearProgressIndicatorSpec;
        this.f15457e = new FastOutSlowInInterpolator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float n() {
        return this.f15461i;
    }

    private void o() {
        if (this.f15456d == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f15455l, 0.0f, 1.0f);
            this.f15456d = ofFloat;
            ofFloat.setDuration(333L);
            this.f15456d.setInterpolator(null);
            this.f15456d.setRepeatCount(-1);
            this.f15456d.addListener(new a());
        }
    }

    private void p() {
        if (!this.f15460h || this.f15446b[3] >= 1.0f) {
            return;
        }
        int[] iArr = this.f15447c;
        iArr[2] = iArr[1];
        iArr[1] = iArr[0];
        iArr[0] = m.a(this.f15458f.f15384c[this.f15459g], this.f15445a.getAlpha());
        this.f15460h = false;
    }

    private void s(int i2) {
        this.f15446b[0] = 0.0f;
        float b4 = b(i2, 0, f15453j);
        float[] fArr = this.f15446b;
        float interpolation = this.f15457e.getInterpolation(b4);
        fArr[2] = interpolation;
        fArr[1] = interpolation;
        float[] fArr2 = this.f15446b;
        float interpolation2 = this.f15457e.getInterpolation(b4 + 0.49925038f);
        fArr2[4] = interpolation2;
        fArr2[3] = interpolation2;
        this.f15446b[5] = 1.0f;
    }

    @Override // com.google.android.material.progressindicator.h
    public void a() {
        ObjectAnimator objectAnimator = this.f15456d;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.h
    public void c() {
        q();
    }

    @Override // com.google.android.material.progressindicator.h
    public void d(@Nullable Animatable2Compat.AnimationCallback animationCallback) {
    }

    @Override // com.google.android.material.progressindicator.h
    public void f() {
    }

    @Override // com.google.android.material.progressindicator.h
    public void g() {
        o();
        q();
        this.f15456d.start();
    }

    @Override // com.google.android.material.progressindicator.h
    public void h() {
    }

    @VisibleForTesting
    void q() {
        this.f15460h = true;
        this.f15459g = 1;
        Arrays.fill(this.f15447c, m.a(this.f15458f.f15384c[0], this.f15445a.getAlpha()));
    }

    @VisibleForTesting
    void r(float f4) {
        this.f15461i = f4;
        s((int) (f4 * 333.0f));
        p();
        this.f15445a.invalidateSelf();
    }
}
