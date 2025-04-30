package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
@RequiresApi(21)
/* loaded from: classes2.dex */
class ViewUtilsApi21 extends ViewUtilsApi19 {

    /* renamed from: i  reason: collision with root package name */
    private static boolean f7803i = true;

    /* renamed from: j  reason: collision with root package name */
    private static boolean f7804j = true;

    /* renamed from: k  reason: collision with root package name */
    private static boolean f7805k = true;

    @Override // androidx.transition.ViewUtilsBase
    @SuppressLint({"NewApi"})
    public void setAnimationMatrix(@NonNull View view, @Nullable Matrix matrix) {
        if (f7803i) {
            try {
                view.setAnimationMatrix(matrix);
            } catch (NoSuchMethodError unused) {
                f7803i = false;
            }
        }
    }

    @Override // androidx.transition.ViewUtilsBase
    @SuppressLint({"NewApi"})
    public void transformMatrixToGlobal(@NonNull View view, @NonNull Matrix matrix) {
        if (f7804j) {
            try {
                view.transformMatrixToGlobal(matrix);
            } catch (NoSuchMethodError unused) {
                f7804j = false;
            }
        }
    }

    @Override // androidx.transition.ViewUtilsBase
    @SuppressLint({"NewApi"})
    public void transformMatrixToLocal(@NonNull View view, @NonNull Matrix matrix) {
        if (f7805k) {
            try {
                view.transformMatrixToLocal(matrix);
            } catch (NoSuchMethodError unused) {
                f7805k = false;
            }
        }
    }
}
