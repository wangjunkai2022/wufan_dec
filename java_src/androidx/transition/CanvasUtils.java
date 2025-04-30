package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.os.Build;
import androidx.annotation.NonNull;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
class CanvasUtils {

    /* renamed from: a  reason: collision with root package name */
    private static Method f7544a;

    /* renamed from: b  reason: collision with root package name */
    private static Method f7545b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f7546c;

    private CanvasUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"SoonBlockedPrivateApi"})
    public static void a(@NonNull Canvas canvas, boolean z3) {
        Method method;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 21) {
            return;
        }
        if (i2 >= 29) {
            if (z3) {
                canvas.enableZ();
            } else {
                canvas.disableZ();
            }
        } else if (i2 != 28) {
            if (!f7546c) {
                try {
                    Method declaredMethod = Canvas.class.getDeclaredMethod("insertReorderBarrier", new Class[0]);
                    f7544a = declaredMethod;
                    declaredMethod.setAccessible(true);
                    Method declaredMethod2 = Canvas.class.getDeclaredMethod("insertInorderBarrier", new Class[0]);
                    f7545b = declaredMethod2;
                    declaredMethod2.setAccessible(true);
                } catch (NoSuchMethodException unused) {
                }
                f7546c = true;
            }
            if (z3) {
                try {
                    Method method2 = f7544a;
                    if (method2 != null) {
                        method2.invoke(canvas, new Object[0]);
                    }
                } catch (IllegalAccessException unused2) {
                    return;
                } catch (InvocationTargetException e4) {
                    throw new RuntimeException(e4.getCause());
                }
            }
            if (z3 || (method = f7545b) == null) {
                return;
            }
            method.invoke(canvas, new Object[0]);
        } else {
            throw new IllegalStateException("This method doesn't work on Pie!");
        }
    }
}
