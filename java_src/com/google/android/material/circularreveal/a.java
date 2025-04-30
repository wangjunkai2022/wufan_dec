package com.google.android.material.circularreveal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import androidx.annotation.NonNull;
import com.google.android.material.circularreveal.b;
/* compiled from: CircularRevealCompat.java */
/* loaded from: classes2.dex */
public final class a {

    /* compiled from: CircularRevealCompat.java */
    /* renamed from: com.google.android.material.circularreveal.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0104a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f14480a;

        C0104a(b bVar) {
            this.f14480a = bVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f14480a.b();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f14480a.a();
        }
    }

    private a() {
    }

    @NonNull
    public static Animator a(@NonNull b bVar, float f4, float f5, float f6) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(bVar, (Property<b, V>) b.c.f14483a, (TypeEvaluator) b.C0105b.f14481b, (Object[]) new b.e[]{new b.e(f4, f5, f6)});
        if (Build.VERSION.SDK_INT >= 21) {
            b.e revealInfo = bVar.getRevealInfo();
            if (revealInfo != null) {
                Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) bVar, (int) f4, (int) f5, revealInfo.f14488c, f6);
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(ofObject, createCircularReveal);
                return animatorSet;
            }
            throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
        }
        return ofObject;
    }

    @NonNull
    public static Animator b(b bVar, float f4, float f5, float f6, float f7) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(bVar, (Property<b, V>) b.c.f14483a, (TypeEvaluator) b.C0105b.f14481b, (Object[]) new b.e[]{new b.e(f4, f5, f6), new b.e(f4, f5, f7)});
        if (Build.VERSION.SDK_INT >= 21) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) bVar, (int) f4, (int) f5, f6, f7);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofObject, createCircularReveal);
            return animatorSet;
        }
        return ofObject;
    }

    @NonNull
    public static Animator.AnimatorListener c(@NonNull b bVar) {
        return new C0104a(bVar);
    }
}
