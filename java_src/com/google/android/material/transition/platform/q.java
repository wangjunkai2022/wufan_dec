package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
/* compiled from: ScaleProvider.java */
@RequiresApi(21)
/* loaded from: classes2.dex */
public final class q implements t {

    /* renamed from: a  reason: collision with root package name */
    private float f16611a;

    /* renamed from: b  reason: collision with root package name */
    private float f16612b;

    /* renamed from: c  reason: collision with root package name */
    private float f16613c;

    /* renamed from: d  reason: collision with root package name */
    private float f16614d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f16615e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f16616f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ScaleProvider.java */
    /* loaded from: classes2.dex */
    public class a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f16617a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float f16618b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ float f16619c;

        a(View view, float f4, float f5) {
            this.f16617a = view;
            this.f16618b = f4;
            this.f16619c = f5;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f16617a.setScaleX(this.f16618b);
            this.f16617a.setScaleY(this.f16619c);
        }
    }

    public q() {
        this(true);
    }

    private static Animator c(View view, float f4, float f5) {
        float scaleX = view.getScaleX();
        float scaleY = view.getScaleY();
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat(View.SCALE_X, scaleX * f4, scaleX * f5), PropertyValuesHolder.ofFloat(View.SCALE_Y, f4 * scaleY, f5 * scaleY));
        ofPropertyValuesHolder.addListener(new a(view, scaleX, scaleY));
        return ofPropertyValuesHolder;
    }

    @Override // com.google.android.material.transition.platform.t
    @Nullable
    public Animator a(@NonNull ViewGroup viewGroup, @NonNull View view) {
        if (this.f16616f) {
            if (this.f16615e) {
                return c(view, this.f16611a, this.f16612b);
            }
            return c(view, this.f16614d, this.f16613c);
        }
        return null;
    }

    @Override // com.google.android.material.transition.platform.t
    @Nullable
    public Animator b(@NonNull ViewGroup viewGroup, @NonNull View view) {
        if (this.f16615e) {
            return c(view, this.f16613c, this.f16614d);
        }
        return c(view, this.f16612b, this.f16611a);
    }

    public float d() {
        return this.f16614d;
    }

    public float e() {
        return this.f16613c;
    }

    public float f() {
        return this.f16612b;
    }

    public float g() {
        return this.f16611a;
    }

    public boolean h() {
        return this.f16615e;
    }

    public boolean i() {
        return this.f16616f;
    }

    public void j(boolean z3) {
        this.f16615e = z3;
    }

    public void k(float f4) {
        this.f16614d = f4;
    }

    public void l(float f4) {
        this.f16613c = f4;
    }

    public void m(float f4) {
        this.f16612b = f4;
    }

    public void n(float f4) {
        this.f16611a = f4;
    }

    public void o(boolean z3) {
        this.f16616f = z3;
    }

    public q(boolean z3) {
        this.f16611a = 1.0f;
        this.f16612b = 1.1f;
        this.f16613c = 0.8f;
        this.f16614d = 1.0f;
        this.f16616f = true;
        this.f16615e = z3;
    }
}
