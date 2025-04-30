package com.join.mgps.Util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.RequiresApi;
import com.uc.crashsdk.export.LogType;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* compiled from: StatusBarUtil.java */
/* loaded from: classes3.dex */
public class z1 {

    /* renamed from: a  reason: collision with root package name */
    private static final String f28094a = "ro.miui.ui.version.code";

    /* renamed from: b  reason: collision with root package name */
    private static final String f28095b = "ro.miui.ui.version.name";

    /* renamed from: c  reason: collision with root package name */
    private static final String f28096c = "ro.miui.internal.storage";

    /* renamed from: d  reason: collision with root package name */
    private static final int f28097d = 16;

    public static boolean a(Window window, boolean z3) {
        if (window != null) {
            try {
                WindowManager.LayoutParams attributes = window.getAttributes();
                Field declaredField = WindowManager.LayoutParams.class.getDeclaredField("MEIZU_FLAG_DARK_STATUS_BAR_ICON");
                Field declaredField2 = WindowManager.LayoutParams.class.getDeclaredField("meizuFlags");
                declaredField.setAccessible(true);
                declaredField2.setAccessible(true);
                int i2 = declaredField.getInt(null);
                int i4 = declaredField2.getInt(attributes);
                declaredField2.setInt(attributes, z3 ? i4 | i2 : (i2 ^ (-1)) & i4);
                window.setAttributes(attributes);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static boolean b(Window window, boolean z3) {
        if (window != null) {
            Class<?> cls = window.getClass();
            try {
                Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
                int i2 = cls2.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(cls2);
                Class<?> cls3 = Integer.TYPE;
                Method method = cls.getMethod("setExtraFlags", cls3, cls3);
                if (z3) {
                    method.invoke(window, Integer.valueOf(i2), Integer.valueOf(i2));
                } else {
                    method.invoke(window, 0, Integer.valueOf(i2));
                }
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static void c(Activity activity, int i2) {
        if (i2 == 1) {
            b(activity.getWindow(), false);
        } else if (i2 == 2) {
            a(activity.getWindow(), false);
        } else if (i2 == 3) {
            activity.getWindow().getDecorView().setSystemUiVisibility(0);
        }
        r(false, activity);
    }

    public static int d(Activity activity) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 19) {
            if (b(activity.getWindow(), true)) {
                return 1;
            }
            if (a(activity.getWindow(), true)) {
                return 2;
            }
            if (i2 >= 23) {
                return 3;
            }
        }
        return 0;
    }

    public static void e(Activity activity, int i2) {
        if (i2 == 1) {
            b(activity.getWindow(), true);
        } else if (i2 == 2) {
            a(activity.getWindow(), true);
        } else if (i2 == 3) {
            activity.getWindow().getDecorView().setSystemUiVisibility(9216);
        }
    }

    private static int f(Context context) {
        int identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", q.a.f73954a);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private static boolean g() {
        try {
            return Build.class.getMethod("hasSmartBar", new Class[0]) != null;
        } catch (Exception unused) {
            return false;
        }
    }

    private static boolean h() {
        try {
            l i2 = l.i();
            if (i2.e(f28094a, null) == null && i2.e(f28095b, null) == null) {
                if (i2.e(f28096c, null) == null) {
                    return false;
                }
            }
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    private static void i(boolean z3, Activity activity) {
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        try {
            Class<?> cls = Class.forName("android.view.WindowManager$LayoutParams");
            int i2 = cls.getDeclaredField("MEIZU_FLAG_DARK_STATUS_BAR_ICON").getInt(attributes);
            Field declaredField = cls.getDeclaredField("meizuFlags");
            declaredField.setAccessible(true);
            int i4 = declaredField.getInt(attributes);
            if (z3) {
                declaredField.set(attributes, Integer.valueOf(i4 | i2));
            } else {
                declaredField.set(attributes, Integer.valueOf((i2 ^ (-1)) & i4));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private static void j(boolean z3, Activity activity) {
        Class<?> cls = activity.getWindow().getClass();
        try {
            Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
            int i2 = cls2.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(cls2);
            Class<?> cls3 = Integer.TYPE;
            Method method = cls.getMethod("setExtraFlags", cls3, cls3);
            Window window = activity.getWindow();
            Object[] objArr = new Object[2];
            objArr[0] = Integer.valueOf(z3 ? i2 : 0);
            objArr[1] = Integer.valueOf(i2);
            method.invoke(window, objArr);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void k(Activity activity) {
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealMetrics(displayMetrics);
        } else {
            defaultDisplay.getMetrics(displayMetrics);
        }
    }

    private static void l(Activity activity, boolean z3) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 23) {
            j(z3, activity);
        } else if (!z3) {
            activity.getWindow().getDecorView().setSystemUiVisibility(256);
        } else if (i2 >= 23) {
            activity.getWindow().getDecorView().setSystemUiVisibility(8192);
        }
    }

    private static void m(boolean z3, Activity activity) {
        Window window = activity.getWindow();
        window.addFlags(Integer.MIN_VALUE);
        int systemUiVisibility = window.getDecorView().getSystemUiVisibility();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            systemUiVisibility = z3 ? systemUiVisibility | 8192 : systemUiVisibility & (-8193);
        } else if (i2 >= 21) {
            systemUiVisibility = z3 ? systemUiVisibility | 16 : systemUiVisibility & (-17);
        }
        window.getDecorView().setSystemUiVisibility(systemUiVisibility);
    }

    private static void n(Activity activity, boolean z3) {
        if (z3) {
            if (Build.VERSION.SDK_INT >= 23) {
                activity.getWindow().getDecorView().setSystemUiVisibility(8192);
                return;
            } else {
                o(activity, 1140850688, false);
                return;
            }
        }
        activity.getWindow().getDecorView().setSystemUiVisibility(256);
    }

    public static void o(Activity activity, int i2, boolean z3) {
        Window window = activity.getWindow();
        b(window, z3);
        a(window, z3);
        com.githang.statusbar.c.d(activity, i2, z3);
        r(z3, activity);
    }

    public static void p(Activity activity, boolean z3, boolean z4) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            activity.getWindow().getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
            if (z3) {
                activity.getWindow().setStatusBarColor(activity.getResources().getColor(17170443));
            } else {
                activity.getWindow().setStatusBarColor(0);
            }
        } else if (i2 >= 19) {
            WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
            attributes.flags = 67108864 | attributes.flags;
        }
        if (i2 < 23 || z4) {
            return;
        }
        activity.getWindow().getDecorView().setSystemUiVisibility(9216);
    }

    public static void q(Activity activity, int i2) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 21) {
            Window window = activity.getWindow();
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(activity.getResources().getColor(i2));
        } else if (i4 >= 19) {
            s(activity);
            com.join.android.app.common.manager.b bVar = new com.join.android.app.common.manager.b(activity);
            bVar.m(true);
            bVar.n(i2);
        }
    }

    @RequiresApi(api = 16)
    public static void r(boolean z3, Activity activity) {
        try {
            String str = Build.MANUFACTURER;
            if (g()) {
                i(z3, activity);
            } else if (h()) {
                l(activity, z3);
            } else if (str.equalsIgnoreCase("OPPO")) {
                m(false, activity);
            } else {
                n(activity, z3);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @TargetApi(19)
    public static void s(Activity activity) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 21) {
            if (i2 >= 19) {
                activity.getWindow().setFlags(67108864, 67108864);
                return;
            }
            return;
        }
        Window window = activity.getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
    }
}
