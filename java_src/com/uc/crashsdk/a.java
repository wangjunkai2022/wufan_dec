package com.uc.crashsdk;

import android.content.pm.PackageInfo;
import android.util.SparseArray;
import com.uc.crashsdk.export.LogType;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
/* compiled from: ProGuard */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static String f60146a = "";

    /* renamed from: b  reason: collision with root package name */
    public static String f60147b = "";

    /* renamed from: d  reason: collision with root package name */
    static final /* synthetic */ boolean f60149d = true;

    /* renamed from: e  reason: collision with root package name */
    private static final Map<String, String> f60150e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private static final List<String> f60151f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private static String f60152g = "";

    /* renamed from: h  reason: collision with root package name */
    private static String f60153h = null;

    /* renamed from: i  reason: collision with root package name */
    private static int f60154i = -1;

    /* renamed from: j  reason: collision with root package name */
    private static long f60155j = 0;

    /* renamed from: k  reason: collision with root package name */
    private static final HashMap<String, Object[]> f60156k = new HashMap<>();

    /* renamed from: l  reason: collision with root package name */
    private static final List<String> f60157l = new ArrayList();

    /* renamed from: m  reason: collision with root package name */
    private static int f60158m = 0;

    /* renamed from: n  reason: collision with root package name */
    private static int f60159n = 0;

    /* renamed from: o  reason: collision with root package name */
    private static int f60160o = 0;

    /* renamed from: p  reason: collision with root package name */
    private static int f60161p = 0;

    /* renamed from: q  reason: collision with root package name */
    private static final HashMap<String, Object[]> f60162q = new HashMap<>();

    /* renamed from: r  reason: collision with root package name */
    private static final List<String> f60163r = new ArrayList();

    /* renamed from: s  reason: collision with root package name */
    private static int f60164s = 0;

    /* renamed from: t  reason: collision with root package name */
    private static int f60165t = 0;

    /* renamed from: u  reason: collision with root package name */
    private static int f60166u = 0;

    /* renamed from: v  reason: collision with root package name */
    private static int f60167v = 0;

    /* renamed from: w  reason: collision with root package name */
    private static int f60168w = 0;

    /* renamed from: x  reason: collision with root package name */
    private static int f60169x = 0;

    /* renamed from: y  reason: collision with root package name */
    private static final SparseArray<Object[]> f60170y = new SparseArray<>();

    /* renamed from: z  reason: collision with root package name */
    private static final List<Integer> f60171z = new ArrayList();
    private static final HashMap<String, Object[]> A = new HashMap<>();
    private static final List<String> B = new ArrayList();
    private static int C = 0;
    private static int D = 0;
    private static int E = 0;

    /* renamed from: c  reason: collision with root package name */
    static boolean f60148c = false;
    private static Runnable F = new com.uc.crashsdk.a.e(201);
    private static boolean G = false;
    private static boolean H = false;
    private static boolean I = false;

    public static String a() {
        String str = f60153h;
        return str != null ? str : o() ? f60153h : "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long b() {
        return f60155j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c() {
        if (f60154i == -1) {
            o();
        }
        return f60154i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d() {
        StringBuilder sb = new StringBuilder();
        synchronized (f60150e) {
            for (String str : f60151f) {
                String str2 = f60150e.get(str);
                sb.append(str);
                sb.append(": ");
                if (str2 != null) {
                    sb.append(str2);
                }
                sb.append("\n");
            }
        }
        sb.append(String.format(Locale.US, "(saved at %s)\n", e.m()));
        com.uc.crashsdk.a.b.a(b.e(), sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e() {
        if (!f60149d && !b.f60229d) {
            throw new AssertionError();
        }
        synchronized (f60150e) {
            for (String str : f60151f) {
                JNIBridge.nativeAddHeaderInfo(str, f60150e.get(str));
            }
        }
    }

    public static byte[] f() {
        return new byte[]{BinaryMemcacheOpcodes.FLUSHQ, 99, 121, 60};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g() {
        if (!f60149d && !b.f60229d) {
            throw new AssertionError();
        }
        synchronized (f60156k) {
            for (String str : f60157l) {
                Object[] objArr = f60156k.get(str);
                int intValue = ((Integer) objArr[0]).intValue();
                if ((1048833 & intValue) != 0) {
                    JNIBridge.nativeAddDumpFile(str, (String) objArr[1], ((Boolean) objArr[2]).booleanValue(), ((Boolean) objArr[3]).booleanValue(), intValue, ((Boolean) objArr[4]).booleanValue());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String h() {
        StringBuilder sb = new StringBuilder();
        synchronized (f60156k) {
            boolean z3 = true;
            for (String str : f60157l) {
                if (LogType.isForJava(((Integer) f60156k.get(str)[0]).intValue())) {
                    if (!z3) {
                        sb.append("`");
                    }
                    sb.append(str);
                    z3 = false;
                }
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void i() {
        if (!f60149d && !b.f60229d) {
            throw new AssertionError();
        }
        synchronized (f60162q) {
            for (String str : f60163r) {
                Object[] objArr = f60162q.get(str);
                int intValue = ((Integer) objArr[0]).intValue();
                if ((1048833 & intValue) != 0) {
                    JNIBridge.nativeAddCallbackInfo(str, intValue, ((Long) objArr[2]).longValue(), ((Integer) objArr[3]).intValue());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String j() {
        String sb;
        synchronized (f60162q) {
            StringBuilder sb2 = new StringBuilder();
            List<String> list = f60163r;
            synchronized (list) {
                boolean z3 = true;
                for (String str : list) {
                    if (LogType.isForJava(((Integer) f60162q.get(str)[0]).intValue())) {
                        if (!z3) {
                            sb2.append("`");
                        }
                        sb2.append(str);
                        z3 = false;
                    }
                }
            }
            sb = sb2.toString();
        }
        return sb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void k() {
        if (!f60149d && !b.f60229d) {
            throw new AssertionError();
        }
        synchronized (A) {
            for (String str : B) {
                Object[] objArr = A.get(str);
                int intValue = ((Integer) objArr[0]).intValue();
                int intValue2 = ((Integer) objArr[1]).intValue();
                List list = (List) objArr[2];
                if ((1048577 & intValue2) != 0 && JNIBridge.nativeCreateCachedInfo(str, intValue, intValue2) != 0) {
                    Iterator it2 = list.iterator();
                    while (it2.hasNext() && JNIBridge.nativeAddCachedInfo(str, (String) it2.next())) {
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String l() {
        StringBuilder sb = new StringBuilder();
        synchronized (A) {
            boolean z3 = true;
            for (String str : B) {
                if (LogType.isForJava(((Integer) A.get(str)[1]).intValue())) {
                    if (!z3) {
                        sb.append("`");
                    }
                    sb.append(str);
                    z3 = false;
                }
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String m() {
        if (!G) {
            String a4 = com.uc.crashsdk.a.b.a(b.j());
            f60152g = a4;
            G = true;
            if (a4 == null) {
                f60152g = "";
            }
        }
        return f60152g;
    }

    public static void n() {
        p();
        if (H) {
            if (b.f60229d) {
                JNIBridge.set(128, f60152g);
                return;
            }
            return;
        }
        H = true;
        com.uc.crashsdk.a.f.a(0, new com.uc.crashsdk.a.e(202));
    }

    private static boolean o() {
        try {
            PackageInfo packageInfo = com.uc.crashsdk.a.g.a().getPackageManager().getPackageInfo(f60146a, 0);
            f60153h = packageInfo.versionName;
            f60155j = packageInfo.lastUpdateTime;
            f60154i = packageInfo.versionCode;
            return true;
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.b(th);
            return false;
        }
    }

    private static void p() {
        if (!I && e.a()) {
            if (b.f60229d || !b.f60232g) {
                String format = String.format(Locale.US, "%s/%s/%s", g.R(), g.S(), g.T());
                com.uc.crashsdk.a.a.b("crashsdk", "UUID: " + e.p());
                com.uc.crashsdk.a.a.b("crashsdk", "Version: " + format);
                com.uc.crashsdk.a.a.b("crashsdk", "Process Name: " + e.h());
                I = true;
            }
        }
    }

    private static StringBuilder b(String str, boolean z3) {
        String a4;
        StringBuilder sb = new StringBuilder();
        try {
            Object[] objArr = f60162q.get(str);
            if (objArr == null) {
                a4 = "Unknown callback: " + str;
            } else {
                Callable callable = (Callable) objArr[1];
                if (callable != null) {
                    a4 = (String) callable.call();
                } else {
                    a4 = d.a(str, z3);
                }
            }
            if (a4 != null) {
                sb.append(a4);
            }
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
        try {
            if (sb.length() == 0) {
                sb.append("(data is null)\n");
            }
        } catch (Throwable th2) {
            com.uc.crashsdk.a.g.a(th2);
        }
        return sb;
    }

    public static void a(String str, String str2) {
        Map<String, String> map = f60150e;
        synchronized (map) {
            if (!map.containsKey(str)) {
                f60151f.add(str);
            }
            map.put(str, str2);
            if (b.f60229d) {
                JNIBridge.nativeAddHeaderInfo(str, str2);
            }
            e.x();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ArrayList<String> c(String str) {
        if (com.uc.crashsdk.a.g.a(str)) {
            return null;
        }
        String[] split = str.split(";", 20);
        ArrayList<String> arrayList = new ArrayList<>();
        for (String str2 : split) {
            if (!com.uc.crashsdk.a.g.a(str2)) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(OutputStream outputStream, String str) {
        synchronized (f60150e) {
            for (String str2 : f60151f) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(str2);
                sb.append(": ");
                String str3 = f60150e.get(str2);
                if (str3 != null) {
                    sb.append(str3);
                }
                sb.append("\n");
                outputStream.write(sb.toString().getBytes(str));
            }
        }
    }

    public static int b(String str, String str2) {
        int i2;
        if (str == null || str2 == null) {
            return 0;
        }
        if (str2.length() > 2048) {
            str2 = str2.substring(0, 2048);
        }
        HashMap<String, Object[]> hashMap = A;
        synchronized (hashMap) {
            Object[] objArr = hashMap.get(str);
            if (objArr != null) {
                int intValue = ((Integer) objArr[0]).intValue();
                int intValue2 = ((Integer) objArr[1]).intValue();
                List list = (List) objArr[2];
                if (list.size() >= intValue) {
                    list.remove(0);
                }
                list.add(str2);
                r0 = LogType.isForJava(intValue2) ? LogType.addType(0, 16) : 0;
                if (!b.f60229d) {
                    if (LogType.isForNative(intValue2)) {
                        r0 = LogType.addType(r0, 1);
                    }
                    if (LogType.isForANR(intValue2)) {
                        r0 = LogType.addType(r0, 1048576);
                    }
                }
                i2 = r0;
                r0 = intValue2;
            } else {
                i2 = 0;
            }
            if (b.f60229d && JNIBridge.nativeAddCachedInfo(str, str2)) {
                if (LogType.isForNative(r0)) {
                    i2 = LogType.addType(i2, 1);
                }
                if (LogType.isForANR(r0)) {
                    i2 = LogType.addType(i2, 1048576);
                }
            }
        }
        return i2;
    }

    public static int a(String str, String str2, boolean z3, boolean z4, int i2, boolean z5) {
        int i4;
        int i5;
        boolean z6;
        if (str == null || str2 == null) {
            return 0;
        }
        if (str.length() > 256) {
            com.uc.crashsdk.a.a.a("crashsdk", "addDumpFile: description is too long!", null);
            return 0;
        }
        HashMap<String, Object[]> hashMap = f60156k;
        synchronized (hashMap) {
            if (hashMap.containsKey(str)) {
                i5 = ((Integer) hashMap.get(str)[0]).intValue();
                i4 = LogType.addType(i5, i2);
            } else {
                i4 = i2;
                i5 = 0;
            }
            if (LogType.isForJava(i4) && !LogType.isForJava(i5)) {
                int i6 = f60158m;
                if (i6 >= 10) {
                    i4 = LogType.removeType(i4, 16);
                } else {
                    f60158m = i6 + 1;
                }
            }
            if (LogType.isForNative(i4) && !LogType.isForNative(i5)) {
                int i7 = f60159n;
                if (i7 >= 10) {
                    i4 = LogType.removeType(i4, 1);
                } else {
                    f60159n = i7 + 1;
                }
            }
            if (LogType.isForUnexp(i4) && !LogType.isForUnexp(i5)) {
                int i8 = f60160o;
                if (i8 >= 10) {
                    i4 = LogType.removeType(i4, 256);
                } else {
                    f60160o = i8 + 1;
                }
            }
            if (LogType.isForANR(i4) && !LogType.isForANR(i5)) {
                int i9 = f60161p;
                if (i9 >= 10) {
                    i4 = LogType.removeType(i4, 1048576);
                } else {
                    f60161p = i9 + 1;
                }
            }
            if ((1048849 & i4) == 0) {
                z6 = false;
            } else {
                if (i5 == 0) {
                    f60157l.add(str);
                }
                z6 = true;
            }
            if (z6) {
                if (b.f60229d && (1048833 & i2) != 0) {
                    int nativeAddDumpFile = JNIBridge.nativeAddDumpFile(str, str2, z3, z4, i2, z5);
                    if (!LogType.isForNative(nativeAddDumpFile)) {
                        i4 = LogType.removeType(i4, 1);
                    }
                    if (!LogType.isForUnexp(nativeAddDumpFile)) {
                        i4 = LogType.removeType(i4, 256);
                    }
                    if (!LogType.isForANR(nativeAddDumpFile)) {
                        i4 = LogType.removeType(i4, 1048576);
                    }
                }
                hashMap.put(str, new Object[]{Integer.valueOf(i4), str2, Boolean.valueOf(z3), Boolean.valueOf(z4), Boolean.valueOf(z5)});
                return i4;
            }
            return i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0076 A[Catch: all -> 0x008d, LOOP:1: B:19:0x0070->B:21:0x0076, LOOP_END, TRY_LEAVE, TryCatch #2 {, blocks: (B:4:0x0003, B:5:0x0009, B:7:0x000f, B:9:0x0036, B:12:0x003d, B:30:0x00ab, B:32:0x00b1, B:33:0x00b5, B:35:0x00bb, B:37:0x00c9, B:38:0x00cf, B:25:0x0091, B:14:0x0043, B:18:0x006c, B:19:0x0070, B:21:0x0076), top: B:45:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(java.io.OutputStream r11, java.lang.String r12, java.lang.String r13, java.util.ArrayList<java.lang.String> r14) {
        /*
            java.util.HashMap<java.lang.String, java.lang.Object[]> r0 = com.uc.crashsdk.a.A
            monitor-enter(r0)
            java.util.List<java.lang.String> r1 = com.uc.crashsdk.a.B     // Catch: java.lang.Throwable -> Ld1
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> Ld1
        L9:
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> Ld1
            if (r2 == 0) goto La9
            java.lang.Object r2 = r1.next()     // Catch: java.lang.Throwable -> Ld1
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> Ld1
            java.util.HashMap<java.lang.String, java.lang.Object[]> r3 = com.uc.crashsdk.a.A     // Catch: java.lang.Throwable -> Ld1
            java.lang.Object r3 = r3.get(r2)     // Catch: java.lang.Throwable -> Ld1
            java.lang.Object[] r3 = (java.lang.Object[]) r3     // Catch: java.lang.Throwable -> Ld1
            r4 = 0
            r5 = r3[r4]     // Catch: java.lang.Throwable -> Ld1
            java.lang.Integer r5 = (java.lang.Integer) r5     // Catch: java.lang.Throwable -> Ld1
            int r5 = r5.intValue()     // Catch: java.lang.Throwable -> Ld1
            r6 = 1
            r7 = r3[r6]     // Catch: java.lang.Throwable -> Ld1
            java.lang.Integer r7 = (java.lang.Integer) r7     // Catch: java.lang.Throwable -> Ld1
            int r7 = r7.intValue()     // Catch: java.lang.Throwable -> Ld1
            r8 = 2
            r3 = r3[r8]     // Catch: java.lang.Throwable -> Ld1
            java.util.List r3 = (java.util.List) r3     // Catch: java.lang.Throwable -> Ld1
            if (r14 != 0) goto L3d
            boolean r7 = com.uc.crashsdk.export.LogType.isForJava(r7)     // Catch: java.lang.Throwable -> Ld1
            if (r7 != 0) goto L43
            goto L9
        L3d:
            boolean r7 = a(r14, r2)     // Catch: java.lang.Throwable -> Ld1
            if (r7 == 0) goto L9
        L43:
            java.util.Locale r7 = java.util.Locale.US     // Catch: java.lang.Throwable -> L68
            java.lang.String r9 = "%s (%d/%d)\n"
            r10 = 3
            java.lang.Object[] r10 = new java.lang.Object[r10]     // Catch: java.lang.Throwable -> L68
            r10[r4] = r2     // Catch: java.lang.Throwable -> L68
            int r2 = r3.size()     // Catch: java.lang.Throwable -> L68
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> L68
            r10[r6] = r2     // Catch: java.lang.Throwable -> L68
            java.lang.Integer r2 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L68
            r10[r8] = r2     // Catch: java.lang.Throwable -> L68
            java.lang.String r2 = java.lang.String.format(r7, r9, r10)     // Catch: java.lang.Throwable -> L68
            byte[] r2 = r2.getBytes(r12)     // Catch: java.lang.Throwable -> L68
            r11.write(r2)     // Catch: java.lang.Throwable -> L68
            goto L6c
        L68:
            r2 = move-exception
            com.uc.crashsdk.e.a(r2, r11)     // Catch: java.lang.Throwable -> Ld1
        L6c:
            java.util.Iterator r2 = r3.iterator()     // Catch: java.lang.Throwable -> L8d
        L70:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> L8d
            if (r3 == 0) goto L91
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Throwable -> L8d
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Throwable -> L8d
            byte[] r3 = r3.getBytes(r12)     // Catch: java.lang.Throwable -> L8d
            r11.write(r3)     // Catch: java.lang.Throwable -> L8d
            java.lang.String r3 = "\n"
            byte[] r3 = r3.getBytes(r12)     // Catch: java.lang.Throwable -> L8d
            r11.write(r3)     // Catch: java.lang.Throwable -> L8d
            goto L70
        L8d:
            r2 = move-exception
            com.uc.crashsdk.e.a(r2, r11)     // Catch: java.lang.Throwable -> Ld1
        L91:
            java.lang.String r2 = "\n"
            byte[] r2 = r2.getBytes(r12)     // Catch: java.lang.Throwable -> La3
            r11.write(r2)     // Catch: java.lang.Throwable -> La3
            byte[] r2 = r13.getBytes(r12)     // Catch: java.lang.Throwable -> La3
            r11.write(r2)     // Catch: java.lang.Throwable -> La3
            goto L9
        La3:
            r2 = move-exception
            com.uc.crashsdk.e.a(r2, r11)     // Catch: java.lang.Throwable -> Ld1
            goto L9
        La9:
            if (r14 == 0) goto Lcf
            boolean r12 = com.uc.crashsdk.e.E()     // Catch: java.lang.Throwable -> Ld1
            if (r12 == 0) goto Lcf
            java.util.Iterator r12 = r14.iterator()     // Catch: java.lang.Throwable -> Ld1
        Lb5:
            boolean r13 = r12.hasNext()     // Catch: java.lang.Throwable -> Ld1
            if (r13 == 0) goto Lcf
            java.lang.Object r13 = r12.next()     // Catch: java.lang.Throwable -> Ld1
            java.lang.String r13 = (java.lang.String) r13     // Catch: java.lang.Throwable -> Ld1
            java.util.List<java.lang.String> r14 = com.uc.crashsdk.a.B     // Catch: java.lang.Throwable -> Ld1
            boolean r14 = a(r14, r13)     // Catch: java.lang.Throwable -> Ld1
            if (r14 != 0) goto Lb5
            java.lang.String r14 = "CUSTOMCACHEDINFO"
            com.uc.crashsdk.e.a(r11, r14, r13)     // Catch: java.lang.Throwable -> Ld1
            goto Lb5
        Lcf:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Ld1
            return
        Ld1:
            r11 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Ld1
            goto Ld5
        Ld4:
            throw r11
        Ld5:
            goto Ld4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.a.b(java.io.OutputStream, java.lang.String, java.lang.String, java.util.ArrayList):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0050 A[Catch: all -> 0x00d7, TRY_LEAVE, TryCatch #2 {all -> 0x00d7, blocks: (B:12:0x0025, B:14:0x002f, B:20:0x0045, B:22:0x0050, B:17:0x003e), top: B:75:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b0 A[Catch: all -> 0x00d3, TryCatch #0 {all -> 0x00d3, blocks: (B:34:0x007f, B:36:0x009b, B:38:0x00a3, B:40:0x00b0, B:41:0x00b5), top: B:71:0x007f }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b5 A[Catch: all -> 0x00d3, TRY_LEAVE, TryCatch #0 {all -> 0x00d3, blocks: (B:34:0x007f, B:36:0x009b, B:38:0x00a3, B:40:0x00b0, B:41:0x00b5), top: B:71:0x007f }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00ce A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0019 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(java.io.OutputStream r18, java.lang.String r19, java.util.ArrayList<java.lang.String> r20) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.a.a(java.io.OutputStream, java.lang.String, java.util.ArrayList):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(String str) {
        StringBuilder sb = new StringBuilder();
        HashMap<String, Object[]> hashMap = A;
        synchronized (hashMap) {
            Object[] objArr = hashMap.get(str);
            int intValue = ((Integer) objArr[0]).intValue();
            List<String> list = (List) objArr[2];
            sb.append(String.format(Locale.US, "%s (%d/%d)\n", str, Integer.valueOf(list.size()), Integer.valueOf(intValue)));
            for (String str2 : list) {
                sb.append(str2);
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        HashMap<String, Object[]> hashMap = f60156k;
        synchronized (hashMap) {
            Object[] objArr = hashMap.get(str);
            if (objArr == null) {
                return null;
            }
            int i2 = 1;
            boolean booleanValue = ((Boolean) objArr[2]).booleanValue();
            boolean booleanValue2 = ((Boolean) objArr[3]).booleanValue();
            Locale locale = Locale.US;
            Object[] objArr2 = new Object[4];
            objArr2[0] = (String) objArr[1];
            objArr2[1] = "`";
            objArr2[2] = Integer.valueOf(booleanValue ? 1 : 0);
            if (!booleanValue2) {
                i2 = 0;
            }
            objArr2[3] = Integer.valueOf(i2);
            return String.format(locale, "%s%s%d%d", objArr2);
        }
    }

    private static boolean a(List<String> list, String str) {
        if (com.uc.crashsdk.a.g.a(str)) {
            return false;
        }
        for (String str2 : list) {
            if (str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x005d A[Catch: all -> 0x015a, TryCatch #0 {, blocks: (B:7:0x000d, B:9:0x0013, B:11:0x0027, B:14:0x002b, B:16:0x0035, B:18:0x003b, B:32:0x005d, B:23:0x0047, B:26:0x004c, B:30:0x0057, B:27:0x0050, B:33:0x0063, B:35:0x006a, B:37:0x0070, B:52:0x009a, B:54:0x00a1, B:56:0x00a9, B:58:0x00af, B:60:0x00b3, B:61:0x00b8, B:63:0x00be, B:65:0x00c6, B:67:0x00cc, B:69:0x00d0, B:70:0x00d5, B:72:0x00db, B:79:0x00ed, B:81:0x00ef, B:83:0x00f3, B:85:0x00f9, B:87:0x0105, B:89:0x010b, B:91:0x0112, B:92:0x0117, B:94:0x011d, B:96:0x0123, B:97:0x0128, B:99:0x012e, B:101:0x0134, B:103:0x013c, B:104:0x0158, B:76:0x00e5, B:43:0x007c, B:46:0x0081, B:47:0x008b, B:50:0x0092), top: B:111:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x009a A[Catch: all -> 0x015a, TryCatch #0 {, blocks: (B:7:0x000d, B:9:0x0013, B:11:0x0027, B:14:0x002b, B:16:0x0035, B:18:0x003b, B:32:0x005d, B:23:0x0047, B:26:0x004c, B:30:0x0057, B:27:0x0050, B:33:0x0063, B:35:0x006a, B:37:0x0070, B:52:0x009a, B:54:0x00a1, B:56:0x00a9, B:58:0x00af, B:60:0x00b3, B:61:0x00b8, B:63:0x00be, B:65:0x00c6, B:67:0x00cc, B:69:0x00d0, B:70:0x00d5, B:72:0x00db, B:79:0x00ed, B:81:0x00ef, B:83:0x00f3, B:85:0x00f9, B:87:0x0105, B:89:0x010b, B:91:0x0112, B:92:0x0117, B:94:0x011d, B:96:0x0123, B:97:0x0128, B:99:0x012e, B:101:0x0134, B:103:0x013c, B:104:0x0158, B:76:0x00e5, B:43:0x007c, B:46:0x0081, B:47:0x008b, B:50:0x0092), top: B:111:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00d0 A[Catch: all -> 0x015a, TryCatch #0 {, blocks: (B:7:0x000d, B:9:0x0013, B:11:0x0027, B:14:0x002b, B:16:0x0035, B:18:0x003b, B:32:0x005d, B:23:0x0047, B:26:0x004c, B:30:0x0057, B:27:0x0050, B:33:0x0063, B:35:0x006a, B:37:0x0070, B:52:0x009a, B:54:0x00a1, B:56:0x00a9, B:58:0x00af, B:60:0x00b3, B:61:0x00b8, B:63:0x00be, B:65:0x00c6, B:67:0x00cc, B:69:0x00d0, B:70:0x00d5, B:72:0x00db, B:79:0x00ed, B:81:0x00ef, B:83:0x00f3, B:85:0x00f9, B:87:0x0105, B:89:0x010b, B:91:0x0112, B:92:0x0117, B:94:0x011d, B:96:0x0123, B:97:0x0128, B:99:0x012e, B:101:0x0134, B:103:0x013c, B:104:0x0158, B:76:0x00e5, B:43:0x007c, B:46:0x0081, B:47:0x008b, B:50:0x0092), top: B:111:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00d5 A[Catch: all -> 0x015a, TryCatch #0 {, blocks: (B:7:0x000d, B:9:0x0013, B:11:0x0027, B:14:0x002b, B:16:0x0035, B:18:0x003b, B:32:0x005d, B:23:0x0047, B:26:0x004c, B:30:0x0057, B:27:0x0050, B:33:0x0063, B:35:0x006a, B:37:0x0070, B:52:0x009a, B:54:0x00a1, B:56:0x00a9, B:58:0x00af, B:60:0x00b3, B:61:0x00b8, B:63:0x00be, B:65:0x00c6, B:67:0x00cc, B:69:0x00d0, B:70:0x00d5, B:72:0x00db, B:79:0x00ed, B:81:0x00ef, B:83:0x00f3, B:85:0x00f9, B:87:0x0105, B:89:0x010b, B:91:0x0112, B:92:0x0117, B:94:0x011d, B:96:0x0123, B:97:0x0128, B:99:0x012e, B:101:0x0134, B:103:0x013c, B:104:0x0158, B:76:0x00e5, B:43:0x007c, B:46:0x0081, B:47:0x008b, B:50:0x0092), top: B:111:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00ed A[Catch: all -> 0x015a, DONT_GENERATE, TryCatch #0 {, blocks: (B:7:0x000d, B:9:0x0013, B:11:0x0027, B:14:0x002b, B:16:0x0035, B:18:0x003b, B:32:0x005d, B:23:0x0047, B:26:0x004c, B:30:0x0057, B:27:0x0050, B:33:0x0063, B:35:0x006a, B:37:0x0070, B:52:0x009a, B:54:0x00a1, B:56:0x00a9, B:58:0x00af, B:60:0x00b3, B:61:0x00b8, B:63:0x00be, B:65:0x00c6, B:67:0x00cc, B:69:0x00d0, B:70:0x00d5, B:72:0x00db, B:79:0x00ed, B:81:0x00ef, B:83:0x00f3, B:85:0x00f9, B:87:0x0105, B:89:0x010b, B:91:0x0112, B:92:0x0117, B:94:0x011d, B:96:0x0123, B:97:0x0128, B:99:0x012e, B:101:0x0134, B:103:0x013c, B:104:0x0158, B:76:0x00e5, B:43:0x007c, B:46:0x0081, B:47:0x008b, B:50:0x0092), top: B:111:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00ef A[Catch: all -> 0x015a, TryCatch #0 {, blocks: (B:7:0x000d, B:9:0x0013, B:11:0x0027, B:14:0x002b, B:16:0x0035, B:18:0x003b, B:32:0x005d, B:23:0x0047, B:26:0x004c, B:30:0x0057, B:27:0x0050, B:33:0x0063, B:35:0x006a, B:37:0x0070, B:52:0x009a, B:54:0x00a1, B:56:0x00a9, B:58:0x00af, B:60:0x00b3, B:61:0x00b8, B:63:0x00be, B:65:0x00c6, B:67:0x00cc, B:69:0x00d0, B:70:0x00d5, B:72:0x00db, B:79:0x00ed, B:81:0x00ef, B:83:0x00f3, B:85:0x00f9, B:87:0x0105, B:89:0x010b, B:91:0x0112, B:92:0x0117, B:94:0x011d, B:96:0x0123, B:97:0x0128, B:99:0x012e, B:101:0x0134, B:103:0x013c, B:104:0x0158, B:76:0x00e5, B:43:0x007c, B:46:0x0081, B:47:0x008b, B:50:0x0092), top: B:111:0x000d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(java.lang.String r16, int r17, java.util.concurrent.Callable<java.lang.String> r18, long r19, int r21) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.a.a(java.lang.String, int, java.util.concurrent.Callable, long, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005d A[Catch: all -> 0x008d, TryCatch #2 {, blocks: (B:4:0x0003, B:5:0x0009, B:7:0x000f, B:33:0x00ab, B:35:0x00b1, B:36:0x00b5, B:38:0x00bb, B:40:0x00c9, B:41:0x00cf, B:28:0x0091, B:8:0x0015, B:10:0x0028, B:16:0x0036, B:18:0x005d, B:21:0x0075, B:23:0x007b, B:24:0x0083, B:19:0x006b, B:13:0x002f), top: B:48:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006b A[Catch: all -> 0x008d, TryCatch #2 {, blocks: (B:4:0x0003, B:5:0x0009, B:7:0x000f, B:33:0x00ab, B:35:0x00b1, B:36:0x00b5, B:38:0x00bb, B:40:0x00c9, B:41:0x00cf, B:28:0x0091, B:8:0x0015, B:10:0x0028, B:16:0x0036, B:18:0x005d, B:21:0x0075, B:23:0x007b, B:24:0x0083, B:19:0x006b, B:13:0x002f), top: B:48:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(java.io.OutputStream r10, java.lang.String r11, java.lang.String r12, java.util.ArrayList<java.lang.String> r13) {
        /*
            java.util.HashMap<java.lang.String, java.lang.Object[]> r0 = com.uc.crashsdk.a.f60162q
            monitor-enter(r0)
            java.util.List<java.lang.String> r1 = com.uc.crashsdk.a.f60163r     // Catch: java.lang.Throwable -> Ld1
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> Ld1
        L9:
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> Ld1
            if (r2 == 0) goto La9
            java.lang.Object r2 = r1.next()     // Catch: java.lang.Throwable -> Ld1
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> Ld1
            java.util.HashMap<java.lang.String, java.lang.Object[]> r3 = com.uc.crashsdk.a.f60162q     // Catch: java.lang.Throwable -> L8d
            java.lang.Object r3 = r3.get(r2)     // Catch: java.lang.Throwable -> L8d
            java.lang.Object[] r3 = (java.lang.Object[]) r3     // Catch: java.lang.Throwable -> L8d
            r4 = 0
            r5 = r3[r4]     // Catch: java.lang.Throwable -> L8d
            java.lang.Integer r5 = (java.lang.Integer) r5     // Catch: java.lang.Throwable -> L8d
            int r5 = r5.intValue()     // Catch: java.lang.Throwable -> L8d
            if (r13 != 0) goto L2f
            boolean r5 = com.uc.crashsdk.export.LogType.isForJava(r5)     // Catch: java.lang.Throwable -> L8d
            if (r5 != 0) goto L36
            goto L9
        L2f:
            boolean r5 = a(r13, r2)     // Catch: java.lang.Throwable -> L8d
            if (r5 != 0) goto L36
            goto L9
        L36:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8d
            r5.<init>()     // Catch: java.lang.Throwable -> L8d
            r5.append(r2)     // Catch: java.lang.Throwable -> L8d
            java.lang.String r6 = "\n"
            r5.append(r6)     // Catch: java.lang.Throwable -> L8d
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L8d
            byte[] r5 = r5.getBytes(r11)     // Catch: java.lang.Throwable -> L8d
            r10.write(r5)     // Catch: java.lang.Throwable -> L8d
            r5 = 2
            r5 = r3[r5]     // Catch: java.lang.Throwable -> L8d
            java.lang.Long r5 = (java.lang.Long) r5     // Catch: java.lang.Throwable -> L8d
            long r5 = r5.longValue()     // Catch: java.lang.Throwable -> L8d
            r7 = 0
            int r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r9 == 0) goto L6b
            r7 = 3
            r3 = r3[r7]     // Catch: java.lang.Throwable -> L8d
            java.lang.Integer r3 = (java.lang.Integer) r3     // Catch: java.lang.Throwable -> L8d
            int r3 = r3.intValue()     // Catch: java.lang.Throwable -> L8d
            java.lang.String r2 = com.uc.crashsdk.JNIBridge.nativeGetCallbackInfo(r2, r5, r3, r4)     // Catch: java.lang.Throwable -> L8d
            goto L73
        L6b:
            java.lang.StringBuilder r2 = b(r2, r4)     // Catch: java.lang.Throwable -> L8d
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L8d
        L73:
            if (r2 == 0) goto L83
            int r3 = r2.length()     // Catch: java.lang.Throwable -> L8d
            if (r3 <= 0) goto L83
            byte[] r2 = r2.getBytes(r11)     // Catch: java.lang.Throwable -> L8d
            r10.write(r2)     // Catch: java.lang.Throwable -> L8d
            goto L91
        L83:
            java.lang.String r2 = "(data is null)\n"
            byte[] r2 = r2.getBytes(r11)     // Catch: java.lang.Throwable -> L8d
            r10.write(r2)     // Catch: java.lang.Throwable -> L8d
            goto L91
        L8d:
            r2 = move-exception
            com.uc.crashsdk.e.a(r2, r10)     // Catch: java.lang.Throwable -> Ld1
        L91:
            java.lang.String r2 = "\n"
            byte[] r2 = r2.getBytes(r11)     // Catch: java.lang.Throwable -> La3
            r10.write(r2)     // Catch: java.lang.Throwable -> La3
            byte[] r2 = r12.getBytes(r11)     // Catch: java.lang.Throwable -> La3
            r10.write(r2)     // Catch: java.lang.Throwable -> La3
            goto L9
        La3:
            r2 = move-exception
            com.uc.crashsdk.e.a(r2, r10)     // Catch: java.lang.Throwable -> Ld1
            goto L9
        La9:
            if (r13 == 0) goto Lcf
            boolean r11 = com.uc.crashsdk.e.E()     // Catch: java.lang.Throwable -> Ld1
            if (r11 == 0) goto Lcf
            java.util.Iterator r11 = r13.iterator()     // Catch: java.lang.Throwable -> Ld1
        Lb5:
            boolean r12 = r11.hasNext()     // Catch: java.lang.Throwable -> Ld1
            if (r12 == 0) goto Lcf
            java.lang.Object r12 = r11.next()     // Catch: java.lang.Throwable -> Ld1
            java.lang.String r12 = (java.lang.String) r12     // Catch: java.lang.Throwable -> Ld1
            java.util.List<java.lang.String> r13 = com.uc.crashsdk.a.f60163r     // Catch: java.lang.Throwable -> Ld1
            boolean r13 = a(r13, r12)     // Catch: java.lang.Throwable -> Ld1
            if (r13 != 0) goto Lb5
            java.lang.String r13 = "CUSTOMCALLBACKINFO"
            com.uc.crashsdk.e.a(r10, r13, r12)     // Catch: java.lang.Throwable -> Ld1
            goto Lb5
        Lcf:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Ld1
            return
        Ld1:
            r10 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Ld1
            goto Ld5
        Ld4:
            throw r10
        Ld5:
            goto Ld4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.a.a(java.io.OutputStream, java.lang.String, java.lang.String, java.util.ArrayList):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, boolean z3) {
        String sb;
        HashMap<String, Object[]> hashMap = f60162q;
        synchronized (hashMap) {
            Object[] objArr = hashMap.get(str);
            long longValue = ((Long) objArr[2]).longValue();
            if (longValue != 0) {
                sb = JNIBridge.nativeGetCallbackInfo(str, longValue, ((Integer) objArr[3]).intValue(), z3);
            } else {
                sb = b(str, z3).toString();
            }
        }
        return sb;
    }

    private static boolean a(String str, Thread thread) {
        if (thread == null) {
            return false;
        }
        SparseArray<Object[]> sparseArray = f60170y;
        synchronized (sparseArray) {
            int id = (int) thread.getId();
            if (sparseArray.get(id) == null) {
                f60171z.add(Integer.valueOf(id));
            }
            sparseArray.put(id, new Object[]{new WeakReference(thread), str});
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ca A[Catch: all -> 0x0100, TryCatch #4 {, blocks: (B:4:0x0003, B:5:0x000d, B:7:0x0013, B:25:0x0068, B:50:0x011c, B:34:0x00c3, B:36:0x00ca, B:37:0x00d3, B:39:0x00d8, B:41:0x00dc, B:42:0x00e5, B:46:0x0104, B:26:0x006b, B:30:0x0089), top: B:57:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d8 A[Catch: all -> 0x0100, TryCatch #4 {, blocks: (B:4:0x0003, B:5:0x000d, B:7:0x0013, B:25:0x0068, B:50:0x011c, B:34:0x00c3, B:36:0x00ca, B:37:0x00d3, B:39:0x00d8, B:41:0x00dc, B:42:0x00e5, B:46:0x0104, B:26:0x006b, B:30:0x0089), top: B:57:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(java.io.OutputStream r13, java.lang.String r14, java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.a.a(java.io.OutputStream, java.lang.String, java.lang.String):void");
    }

    public static int a(String str, int i2, int i4) {
        int i5;
        int i6;
        boolean z3;
        if (str == null || i2 <= 0) {
            return 0;
        }
        if (i2 > 1500) {
            com.uc.crashsdk.a.a.a("crashsdk", "createCachedInfo: capacity is too large!", null);
            return 0;
        }
        HashMap<String, Object[]> hashMap = A;
        synchronized (hashMap) {
            if (hashMap.containsKey(str)) {
                i6 = ((Integer) hashMap.get(str)[1]).intValue();
                i5 = LogType.addType(i6, i4);
            } else {
                i5 = i4;
                i6 = 0;
            }
            if (LogType.isForJava(i5) && !LogType.isForJava(i6)) {
                int i7 = C;
                if (i7 >= 8) {
                    i5 = LogType.removeType(i5, 16);
                } else {
                    C = i7 + 1;
                }
            }
            if (LogType.isForNative(i5) && !LogType.isForNative(i6)) {
                int i8 = D;
                if (i8 >= 8) {
                    i5 = LogType.removeType(i5, 1);
                } else {
                    D = i8 + 1;
                }
            }
            if (LogType.isForANR(i5) && !LogType.isForANR(i6)) {
                int i9 = E;
                if (i9 >= 8) {
                    i5 = LogType.removeType(i5, 1048576);
                } else {
                    E = i9 + 1;
                }
            }
            if ((1048849 & i5) == 0) {
                z3 = false;
            } else {
                if (i6 == 0) {
                    B.add(str);
                }
                z3 = true;
            }
            if (z3) {
                if (b.f60229d && (i4 & 1048577) != 0) {
                    int nativeCreateCachedInfo = JNIBridge.nativeCreateCachedInfo(str, i2, i5);
                    if (!LogType.isForNative(nativeCreateCachedInfo)) {
                        i5 = LogType.removeType(i5, 1);
                    }
                    if (!LogType.isForANR(nativeCreateCachedInfo)) {
                        i5 = LogType.removeType(i5, 1048576);
                    }
                }
                hashMap.put(str, new Object[]{Integer.valueOf(i2), Integer.valueOf(i5), new ArrayList()});
                return i5;
            }
            return i5;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int a(int i2, String str) {
        if (com.uc.crashsdk.a.g.a(str)) {
            str = Thread.currentThread().getName();
        }
        int i4 = 0;
        i4 = 0;
        if (LogType.isForNative(i2) || LogType.isForANR(i2)) {
            if (b.f60229d) {
                synchronized (f60170y) {
                    JNIBridge.nativeCmd(4, i2, str, null);
                }
                boolean isForNative = LogType.isForNative(i2);
                i4 = isForNative;
                if (LogType.isForANR(i2)) {
                    i4 = (isForNative ? 1 : 0) | 1048576;
                }
            } else {
                com.uc.crashsdk.a.a.a("crashsdk", "crashsdk so has not loaded!", null);
            }
        }
        if (LogType.isForJava(i2)) {
            a(str, Thread.currentThread());
            return i4 | 16;
        }
        return i4;
    }

    public static boolean a(boolean z3) {
        int E2;
        if (!b.f60228c) {
            com.uc.crashsdk.a.a.a("crashsdk", "Unexp log not enabled, skip update unexp info!");
            return false;
        } else if (e.E() || b.I()) {
            return false;
        } else {
            if (z3) {
                com.uc.crashsdk.a.f.a(F);
                E2 = 0;
            } else if (!b.y()) {
                com.uc.crashsdk.a.a.a("crashsdk", "Stop update unexp info in background!");
                return false;
            } else if (g.E() <= 0) {
                return false;
            } else {
                if (com.uc.crashsdk.a.f.b(F)) {
                    return true;
                }
                E2 = g.E() * 1000;
            }
            com.uc.crashsdk.a.f.a(0, F, E2);
            return true;
        }
    }

    public static void a(int i2) {
        if (i2 == 201) {
            com.uc.crashsdk.a.a.a("crashsdk", "Begin update info ...");
            long currentTimeMillis = System.currentTimeMillis();
            if (b.f60229d && f60148c) {
                JNIBridge.nativeCmd(11, g.E(), String.valueOf(g.F()), null);
            }
            com.uc.crashsdk.a.a.a("crashsdk", "Update info took " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
            a(false);
        } else if (i2 != 202) {
            if (!f60149d) {
                throw new AssertionError();
            }
        } else {
            p();
            Locale locale = Locale.US;
            String format = String.format(locale, "%s/%s/%s", g.R(), g.S(), g.T());
            f60152g = m();
            if (b.f60229d) {
                JNIBridge.set(128, f60152g);
            }
            boolean z3 = !format.equals(f60152g);
            if (z3) {
                com.uc.crashsdk.a.b.a(b.j(), format);
            }
            if (z3 && g.u()) {
                com.uc.crashsdk.a.a.a("crashsdk", String.format(locale, "Is new version ('%s' -> '%s'), deleting old stats data!", f60152g, format));
                b.s();
            }
        }
    }
}
