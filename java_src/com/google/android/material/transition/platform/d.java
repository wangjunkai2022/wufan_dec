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
/* compiled from: FadeProvider.java */
@RequiresApi(21)
/* loaded from: classes2.dex */
public final class d implements t {

    /* renamed from: a  reason: collision with root package name */
    private float f16556a = 1.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FadeProvider.java */
    /* loaded from: classes2.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f16557a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float f16558b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ float f16559c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ float f16560d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ float f16561e;

        a(View view, float f4, float f5, float f6, float f7) {
            this.f16557a = view;
            this.f16558b = f4;
            this.f16559c = f5;
            this.f16560d = f6;
            this.f16561e = f7;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f16557a.setAlpha(s.l(this.f16558b, this.f16559c, this.f16560d, this.f16561e, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FadeProvider.java */
    /* loaded from: classes2.dex */
    public class b extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f16562a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float f16563b;

        b(View view, float f4) {
            this.f16562a = view;
            this.f16563b = f4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f16562a.setAlpha(this.f16563b);
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
        return c(view, alpha, 0.0f, 0.0f, 1.0f, alpha);
    }

    @Override // com.google.android.material.transition.platform.t
    @Nullable
    public Animator b(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return c(view, 0.0f, alpha, 0.0f, this.f16556a, alpha);
    }

    public float d() {
        return this.f16556a;
    }

    public void e(float f4) {
        this.f16556a = f4;
    }
}
