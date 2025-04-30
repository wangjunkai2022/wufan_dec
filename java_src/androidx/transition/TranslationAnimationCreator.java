package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.Transition;
/* loaded from: classes2.dex */
class TranslationAnimationCreator {

    /* loaded from: classes2.dex */
    private static class TransitionPositionListener extends AnimatorListenerAdapter implements Transition.TransitionListener {

        /* renamed from: a  reason: collision with root package name */
        private final View f7770a;

        /* renamed from: b  reason: collision with root package name */
        private final View f7771b;

        /* renamed from: c  reason: collision with root package name */
        private final int f7772c;

        /* renamed from: d  reason: collision with root package name */
        private final int f7773d;

        /* renamed from: e  reason: collision with root package name */
        private int[] f7774e;

        /* renamed from: f  reason: collision with root package name */
        private float f7775f;

        /* renamed from: g  reason: collision with root package name */
        private float f7776g;

        /* renamed from: h  reason: collision with root package name */
        private final float f7777h;

        /* renamed from: i  reason: collision with root package name */
        private final float f7778i;

        TransitionPositionListener(View view, View view2, int i2, int i4, float f4, float f5) {
            this.f7771b = view;
            this.f7770a = view2;
            this.f7772c = i2 - Math.round(view.getTranslationX());
            this.f7773d = i4 - Math.round(view.getTranslationY());
            this.f7777h = f4;
            this.f7778i = f5;
            int i5 = R.id.transition_position;
            int[] iArr = (int[]) view2.getTag(i5);
            this.f7774e = iArr;
            if (iArr != null) {
                view2.setTag(i5, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.f7774e == null) {
                this.f7774e = new int[2];
            }
            this.f7774e[0] = Math.round(this.f7772c + this.f7771b.getTranslationX());
            this.f7774e[1] = Math.round(this.f7773d + this.f7771b.getTranslationY());
            this.f7770a.setTag(R.id.transition_position, this.f7774e);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationPause(Animator animator) {
            this.f7775f = this.f7771b.getTranslationX();
            this.f7776g = this.f7771b.getTranslationY();
            this.f7771b.setTranslationX(this.f7777h);
            this.f7771b.setTranslationY(this.f7778i);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationResume(Animator animator) {
            this.f7771b.setTranslationX(this.f7775f);
            this.f7771b.setTranslationY(this.f7776g);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionCancel(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            this.f7771b.setTranslationX(this.f7777h);
            this.f7771b.setTranslationY(this.f7778i);
            transition.removeListener(this);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
        }
    }

    private TranslationAnimationCreator() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Animator a(@NonNull View view, @NonNull TransitionValues transitionValues, int i2, int i4, float f4, float f5, float f6, float f7, @Nullable TimeInterpolator timeInterpolator, @NonNull Transition transition) {
        float f8;
        float f9;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) transitionValues.view.getTag(R.id.transition_position);
        if (iArr != null) {
            f8 = (iArr[0] - i2) + translationX;
            f9 = (iArr[1] - i4) + translationY;
        } else {
            f8 = f4;
            f9 = f5;
        }
        int round = i2 + Math.round(f8 - translationX);
        int round2 = i4 + Math.round(f9 - translationY);
        view.setTranslationX(f8);
        view.setTranslationY(f9);
        if (f8 == f6 && f9 == f7) {
            return null;
        }
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat(View.TRANSLATION_X, f8, f6), PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, f9, f7));
        TransitionPositionListener transitionPositionListener = new TransitionPositionListener(view, transitionValues.view, round, round2, translationX, translationY);
        transition.addListener(transitionPositionListener);
        ofPropertyValuesHolder.addListener(transitionPositionListener);
        AnimatorUtils.a(ofPropertyValuesHolder, transitionPositionListener);
        ofPropertyValuesHolder.setInterpolator(timeInterpolator);
        return ofPropertyValuesHolder;
    }
}
