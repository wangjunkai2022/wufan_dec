package com.uc.crashsdk.a;

import com.j256.ormlite.stmt.query.SimpleComparison;
import com.tencent.bugly.Bugly;
import com.umeng.analytics.pro.ai;
import com.umeng.commonsdk.framework.UMModuleRegister;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
/* compiled from: ProGuard */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f60177a = true;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f60178b = true;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f60180d = false;

    /* renamed from: e  reason: collision with root package name */
    private static String f60181e = "hsdk";

    /* renamed from: f  reason: collision with root package name */
    private static String f60182f = "alid ";

    /* renamed from: g  reason: collision with root package name */
    private static String f60183g;

    /* renamed from: i  reason: collision with root package name */
    private static String f60185i;

    /* renamed from: c  reason: collision with root package name */
    private static final Object f60179c = new Object();

    /* renamed from: h  reason: collision with root package name */
    private static final Object f60184h = new Object();

    public static void a() {
        f.a(0, new e(500), com.uc.crashsdk.b.E() ? 900000L : 90000L);
    }

    public static String b() {
        try {
            return "inv" + f60182f + "cras" + f60181e;
        } catch (Throwable th) {
            g.b(th);
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] c() {
        return new byte[]{6, 0, BinaryMemcacheOpcodes.QUITQ, 8};
    }

    public static boolean d() {
        if (!com.uc.crashsdk.e.E() && !com.uc.crashsdk.b.I()) {
            a(true);
            return f60178b;
        }
        return true;
    }

    private static String e() {
        if (g.a(f60185i)) {
            synchronized (f60184h) {
                String str = com.uc.crashsdk.g.P() ? "https://errlogos.umeng.com" : "https://errlog.umeng.com";
                f60185i = g.a(com.uc.crashsdk.b.g(), str + "/api/crashsdk/validate", true);
            }
        }
        return f60185i;
    }

    private static String f() {
        byte[] bArr;
        String e4;
        byte[] a4;
        byte[] bArr2;
        StringBuilder sb = new StringBuilder();
        a(sb, "platform", com.uc.crashsdk.g.e());
        a(sb, "pkgname", com.uc.crashsdk.a.f60146a);
        a(sb, UMModuleRegister.PROCESS, com.uc.crashsdk.e.h());
        a(sb, "version", com.uc.crashsdk.a.a());
        a(sb, "cver", "3.2.0.4");
        a(sb, "ctag", "release");
        a(sb, "inter", com.uc.crashsdk.g.P() ? "true" : Bugly.SDK_IS_DEV);
        a(sb, ai.f60424x, q.a.f73954a);
        String sb2 = sb.toString();
        byte[] bArr3 = new byte[16];
        c.a(bArr3, 0, h.j());
        c.a(bArr3, 4, c.a());
        c.a(bArr3, 8, c());
        c.a(bArr3, 12, com.uc.crashsdk.a.f());
        try {
            bArr = c.a(sb2.getBytes(), bArr3, true);
        } catch (Throwable th) {
            g.a(th);
            bArr = null;
        }
        if (bArr == null || (e4 = e()) == null || (a4 = c.a(e4, bArr)) == null) {
            return null;
        }
        try {
            bArr2 = c.a(a4, bArr3, false);
        } catch (Throwable th2) {
            g.a(th2);
            bArr2 = null;
        }
        if (bArr2 != null) {
            return new String(bArr2);
        }
        return null;
    }

    public static void a(int i2) {
        if (i2 != 500) {
            if (!f60177a) {
                throw new AssertionError();
            }
            return;
        }
        synchronized (f60179c) {
            f60183g = null;
            a(!com.uc.crashsdk.b.C());
            if (g.b(f60183g)) {
                h.a(f60183g);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0083 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(boolean r12) {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.a.d.a(boolean):boolean");
    }

    private static StringBuilder a(StringBuilder sb, String str, String str2) {
        if (sb.length() > 0) {
            sb.append("`");
        }
        sb.append(str);
        sb.append(SimpleComparison.EQUAL_TO_OPERATION);
        sb.append(str2);
        return sb;
    }
}
