package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: FadeThroughProvider.java */
/* loaded from: classes2.dex */
public final class e implements s {

    /* renamed from: b  reason: collision with root package name */
    static final float f16429b = 0.35f;

    /* renamed from: a  reason: collision with root package name */
    private float f16430a = f16429b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FadeThroughProvider.java */
    /* loaded from: classes2.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f16431a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float f16432b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ float f16433c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ float f16434d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ float f16435e;

        a(View view, float f4, float f5, float f6, float f7) {
            this.f16431a = view;
            this.f16432b = f4;
            this.f16433c = f5;
            this.f16434d = f6;
            this.f16435e = f7;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f16431a.setAlpha(r.l(this.f16432b, this.f16433c, this.f16434d, this.f16435e, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FadeThroughProvider.java */
    /* loaded from: classes2.dex */
    public class b extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f16436a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float f16437b;

        b(View view, float f4) {
            this.f16436a = view;
            this.f16437b = f4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f16436a.setAlpha(this.f16437b);
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
        return c(view, alpha, 0.0f, 0.0f, this.f16430a, alpha);
    }

    @Override // com.google.android.material.transition.s
    @Nullable
    public Animator b(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return c(view, 0.0f, alpha, this.f16430a, 1.0f, alpha);
    }

    public float d() {
        return this.f16430a;
    }

    public void e(@FloatRange(from = 0.0d, to = 1.0d) float f4) {
        this.f16430a = f4;
    }
}
