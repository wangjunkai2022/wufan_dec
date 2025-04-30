package com.uc.crashsdk;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.Util.g0;
import com.tencent.stat.DeviceInfo;
import com.uc.crashsdk.a.h;
import java.io.File;
import java.io.RandomAccessFile;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.Locale;
import java.util.Map;
import java.util.WeakHashMap;
/* compiled from: ProGuard */
/* loaded from: classes4.dex */
public class b {
    private static boolean A = false;
    private static boolean B = false;
    private static boolean C = false;
    private static boolean D = false;
    private static boolean E = false;
    private static String G = null;
    private static int H = 0;
    private static boolean I = false;
    private static boolean J = false;
    private static boolean K = true;
    private static RandomAccessFile L = null;
    private static boolean M = false;
    private static String O = null;
    private static boolean P = false;
    private static volatile Object[] Q = null;

    /* renamed from: a  reason: collision with root package name */
    public static boolean f60226a = false;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f60227b = false;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f60228c = false;

    /* renamed from: d  reason: collision with root package name */
    public static boolean f60229d = false;

    /* renamed from: f  reason: collision with root package name */
    public static boolean f60231f = false;

    /* renamed from: g  reason: collision with root package name */
    public static boolean f60232g = true;

    /* renamed from: h  reason: collision with root package name */
    public static boolean f60233h = false;

    /* renamed from: i  reason: collision with root package name */
    static final /* synthetic */ boolean f60234i = true;

    /* renamed from: j  reason: collision with root package name */
    private static String f60235j;

    /* renamed from: k  reason: collision with root package name */
    private static String f60236k;

    /* renamed from: l  reason: collision with root package name */
    private static String f60237l;

    /* renamed from: m  reason: collision with root package name */
    private static String f60238m;

    /* renamed from: n  reason: collision with root package name */
    private static String f60239n;

    /* renamed from: o  reason: collision with root package name */
    private static String f60240o;

    /* renamed from: p  reason: collision with root package name */
    private static String f60241p;

    /* renamed from: q  reason: collision with root package name */
    private static String f60242q;

    /* renamed from: r  reason: collision with root package name */
    private static String f60243r;

    /* renamed from: s  reason: collision with root package name */
    private static String f60244s;

    /* renamed from: t  reason: collision with root package name */
    private static String f60245t;

    /* renamed from: u  reason: collision with root package name */
    private static String f60246u;

    /* renamed from: v  reason: collision with root package name */
    private static String f60247v;

    /* renamed from: w  reason: collision with root package name */
    private static boolean f60248w;

    /* renamed from: x  reason: collision with root package name */
    private static boolean f60249x;

    /* renamed from: y  reason: collision with root package name */
    private static volatile boolean f60250y;

    /* renamed from: z  reason: collision with root package name */
    private static boolean f60251z;

