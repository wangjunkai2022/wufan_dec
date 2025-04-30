package com.join.mgps.Util;

import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Properties;
/* compiled from: RomUtils.java */
/* loaded from: classes3.dex */
public final class p1 {
    private static final String A = "ro.build.MiFavor_version";
    private static final String B = "ro.rom.version";
    private static final String C = "ro.build.rom.id";
    private static final String D = "unknown";

    /* renamed from: u  reason: collision with root package name */
    private static final String f27752u = "ro.build.version.emui";

    /* renamed from: v  reason: collision with root package name */
    private static final String f27753v = "ro.vivo.os.build.display.id";

    /* renamed from: w  reason: collision with root package name */
    private static final String f27754w = "ro.build.version.incremental";

    /* renamed from: x  reason: collision with root package name */
    private static final String f27755x = "ro.build.version.opporom";

    /* renamed from: y  reason: collision with root package name */
    private static final String f27756y = "ro.letv.release.version";

    /* renamed from: z  reason: collision with root package name */
    private static final String f27757z = "ro.build.uiversion";

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f27732a = {"huawei"};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f27733b = {"vivo"};

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f27734c = {"xiaomi"};

    /* renamed from: d  reason: collision with root package name */
    private static final String[] f27735d = {"oppo"};

    /* renamed from: e  reason: collision with root package name */
    private static final String[] f27736e = {"leeco", "letv"};

    /* renamed from: f  reason: collision with root package name */
    private static final String[] f27737f = {"360", "qiku"};

    /* renamed from: g  reason: collision with root package name */
    private static final String[] f27738g = {"zte"};

    /* renamed from: h  reason: collision with root package name */
    private static final String[] f27739h = {"oneplus"};

    /* renamed from: i  reason: collision with root package name */
    private static final String[] f27740i = {"nubia"};

    /* renamed from: j  reason: collision with root package name */
    private static final String[] f27741j = {"coolpad", "yulong"};

    /* renamed from: k  reason: collision with root package name */
    private static final String[] f27742k = {"lg", "lge"};

    /* renamed from: l  reason: collision with root package name */
    private static final String[] f27743l = {"google"};

    /* renamed from: m  reason: collision with root package name */
    private static final String[] f27744m = {"samsung"};

    /* renamed from: n  reason: collision with root package name */
    private static final String[] f27745n = {"meizu"};

    /* renamed from: o  reason: collision with root package name */
    private static final String[] f27746o = {"lenovo"};

    /* renamed from: p  reason: collision with root package name */
    private static final String[] f27747p = {"smartisan"};

    /* renamed from: q  reason: collision with root package name */
    private static final String[] f27748q = {"htc"};

    /* renamed from: r  reason: collision with root package name */
    private static final String[] f27749r = {"sony"};

    /* renamed from: s  reason: collision with root package name */
    private static final String[] f27750s = {"gionee", "amigo"};

    /* renamed from: t  reason: collision with root package name */
    private static final String[] f27751t = {"motorola"};
    private static a E = null;

    /* compiled from: RomUtils.java */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private String f27758a;

        /* renamed from: b  reason: collision with root package name */
        private String f27759b;

        public String d() {
            return this.f27758a;
        }

        public String e() {
            return this.f27759b;
        }

