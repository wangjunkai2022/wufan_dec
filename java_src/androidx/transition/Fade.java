package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
/* loaded from: classes2.dex */
public class Fade extends Visibility {
    private static final String A0 = "Fade";
    public static final int IN = 1;
    public static final int OUT = 2;

    /* renamed from: z0  reason: collision with root package name */
    private static final String f7624z0 = "android:fade:transitionAlpha";

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class FadeAnimatorListener extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final View f7627a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f7628b = false;

        FadeAnimatorListener(View view) {
            this.f7627a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ViewUtils.h(this.f7627a, 1.0f);
            if (this.f7628b) {
                this.f7627a.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (ViewCompat.hasOverlappingRendering(this.f7627a) && this.f7627a.getLayerType() == 0) {
                this.f7628b = true;
                this.f7627a.setLayerType(2, null);
            }
        }
    }

    public Fade(int i2) {
        setMode(i2);
    }

    private Animator J(final View view, float f4, float f5) {
        if (f4 == f5) {
            return null;
        }
        ViewUtils.h(view, f4);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, ViewUtils.f7800c, f5);
        ofFloat.addListener(new FadeAnimatorListener(view));
        addListener(new TransitionListenerAdapter() { // from class: androidx.transition.Fade.1
            @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
            public void onTransitionEnd(@NonNull Transition transition) {
                ViewUtils.h(view, 1.0f);
                ViewUtils.a(view);
                transition.removeListener(this);
            }
        });
        return ofFloat;
    }

    private static float K(TransitionValues transitionValues, float f4) {
        Float f5;
        return (transitionValues == null || (f5 = (Float) transitionValues.values.get(f7624z0)) == null) ? f4 : f5.floatValue();
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        transitionValues.values.put(f7624z0, Float.valueOf(ViewUtils.c(transitionValues.view)));
    }

    @Override // androidx.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        float K = K(transitionValues, 0.0f);
        return J(view, K != 1.0f ? K : 0.0f, 1.0f);
    }

    @Override // androidx.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        ViewUtils.e(view);
        return J(view, K(transitionValues, 1.0f), 0.0f);
    }

    public Fade() {
    }

    @SuppressLint({"RestrictedApi"})
    public Fade(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.f7689f);
        setMode(TypedArrayUtils.getNamedInt(obtainStyledAttributes, (XmlResourceParser) attributeSet, "fadingMode", 0, getMode()));
        obtainStyledAttributes.recycle();
    }
}
