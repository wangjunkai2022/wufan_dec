package androidx.transition;

import android.view.View;
/* loaded from: classes2.dex */
public abstract class VisibilityPropagation extends TransitionPropagation {

    /* renamed from: a  reason: collision with root package name */
    private static final String f7836a = "android:visibilityPropagation:visibility";

    /* renamed from: b  reason: collision with root package name */
    private static final String f7837b = "android:visibilityPropagation:center";

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f7838c = {f7836a, f7837b};

    private static int a(TransitionValues transitionValues, int i2) {
        int[] iArr;
        if (transitionValues == null || (iArr = (int[]) transitionValues.values.get(f7837b)) == null) {
            return -1;
        }
        return iArr[i2];
    }

    @Override // androidx.transition.TransitionPropagation
    public void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        Integer num = (Integer) transitionValues.values.get("android:visibility:visibility");
        if (num == null) {
            num = Integer.valueOf(view.getVisibility());
        }
        transitionValues.values.put(f7836a, num);
        view.getLocationOnScreen(r2);
        int[] iArr = {iArr[0] + Math.round(view.getTranslationX())};
        iArr[0] = iArr[0] + (view.getWidth() / 2);
        iArr[1] = iArr[1] + Math.round(view.getTranslationY());
        iArr[1] = iArr[1] + (view.getHeight() / 2);
        transitionValues.values.put(f7837b, iArr);
    }

    @Override // androidx.transition.TransitionPropagation
    public String[] getPropagationProperties() {
        return f7838c;
    }

    public int getViewVisibility(TransitionValues transitionValues) {
        Integer num;
        if (transitionValues == null || (num = (Integer) transitionValues.values.get(f7836a)) == null) {
            return 8;
        }
        return num.intValue();
    }

    public int getViewX(TransitionValues transitionValues) {
        return a(transitionValues, 0);
    }

    public int getViewY(TransitionValues transitionValues) {
        return a(transitionValues, 1);
    }
}
