package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
/* compiled from: FadeThroughProvider.java */
@RequiresApi(21)
/* loaded from: classes2.dex */
public final class e implements t {

    /* renamed from: b  reason: collision with root package name */
    static final float f16564b = 0.35f;

    /* renamed from: a  reason: collision with root package name */
    private float f16565a = f16564b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FadeThroughProvider.java */
    /* loaded from: classes2.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f16566a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float f16567b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ float f16568c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ float f16569d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ float f16570e;

        a(View view, float f4, float f5, float f6, float f7) {
            this.f16566a = view;
            this.f16567b = f4;
            this.f16568c = f5;
            this.f16569d = f6;
            this.f16570e = f7;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f16566a.setAlpha(s.l(this.f16567b, this.f16568c, this.f16569d, this.f16570e, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FadeThroughProvider.java */
    /* loaded from: classes2.dex */
    public class b extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f16571a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float f16572b;

        b(View view, float f4) {
            this.f16571a = view;
            this.f16572b = f4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f16571a.setAlpha(this.f16572b);
        }
    }

    private static Animator c(View view, float f4, float f5, @FloatRange(from = 0.0d, to = 1.0d) float f6, @FloatRange(from = 0.0d, to = 1.0d) float f7, float f8) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new a(view, f4, f5, f6, f7));
        ofFloat.addListener(new b(view, f8));
        return ofFloat;
    }

    @Override // com.google.android.material.transition.platform.t
    @Nullable
    public Animator a(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return c(view, alpha, 0.0f, 0.0f, this.f16565a, alpha);
    }

    @Override // com.google.android.material.transition.platform.t
    @Nullable
    public Animator b(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return c(view, 0.0f, alpha, this.f16565a, 1.0f, alpha);
    }

    public float d() {
        return this.f16565a;
    }

    public void e(@FloatRange(from = 0.0d, to = 1.0d) float f4) {
        this.f16565a = f4;
    }
}
