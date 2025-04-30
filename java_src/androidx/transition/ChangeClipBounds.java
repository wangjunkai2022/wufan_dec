package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
/* loaded from: classes2.dex */
public class ChangeClipBounds extends Transition {

    /* renamed from: v0  reason: collision with root package name */
    private static final String f7580v0 = "android:clipBounds:bounds";

    /* renamed from: u0  reason: collision with root package name */
    private static final String f7579u0 = "android:clipBounds:clip";

    /* renamed from: w0  reason: collision with root package name */
    private static final String[] f7581w0 = {f7579u0};

    public ChangeClipBounds() {
    }

    private void H(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (view.getVisibility() == 8) {
            return;
        }
        Rect clipBounds = ViewCompat.getClipBounds(view);
        transitionValues.values.put(f7579u0, clipBounds);
        if (clipBounds == null) {
            transitionValues.values.put(f7580v0, new Rect(0, 0, view.getWidth(), view.getHeight()));
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
    public Animator createAnimator(@NonNull ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        ObjectAnimator objectAnimator = null;
        if (transitionValues != null && transitionValues2 != null && transitionValues.values.containsKey(f7579u0) && transitionValues2.values.containsKey(f7579u0)) {
            Rect rect = (Rect) transitionValues.values.get(f7579u0);
            Rect rect2 = (Rect) transitionValues2.values.get(f7579u0);
            boolean z3 = rect2 == null;
            if (rect == null && rect2 == null) {
                return null;
            }
            if (rect == null) {
                rect = (Rect) transitionValues.values.get(f7580v0);
            } else if (rect2 == null) {
                rect2 = (Rect) transitionValues2.values.get(f7580v0);
            }
            if (rect.equals(rect2)) {
                return null;
            }
            ViewCompat.setClipBounds(transitionValues2.view, rect);
            objectAnimator = ObjectAnimator.ofObject(transitionValues2.view, (Property<View, V>) ViewUtils.f7801d, (TypeEvaluator) new RectEvaluator(new Rect()), (Object[]) new Rect[]{rect, rect2});
            if (z3) {
                final View view = transitionValues2.view;
                objectAnimator.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.ChangeClipBounds.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ViewCompat.setClipBounds(view, null);
                    }
                });
            }
        }
        return objectAnimator;
    }

    @Override // androidx.transition.Transition
    public String[] getTransitionProperties() {
        return f7581w0;
    }

    public ChangeClipBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
