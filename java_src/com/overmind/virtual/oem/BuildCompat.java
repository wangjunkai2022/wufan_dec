package com.overmind.virtual.oem;

import android.os.Build;
/* loaded from: classes4.dex */
public class BuildCompat {

    /* renamed from: a  reason: collision with root package name */
    private static ROMType f54589a;

    /* loaded from: classes4.dex */
    public enum ROMType {
        EMUI,
        MIUI,
        FLYME,
        COLOR_OS,
        LETV,
        VIVO,
        _360,
        SAMSUNG,
        OTHER
    }

    public static int a() {
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                return Build.VERSION.PREVIEW_SDK_INT;
            } catch (Throwable unused) {
                return 0;
            }
        }
        return 0;
    }

    public static ROMType b() {
        if (f54589a == null) {
            if (e()) {
                f54589a = ROMType.EMUI;
            } else if (h()) {
                f54589a = ROMType.MIUI;
            } else if (f()) {
                f54589a = ROMType.FLYME;
            } else if (d()) {
                f54589a = ROMType.COLOR_OS;
            } else if (c()) {
                f54589a = ROMType._360;
            } else if (g()) {
                f54589a = ROMType.LETV;
            } else if (o()) {
                f54589a = ROMType.VIVO;
            } else if (n()) {
                f54589a = ROMType.SAMSUNG;
            } else {
                f54589a = ROMType.OTHER;
            }
        }
        return f54589a;
    }

    public static boolean c() {
        String a4 = a2.a.a("ro.build.uiversion");
        return a4 != null && a4.toUpperCase().contains("360UI");
    }

    public static boolean d() {
        return a2.a.d("ro.build.version.opporom") || a2.a.d("ro.rom.different.version");
    }

    public static boolean e() {
        if (Build.DISPLAY.toUpperCase().startsWith("EMUI")) {
            return true;
        }
        String a4 = a2.a.a("ro.build.version.emui");
        return a4 != null && a4.contains("EmotionUI");
    }

    public static boolean f() {
        return Build.DISPLAY.toLowerCase().contains("flyme");
    }

    public static boolean g() {
        return Build.MANUFACTURER.equalsIgnoreCase("Letv");
    }

    public static boolean h() {
        return a2.a.c("ro.miui.ui.version.code", 0) > 0;
    }

    public static boolean i() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 > 25 || (i2 == 25 && a() > 0);
    }

    public static boolean j() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 > 27 || (i2 == 27 && a() > 0);
    }

    public static boolean k() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 > 28 || (i2 == 28 && a() > 0);
    }

    public static boolean l() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 > 29 || (i2 == 29 && a() > 0);
    }

    public static boolean m() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 > 30 || (i2 == 30 && a() > 0);
    }

    public static boolean n() {
        return "samsung".equalsIgnoreCase(Build.BRAND) || "samsung".equalsIgnoreCase(Build.MANUFACTURER);
    }

    public static boolean o() {
        return a2.a.d("ro.vivo.os.build.display.id");
    }
}
