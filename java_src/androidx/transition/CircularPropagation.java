package androidx.transition;

import android.graphics.Rect;
import android.view.ViewGroup;
/* loaded from: classes2.dex */
public class CircularPropagation extends VisibilityPropagation {

    /* renamed from: d  reason: collision with root package name */
    private float f7622d = 3.0f;

    private static float b(float f4, float f5, float f6, float f7) {
        float f8 = f6 - f4;
        float f9 = f7 - f5;
        return (float) Math.sqrt((f8 * f8) + (f9 * f9));
    }

    @Override // androidx.transition.TransitionPropagation
    public long getStartDelay(ViewGroup viewGroup, Transition transition, TransitionValues transitionValues, TransitionValues transitionValues2) {
        int i2;
        int round;
        int i4;
        if (transitionValues == null && transitionValues2 == null) {
            return 0L;
        }
        if (transitionValues2 == null || getViewVisibility(transitionValues) == 0) {
            i2 = -1;
        } else {
            transitionValues = transitionValues2;
            i2 = 1;
        }
        int viewX = getViewX(transitionValues);
        int viewY = getViewY(transitionValues);
        Rect epicenter = transition.getEpicenter();
        if (epicenter != null) {
            i4 = epicenter.centerX();
            round = epicenter.centerY();
        } else {
            int[] iArr = new int[2];
            viewGroup.getLocationOnScreen(iArr);
            int round2 = Math.round(iArr[0] + (viewGroup.getWidth() / 2) + viewGroup.getTranslationX());
            round = Math.round(iArr[1] + (viewGroup.getHeight() / 2) + viewGroup.getTranslationY());
            i4 = round2;
        }
        float b4 = b(viewX, viewY, i4, round) / b(0.0f, 0.0f, viewGroup.getWidth(), viewGroup.getHeight());
        long duration = transition.getDuration();
        if (duration < 0) {
            duration = 300;
        }
        return Math.round((((float) (duration * i2)) / this.f7622d) * b4);
    }

    public void setPropagationSpeed(float f4) {
        if (f4 != 0.0f) {
            this.f7622d = f4;
            return;
        }
        throw new IllegalArgumentException("propagationSpeed may not be 0");
    }
}
