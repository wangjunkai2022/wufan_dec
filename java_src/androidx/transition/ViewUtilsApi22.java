package androidx.transition;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
@RequiresApi(22)
/* loaded from: classes2.dex */
class ViewUtilsApi22 extends ViewUtilsApi21 {

    /* renamed from: l  reason: collision with root package name */
    private static boolean f7806l = true;

    @Override // androidx.transition.ViewUtilsBase
    @SuppressLint({"NewApi"})
    public void setLeftTopRightBottom(@NonNull View view, int i2, int i4, int i5, int i6) {
        if (f7806l) {
            try {
                view.setLeftTopRightBottom(i2, i4, i5, i6);
            } catch (NoSuchMethodError unused) {
                f7806l = false;
            }
        }
    }
}
