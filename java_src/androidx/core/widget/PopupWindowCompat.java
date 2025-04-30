package androidx.core.widget;

import android.os.Build;
import android.view.View;
import android.widget.PopupWindow;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public final class PopupWindowCompat {

    /* renamed from: a  reason: collision with root package name */
    private static final String f5119a = "PopupWindowCompatApi21";

    /* renamed from: b  reason: collision with root package name */
    private static Method f5120b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f5121c;

    /* renamed from: d  reason: collision with root package name */
    private static Method f5122d;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f5123e;

    /* renamed from: f  reason: collision with root package name */
    private static Field f5124f;

    /* renamed from: g  reason: collision with root package name */
    private static boolean f5125g;

    @RequiresApi(19)
    /* loaded from: classes.dex */
    static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        static void a(PopupWindow popupWindow, View view, int i2, int i4, int i5) {
            popupWindow.showAsDropDown(view, i2, i4, i5);
        }
    }

    @RequiresApi(23)
    /* loaded from: classes.dex */
    static class Api23Impl {
        private Api23Impl() {
        }

        @DoNotInline
        static boolean a(PopupWindow popupWindow) {
            return popupWindow.getOverlapAnchor();
        }

        @DoNotInline
        static int b(PopupWindow popupWindow) {
            return popupWindow.getWindowLayoutType();
        }

        @DoNotInline
        static void c(PopupWindow popupWindow, boolean z3) {
            popupWindow.setOverlapAnchor(z3);
        }

        @DoNotInline
        static void d(PopupWindow popupWindow, int i2) {
            popupWindow.setWindowLayoutType(i2);
        }
    }

    private PopupWindowCompat() {
    }

    public static boolean getOverlapAnchor(@NonNull PopupWindow popupWindow) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            return Api23Impl.a(popupWindow);
        }
        if (i2 >= 21) {
            if (!f5125g) {
                try {
                    Field declaredField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                    f5124f = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException unused) {
                }
                f5125g = true;
            }
            Field field = f5124f;
            if (field != null) {
                try {
                    return ((Boolean) field.get(popupWindow)).booleanValue();
                } catch (IllegalAccessException unused2) {
                    return false;
                }
            }
            return false;
        }
        return false;
    }

    public static int getWindowLayoutType(@NonNull PopupWindow popupWindow) {
        if (Build.VERSION.SDK_INT >= 23) {
            return Api23Impl.b(popupWindow);
        }
        if (!f5123e) {
            try {
                Method declaredMethod = PopupWindow.class.getDeclaredMethod("getWindowLayoutType", new Class[0]);
                f5122d = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception unused) {
            }
            f5123e = true;
        }
        Method method = f5122d;
        if (method != null) {
            try {
                return ((Integer) method.invoke(popupWindow, new Object[0])).intValue();
            } catch (Exception unused2) {
            }
        }
        return 0;
    }

    public static void setOverlapAnchor(@NonNull PopupWindow popupWindow, boolean z3) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            Api23Impl.c(popupWindow, z3);
        } else if (i2 >= 21) {
            if (!f5125g) {
                try {
                    Field declaredField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                    f5124f = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException unused) {
                }
                f5125g = true;
            }
            Field field = f5124f;
            if (field != null) {
                try {
                    field.set(popupWindow, Boolean.valueOf(z3));
                } catch (IllegalAccessException unused2) {
                }
            }
        }
    }

    public static void setWindowLayoutType(@NonNull PopupWindow popupWindow, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            Api23Impl.d(popupWindow, i2);
            return;
        }
        if (!f5121c) {
            try {
                Method declaredMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                f5120b = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception unused) {
            }
            f5121c = true;
        }
        Method method = f5120b;
        if (method != null) {
            try {
                method.invoke(popupWindow, Integer.valueOf(i2));
            } catch (Exception unused2) {
            }
        }
    }

    public static void showAsDropDown(@NonNull PopupWindow popupWindow, @NonNull View view, int i2, int i4, int i5) {
        if (Build.VERSION.SDK_INT >= 19) {
            Api19Impl.a(popupWindow, view, i2, i4, i5);
            return;
        }
        if ((GravityCompat.getAbsoluteGravity(i5, ViewCompat.getLayoutDirection(view)) & 7) == 5) {
            i2 -= popupWindow.getWidth() - view.getWidth();
        }
        popupWindow.showAsDropDown(view, i2, i4);
    }
}