    /* renamed from: e  reason: collision with root package name */
    public static final Object f60230e = new Object();
    private static final Object F = new Object();
    private static final Object N = new Object();
    private static Runnable R = new com.uc.crashsdk.a.e(101);
    private static boolean S = false;
    private static long T = 0;
    private static final Object U = new Object();
    private static long V = 0;
    private static boolean W = false;
    private static boolean X = false;
    private static boolean Y = false;
    private static long Z = 0;
    private static final WeakHashMap<Activity, Integer> aa = new WeakHashMap<>();
    private static boolean ab = false;
    private static String ac = null;
    private static boolean ad = false;
    private static boolean ae = false;
    private static boolean af = false;
    private static boolean ag = false;
    private static boolean ah = false;
    private static final Object ai = new Object();
    private static PendingIntent aj = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void A() {
        String str;
        if (!f60229d || (str = ac) == null) {
            return;
        }
        JNIBridge.set(129, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String B() {
        String str = ac;
        return str == null ? "" : str;
    }

    public static boolean C() {
        if (!ad) {
            if (!com.uc.crashsdk.a.g.a(a.f60146a) && a.f60146a.equals(e.h())) {
                ae = true;
                if (f60229d) {
                    JNIBridge.set(2, true);
                }
            }
            ad = true;
        }
        return ae;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void D() {
        af = true;
        if (f60229d) {
            JNIBridge.set(34, true);
        }
    }

    public static boolean E() {
        return af;
    }

    public static int F() {
        boolean R2 = R();
        return q() ? R2 ? 3 : 6 : p() ? R2 ? 2 : 5 : R2 ? 4 : 1;
    }

    public static int G() {
        boolean S2 = S();
        boolean T2 = T();
        boolean U2 = U();
        if (q()) {
            if (S2) {
                return 12;
            }
            if (T2) {
                return 14;
            }
            return U2 ? 16 : 98;
        } else if (p()) {
            if (S2) {
                return 11;
            }
            if (T2) {
                return 13;
            }
            return U2 ? 15 : 97;
        } else {
            return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void H() {
        if (f60229d) {
            JNIBridge.nativeSet(27, H, "12", null);
            JNIBridge.set(30, K);
        }
    }

    public static boolean I() {
        if (!ah) {
            synchronized (ai) {
                if (!ah) {
                    ag = ab();
                    ah = true;
                }
            }
        }
        return ag;
    }

    public static void J() {
        if (e.E() || I() || aj != null || g.h() < 0) {
            return;
        }
        try {
            Context a4 = com.uc.crashsdk.a.g.a();
            Intent launchIntentForPackage = a4.getPackageManager().getLaunchIntentForPackage(a4.getPackageName());
            launchIntentForPackage.addFlags(335544320);
            aj = PendingIntent.getActivity(a4, 0, launchIntentForPackage, 0);
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean K() {
        if (aj == null) {
            com.uc.crashsdk.a.a.b("Restart intent is null!");
            return false;
        }
        try {
            com.uc.crashsdk.a.a.a("crashsdk", "restarting ...");
            ((AlarmManager) com.uc.crashsdk.a.g.a().getSystemService(NotificationCompat.CATEGORY_ALARM)).set(1, System.currentTimeMillis() + 200, aj);
            return true;
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean L() {
        ab = true;
        return true;
    }

    private static String N() {
        if (f60235j == null) {
            f60235j = c("ss");
        }
        return f60235j;
    }

    private static String O() {
        if (f60237l == null) {
            f60237l = c("ctn");
        }
        return f60237l;
    }

    private static String P() {
        if (f60238m == null) {
            f60238m = c("cta");
        }
        return f60238m;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0071 A[Catch: all -> 0x0075, TRY_LEAVE, TryCatch #1 {, blocks: (B:9:0x000d, B:11:0x0011, B:13:0x0013, B:19:0x0057, B:21:0x005b, B:23:0x005f, B:25:0x0063, B:32:0x0079, B:33:0x007b, B:26:0x006b, B:28:0x0071), top: B:39:0x000d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void Q() {
        /*
            boolean r0 = com.uc.crashsdk.b.f60250y
            if (r0 != 0) goto L80
            boolean r0 = com.uc.crashsdk.b.f60249x
            if (r0 == 0) goto La
            goto L80
        La:
            java.lang.Object r0 = com.uc.crashsdk.b.F
            monitor-enter(r0)
            boolean r1 = com.uc.crashsdk.b.f60250y     // Catch: java.lang.Throwable -> L7d
            if (r1 == 0) goto L13
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L7d
            return
        L13:
            java.lang.String r1 = com.uc.crashsdk.g.U()     // Catch: java.lang.Throwable -> L7d
            d(r1)     // Catch: java.lang.Throwable -> L7d
            java.lang.String r1 = m()     // Catch: java.lang.Throwable -> L7d
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L7d
            java.lang.String r3 = b()     // Catch: java.lang.Throwable -> L7d
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L7d
            java.io.File r3 = new java.io.File     // Catch: java.lang.Throwable -> L7d
            java.lang.String r4 = O()     // Catch: java.lang.Throwable -> L7d
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L7d
            java.lang.String r4 = "f"
            boolean r4 = r4.equals(r1)     // Catch: java.lang.Throwable -> L7d
            com.uc.crashsdk.b.f60251z = r4     // Catch: java.lang.Throwable -> L7d
            java.lang.String r4 = "b"
            boolean r1 = r4.equals(r1)     // Catch: java.lang.Throwable -> L7d
            com.uc.crashsdk.b.A = r1     // Catch: java.lang.Throwable -> L7d
            boolean r1 = r2.exists()     // Catch: java.lang.Throwable -> L7d
            com.uc.crashsdk.b.C = r1     // Catch: java.lang.Throwable -> L7d
            boolean r1 = r3.exists()     // Catch: java.lang.Throwable -> L7d
            com.uc.crashsdk.b.D = r1     // Catch: java.lang.Throwable -> L7d
            boolean r2 = com.uc.crashsdk.b.C     // Catch: java.lang.Throwable -> L7d
            r3 = 1
            if (r2 != 0) goto L56
            if (r1 == 0) goto L54
            goto L56
        L54:
            r1 = 0
            goto L57
        L56:
            r1 = 1
        L57:
            com.uc.crashsdk.b.B = r1     // Catch: java.lang.Throwable -> L7d
            if (r1 != 0) goto L6b
            boolean r1 = com.uc.crashsdk.b.f60251z     // Catch: java.lang.Throwable -> L7d
            if (r1 != 0) goto L63
            boolean r1 = com.uc.crashsdk.b.A     // Catch: java.lang.Throwable -> L7d
            if (r1 == 0) goto L6b
        L63:
            boolean r1 = o()     // Catch: java.lang.Throwable -> L7d
            com.uc.crashsdk.b.E = r1     // Catch: java.lang.Throwable -> L7d
            com.uc.crashsdk.b.B = r1     // Catch: java.lang.Throwable -> L7d
        L6b:
            boolean r1 = w()     // Catch: java.lang.Throwable -> L75
            if (r1 == 0) goto L79
            W()     // Catch: java.lang.Throwable -> L75
            goto L79
        L75:
            r1 = move-exception
            com.uc.crashsdk.a.g.a(r1)     // Catch: java.lang.Throwable -> L7d
        L79:
            com.uc.crashsdk.b.f60250y = r3     // Catch: java.lang.Throwable -> L7d
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L7d
            return
        L7d:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L7d
            throw r1
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.b.Q():void");
    }

    private static boolean R() {
        Q();
        return B;
    }

    private static boolean S() {
        Q();
        return C;
    }

    private static boolean T() {
        Q();
        return D;
    }

    private static boolean U() {
        Q();
        return E;
    }

    private static void V() {
        if (f60229d) {
            JNIBridge.set(26, f60248w);
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0041 -> B:29:0x0044). Please submit an issue!!! */
    private static void W() {
        if (!S) {
            S = true;
            try {
                new File(b()).delete();
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
            try {
                new File(O()).delete();
            } catch (Throwable th2) {
                com.uc.crashsdk.a.g.a(th2);
            }
            try {
                if (f60229d) {
                    JNIBridge.cmd(16);
                } else {
                    new File(P()).delete();
                }
            } catch (Throwable th3) {
                com.uc.crashsdk.a.g.a(th3);
            }
        }
        Object[] Y2 = Y();
        if (!Y2[0].equals(O) && Q == null) {
            a(Y2);
            return;
        }
        P = true;
        X();
    }

    private static void X() {
        if (!com.uc.crashsdk.a.f.b(R)) {
            com.uc.crashsdk.a.f.a(1, R);
            return;
        }
        Object[] objArr = Q;
        if (objArr == null || !Y()[0].equals(objArr[0])) {
            com.uc.crashsdk.a.f.a(R);
            com.uc.crashsdk.a.f.a(1, R);
        }
    }

    private static Object[] Y() {
        synchronized (U) {
            long j4 = V + 1;
            V = j4;
            if (f60248w) {
                return new Object[]{"e", Long.valueOf(j4)};
            } else if (y()) {
                return new Object[]{"f", Long.valueOf(V)};
            } else {
                return new Object[]{"b", Long.valueOf(V)};
            }
        }
    }

    private static Object Z() {
        Object a4;
        Object a5 = a((Application) com.uc.crashsdk.a.g.a(), Application.class, "mLoadedApk");
        if (a5 == null || (a4 = a(a5, (Class<?>) null, "mActivityThread")) == null) {
            try {
                Method declaredMethod = Class.forName("android.app.ActivityThread").getDeclaredMethod("currentActivityThread", new Class[0]);
                if (declaredMethod != null) {
                    declaredMethod.setAccessible(true);
                    return declaredMethod.invoke(null, new Object[0]);
                }
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
            return null;
        }
        return a4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a() {
        String str = G;
        if (str != null) {
            return str;
        }
        String h4 = e.h();
        if (com.uc.crashsdk.a.g.a(h4)) {
            G = "LLUN";
        } else {
            int i2 = 0;
            if (h4.length() > 48) {
                h4 = h4.substring(0, 48);
                i2 = h4.length() - 48;
            }
            StringBuilder sb = new StringBuilder();
            byte[] bytes = h4.getBytes();
            for (int length = bytes.length - 1; length >= 0; length--) {
                byte b4 = bytes[length];
                if (b4 == 46) {
                    sb.append('0');
                } else if (b4 == 58) {
                    sb.append('1');
                } else if (b4 >= 97 && b4 <= 122) {
                    sb.append((char) ((b4 + 65) - 97));
                } else if (b4 >= 65 && b4 <= 90) {
                    sb.append((char) b4);
                } else if (b4 >= 48 && b4 <= 57) {
                    sb.append((char) b4);
                } else {
                    sb.append('2');
                }
            }
            if (i2 > 0) {
                sb.append(String.valueOf(i2));
            }
            G = sb.toString();
        }
        return G;
    }

    private static boolean aa() {
        String a4 = com.uc.crashsdk.a.g.a(new File("/proc/self/cgroup"), 512, false);
        if (com.uc.crashsdk.a.g.a(a4)) {
            return false;
        }
        return a4.contains("/bg_non_interactive") || a4.contains("/background");
    }

    private static boolean ab() {
        try {
            Method declaredMethod = Process.class.getDeclaredMethod("isIsolated", new Class[0]);
            if (declaredMethod != null) {
                declaredMethod.setAccessible(true);
                Object invoke = declaredMethod.invoke(null, new Object[0]);
                if (invoke != null && (invoke instanceof Boolean)) {
                    return ((Boolean) invoke).booleanValue();
                }
            }
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
        int myUid = Process.myUid() % 100000;
        return myUid >= 99000 && myUid <= 99999;
    }

    private static String c(String str) {
        return g.U() + a() + g0.f27568a + str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String d() {
        if (f60246u == null) {
            f60246u = c("bati");
        }
        return f60246u;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String e() {
        if (f60247v == null) {
            f60247v = c("hdr");
        }
        return f60247v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String f() {
        if (f60241p == null) {
            f60241p = g.U() + "up";
        }
        return f60241p;
    }

    public static String g() {
        if (f60242q == null) {
            f60242q = g.U() + "authu";
        }
        return f60242q;
    }

    public static String h() {
        if (f60243r == null) {
            f60243r = g.U() + "statu";
        }
        return f60243r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String i() {
        if (f60244s == null) {
            f60244s = g.U() + "poli";
        }
        return f60244s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String j() {
        if (f60245t == null) {
            f60245t = g.U() + DeviceInfo.TAG_VERSION;
        }
        return f60245t;
    }

    public static String k() {
        return g.U() + "bvu";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String l() {
        return g.U() + "fds";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String m() {
        return com.uc.crashsdk.a.g.a(new File(N()), 8, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean n() {
        return f60249x;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean o() {
        if (!I) {
            if (f60229d) {
                J = JNIBridge.cmd(15) == 1;
            } else {
                J = new File(P()).exists();
            }
            I = true;
        }
        return J;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean p() {
        Q();
        return f60251z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean q() {
        Q();
        return A;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean r() {
        return f60248w;
    }

    public static void s() {
        boolean z3;
        d(g.U());
        f60249x = true;
        f60251z = false;
        A = false;
        B = false;
        C = false;
        D = false;
        E = false;
        String[] strArr = {".st", ".wa", ".callback", ".ctn", ".ctj", ".cta", ".signal"};
        String[] strArr2 = {"up", "authu", "statu", "poli"};
        File[] listFiles = new File(g.U()).listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                String name = file.getName();
                int i2 = 0;
                while (true) {
                    if (i2 >= 7) {
                        z3 = false;
                        break;
                    } else if (name.endsWith(strArr[i2])) {
                        z3 = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (!z3) {
                    int i4 = 0;
                    while (true) {
                        if (i4 >= 4) {
                            break;
                        } else if (name.equals(strArr2[i4])) {
                            z3 = true;
                            break;
                        } else {
                            i4++;
                        }
                    }
                }
                if (z3) {
                    com.uc.crashsdk.a.a.a("crashsdk", "delete file: " + file.getPath());
                    com.uc.crashsdk.a.g.a(file);
                }
            }
        }
        W();
    }

    public static void t() {
        if (f60248w) {
            return;
        }
        f60248w = true;
        if (I() || e.t()) {
            return;
        }
        d(g.U());
        V();
        W();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean u() {
        return d(g.U());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean v() {
        return d(g.V());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean w() {
        return W || !aa();
    }

    public static boolean x() {
        return X || !aa();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean y() {
        return X && !f60248w;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void z() {
        com.uc.crashsdk.a.f.a(2, new com.uc.crashsdk.a.e(100));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b() {
        if (f60236k == null) {
            f60236k = c("ctj");
        }
        return f60236k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c() {
        if (f60239n == null) {
            f60239n = c("st");
        }
        return f60239n;
    }

    private static boolean d(String str) {
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        if (file.isDirectory()) {
            return true;
        }
        com.uc.crashsdk.a.a.a("crashsdk", "Crash log directory was placed by a file!", null);
        if (file.delete()) {
            file.mkdirs();
            return true;
        }
        return false;
    }

    public static void b(boolean z3) {
        if (e.t()) {
            return;
        }
        if (z3 && f60248w) {
            g.M();
            f60248w = false;
            V();
        }
        boolean z4 = e.E() || I();
        long currentTimeMillis = System.currentTimeMillis();
        if (W && !X && z3) {
            long j4 = Z;
            if (j4 != 0 && !z4 && currentTimeMillis - j4 > 1800000) {
                com.uc.crashsdk.a.f.a(1, new com.uc.crashsdk.a.e(104), 1000L);
            }
        }
        Z = currentTimeMillis;
        X = z3;
        if (z3) {
            W = true;
        }
        if (f60229d) {
            JNIBridge.nativeSetForeground(z3);
        }
        if (f60248w || z4) {
            return;
        }
        Q();
        W();
        if (z3) {
            a.a(false);
            if (!Y) {
                e.A();
                Y = true;
            }
        }
        if (!M) {
            X();
        }
        e.c(z3);
    }

    public static boolean c(int i2) {
        return (i2 & H) != 0;
    }

    public static void a(boolean z3) {
        K = z3;
        if (f60229d) {
            JNIBridge.set(30, z3);
        }
    }

    public static String a(String str) {
        return "debug.crs." + str;
    }

    private static void a(Object[] objArr) {
        Q = objArr;
        synchronized (N) {
            String str = (String) objArr[0];
            long longValue = ((Long) objArr[1]).longValue();
            if (longValue < T) {
                com.uc.crashsdk.a.a.c("crashsdk", String.format(Locale.US, "Update state generation %d, last is: %d", Long.valueOf(longValue), Long.valueOf(T)));
                return;
            }
            T = longValue;
            String N2 = N();
            if (f60229d) {
                RandomAccessFile randomAccessFile = L;
                if (randomAccessFile != null) {
                    com.uc.crashsdk.a.g.a(randomAccessFile);
                    L = null;
                }
                boolean nativeChangeState = JNIBridge.nativeChangeState(N2, str, M);
                M = false;
                if (!nativeChangeState) {
                    com.uc.crashsdk.a.a.b("write state failed: " + str);
                }
            } else {
                RandomAccessFile randomAccessFile2 = L;
                if (randomAccessFile2 == null || M) {
                    if (randomAccessFile2 != null) {
                        com.uc.crashsdk.a.g.a(randomAccessFile2);
                        L = null;
                    }
                    try {
                        RandomAccessFile randomAccessFile3 = new RandomAccessFile(N2, net.lingala.zip4j.util.e.f73015e0);
                        L = randomAccessFile3;
                        randomAccessFile3.seek(0L);
                        M = false;
                    } catch (Exception e4) {
                        com.uc.crashsdk.a.g.a(e4);
                    }
                }
                try {
                    L.write(str.getBytes());
                    L.seek(0L);
                } catch (Exception e5) {
                    com.uc.crashsdk.a.g.a(e5);
                }
            }
            O = str;
            Q = null;
        }
    }

    public static void b(int i2) {
        H = i2;
        H();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(Context context) {
        com.uc.crashsdk.a.a.a("Restart APP");
        if (context == null) {
            return;
        }
        if (f60240o == null) {
            f60240o = c("rt");
        }
        File file = new File(f60240o);
        long j4 = -1;
        try {
            j4 = Long.parseLong(com.uc.crashsdk.a.g.d(file));
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
        boolean z3 = false;
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        if (g.h() >= 0 && (j4 <= 0 || currentTimeMillis - j4 > g.h())) {
            d(g.U());
            com.uc.crashsdk.a.g.a(file, String.valueOf(currentTimeMillis));
            z3 = true;
        }
        com.uc.crashsdk.a.a.a("lastTime: " + j4 + ", currentTime: " + currentTimeMillis + ", needRestart: " + z3);
        if (z3) {
            try {
                d.a(true);
            } catch (Throwable th2) {
                com.uc.crashsdk.a.g.a(th2);
            }
            K();
        }
    }

    public static boolean a(Context context) {
        try {
            ((Application) context).registerActivityLifecycleCallbacks(new c());
            if (g.J()) {
                z();
                return true;
            }
            return true;
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return false;
        }
    }

    public static void a(int i2) {
        Object a4;
        Activity activity;
        int i4;
        boolean z3 = false;
        boolean z4 = true;
        switch (i2) {
            case 100:
                Object Z2 = Z();
                if (Z2 == null || (a4 = a(Z2, (Class<?>) null, "mActivities")) == null) {
                    return;
                }
                try {
                    boolean z5 = false;
                    for (Map.Entry entry : ((Map) a4).entrySet()) {
                        Object value = entry.getValue();
                        if (value != null && (activity = (Activity) a(value, (Class<?>) null, TTDownloadField.TT_ACTIVITY)) != null) {
                            boolean booleanValue = ((Boolean) a(value, (Class<?>) null, "paused")).booleanValue();
                            boolean booleanValue2 = ((Boolean) a(value, (Class<?>) null, "stopped")).booleanValue();
                            WeakHashMap<Activity, Integer> weakHashMap = aa;
                            synchronized (weakHashMap) {
                                if (booleanValue || booleanValue2) {
                                    i4 = 2;
                                } else {
                                    i4 = 1;
                                    z5 = true;
                                }
                                weakHashMap.put(activity, Integer.valueOf(i4));
                            }
                        }
                        z3 = true;
                    }
                    if (z3) {
                        b(z5);
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    com.uc.crashsdk.a.g.a(th);
                    return;
                }
            case 101:
                try {
                    if (new File(N()).exists()) {
                        z4 = false;
                    }
                    M = z4;
                    if (z4 || P) {
                        a(Y());
                        P = false;
                        return;
                    }
                    return;
                } catch (Throwable th2) {
                    com.uc.crashsdk.a.g.a(th2);
                    return;
                }
            case 102:
                com.uc.crashsdk.a.f.a(1, new com.uc.crashsdk.a.e(103));
                return;
            case 103:
                try {
                    com.uc.crashsdk.a.g.a(new File(P()));
                    return;
                } catch (Throwable th3) {
                    com.uc.crashsdk.a.g.a(th3);
                    return;
                }
            case 104:
                h.d();
                f.a(102);
                if (C()) {
                    e.B();
                    return;
                }
                return;
            default:
                if (!f60234i) {
                    throw new AssertionError();
                }
                return;
        }
    }

    private static Object a(Object obj, Class<?> cls, String str) {
        if (obj == null) {
            return null;
        }
        if (cls == null) {
            cls = obj.getClass();
        }
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField.get(obj);
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return null;
        }
    }

    public static boolean a(Object obj, String str, com.uc.crashsdk.a.e eVar) {
        FileChannel fileChannel;
        boolean z3;
        synchronized (obj) {
            FileChannel fileChannel2 = null;
            r1 = null;
            FileLock lock = null;
            fileChannel2 = null;
            boolean z4 = false;
            if (f60229d) {
                int nativeOpenFile = JNIBridge.nativeOpenFile(str);
                if (nativeOpenFile < 0) {
                    com.uc.crashsdk.a.a.a("crashsdk", "Can not open file: " + str, null);
                    return false;
                }
                boolean nativeLockFile = JNIBridge.nativeLockFile(nativeOpenFile, true);
                try {
                    z3 = eVar.a();
                    JNIBridge.nativeCloseFile(nativeOpenFile);
                } finally {
                    if (nativeLockFile) {
                        JNIBridge.nativeLockFile(nativeOpenFile, false);
                    }
                }
            } else {
                File file = new File(str);
                if (!file.exists()) {
                    try {
                        file.createNewFile();
                    } catch (Exception e4) {
                        com.uc.crashsdk.a.g.a(e4);
                    }
                }
                try {
                    try {
                        fileChannel = new RandomAccessFile(file, net.lingala.zip4j.util.e.f73015e0).getChannel();
                    } catch (Exception e5) {
                        try {
                            com.uc.crashsdk.a.g.a(e5);
                            fileChannel = null;
                        } catch (Exception e6) {
                            e = e6;
                            com.uc.crashsdk.a.g.a(e);
                            com.uc.crashsdk.a.g.a(fileChannel2);
                            z3 = z4;
                            return z3;
                        }
                    }
                    if (fileChannel != null) {
                        try {
                            try {
                                lock = fileChannel.lock();
                            } catch (Exception e7) {
                                try {
                                    com.uc.crashsdk.a.g.a(e7);
                                } catch (Exception e8) {
                                    e = e8;
                                    fileChannel2 = fileChannel;
                                    com.uc.crashsdk.a.g.a(e);
                                    com.uc.crashsdk.a.g.a(fileChannel2);
                                    z3 = z4;
                                    return z3;
                                }
                            }
                        } catch (Throwable th) {
                            fileChannel2 = fileChannel;
                            th = th;
                            com.uc.crashsdk.a.g.a(fileChannel2);
                            throw th;
                        }
                    }
                    try {
                        z4 = eVar.a();
                        com.uc.crashsdk.a.g.a(fileChannel);
                        z3 = z4;
                    } finally {
                        if (lock != null) {
                            try {
                                lock.release();
                            } catch (Exception e9) {
                                com.uc.crashsdk.a.g.a(e9);
                            }
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    com.uc.crashsdk.a.g.a(fileChannel2);
                    throw th;
                }
            }
            return z3;
        }
    }
}
