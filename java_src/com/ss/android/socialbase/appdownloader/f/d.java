package com.ss.android.socialbase.appdownloader.f;

import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ss.android.socialbase.appdownloader.g;
import com.ss.android.socialbase.downloader.i.f;
import java.io.BufferedReader;
import java.io.InputStreamReader;
/* compiled from: RomUtils.java */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static String f57713a = null;

    /* renamed from: b  reason: collision with root package name */
    public static String f57714b = "";

    /* renamed from: c  reason: collision with root package name */
    public static String f57715c = null;

    /* renamed from: d  reason: collision with root package name */
    private static String f57716d = "";

    /* renamed from: e  reason: collision with root package name */
    private static String f57717e;

    /* renamed from: f  reason: collision with root package name */
    private static String f57718f;

    /* renamed from: g  reason: collision with root package name */
    private static String f57719g;

    public static boolean a() {
        return a("EMUI");
    }

    public static boolean b() {
        return a("MIUI");
    }

    public static boolean c() {
        return a("VIVO");
    }

    public static boolean d() {
        o();
        return a(f57713a);
    }

    public static boolean e() {
        return a("FLYME");
    }

    public static boolean f() {
        return a("SAMSUNG");
    }

    public static String g() {
        if (f57717e == null) {
            a("");
        }
        return f57717e;
    }

    public static String h() {
        if (f57718f == null) {
            a("");
        }
        return f57718f;
    }

    public static String i() {
        if (f57715c == null) {
            a("");
        }
        return f57715c;
    }

    @NonNull
    public static String j() {
        String str = Build.MANUFACTURER;
        return str == null ? "" : str.trim();
    }

    @NonNull
    public static String k() {
        String str = Build.DISPLAY;
        return str == null ? "" : str.trim();
    }

    public static boolean l() {
        p();
        return "V10".equals(f57719g);
    }

    public static boolean m() {
        p();
        return "V11".equals(f57719g);
    }

    public static boolean n() {
        p();
        return "V12".equals(f57719g);
    }

    private static void o() {
        if (TextUtils.isEmpty(f57713a)) {
            com.ss.android.socialbase.downloader.downloader.c.F();
            f57713a = com.ss.android.socialbase.downloader.constants.e.f57872b;
            f57716d = "ro.build.version." + com.ss.android.socialbase.downloader.constants.e.f57873c + "rom";
            f57714b = "com." + com.ss.android.socialbase.downloader.constants.e.f57873c + ".market";
        }
    }

    private static void p() {
        if (f57719g == null) {
            try {
                f57719g = d("ro.miui.ui.version.name");
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            String str = f57719g;
            if (str == null) {
                str = "";
            }
            f57719g = str;
        }
    }

    public static boolean a(String str) {
        o();
        String str2 = f57717e;
        if (str2 != null) {
            return str2.equals(str);
        }
        String d4 = d("ro.miui.ui.version.name");
        f57718f = d4;
        if (!TextUtils.isEmpty(d4)) {
            f57717e = "MIUI";
            f57715c = "com.xiaomi.market";
            f57719g = f57718f;
        } else {
            String d5 = d("ro.build.version.emui");
            f57718f = d5;
            if (!TextUtils.isEmpty(d5)) {
                f57717e = "EMUI";
                f57715c = "com.huawei.appmarket";
            } else {
                String d6 = d(f57716d);
                f57718f = d6;
                if (!TextUtils.isEmpty(d6)) {
                    f57717e = f57713a;
                    if (g.a(f57714b) > -1) {
                        f57715c = f57714b;
                    } else {
                        f57715c = "com.heytap.market";
                    }
                } else {
                    String d7 = d("ro.vivo.os.version");
                    f57718f = d7;
                    if (!TextUtils.isEmpty(d7)) {
                        f57717e = "VIVO";
                        f57715c = "com.bbk.appstore";
                    } else {
                        String d8 = d("ro.smartisan.version");
                        f57718f = d8;
                        if (!TextUtils.isEmpty(d8)) {
                            f57717e = "SMARTISAN";
                            f57715c = "com.smartisanos.appstore";
                        } else {
                            String d9 = d("ro.gn.sv.version");
                            f57718f = d9;
                            if (!TextUtils.isEmpty(d9)) {
                                f57717e = "QIONEE";
                                f57715c = "com.gionee.aora.market";
                            } else {
                                String d10 = d("ro.lenovo.lvp.version");
                                f57718f = d10;
                                if (!TextUtils.isEmpty(d10)) {
                                    f57717e = "LENOVO";
                                    f57715c = "com.lenovo.leos.appstore";
                                } else if (j().toUpperCase().contains("SAMSUNG")) {
                                    f57717e = "SAMSUNG";
                                    f57715c = "com.sec.android.app.samsungapps";
                                } else if (j().toUpperCase().contains("ZTE")) {
                                    f57717e = "ZTE";
                                    f57715c = "zte.com.market";
                                } else if (j().toUpperCase().contains("NUBIA")) {
                                    f57717e = "NUBIA";
                                    f57715c = "cn.nubia.neostore";
                                } else if (k().toUpperCase().contains("FLYME")) {
                                    f57717e = "FLYME";
                                    f57715c = "com.meizu.mstore";
                                    f57718f = k();
                                } else if (j().toUpperCase().contains("ONEPLUS")) {
                                    f57717e = "ONEPLUS";
                                    f57718f = d("ro.rom.version");
                                    if (g.a(f57714b) > -1) {
                                        f57715c = f57714b;
                                    } else {
                                        f57715c = "com.heytap.market";
                                    }
                                } else {
                                    f57717e = j().toUpperCase();
                                    f57715c = "";
                                    f57718f = "";
                                }
                            }
                        }
                    }
                }
            }
        }
        return f57717e.equals(str);
    }

    public static String b(String str) {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + str).getInputStream()), 1024);
        } catch (Throwable unused) {
            bufferedReader = null;
        }
        try {
            String readLine = bufferedReader.readLine();
            bufferedReader.close();
            f.a(bufferedReader);
            return readLine;
        } catch (Throwable unused2) {
            f.a(bufferedReader);
            return null;
        }
    }

    public static String c(String str) throws Throwable {
        return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
    }

    public static String d(String str) {
        if (com.ss.android.socialbase.downloader.g.a.b().optBoolean("enable_reflect_system_properties", true)) {
            try {
                return c(str);
            } catch (Throwable th) {
                th.printStackTrace();
                return b(str);
            }
        }
        return b(str);
    }
}
