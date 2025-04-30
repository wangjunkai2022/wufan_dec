package external.org.apache.commons.lang3;

import java.io.File;
import java.io.PrintStream;
/* compiled from: SystemUtils.java */
/* loaded from: classes3.dex */
public class f {
    public static final String A;
    public static final boolean A0;
    public static final String B;
    public static final String C;
    public static final String D;
    public static final String E;
    public static final String F;
    public static final String G;
    public static final String H;
    public static final String I;
    public static final String J;
    public static final String K;
    public static final String L;
    public static final String M;
    public static final String N;
    public static final String O;
    public static final String P;
    public static final String Q;
    public static final String R;
    public static final String S;
    public static final String T;
    public static final String U;
    public static final String V;
    public static final boolean W;
    public static final boolean X;
    public static final boolean Y;
    public static final boolean Z;

    /* renamed from: a  reason: collision with root package name */
    private static final String f65383a = "Windows";

    /* renamed from: a0  reason: collision with root package name */
    public static final boolean f65384a0;

    /* renamed from: b  reason: collision with root package name */
    private static final String f65385b = "user.home";

    /* renamed from: b0  reason: collision with root package name */
    public static final boolean f65386b0;

    /* renamed from: c  reason: collision with root package name */
    private static final String f65387c = "user.dir";

    /* renamed from: c0  reason: collision with root package name */
    public static final boolean f65388c0;

    /* renamed from: d0  reason: collision with root package name */
    public static final boolean f65390d0;

    /* renamed from: e0  reason: collision with root package name */
    public static final boolean f65392e0;

    /* renamed from: f0  reason: collision with root package name */
    public static final boolean f65394f0;

    /* renamed from: g0  reason: collision with root package name */
    public static final boolean f65396g0;

    /* renamed from: h0  reason: collision with root package name */
    public static final boolean f65398h0;

    /* renamed from: i0  reason: collision with root package name */
    public static final boolean f65400i0;

    /* renamed from: j0  reason: collision with root package name */
    public static final boolean f65402j0;

    /* renamed from: k0  reason: collision with root package name */
    public static final boolean f65404k0;

    /* renamed from: l0  reason: collision with root package name */
    public static final boolean f65406l0;

    /* renamed from: m0  reason: collision with root package name */
    public static final boolean f65408m0;

    /* renamed from: n0  reason: collision with root package name */
    public static final boolean f65410n0;

    /* renamed from: o0  reason: collision with root package name */
    public static final boolean f65412o0;

    /* renamed from: p0  reason: collision with root package name */
    public static final boolean f65414p0;

    /* renamed from: q0  reason: collision with root package name */
    public static final boolean f65416q0;

    /* renamed from: r0  reason: collision with root package name */
    public static final boolean f65418r0;

    /* renamed from: s0  reason: collision with root package name */
    public static final boolean f65420s0;

    /* renamed from: t0  reason: collision with root package name */
    public static final boolean f65422t0;

    /* renamed from: u0  reason: collision with root package name */
    public static final boolean f65424u0;

    /* renamed from: v0  reason: collision with root package name */
    public static final boolean f65426v0;

    /* renamed from: w0  reason: collision with root package name */
    public static final boolean f65428w0;

    /* renamed from: x0  reason: collision with root package name */
    public static final boolean f65430x0;

    /* renamed from: y  reason: collision with root package name */
    public static final String f65431y;

    /* renamed from: y0  reason: collision with root package name */
    public static final boolean f65432y0;

    /* renamed from: z  reason: collision with root package name */
    private static final JavaVersion f65433z;

    /* renamed from: z0  reason: collision with root package name */
    public static final boolean f65434z0;

    /* renamed from: f  reason: collision with root package name */
    public static final String f65393f = f("awt.toolkit");

    /* renamed from: g  reason: collision with root package name */
    public static final String f65395g = f("file.encoding");

    /* renamed from: h  reason: collision with root package name */
    public static final String f65397h = f("file.separator");

    /* renamed from: i  reason: collision with root package name */
    public static final String f65399i = f("java.awt.fonts");

    /* renamed from: j  reason: collision with root package name */
    public static final String f65401j = f("java.awt.graphicsenv");

    /* renamed from: k  reason: collision with root package name */
    public static final String f65403k = f("java.awt.headless");

    /* renamed from: l  reason: collision with root package name */
    public static final String f65405l = f("java.awt.printerjob");

    /* renamed from: m  reason: collision with root package name */
    public static final String f65407m = f("java.class.path");

    /* renamed from: n  reason: collision with root package name */
    public static final String f65409n = f("java.class.version");

    /* renamed from: o  reason: collision with root package name */
    public static final String f65411o = f("java.compiler");

    /* renamed from: p  reason: collision with root package name */
    public static final String f65413p = f("java.endorsed.dirs");

    /* renamed from: q  reason: collision with root package name */
    public static final String f65415q = f("java.ext.dirs");

    /* renamed from: e  reason: collision with root package name */
    private static final String f65391e = "java.home";

    /* renamed from: r  reason: collision with root package name */
    public static final String f65417r = f(f65391e);