        public String toString() {
            return "RomInfo{name=" + this.f27758a + ", version=" + this.f27759b + "}";
        }
    }

    private p1() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static boolean A() {
        return f27733b[0].equals(c().f27758a);
    }

    public static boolean B() {
        return f27734c[0].equals(c().f27758a);
    }

    public static boolean C() {
        return f27738g[0].equals(c().f27758a);
    }

    private static String a() {
        try {
            String str = Build.BRAND;
            return !TextUtils.isEmpty(str) ? str.toLowerCase() : "unknown";
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    private static String b() {
        try {
            String str = Build.MANUFACTURER;
            return !TextUtils.isEmpty(str) ? str.toLowerCase() : "unknown";
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    public static a c() {
        a aVar = E;
        if (aVar != null) {
            return aVar;
        }
        E = new a();
        String a4 = a();
        String b4 = b();
        String[] strArr = f27732a;
        if (w(a4, b4, strArr)) {
            E.f27758a = strArr[0];
            String d4 = d(f27752u);
            String[] split = d4.split("_");
            if (split.length <= 1) {
                E.f27759b = d4;
            } else {
                E.f27759b = split[1];
            }
            return E;
        }
        String[] strArr2 = f27733b;
        if (w(a4, b4, strArr2)) {
            E.f27758a = strArr2[0];
            E.f27759b = d(f27753v);
            return E;
        }
        String[] strArr3 = f27734c;
        if (w(a4, b4, strArr3)) {
            E.f27758a = strArr3[0];
            E.f27759b = d(f27754w);
            return E;
        }
        String[] strArr4 = f27735d;
        if (w(a4, b4, strArr4)) {
            E.f27758a = strArr4[0];
            E.f27759b = d(f27755x);
            return E;
        }
        String[] strArr5 = f27736e;
        if (w(a4, b4, strArr5)) {
            E.f27758a = strArr5[0];
            E.f27759b = d(f27756y);
            return E;
        }
        String[] strArr6 = f27737f;
        if (w(a4, b4, strArr6)) {
            E.f27758a = strArr6[0];
            E.f27759b = d(f27757z);
            return E;
        }
        String[] strArr7 = f27738g;
        if (w(a4, b4, strArr7)) {
            E.f27758a = strArr7[0];
            E.f27759b = d(A);
            return E;
        }
        String[] strArr8 = f27739h;
        if (w(a4, b4, strArr8)) {
            E.f27758a = strArr8[0];
            E.f27759b = d(B);
            return E;
        }
        String[] strArr9 = f27740i;
        if (w(a4, b4, strArr9)) {
            E.f27758a = strArr9[0];
            E.f27759b = d(C);
            return E;
        }
        String[] strArr10 = f27741j;
        if (w(a4, b4, strArr10)) {
            E.f27758a = strArr10[0];
        } else {
            String[] strArr11 = f27742k;
            if (w(a4, b4, strArr11)) {
                E.f27758a = strArr11[0];
            } else {
                String[] strArr12 = f27743l;
                if (w(a4, b4, strArr12)) {
                    E.f27758a = strArr12[0];
                } else {
                    String[] strArr13 = f27744m;
                    if (w(a4, b4, strArr13)) {
                        E.f27758a = strArr13[0];
                    } else {
                        String[] strArr14 = f27745n;
                        if (w(a4, b4, strArr14)) {
                            E.f27758a = strArr14[0];
                        } else {
                            String[] strArr15 = f27746o;
                            if (w(a4, b4, strArr15)) {
                                E.f27758a = strArr15[0];
                            } else {
                                String[] strArr16 = f27747p;
                                if (w(a4, b4, strArr16)) {
                                    E.f27758a = strArr16[0];
                                } else {
                                    String[] strArr17 = f27748q;
                                    if (w(a4, b4, strArr17)) {
                                        E.f27758a = strArr17[0];
                                    } else {
                                        String[] strArr18 = f27749r;
                                        if (w(a4, b4, strArr18)) {
                                            E.f27758a = strArr18[0];
                                        } else {
                                            String[] strArr19 = f27750s;
                                            if (w(a4, b4, strArr19)) {
                                                E.f27758a = strArr19[0];
                                            } else {
                                                String[] strArr20 = f27751t;
                                                if (!w(a4, b4, strArr20)) {
                                                    E.f27758a = b4;
                                                } else {
                                                    E.f27758a = strArr20[0];
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        E.f27759b = d("");
        return E;
    }

    private static String d(String str) {
        String e4 = !TextUtils.isEmpty(str) ? e(str) : "";
        if (TextUtils.isEmpty(e4) || e4.equals("unknown")) {
            try {
                String str2 = Build.DISPLAY;
                if (!TextUtils.isEmpty(str2)) {
                    e4 = str2.toLowerCase();
                }
            } catch (Throwable unused) {
            }
        }
        return TextUtils.isEmpty(e4) ? "unknown" : e4;
    }

    private static String e(String str) {
        String g4 = g(str);
        if (TextUtils.isEmpty(g4)) {
            String h4 = h(str);
            return (TextUtils.isEmpty(h4) && Build.VERSION.SDK_INT < 28) ? f(str) : h4;
        }
        return g4;
    }

    private static String f(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "");
        } catch (Exception unused) {
            return "";
        }
    }

    private static String g(String str) {
        BufferedReader bufferedReader;
        String readLine;
        BufferedReader bufferedReader2 = null;
        try {
            try {
                Runtime runtime = Runtime.getRuntime();
                bufferedReader = new BufferedReader(new InputStreamReader(runtime.exec("getprop " + str).getInputStream()), 1024);
            } catch (IOException unused) {
                return "";
            }
        } catch (IOException unused2) {
        } catch (Throwable th) {
            th = th;
        }
        try {
            readLine = bufferedReader.readLine();
        } catch (IOException unused3) {
            bufferedReader2 = bufferedReader;
            if (bufferedReader2 != null) {
                bufferedReader2.close();
                return "";
            }
            return "";
        } catch (Throwable th2) {
            th = th2;
            bufferedReader2 = bufferedReader;
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
        if (readLine != null) {
            try {
                bufferedReader.close();
            } catch (IOException unused5) {
            }
            return readLine;
        }
        bufferedReader.close();
        return "";
    }

    private static String h(String str) {
        try {
            Properties properties = new Properties();
            properties.load(new FileInputStream(new File(Environment.getRootDirectory(), "build.prop")));
            return properties.getProperty(str, "");
        } catch (Exception unused) {
            return "";
        }
    }

    public static boolean i() {
        return f27737f[0].equals(c().f27758a);
    }

    public static boolean j() {
        return f27741j[0].equals(c().f27758a);
    }

    public static boolean k() {
        return f27750s[0].equals(c().f27758a);
    }

    public static boolean l() {
        return f27743l[0].equals(c().f27758a);
    }

    public static boolean m() {
        return f27748q[0].equals(c().f27758a);
    }

    public static boolean n() {
        return f27732a[0].equals(c().f27758a);
    }

    public static boolean o() {
        return f27736e[0].equals(c().f27758a);
    }

    public static boolean p() {
        return f27746o[0].equals(c().f27758a);
    }

    public static boolean q() {
        return f27742k[0].equals(c().f27758a);
    }

    public static boolean r() {
        return f27745n[0].equals(c().f27758a);
    }

    public static boolean s() {
        return f27751t[0].equals(c().f27758a);
    }

    public static boolean t() {
        return f27740i[0].equals(c().f27758a);
    }

    public static boolean u() {
        return f27739h[0].equals(c().f27758a);
    }

    public static boolean v() {
        return f27735d[0].equals(c().f27758a);
    }

    private static boolean w(String str, String str2, String... strArr) {
        for (String str3 : strArr) {
            if (str.contains(str3) || str2.contains(str3)) {
                return true;
            }
        }
        return false;
    }

    public static boolean x() {
        return f27744m[0].equals(c().f27758a);
    }

    public static boolean y() {
        return f27747p[0].equals(c().f27758a);
    }

    public static boolean z() {
        return f27749r[0].equals(c().f27758a);
    }
}
