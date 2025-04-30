package androidx.transition;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
@RequiresApi(23)
/* loaded from: classes2.dex */
class ViewUtilsApi23 extends ViewUtilsApi22 {

    /* renamed from: m  reason: collision with root package name */
    private static boolean f7807m = true;

    @Override // androidx.transition.ViewUtilsBase
    @SuppressLint({"NewApi"})
    public void setTransitionVisibility(@NonNull View view, int i2) {
        if (Build.VERSION.SDK_INT == 28) {
            super.setTransitionVisibility(view, i2);
        } else if (f7807m) {
            try {
                view.setTransitionVisibility(i2);
            } catch (NoSuchMethodError unused) {
                f7807m = false;
            }
        }
    }
}
