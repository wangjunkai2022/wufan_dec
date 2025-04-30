package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: ScaleProvider.java */
/* loaded from: classes2.dex */
public final class p implements s {

    /* renamed from: a  reason: collision with root package name */
    private float f16452a;

    /* renamed from: b  reason: collision with root package name */
    private float f16453b;

    /* renamed from: c  reason: collision with root package name */
    private float f16454c;

    /* renamed from: d  reason: collision with root package name */
    private float f16455d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f16456e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f16457f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ScaleProvider.java */
    /* loaded from: classes2.dex */
    public class a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f16458a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float f16459b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ float f16460c;

        a(View view, float f4, float f5) {
            this.f16458a = view;
            this.f16459b = f4;
            this.f16460c = f5;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f16458a.setScaleX(this.f16459b);
            this.f16458a.setScaleY(this.f16460c);
        }
    }

    public p() {
        this(true);
    }

    private static Animator c(View view, float f4, float f5) {
        float scaleX = view.getScaleX();
        float scaleY = view.getScaleY();
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat(View.SCALE_X, scaleX * f4, scaleX * f5), PropertyValuesHolder.ofFloat(View.SCALE_Y, f4 * scaleY, f5 * scaleY));
        ofPropertyValuesHolder.addListener(new a(view, scaleX, scaleY));
        return ofPropertyValuesHolder;
    }

    @Override // com.google.android.material.transition.s
    @Nullable
    public Animator a(@NonNull ViewGroup viewGroup, @NonNull View view) {
        if (this.f16457f) {
            if (this.f16456e) {
                return c(view, this.f16452a, this.f16453b);
            }
            return c(view, this.f16455d, this.f16454c);
        }
        return null;
    }

    @Override // com.google.android.material.transition.s
    @Nullable
    public Animator b(@NonNull ViewGroup viewGroup, @NonNull View view) {
        if (this.f16456e) {
            return c(view, this.f16454c, this.f16455d);
        }
        return c(view, this.f16453b, this.f16452a);
    }

    public float d() {
        return this.f16455d;
    }

    public float e() {
        return this.f16454c;
    }

    public float f() {
        return this.f16453b;
    }

    public float g() {
        return this.f16452a;
    }

    public boolean h() {
        return this.f16456e;
    }

    public boolean i() {
        return this.f16457f;
    }

    public void j(boolean z3) {
        this.f16456e = z3;
    }

    public void k(float f4) {
        this.f16455d = f4;
    }

    public void l(float f4) {
        this.f16454c = f4;
    }

    public void m(float f4) {
        this.f16453b = f4;
    }

    public void n(float f4) {
        this.f16452a = f4;
    }

    public void o(boolean z3) {
        this.f16457f = z3;
    }

    public p(boolean z3) {
        this.f16452a = 1.0f;
        this.f16453b = 1.1f;
        this.f16454c = 0.8f;
        this.f16455d = 1.0f;
        this.f16457f = true;
        this.f16456e = z3;
    }
}
