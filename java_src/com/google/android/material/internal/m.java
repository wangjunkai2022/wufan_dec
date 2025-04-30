package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;
import java.util.Map;
/* compiled from: TextScale.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class m extends Transition {

    /* renamed from: u0  reason: collision with root package name */
    private static final String f15205u0 = "android:textscale:scale";

    /* compiled from: TextScale.java */
    /* loaded from: classes2.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TextView f15206a;

        a(TextView textView) {
            this.f15206a = textView;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.f15206a.setScaleX(floatValue);
            this.f15206a.setScaleY(floatValue);
        }
    }

    private void H(@NonNull TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (view instanceof TextView) {
            transitionValues.values.put(f15205u0, Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        H(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        H(transitionValues);
    }

    @Override // androidx.transition.Transition
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        if (transitionValues == null || transitionValues2 == null || !(transitionValues.view instanceof TextView)) {
            return null;
        }
        View view = transitionValues2.view;
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            Map<String, Object> map = transitionValues.values;
            Map<String, Object> map2 = transitionValues2.values;
            float floatValue = map.get(f15205u0) != null ? ((Float) map.get(f15205u0)).floatValue() : 1.0f;
            float floatValue2 = map2.get(f15205u0) != null ? ((Float) map2.get(f15205u0)).floatValue() : 1.0f;
            if (floatValue == floatValue2) {
                return null;
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(floatValue, floatValue2);
            ofFloat.addUpdateListener(new a(textView));
            return ofFloat;
        }
        return null;
    }
}
