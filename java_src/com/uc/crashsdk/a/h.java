package com.uc.crashsdk.a;

import android.os.Build;
import android.os.Process;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseArray;
import com.google.android.material.timepicker.TimeModel;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.activity.ForumPostsTagSelectActivity_;
import com.tencent.stat.DeviceInfo;
import com.uc.crashsdk.JNIBridge;
import com.umeng.analytics.pro.ai;
import io.netty.handler.codec.rtsp.RtspHeaders;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import kotlin.jvm.internal.ByteCompanionObject;
/* compiled from: ProGuard */
/* loaded from: classes4.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f60208a = true;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f60209b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, String> f60210c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private static int f60211d = 0;

    /* renamed from: e  reason: collision with root package name */
    private static final Map<String, a> f60212e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private static final Object f60213f = new Object();

    /* renamed from: g  reason: collision with root package name */
    private static final Object f60214g = new Object();

    /* renamed from: h  reason: collision with root package name */
    private static final SparseArray<String> f60215h = new SparseArray<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f60216i = false;

    /* renamed from: j  reason: collision with root package name */
    private static boolean f60217j = false;

    /* renamed from: k  reason: collision with root package name */
    private static final Object f60218k = new Object();

    /* renamed from: l  reason: collision with root package name */
    private static String f60219l = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ProGuard */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        long f60220a = 0;

        /* renamed from: b  reason: collision with root package name */
        int f60221b = 0;

        /* renamed from: c  reason: collision with root package name */
        Map<String, String> f60222c = new HashMap();

        /* renamed from: d  reason: collision with root package name */
        private String f60223d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f60224e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f60225f;

        a(String str, boolean z3, boolean z4) {
            this.f60224e = false;
            this.f60225f = false;
            this.f60223d = str;
            this.f60224e = z3;
            this.f60225f = z4;
        }

        private long d(String str) {
            return g.c(a(str));
        }

        final void a(String str, String str2) {
            this.f60222c.put(str, str2);
        }

        final String b(String str) {
            String a4 = a(str);
            return a4 == null ? "" : a4;
        }

        final boolean c(String str) {
            if (g.a(str)) {
                return false;
            }
            String str2 = null;
            long j4 = 0;
            HashMap hashMap = new HashMap();
            Map c4 = h.c(str);
            int i2 = 0;
            for (String str3 : c4.keySet()) {
                String str4 = (String) c4.get(str3);
                if (str3.equals("lt")) {
                    str2 = str4;
                } else if (this.f60224e && str3.equals("up")) {
                    j4 = g.c(str4);
                } else if (this.f60224e && str3.equals(ForumPostsTagSelectActivity_.f30340y)) {
                    i2 = (int) g.c(str4);
                } else {
                    hashMap.put(str3, str4);
                }
            }
            String str5 = this.f60223d;
            if (str5 == null || str5.equals(str2)) {
                this.f60220a = j4;
                this.f60221b = i2;
                this.f60223d = str2;
                this.f60222c = hashMap;
                return true;
            }
            return false;
        }

        final void a(String str, long j4) {
            long d4 = d(str) + j4;
            if (d4 <= 100) {
                j4 = d4 < 0 ? 0L : d4;
            }
            a(str, String.valueOf(j4));
        }

        final boolean a(a aVar) {
            if (!this.f60225f) {
                com.uc.crashsdk.a.a.a("crashsdk", String.format(Locale.US, "WaItem '%s' is not mergable!", this.f60223d), null);
                return false;
            }
            for (String str : aVar.f60222c.keySet()) {
                if (str.startsWith("c_")) {
                    a(str, aVar.a(str));
                } else {
                    long d4 = aVar.d(str);
                    if (d4 == 0) {
                        a(str, aVar.a(str));
                    } else if (d4 < 100) {
                        a(str, d4);
                    }
                }
            }
            return true;
        }

        final String a(String str) {
            return this.f60222c.get(str);
        }

        final String a(boolean z3, boolean z4, boolean z5) {
            if (this.f60223d == null) {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            if (z3) {
                h.b(sb, "lt", "uc");
                h.b(sb, "pre", com.uc.crashsdk.g.e());
                h.b(sb, "pkg", com.uc.crashsdk.a.f60146a);
                h.b(sb, "rom", Build.VERSION.RELEASE);
                h.b(sb, "brd", Build.BRAND);
                h.b(sb, "model", Build.MODEL);
                h.a(sb, "sdk", Build.VERSION.SDK_INT);
                h.b(sb, ai.f60423w, com.uc.crashsdk.e.e());
                h.b(sb, "hdw", com.uc.crashsdk.e.f());
                long k4 = h.k();
                h.a(sb, "ram", k4);
                h.b(sb, "aram", h.a(k4));
                h.b(sb, "cver", "3.2.0.4");
                h.b(sb, "cseq", "210105150455");
                h.b(sb, "ctag", "release");
                h.b(sb, "aver", com.uc.crashsdk.a.a());
                h.b(sb, DeviceInfo.TAG_VERSION, com.uc.crashsdk.g.R());
                h.b(sb, "sver", com.uc.crashsdk.g.S());
                h.b(sb, RtspHeaders.Values.SEQ, com.uc.crashsdk.g.T());
                h.b(sb, "grd", com.uc.crashsdk.b.x() ? "fg" : "bg");
                h.b(sb, ai.f60424x, q.a.f73954a);
                sb.append("\n");
            }
            h.b(sb, "lt", this.f60223d);
            h.a(sb, this.f60222c);
            if (this.f60224e && !z4) {
                long j4 = this.f60220a;
                if (j4 != 0) {
                    h.b(sb, "up", String.valueOf(j4));
                }
                if (z5) {
                    h.b(sb, ForumPostsTagSelectActivity_.f30340y, String.format(Locale.US, TimeModel.f16204i, Integer.valueOf(Process.myPid())));
                } else {
                    int i2 = this.f60221b;
                    if (i2 != 0) {
                        h.b(sb, ForumPostsTagSelectActivity_.f30340y, String.format(Locale.US, TimeModel.f16204i, Integer.valueOf(i2)));
                    }
                }
            }
            sb.append("\n");
            return sb.toString();
        }
    }

    static /* synthetic */ String a(long j4) {
        return j4 < PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED ? "512M" : String.format(Locale.US, "%dG", Long.valueOf(((j4 / 1024) + 512) / 1024));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(SimpleComparison.EQUAL_TO_OPERATION);
        sb.append(str2);
        sb.append("`");
    }

    static /* synthetic */ Map c(String str) {
        String[] split;
        HashMap hashMap = new HashMap();
        for (String str2 : str.split("`")) {
            if (str2.length() > 1) {
                String[] split2 = str2.split(SimpleComparison.EQUAL_TO_OPERATION, 3);
                if (split2.length == 2) {
                    hashMap.put(split2[0], split2[1]);
                }
            }
        }
        return hashMap;
    }

    public static void d() {
        b(2, 2000L);
        a(1, 70000L);
    }

    public static boolean e() {
        return f60217j;
    }

    public static void f() {
        b(1, 2000L);
    }

    public static void g() {
        b(3, 0L);
    }

    public static void h() {
        b(4, 0L);
    }

    public static void i() {
        if (com.uc.crashsdk.g.O()) {
            f.a(1, new e(303));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] j() {
        return new byte[]{ByteCompanionObject.MAX_VALUE, 100, 110, 31};
    }

    static /* synthetic */ long k() {
        return n();
    }

    private static String l() {
        return com.uc.crashsdk.g.U() + "pv.wa";
    }

    private static String m() {
        return com.uc.crashsdk.g.U() + "cdt.wa";
    }

    private static long n() {
        Iterator<String> it2 = g.a(new File("/proc/meminfo"), 2).iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            String next = it2.next();
            if (next.contains("MemTotal:")) {
                try {
                    return Long.parseLong(next.replaceAll("\\D+", ""));
                } catch (NumberFormatException e4) {
                    g.a(e4);
                }
            }
        }
        return 0L;
    }

    private static String o() {
        if (g.a(f60219l)) {
            synchronized (f60218k) {
                f60219l = g.a(com.uc.crashsdk.b.h(), com.uc.crashsdk.g.P() ? "https://errlogos.umeng.com/api/crashsdk/logcollect" : "https://errlog.umeng.com/api/crashsdk/logcollect", true);
            }
        }
        return f60219l;
    }

    static /* synthetic */ void a(StringBuilder sb, String str, long j4) {
        b(sb, str, String.valueOf(j4));
    }

    public static void b() {
        a(2, 0L);
    }

    public static void c() {
        a(3, 0L);
    }

    private static void b(int i2, long j4) {
        if (com.uc.crashsdk.g.O()) {
            f.a(1, new e(301, new Object[]{Integer.valueOf(i2)}), j4);
        }
    }

    private static boolean d(String str) {
        File file = new File(str);
        Iterator<a> it2 = a(file, "cst", 30).iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            String a4 = next.a("prc");
            if (!g.a(a4)) {
                Map<String, a> map = f60212e;
                a aVar = map.get(a4);
                if (aVar != null) {
                    aVar.a(next);
                } else {
                    map.put(a4, next);
                }
            }
        }
        Map<String, a> map2 = f60212e;
        boolean b4 = b(com.uc.crashsdk.e.p(), a((Iterable<a>) map2.values(), true, false).toString());
        g.b(file);
        if (b4 || g.a(file, a((Iterable<a>) map2.values(), false, true).toString())) {
            map2.clear();
        }
        return true;
    }

    static /* synthetic */ void a(StringBuilder sb, Map map) {
        for (String str : map.keySet()) {
            b(sb, str, (String) map.get(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str) {
        synchronized (f60209b) {
            File file = new File(l());
            a aVar = new a("pv", true, true);
            String c4 = g.c(file);
            if (!g.a(c4)) {
                aVar.c(c4);
            }
            aVar.a(str, 1L);
            aVar.a("aujv", 1L);
            g.a(file, aVar.a(false, false, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(int i2, Object[] objArr) {
        switch (i2) {
            case 351:
                if (f60208a || objArr != null) {
                    String str = (String) objArr[0];
                    int intValue = ((Integer) objArr[1]).intValue();
                    if (intValue == 1) {
                        if (f60217j) {
                            return false;
                        }
                        f60217j = true;
                    }
                    File file = new File(str);
                    ArrayList<a> a4 = a(file, "crp", 100);
                    if (intValue != 4) {
                        a aVar = new a("crp", false, false);
                        if (intValue == 1) {
                            aVar.a("et", String.valueOf(com.uc.crashsdk.b.F()));
                            aVar.a("ete", String.valueOf(com.uc.crashsdk.b.G()));
                        } else if (intValue == 3) {
                            aVar.a("et", "1");
                            aVar.a("ete", "1");
                        } else if (intValue == 2) {
                            aVar.a("hpv", "1");
                        }
                        aVar.a("prc", com.uc.crashsdk.e.h());
                        aVar.a("imp", com.uc.crashsdk.b.C() ? "1" : "0");
                        a(aVar);
                        a4.add(0, aVar);
                    }
                    if (!a4.isEmpty()) {
                        boolean b4 = b(com.uc.crashsdk.e.p(), a((Iterable<a>) a4, true, false).toString());
                        g.b(file);
                        if (!b4) {
                            g.a(file, a((Iterable<a>) a4, false, true).toString());
                        }
                    }
                    return true;
                }
                throw new AssertionError();
            case 352:
                if (f60208a || objArr != null) {
                    return d((String) objArr[0]);
                }
                throw new AssertionError();
            case 353:
                if (f60208a || objArr != null) {
                    return b((String) objArr[0], (String) objArr[1], ((Boolean) objArr[2]).booleanValue(), ((Boolean) objArr[3]).booleanValue());
                }
                throw new AssertionError();
            case 354:
                if (f60208a || objArr != null) {
                    File file2 = new File((String) objArr[0]);
                    boolean b5 = b(com.uc.crashsdk.e.p(), a((Iterable<a>) a(file2, "cst", 30), true, false).toString());
                    if (b5) {
                        g.b(file2);
                    }
                    return b5;
                }
                throw new AssertionError();
            default:
                return false;
        }
    }

    public static void a() {
        a(0, com.uc.crashsdk.b.E() ? 700000L : 70000L);
    }

    private static void a(int i2, long j4) {
        if (com.uc.crashsdk.b.C()) {
            f.a(0, new e(302, new Object[]{Integer.valueOf(i2)}), j4);
        }
    }

    public static boolean a(String str, String str2) {
        try {
            String str3 = "c_" + str.replaceAll("[^0-9a-zA-Z-_]", "-");
            String replaceAll = g.a(str2) ? "" : str2.replaceAll("[`=]", "-");
            Map<String, String> map = f60210c;
            synchronized (map) {
                if (map.get(str3) == null) {
                    int i2 = f60211d;
                    if (i2 >= 20) {
                        return false;
                    }
                    f60211d = i2 + 1;
                }
                map.put(str3, replaceAll);
                return true;
            }
        } catch (Throwable th) {
            g.a(th);
            return false;
        }
    }

    public static void b(boolean z3) {
        if (a(z3, "crash detail upload")) {
            return;
        }
        String str = com.uc.crashsdk.g.U() + "dt.wa";
        com.uc.crashsdk.b.a(f60213f, str, new e(352, new Object[]{str}));
        String m4 = m();
        com.uc.crashsdk.b.a(f60214g, m4, new e(354, new Object[]{m4}));
    }

    private static boolean b(String str, String str2, boolean z3, boolean z4) {
        a aVar;
        File file = new File(m());
        ArrayList<a> a4 = a(file, "cst", 30);
        String str3 = str + str2;
        Iterator<a> it2 = a4.iterator();
        while (true) {
            if (!it2.hasNext()) {
                aVar = null;
                break;
            }
            aVar = it2.next();
            if (str3.equals(aVar.b("prc") + aVar.b("typ"))) {
                break;
            }
        }
        if (aVar == null) {
            aVar = new a("cst", false, true);
            aVar.a("prc", str);
            aVar.a("typ", str2);
            a(aVar);
            a4.add(aVar);
        }
        aVar.a("cnt", 1L);
        if (z3) {
            aVar.a("lim", 1L);
        }
        if (z4) {
            aVar.a("syu", 1L);
        }
        return g.a(file, a((Iterable<a>) a4, false, false).toString());
    }

    private static void a(a aVar) {
        Map<String, String> map = f60210c;
        synchronized (map) {
            for (String str : map.keySet()) {
                aVar.a(str, f60210c.get(str));
            }
        }
    }

    public static void a(boolean z3) {
        a(1, z3);
    }

    public static boolean a(boolean z3, String str) {
        if (com.uc.crashsdk.b.f60229d && !z3 && JNIBridge.nativeIsCrashing()) {
            com.uc.crashsdk.a.a.b("crashsdk", "Native is crashing, skip stat for " + str);
            return true;
        }
        return false;
    }

    private static void a(int i2, boolean z3) {
        if (a(z3, "crash rate")) {
            return;
        }
        String str = com.uc.crashsdk.g.U() + "cr.wa";
        com.uc.crashsdk.b.a(f60209b, str, new e(351, new Object[]{str, Integer.valueOf(i2)}));
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean b(java.lang.String r9, java.lang.String r10) {
        /*
            boolean r0 = com.uc.crashsdk.a.g.a(r10)
            r1 = 1
            if (r0 == 0) goto L8
            return r1
        L8:
            byte[] r10 = r10.getBytes()
            r0 = 16
            r2 = 8
            r3 = 0
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L3b
            byte[] r4 = com.uc.crashsdk.a.c.a()     // Catch: java.lang.Throwable -> L3b
            com.uc.crashsdk.a.c.a(r0, r3, r4)     // Catch: java.lang.Throwable -> L3b
            r4 = 4
            byte[] r5 = j()     // Catch: java.lang.Throwable -> L3b
            com.uc.crashsdk.a.c.a(r0, r4, r5)     // Catch: java.lang.Throwable -> L3b
            byte[] r4 = com.uc.crashsdk.a.f()     // Catch: java.lang.Throwable -> L3b
            com.uc.crashsdk.a.c.a(r0, r2, r4)     // Catch: java.lang.Throwable -> L3b
            r4 = 12
            byte[] r5 = com.uc.crashsdk.a.d.c()     // Catch: java.lang.Throwable -> L3b
            com.uc.crashsdk.a.c.a(r0, r4, r5)     // Catch: java.lang.Throwable -> L3b
            byte[] r0 = com.uc.crashsdk.a.c.a(r10, r0)     // Catch: java.lang.Throwable -> L3b
            if (r0 == 0) goto L3f
            r10 = r0
            r0 = 1
            goto L40
        L3b:
            r0 = move-exception
            com.uc.crashsdk.a.g.a(r0)
        L3f:
            r0 = 0
        L40:
            if (r9 != 0) goto L44
            java.lang.String r9 = "unknown"
        L44:
            boolean r4 = com.uc.crashsdk.g.P()
            if (r4 == 0) goto L4d
            java.lang.String r4 = "4ea4e41a3993"
            goto L4f
        L4d:
            java.lang.String r4 = "28ef1713347d"
        L4f:
            long r5 = java.lang.System.currentTimeMillis()
            java.lang.String r5 = java.lang.String.valueOf(r5)
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r6.append(r4)
            r6.append(r9)
            r6.append(r5)
            java.lang.String r7 = "AppChk#2014"
            r6.append(r7)
            java.lang.String r6 = r6.toString()
            java.lang.String r6 = com.uc.crashsdk.a.g.d(r6)
            if (r6 != 0) goto L76
            r9 = 0
            goto Lba
        L76:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = o()
            r7.append(r8)
            java.lang.String r8 = "?chk="
            r7.append(r8)
            int r8 = r6.length()
            int r8 = r8 - r2
            int r2 = r6.length()
            java.lang.String r2 = r6.substring(r8, r2)
            r7.append(r2)
            java.lang.String r2 = "&vno="
            r7.append(r2)
            r7.append(r5)
            java.lang.String r2 = "&uuid="
            r7.append(r2)
            r7.append(r9)
            java.lang.String r9 = "&app="
            r7.append(r9)
            r7.append(r4)
            if (r0 == 0) goto Lb6
            java.lang.String r9 = "&enc=aes"
            r7.append(r9)
        Lb6:
            java.lang.String r9 = r7.toString()
        Lba:
            if (r9 != 0) goto Lbd
            return r3
        Lbd:
            byte[] r9 = com.uc.crashsdk.a.c.a(r9, r10)
            if (r9 != 0) goto Lc4
            return r3
        Lc4:
            java.lang.String r10 = new java.lang.String
            r10.<init>(r9)
            java.lang.String r9 = "retcode=0"
            boolean r9 = r10.contains(r9)
            if (r9 == 0) goto Ld2
            return r1
        Ld2:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.a.h.b(java.lang.String, java.lang.String):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x006a, code lost:
        if (r3 == false) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00af A[Catch: all -> 0x00cb, TryCatch #0 {, blocks: (B:17:0x001d, B:19:0x0028, B:21:0x002c, B:53:0x00c9, B:22:0x002e, B:24:0x0038, B:26:0x0040, B:28:0x005a, B:30:0x005f, B:37:0x0070, B:38:0x0077, B:44:0x008b, B:46:0x0097, B:51:0x00af, B:52:0x00c2, B:49:0x00a5, B:43:0x0083), top: B:69:0x001d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(int r9, java.lang.Object[] r10) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.a.h.a(int, java.lang.Object[]):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(String str) {
        synchronized (f60218k) {
            f60219l = str;
            String h4 = com.uc.crashsdk.b.h();
            b.a(h4, f60219l + "\n");
        }
    }

    private static StringBuilder a(Iterable<a> iterable, boolean z3, boolean z4) {
        StringBuilder sb = new StringBuilder();
        boolean z5 = true;
        for (a aVar : iterable) {
            if (z5) {
                sb.append(aVar.a(z3, z3, z4));
                z5 = false;
            } else {
                sb.append(aVar.a(false, z3, z4));
            }
        }
        return sb;
    }

    public static void a(String str, int i2, int i4) {
        if (com.uc.crashsdk.g.O()) {
            synchronized (f60213f) {
                Map<String, a> map = f60212e;
                a aVar = map.get(str);
                if (aVar == null) {
                    aVar = new a("cst", false, true);
                    map.put(str, aVar);
                    a(aVar);
                }
                SparseArray<String> sparseArray = f60215h;
                synchronized (sparseArray) {
                    if (sparseArray.size() == 0) {
                        a(100, "pv");
                        a(102, "hpv");
                        a(1, "all");
                        a(2, "afg");
                        a(101, "abg");
                        a(3, "jfg");
                        a(4, "jbg");
                        a(7, "nfg");
                        a(8, "nbg");
                        a(27, "nafg");
                        a(28, "nabg");
                        a(9, "nho");
                        a(10, "uar");
                        a(29, "ulm");
                        a(30, "ukt");
                        a(31, "uet");
                        a(32, "urs");
                        a(11, "ufg");
                        a(12, "ubg");
                        a(40, "anf");
                        a(41, "anb");
                        a(42, "ancf");
                        a(43, "ancb");
                        a(13, "lup");
                        a(14, "luf");
                        a(15, "lef");
                        a(200, "ltf");
                        a(16, "laf");
                        a(22, "lac");
                        a(23, "lau");
                        a(17, "llf");
                        a(18, "lul");
                        a(19, "lub");
                        a(20, "luc");
                        a(21, "luu");
                        a(24, "lzc");
                        a(201, "lec");
                        a(25, "lrc");
                        a(26, "lss");
                    }
                }
                String str2 = sparseArray.get(i2);
                if (str2 == null) {
                    com.uc.crashsdk.a.a.a("crashsdk", "map key is not set with: " + i2, null);
                }
                aVar.a("prc", str);
                if (str2 != null) {
                    aVar.a(str2, String.valueOf(i4));
                }
            }
        }
    }

    public static boolean a(String str, String str2, boolean z3, boolean z4) {
        if (com.uc.crashsdk.g.O()) {
            return com.uc.crashsdk.b.a(f60214g, m(), new e(353, new Object[]{str, str2, Boolean.valueOf(z3), Boolean.valueOf(z4)}));
        }
        return false;
    }

    private static void a(int i2, String str) {
        f60215h.put(i2, str);
    }

    private static ArrayList<a> a(File file, String str, int i2) {
        ArrayList<String> a4 = g.a(file, i2);
        ArrayList<a> arrayList = new ArrayList<>();
        Iterator<String> it2 = a4.iterator();
        while (it2.hasNext()) {
            a aVar = new a(str, false, false);
            if (aVar.c(it2.next())) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }
}
