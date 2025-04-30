package androidx.appcompat.widget;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ViewUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final String f1563a = "ViewUtils";

    /* renamed from: b  reason: collision with root package name */
    private static Method f1564b;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
                f1564b = declaredMethod;
                if (declaredMethod.isAccessible()) {
                    return;
                }
                f1564b.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
        }
    }

    private ViewUtils() {
    }

    public static void computeFitSystemWindows(View view, Rect rect, Rect rect2) {
        Method method = f1564b;
        if (method != null) {
            try {
                method.invoke(view, rect, rect2);
            } catch (Exception unused) {
            }
        }
    }

    public static boolean isLayoutRtl(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }

    public static void makeOptionalFitsSystemWindows(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            try {
                Method method = view.getClass().getMethod("makeOptionalFitsSystemWindows", new Class[0]);
                if (!method.isAccessible()) {
                    method.setAccessible(true);
                }
                method.invoke(view, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
        }
    }
}
