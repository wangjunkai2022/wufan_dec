package androidx.transition;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
@RequiresApi(19)
/* loaded from: classes2.dex */
class ViewUtilsApi19 extends ViewUtilsBase {

    /* renamed from: h  reason: collision with root package name */
    private static boolean f7802h = true;

    @Override // androidx.transition.ViewUtilsBase
    public void clearNonTransitionAlpha(@NonNull View view) {
    }

    @Override // androidx.transition.ViewUtilsBase
    @SuppressLint({"NewApi"})
    public float getTransitionAlpha(@NonNull View view) {
        if (f7802h) {
            try {
                return view.getTransitionAlpha();
            } catch (NoSuchMethodError unused) {
                f7802h = false;
            }
        }
        return view.getAlpha();
    }

    @Override // androidx.transition.ViewUtilsBase
    public void saveNonTransitionAlpha(@NonNull View view) {
    }

    @Override // androidx.transition.ViewUtilsBase
    @SuppressLint({"NewApi"})
    public void setTransitionAlpha(@NonNull View view, float f4) {
        if (f7802h) {
            try {
                view.setTransitionAlpha(f4);
                return;
            } catch (NoSuchMethodError unused) {
                f7802h = false;
            }
        }
        view.setAlpha(f4);
    }
}