    /* renamed from: d  reason: collision with root package name */
    private static final String f65389d = "java.io.tmpdir";

    /* renamed from: s  reason: collision with root package name */
    public static final String f65419s = f(f65389d);

    /* renamed from: t  reason: collision with root package name */
    public static final String f65421t = f("java.library.path");

    /* renamed from: u  reason: collision with root package name */
    public static final String f65423u = f("java.runtime.name");

    /* renamed from: v  reason: collision with root package name */
    public static final String f65425v = f("java.runtime.version");

    /* renamed from: w  reason: collision with root package name */
    public static final String f65427w = f("java.specification.name");

    /* renamed from: x  reason: collision with root package name */
    public static final String f65429x = f("java.specification.vendor");

    static {
        String f4 = f("java.specification.version");
        f65431y = f4;
        f65433z = JavaVersion.get(f4);
        A = f("java.util.prefs.PreferencesFactory");
        B = f("java.vendor");
        C = f("java.vendor.url");
        D = f("java.version");
        E = f("java.vm.info");
        F = f("java.vm.name");
        G = f("java.vm.specification.name");
        H = f("java.vm.specification.vendor");
        I = f("java.vm.specification.version");
        J = f("java.vm.vendor");
        K = f("java.vm.version");
        L = f("line.separator");
        M = f("os.arch");
        N = f("os.name");
        O = f("os.version");
        P = f("path.separator");
        Q = f(f("user.country") == null ? "user.region" : "user.country");
        R = f(f65387c);
        S = f(f65385b);
        T = f("user.language");
        U = f("user.name");
        V = f("user.timezone");
        W = c("1.1");
        X = c("1.2");
        Y = c("1.3");
        Z = c("1.4");
        f65384a0 = c("1.5");
        f65386b0 = c("1.6");
        f65388c0 = c("1.7");
        boolean e4 = e("AIX");
        f65390d0 = e4;
        boolean e5 = e("HP-UX");
        f65392e0 = e5;
        boolean e6 = e("Irix");
        f65394f0 = e6;
        boolean z3 = false;
        boolean z4 = e("Linux") || e("LINUX");
        f65396g0 = z4;
        f65398h0 = e("Mac");
        boolean e7 = e("Mac OS X");
        f65400i0 = e7;
        boolean e8 = e("FreeBSD");
        f65402j0 = e8;
        boolean e9 = e("OpenBSD");
        f65404k0 = e9;
        boolean e10 = e("NetBSD");
        f65406l0 = e10;
        f65408m0 = e("OS/2");
        boolean e11 = e("Solaris");
        f65410n0 = e11;
        boolean e12 = e("SunOS");
        f65412o0 = e12;
        f65414p0 = (e4 || e5 || e6 || z4 || e7 || e11 || e12 || e8 || e9 || e10) ? true : true;
        f65416q0 = e(f65383a);
        f65418r0 = d(f65383a, "5.0");
        f65420s0 = d(f65383a, "5.2");
        f65422t0 = d("Windows Server 2008", "6.1");
        f65424u0 = d("Windows 9", "4.0");
        f65426v0 = d("Windows 9", "4.1");
        f65428w0 = d(f65383a, "4.9");
        f65430x0 = e("Windows NT");
        f65432y0 = d(f65383a, "5.1");
        f65434z0 = d(f65383a, "6.0");
        A0 = d(f65383a, "6.1");
    }

    public static File a() {
        return new File(System.getProperty(f65391e));
    }

    public static File b() {
        return new File(System.getProperty(f65389d));
    }

    private static boolean c(String versionPrefix) {
        return k(f65431y, versionPrefix);
    }

    private static boolean d(String osNamePrefix, String osVersionPrefix) {
        return l(N, O, osNamePrefix, osVersionPrefix);
    }

    private static boolean e(String osNamePrefix) {
        return m(N, osNamePrefix);
    }

    private static String f(String property) {
        try {
            return System.getProperty(property);
        } catch (SecurityException unused) {
            PrintStream printStream = System.err;
            printStream.println("Caught a SecurityException reading the system property '" + property + "'; the SystemUtils property value will default to null.");
            return null;
        }
    }

    public static File g() {
        return new File(System.getProperty(f65387c));
    }

    public static File h() {
        return new File(System.getProperty(f65385b));
    }

    public static boolean i() {
        String str = f65403k;
        if (str != null) {
            return str.equals(Boolean.TRUE.toString());
        }
        return false;
    }

    public static boolean j(JavaVersion requiredVersion) {
        return f65433z.atLeast(requiredVersion);
    }

    static boolean k(String version, String versionPrefix) {
        if (version == null) {
            return false;
        }
        return version.startsWith(versionPrefix);
    }

    static boolean l(String osName, String osVersion, String osNamePrefix, String osVersionPrefix) {
        return osName != null && osVersion != null && osName.startsWith(osNamePrefix) && osVersion.startsWith(osVersionPrefix);
    }

    static boolean m(String osName, String osNamePrefix) {
        if (osName == null) {
            return false;
        }
        return osName.startsWith(osNamePrefix);
    }
}
