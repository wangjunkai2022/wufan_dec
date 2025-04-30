package androidx.core.view;

import android.os.Build;
import android.view.ScaleGestureDetector;
/* loaded from: classes.dex */
public final class ScaleGestureDetectorCompat {
    private ScaleGestureDetectorCompat() {
    }

    @Deprecated
    public static boolean isQuickScaleEnabled(Object obj) {
        return isQuickScaleEnabled((ScaleGestureDetector) obj);
    }

    @Deprecated
    public static void setQuickScaleEnabled(Object obj, boolean z3) {
        setQuickScaleEnabled((ScaleGestureDetector) obj, z3);
    }

    public static boolean isQuickScaleEnabled(ScaleGestureDetector scaleGestureDetector) {
        if (Build.VERSION.SDK_INT >= 19) {
            return scaleGestureDetector.isQuickScaleEnabled();
        }
        return false;
    }

    public static void setQuickScaleEnabled(ScaleGestureDetector scaleGestureDetector, boolean z3) {
        if (Build.VERSION.SDK_INT >= 19) {
            scaleGestureDetector.setQuickScaleEnabled(z3);
        }
    }
}
