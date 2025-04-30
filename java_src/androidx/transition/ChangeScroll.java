package androidx.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public class ChangeScroll extends Transition {

    /* renamed from: u0  reason: collision with root package name */
    private static final String f7590u0 = "android:changeScroll:x";

    /* renamed from: v0  reason: collision with root package name */
    private static final String f7591v0 = "android:changeScroll:y";

    /* renamed from: w0  reason: collision with root package name */
    private static final String[] f7592w0 = {f7590u0, f7591v0};

    public ChangeScroll() {
    }

    private void H(TransitionValues transitionValues) {
        transitionValues.values.put(f7590u0, Integer.valueOf(transitionValues.view.getScrollX()));
        transitionValues.values.put(f7591v0, Integer.valueOf(transitionValues.view.getScrollY()));
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
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        ObjectAnimator objectAnimator;
        ObjectAnimator objectAnimator2 = null;
        if (transitionValues == null || transitionValues2 == null) {
            return null;
        }
        View view = transitionValues2.view;
        int intValue = ((Integer) transitionValues.values.get(f7590u0)).intValue();
        int intValue2 = ((Integer) transitionValues2.values.get(f7590u0)).intValue();
        int intValue3 = ((Integer) transitionValues.values.get(f7591v0)).intValue();
        int intValue4 = ((Integer) transitionValues2.values.get(f7591v0)).intValue();
        if (intValue != intValue2) {
            view.setScrollX(intValue);
            objectAnimator = ObjectAnimator.ofInt(view, "scrollX", intValue, intValue2);
        } else {
            objectAnimator = null;
        }
        if (intValue3 != intValue4) {
            view.setScrollY(intValue3);
            objectAnimator2 = ObjectAnimator.ofInt(view, "scrollY", intValue3, intValue4);
        }
        return TransitionUtils.c(objectAnimator, objectAnimator2);
    }

    @Override // androidx.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return f7592w0;
    }

    public ChangeScroll(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
