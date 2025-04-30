package androidx.core.view;

import android.graphics.Rect;
import android.os.Build;
import android.view.Gravity;
/* loaded from: classes.dex */
public final class GravityCompat {
    public static final int END = 8388613;
    public static final int RELATIVE_HORIZONTAL_GRAVITY_MASK = 8388615;
    public static final int RELATIVE_LAYOUT_DIRECTION = 8388608;
    public static final int START = 8388611;

    private GravityCompat() {
    }

    public static void apply(int i2, int i4, int i5, Rect rect, Rect rect2, int i6) {
        if (Build.VERSION.SDK_INT >= 17) {
            Gravity.apply(i2, i4, i5, rect, rect2, i6);
        } else {
            Gravity.apply(i2, i4, i5, rect, rect2);
        }
    }

    public static void applyDisplay(int i2, Rect rect, Rect rect2, int i4) {
        if (Build.VERSION.SDK_INT >= 17) {
            Gravity.applyDisplay(i2, rect, rect2, i4);
        } else {
            Gravity.applyDisplay(i2, rect, rect2);
        }
    }

    public static int getAbsoluteGravity(int i2, int i4) {
        return Build.VERSION.SDK_INT >= 17 ? Gravity.getAbsoluteGravity(i2, i4) : i2 & (-8388609);
    }

    public static void apply(int i2, int i4, int i5, Rect rect, int i6, int i7, Rect rect2, int i8) {
        if (Build.VERSION.SDK_INT >= 17) {
            Gravity.apply(i2, i4, i5, rect, i6, i7, rect2, i8);
        } else {
            Gravity.apply(i2, i4, i5, rect, i6, i7, rect2);
        }
    }
}
