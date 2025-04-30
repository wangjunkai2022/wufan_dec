package androidx.transition;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ViewUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final ViewUtilsBase f7798a;

    /* renamed from: b  reason: collision with root package name */
    private static final String f7799b = "ViewUtils";

    /* renamed from: c  reason: collision with root package name */
    static final Property<View, Float> f7800c;

    /* renamed from: d  reason: collision with root package name */
    static final Property<View, Rect> f7801d;

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            f7798a = new ViewUtilsApi29();
        } else if (i2 >= 23) {
            f7798a = new ViewUtilsApi23();
        } else if (i2 >= 22) {
            f7798a = new ViewUtilsApi22();
        } else if (i2 >= 21) {
            f7798a = new ViewUtilsApi21();
        } else if (i2 >= 19) {
            f7798a = new ViewUtilsApi19();
        } else {
            f7798a = new ViewUtilsBase();
        }
        f7800c = new Property<View, Float>(Float.class, "translationAlpha") { // from class: androidx.transition.ViewUtils.1
            @Override // android.util.Property
            public Float get(View view) {
                return Float.valueOf(ViewUtils.c(view));
            }

            @Override // android.util.Property
            public void set(View view, Float f4) {
                ViewUtils.h(view, f4.floatValue());
            }
        };
        f7801d = new Property<View, Rect>(Rect.class, "clipBounds") { // from class: androidx.transition.ViewUtils.2
            @Override // android.util.Property
            public Rect get(View view) {
                return ViewCompat.getClipBounds(view);
            }

            @Override // android.util.Property
            public void set(View view, Rect rect) {
                ViewCompat.setClipBounds(view, rect);
            }
        };
    }

    private ViewUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@NonNull View view) {
        f7798a.clearNonTransitionAlpha(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ViewOverlayImpl b(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return new ViewOverlayApi18(view);
        }
        return ViewOverlayApi14.a(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float c(@NonNull View view) {
        return f7798a.getTransitionAlpha(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static WindowIdImpl d(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return new WindowIdApi18(view);
        }
        return new WindowIdApi14(view.getWindowToken());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(@NonNull View view) {
        f7798a.saveNonTransitionAlpha(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f(@NonNull View view, @Nullable Matrix matrix) {
        f7798a.setAnimationMatrix(view, matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g(@NonNull View view, int i2, int i4, int i5, int i6) {
        f7798a.setLeftTopRightBottom(view, i2, i4, i5, i6);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void h(@NonNull View view, float f4) {
        f7798a.setTransitionAlpha(view, f4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void i(@NonNull View view, int i2) {
        f7798a.setTransitionVisibility(view, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void j(@NonNull View view, @NonNull Matrix matrix) {
        f7798a.transformMatrixToGlobal(view, matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void k(@NonNull View view, @NonNull Matrix matrix) {
        f7798a.transformMatrixToLocal(view, matrix);
    }
}
