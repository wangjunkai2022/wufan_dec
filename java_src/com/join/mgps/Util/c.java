package com.join.mgps.Util;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.OvershootInterpolator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: AnimatorUtils.java */
/* loaded from: classes3.dex */
public class c {
    public static Animator a(View view) {
        return b(view, 200L, null);
    }

    public static Animator b(View view, long j4, Animator.AnimatorListener animatorListener) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f);
        ofFloat.setDuration(j4);
        if (animatorListener != null) {
            ofFloat.addListener(animatorListener);
        }
        ofFloat.start();
        return ofFloat;
    }

    public static Animator c(View view) {
        return d(view, 200L, null);
    }

    public static Animator d(View view, long j4, Animator.AnimatorListener animatorListener) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 1.0f, 0.0f);
        ofFloat.setDuration(j4);
        if (animatorListener != null) {
            ofFloat.addListener(animatorListener);
        }
        ofFloat.start();
        return ofFloat;
    }

    public static void e(View view) {
        Animation loadAnimation = AnimationUtils.loadAnimation(view.getContext(), R.anim.top_in);
        loadAnimation.setFillAfter(true);
        loadAnimation.setInterpolator(new FastOutSlowInInterpolator());
        loadAnimation.setDuration(500L);
        view.startAnimation(loadAnimation);
    }

    public static void f(View view) {
        Animation loadAnimation = AnimationUtils.loadAnimation(view.getContext(), R.anim.top_out);
        loadAnimation.setFillAfter(true);
        loadAnimation.setInterpolator(new FastOutSlowInInterpolator());
        loadAnimation.setDuration(500L);
        view.startAnimation(loadAnimation);
    }

    public static void g(View view) {
        ObjectAnimator m4 = m(view, 5.0f);
        m4.setDuration(700L);
        m4.start();
    }

    public static void h(View view) {
        ObjectAnimator j4 = j(view);
        j4.setDuration(700L);
        j4.start();
    }

    public static Animator i(View view, int i2, int i4, int i5, boolean z3) {
        ObjectAnimator ofInt = ObjectAnimator.ofInt(view, "scrollX", i2);
        ofInt.setDuration(i4);
        ofInt.setInterpolator(new AccelerateDecelerateInterpolator());
        ofInt.setStartDelay(i5);
        if (z3) {
            ofInt.start();
        }
        return ofInt;
    }

    public static ObjectAnimator j(View view) {
        int dimensionPixelOffset = view.getResources().getDimensionPixelOffset(R.dimen.spacing_medium);
        float f4 = -dimensionPixelOffset;
        float f5 = dimensionPixelOffset;
        return ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofKeyframe(View.TRANSLATION_X, Keyframe.ofFloat(0.0f, 0.0f), Keyframe.ofFloat(0.1f, f4), Keyframe.ofFloat(0.26f, f5), Keyframe.ofFloat(0.42f, f4), Keyframe.ofFloat(0.58f, f5), Keyframe.ofFloat(0.74f, f4), Keyframe.ofFloat(0.9f, f5), Keyframe.ofFloat(1.0f, 0.0f))).setDuration(500L);
    }

    public static void k(View view, int i2, int i4, int i5) {
        ObjectAnimator ofInt = ObjectAnimator.ofInt(view, "backgroundColor", i2, i4);
        ofInt.setDuration(i5);
        ofInt.setEvaluator(new ArgbEvaluator());
        ofInt.start();
    }

    public static Animator l(View view, int i2, int i4, boolean z3, boolean z4) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "translationY", i2);
        if (z4) {
            ofFloat.setInterpolator(new OvershootInterpolator());
        }
        ofFloat.setDuration(i4);
        if (z3) {
            ofFloat.start();
        }
        return ofFloat;
    }

    public static ObjectAnimator m(View view, float f4) {
        float f5 = (-3.0f) * f4;
        float f6 = 3.0f * f4;
        return ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofKeyframe(View.SCALE_X, Keyframe.ofFloat(0.0f, 1.0f), Keyframe.ofFloat(0.1f, 0.8f), Keyframe.ofFloat(0.2f, 0.8f), Keyframe.ofFloat(0.3f, 1.1f), Keyframe.ofFloat(0.4f, 1.2f), Keyframe.ofFloat(0.5f, 1.2f), Keyframe.ofFloat(0.6f, 1.2f), Keyframe.ofFloat(0.7f, 1.2f), Keyframe.ofFloat(0.8f, 1.2f), Keyframe.ofFloat(0.9f, 1.1f), Keyframe.ofFloat(1.0f, 1.0f)), PropertyValuesHolder.ofKeyframe(View.SCALE_Y, Keyframe.ofFloat(0.0f, 1.0f), Keyframe.ofFloat(0.1f, 0.8f), Keyframe.ofFloat(0.2f, 0.8f), Keyframe.ofFloat(0.3f, 1.1f), Keyframe.ofFloat(0.4f, 1.2f), Keyframe.ofFloat(0.5f, 1.2f), Keyframe.ofFloat(0.6f, 1.2f), Keyframe.ofFloat(0.7f, 1.2f), Keyframe.ofFloat(0.8f, 1.2f), Keyframe.ofFloat(0.9f, 1.1f), Keyframe.ofFloat(1.0f, 1.0f)), PropertyValuesHolder.ofKeyframe(View.ROTATION, Keyframe.ofFloat(0.0f, 0.0f), Keyframe.ofFloat(0.1f, f5), Keyframe.ofFloat(0.2f, f5), Keyframe.ofFloat(0.3f, f6), Keyframe.ofFloat(0.4f, f5), Keyframe.ofFloat(0.5f, f6), Keyframe.ofFloat(0.6f, f5), Keyframe.ofFloat(0.7f, f6), Keyframe.ofFloat(0.8f, f5), Keyframe.ofFloat(0.9f, f6), Keyframe.ofFloat(1.0f, 0.0f))).setDuration(700L);
    }
}
