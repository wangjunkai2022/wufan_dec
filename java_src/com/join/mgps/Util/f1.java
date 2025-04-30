package com.join.mgps.Util;

import android.app.Activity;
import android.os.Build;
/* compiled from: NotchInScreenUtile.java */
/* loaded from: classes3.dex */
public class f1 {
    private static boolean a(Activity activity) {
        try {
            Class<?> loadClass = activity.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return ((Boolean) loadClass.getMethod("hasNotchInScreen", new Class[0]).invoke(loadClass, new Object[0])).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                return activity.getWindow().getDecorView().getRootWindowInsets().getDisplayCutout() != null;
            } catch (Exception e4) {
                e4.printStackTrace();
                String str = Build.MANUFACTURER;
                if (d2.h(str)) {
                    return false;
                }
                if (str.equalsIgnoreCase("HUAWEI")) {
                    return a(activity);
                }
                if (str.equalsIgnoreCase("xiaomi")) {
                    return e(activity);
                }
                if (str.equalsIgnoreCase("oppo")) {
                    return c(activity);
                }
                if (str.equalsIgnoreCase("vivo")) {
                    return d(activity);
                }
                return false;
            }
        }
        String str2 = Build.MANUFACTURER;
        if (d2.h(str2)) {
            return false;
        }
        if (str2.equalsIgnoreCase("HUAWEI")) {
            return a(activity);
        }
        if (str2.equalsIgnoreCase("xiaomi")) {
            return e(activity);
        }
        if (str2.equalsIgnoreCase("oppo")) {
            return c(activity);
        }
        if (str2.equalsIgnoreCase("vivo")) {
            return d(activity);
        }
        return false;
    }

    private static boolean c(Activity activity) {
        return activity.getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism");
    }

    private static boolean d(Activity activity) {
        try {
            Class<?> cls = Class.forName("android.util.FtFeature");
            return ((Boolean) cls.getMethod("isFeatureSupport", Integer.TYPE).invoke(cls, 32)).booleanValue();
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    private static boolean e(Activity activity) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return ((Integer) cls.getMethod("getInt", String.class, Integer.TYPE).invoke(cls, "ro.miui.notch", 0)).intValue() == 1;
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }
}
