package androidx.transition;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
class ViewGroupUtils {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f7780a = true;

    /* renamed from: b  reason: collision with root package name */
    private static Method f7781b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f7782c;

    private ViewGroupUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(@NonNull ViewGroup viewGroup, int i2) {
        if (Build.VERSION.SDK_INT >= 29) {
            return viewGroup.getChildDrawingOrder(i2);
        }
        if (!f7782c) {
            try {
                Class cls = Integer.TYPE;
                Method declaredMethod = ViewGroup.class.getDeclaredMethod("getChildDrawingOrder", cls, cls);
                f7781b = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            f7782c = true;
        }
        Method method = f7781b;
        if (method != null) {
            try {
                return ((Integer) method.invoke(viewGroup, Integer.valueOf(viewGroup.getChildCount()), Integer.valueOf(i2))).intValue();
            } catch (IllegalAccessException | InvocationTargetException unused2) {
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ViewGroupOverlayImpl b(@NonNull ViewGroup viewGroup) {
        if (Build.VERSION.SDK_INT >= 18) {
            return new ViewGroupOverlayApi18(viewGroup);
        }
        return ViewGroupOverlayApi14.c(viewGroup);
    }

    @RequiresApi(18)
    @SuppressLint({"NewApi"})
    private static void c(@NonNull ViewGroup viewGroup, boolean z3) {
        if (f7780a) {
            try {
                viewGroup.suppressLayout(z3);
            } catch (NoSuchMethodError unused) {
                f7780a = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(@NonNull ViewGroup viewGroup, boolean z3) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            viewGroup.suppressLayout(z3);
        } else if (i2 >= 18) {
            c(viewGroup, z3);
        } else {
            ViewGroupUtilsApi14.b(viewGroup, z3);
        }
    }
}
