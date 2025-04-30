package androidx.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
/* loaded from: classes2.dex */
public class Explode extends Visibility {
    private static final TimeInterpolator A0 = new DecelerateInterpolator();
    private static final TimeInterpolator B0 = new AccelerateInterpolator();
    private static final String C0 = "android:explode:screenBounds";

    /* renamed from: z0  reason: collision with root package name */
    private int[] f7623z0;

    public Explode() {
        this.f7623z0 = new int[2];
        setPropagation(new CircularPropagation());
    }

    private void H(TransitionValues transitionValues) {
        View view = transitionValues.view;
        view.getLocationOnScreen(this.f7623z0);
        int[] iArr = this.f7623z0;
        int i2 = iArr[0];
        int i4 = iArr[1];
        transitionValues.values.put(C0, new Rect(i2, i4, view.getWidth() + i2, view.getHeight() + i4));
    }

    private static float J(float f4, float f5) {
        return (float) Math.sqrt((f4 * f4) + (f5 * f5));
    }

    private static float K(View view, int i2, int i4) {
        return J(Math.max(i2, view.getWidth() - i2), Math.max(i4, view.getHeight() - i4));
    }

    private void L(View view, Rect rect, int[] iArr) {
        int centerY;
        int i2;
        view.getLocationOnScreen(this.f7623z0);
        int[] iArr2 = this.f7623z0;
        int i4 = iArr2[0];
        int i5 = iArr2[1];
        Rect epicenter = getEpicenter();
        if (epicenter == null) {
            i2 = (view.getWidth() / 2) + i4 + Math.round(view.getTranslationX());
            centerY = (view.getHeight() / 2) + i5 + Math.round(view.getTranslationY());
        } else {
            int centerX = epicenter.centerX();
            centerY = epicenter.centerY();
            i2 = centerX;
        }
        float centerX2 = rect.centerX() - i2;
        float centerY2 = rect.centerY() - centerY;
        if (centerX2 == 0.0f && centerY2 == 0.0f) {
            centerX2 = ((float) (Math.random() * 2.0d)) - 1.0f;
            centerY2 = ((float) (Math.random() * 2.0d)) - 1.0f;
        }
        float J = J(centerX2, centerY2);
        float K = K(view, i2 - i4, centerY - i5);
        iArr[0] = Math.round((centerX2 / J) * K);
        iArr[1] = Math.round(K * (centerY2 / J));
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        super.captureEndValues(transitionValues);
        H(transitionValues);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        H(transitionValues);
    }

    @Override // androidx.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues2 == null) {
            return null;
        }
        Rect rect = (Rect) transitionValues2.values.get(C0);
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        L(viewGroup, rect, this.f7623z0);
        int[] iArr = this.f7623z0;
        return TranslationAnimationCreator.a(view, transitionValues2, rect.left, rect.top, translationX + iArr[0], translationY + iArr[1], translationX, translationY, A0, this);
    }

    @Override // androidx.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        float f4;
        float f5;
        if (transitionValues == null) {
            return null;
        }
        Rect rect = (Rect) transitionValues.values.get(C0);
        int i2 = rect.left;
        int i4 = rect.top;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) transitionValues.view.getTag(R.id.transition_position);
        if (iArr != null) {
            f4 = (iArr[0] - rect.left) + translationX;
            f5 = (iArr[1] - rect.top) + translationY;
            rect.offsetTo(iArr[0], iArr[1]);
        } else {
            f4 = translationX;
            f5 = translationY;
        }
        L(viewGroup, rect, this.f7623z0);
        int[] iArr2 = this.f7623z0;
        return TranslationAnimationCreator.a(view, transitionValues, i2, i4, translationX, translationY, f4 + iArr2[0], f5 + iArr2[1], B0, this);
    }

    public Explode(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7623z0 = new int[2];
        setPropagation(new CircularPropagation());
    }
}
