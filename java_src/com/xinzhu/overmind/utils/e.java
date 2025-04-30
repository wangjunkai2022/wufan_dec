package com.xinzhu.overmind.utils;

import android.os.Build;
/* compiled from: BuildInfo.java */
/* loaded from: classes.dex */
public final class e {
    public static boolean a() {
        return y(21);
    }

    public static boolean b() {
        return y(22);
    }

    public static boolean c() {
        return y(23);
    }

    public static boolean d() {
        return y(24);
    }

    public static boolean e() {
        return y(25);
    }

    public static boolean f() {
        return y(29);
    }

    public static boolean g() {
        return y(30);
    }

    public static boolean h() {
        return y(31);
    }

    public static boolean i() {
        return y(32);
    }

    public static boolean j() {
        return y(33);
    }

    private static int k() {
        if (Build.VERSION.SDK_INT >= 23) {
            return Build.VERSION.PREVIEW_SDK_INT;
        }
        return 0;
    }

    public static boolean l() {
        throw new RuntimeException("TODO");
    }

    public static boolean m() {
        return Build.BRAND.trim().toUpperCase().contains("OPPO");
    }

    public static boolean n() {
        String b4 = com.xinzhu.overmind.utils.helpers.h.b("ro.build.version.emui", null);
        return b4 != null && b4.contains("EmotionUI");
    }

    public static boolean o() {
        try {
            return com.xinzhu.haunted.meizu.security.a.f63930b != null;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean p() {
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            return "harmony".equalsIgnoreCase(cls.getMethod("getOsBrand", new Class[0]).invoke(cls, new Object[0]).toString());
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean q() {
        throw new RuntimeException("TODO");
    }

    public static boolean r() {
        return com.xinzhu.overmind.utils.helpers.h.b("ro.miui.ui.version.name", null) != null;
    }

    public static boolean s() {
        return Build.BRAND.equalsIgnoreCase("samsung") || Build.MANUFACTURER.equalsIgnoreCase("samsung");
    }

    public static boolean t() {
        return x();
    }

    public static boolean u() {
        String b4 = com.xinzhu.overmind.utils.helpers.h.b("ro.vivo.os.build.display.id", null);
        return (b4 == null || b4.isEmpty()) ? false : true;
    }

    public static boolean v() {
        return y(26);
    }

    public static boolean w() {
        return y(27);
    }

    public static boolean x() {
        return y(28);
    }

    private static boolean y(int value) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < value) {
            return i2 == value - 1 && k() > 0;
        }
        return true;
    }
}
