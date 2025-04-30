package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: FadeProvider.java */
/* loaded from: classes2.dex */
public final class d implements s {

    /* renamed from: a  reason: collision with root package name */
    private float f16421a = 1.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FadeProvider.java */
    /* loaded from: classes2.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f16422a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float f16423b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ float f16424c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ float f16425d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ float f16426e;

        a(View view, float f4, float f5, float f6, float f7) {
            this.f16422a = view;
            this.f16423b = f4;
            this.f16424c = f5;
            this.f16425d = f6;
            this.f16426e = f7;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f16422a.setAlpha(r.l(this.f16423b, this.f16424c, this.f16425d, this.f16426e, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FadeProvider.java */
    /* loaded from: classes2.dex */
    public class b extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f16427a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float f16428b;

        b(View view, float f4) {
            this.f16427a = view;
            this.f16428b = f4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f16427a.setAlpha(this.f16428b);
        }
    }

    private static Animator c(View view, float f4, float f5, @FloatRange(from = 0.0d, to = 1.0d) float f6, @FloatRange(from = 0.0d, to = 1.0d) float f7, float f8) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new a(view, f4, f5, f6, f7));
        ofFloat.addListener(new b(view, f8));
        return ofFloat;
    }

    @Override // com.google.android.material.transition.s
    @Nullable
    public Animator a(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return c(view, alpha, 0.0f, 0.0f, 1.0f, alpha);
    }

    @Override // com.google.android.material.transition.s
    @Nullable
    public Animator b(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return c(view, 0.0f, alpha, 0.0f, this.f16421a, alpha);
    }

    public float d() {
        return this.f16421a;
    }

    public void e(float f4) {
        this.f16421a = f4;
    }
}
