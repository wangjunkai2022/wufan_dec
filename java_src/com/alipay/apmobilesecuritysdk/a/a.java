package com.alipay.apmobilesecuritysdk.a;

import android.content.Context;
import com.alipay.apmobilesecuritysdk.e.e;
import com.alipay.apmobilesecuritysdk.e.f;
import com.alipay.security.mobile.module.a.d;
import com.umeng.analytics.pro.ai;
import java.util.Map;
import o.c;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f9514b;

    /* renamed from: a  reason: collision with root package name */
    private final Context f9515a;

    public a(Context context) {
        this.f9515a = context;
    }

    public static String a(Context context) {
        com.alipay.apmobilesecuritysdk.e.b b4;
        String str;
        try {
            String d4 = f.d();
            try {
                if (!com.alipay.security.mobile.module.commonutils.a.b(d4) || (b4 = com.alipay.apmobilesecuritysdk.e.a.b(context)) == null || com.alipay.security.mobile.module.commonutils.a.b(b4.f9538c)) {
                    return d4;
                }
                str = b4.f9538c;
                f.b(b4);
                return str;
            } catch (Throwable unused) {
                return str;
            }
        } catch (Throwable unused2) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(a aVar, String str, String str2, String str3) {
        try {
            o.a a4 = d.a(aVar.f9515a).a(q.a.f73954a, str, str2, str3);
            if (a4.f73124a) {
                e.a(aVar.f9515a, a4.f73123d, a4.f73122c);
            }
        } catch (Throwable th) {
            try {
                com.alipay.security.mobile.module.commonutils.d.c(th);
            } finally {
                d(false);
            }
        }
    }

    private static synchronized void d(boolean z3) {
        synchronized (a.class) {
            f9514b = z3;
        }
    }

    private static synchronized boolean e() {
        boolean z3;
        synchronized (a.class) {
            z3 = f9514b;
        }
        return z3;
    }

    public static String f(Context context) {
        try {
            String a4 = f.a();
            try {
                if (com.alipay.security.mobile.module.commonutils.a.b(a4)) {
                    com.alipay.apmobilesecuritysdk.e.b b4 = com.alipay.apmobilesecuritysdk.e.a.b(context);
                    if (b4 != null && !com.alipay.security.mobile.module.commonutils.a.b(b4.f9536a)) {
                        f.b(b4);
                        return b4.f9536a;
                    }
                    String b5 = j.a.b(context);
                    if (com.alipay.security.mobile.module.commonutils.a.b(b5)) {
                        String a5 = com.alipay.apmobilesecuritysdk.f.b.a(context);
                        return !com.alipay.security.mobile.module.commonutils.a.b(a5) ? a5 : a5;
                    }
                    return b5;
                }
                return a4;
            } catch (Throwable unused) {
                return a4;
            }
        } catch (Throwable unused2) {
            return "";
        }
    }

    private c g(Map<String, String> map) {
        String str;
        String str2;
        String str3;
        try {
            Context context = this.f9515a;
            o.d dVar = new o.d();
            String a4 = com.alipay.security.mobile.module.commonutils.a.a(map, ai.f60407g, "");
            com.alipay.apmobilesecuritysdk.e.b d4 = com.alipay.apmobilesecuritysdk.e.a.d(context);
            if (d4 != null) {
                str2 = d4.f9538c;
                str3 = d4.f9536a;
                str = d4.f9539d;
            } else {
                str = "";
                str2 = str;
                str3 = str2;
            }
            com.alipay.apmobilesecuritysdk.e.b a5 = com.alipay.apmobilesecuritysdk.e.a.a();
            String str4 = a5 != null ? a5.f9536a : "";
            if (com.alipay.security.mobile.module.commonutils.a.b(str3) && com.alipay.security.mobile.module.commonutils.a.b(str4)) {
                str3 = j.a.e(context);
                str4 = j.a.a();
            }
            dVar.f73133a = q.a.f73954a;
            dVar.f73136d = str3;
            dVar.f73135c = str4;
            dVar.f73137e = str2;
            dVar.f73138f = a4;
            dVar.f73140h = str;
            dVar.f73139g = "3";
            dVar.f73141i = com.alipay.apmobilesecuritysdk.c.e.b(context, map);
            return d.a(this.f9515a).a(dVar);
        } catch (Throwable th) {
            com.alipay.security.mobile.module.commonutils.d.c(th);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00fd A[Catch: all -> 0x024e, TryCatch #3 {all -> 0x024e, blocks: (B:5:0x000e, B:7:0x004f, B:9:0x0054, B:11:0x00bb, B:24:0x00fd, B:44:0x0142, B:46:0x0148, B:48:0x0150, B:51:0x0156, B:59:0x0185, B:61:0x0193, B:63:0x019b, B:65:0x01a3, B:67:0x01ae, B:71:0x01e9, B:77:0x020b, B:82:0x022b, B:84:0x0231, B:87:0x0238, B:90:0x0240, B:80:0x0225, B:73:0x01ee, B:74:0x01fe, B:76:0x0205, B:27:0x0107, B:31:0x0112, B:34:0x0124, B:37:0x012e, B:40:0x0137, B:17:0x00c8, B:19:0x00f3), top: B:104:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0112 A[Catch: all -> 0x024e, TryCatch #3 {all -> 0x024e, blocks: (B:5:0x000e, B:7:0x004f, B:9:0x0054, B:11:0x00bb, B:24:0x00fd, B:44:0x0142, B:46:0x0148, B:48:0x0150, B:51:0x0156, B:59:0x0185, B:61:0x0193, B:63:0x019b, B:65:0x01a3, B:67:0x01ae, B:71:0x01e9, B:77:0x020b, B:82:0x022b, B:84:0x0231, B:87:0x0238, B:90:0x0240, B:80:0x0225, B:73:0x01ee, B:74:0x01fe, B:76:0x0205, B:27:0x0107, B:31:0x0112, B:34:0x0124, B:37:0x012e, B:40:0x0137, B:17:0x00c8, B:19:0x00f3), top: B:104:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0142 A[Catch: all -> 0x024e, TryCatch #3 {all -> 0x024e, blocks: (B:5:0x000e, B:7:0x004f, B:9:0x0054, B:11:0x00bb, B:24:0x00fd, B:44:0x0142, B:46:0x0148, B:48:0x0150, B:51:0x0156, B:59:0x0185, B:61:0x0193, B:63:0x019b, B:65:0x01a3, B:67:0x01ae, B:71:0x01e9, B:77:0x020b, B:82:0x022b, B:84:0x0231, B:87:0x0238, B:90:0x0240, B:80:0x0225, B:73:0x01ee, B:74:0x01fe, B:76:0x0205, B:27:0x0107, B:31:0x0112, B:34:0x0124, B:37:0x012e, B:40:0x0137, B:17:0x00c8, B:19:0x00f3), top: B:104:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0225 A[Catch: all -> 0x024e, TryCatch #3 {all -> 0x024e, blocks: (B:5:0x000e, B:7:0x004f, B:9:0x0054, B:11:0x00bb, B:24:0x00fd, B:44:0x0142, B:46:0x0148, B:48:0x0150, B:51:0x0156, B:59:0x0185, B:61:0x0193, B:63:0x019b, B:65:0x01a3, B:67:0x01ae, B:71:0x01e9, B:77:0x020b, B:82:0x022b, B:84:0x0231, B:87:0x0238, B:90:0x0240, B:80:0x0225, B:73:0x01ee, B:74:0x01fe, B:76:0x0205, B:27:0x0107, B:31:0x0112, B:34:0x0124, B:37:0x012e, B:40:0x0137, B:17:0x00c8, B:19:0x00f3), top: B:104:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x022b A[Catch: all -> 0x024e, TryCatch #3 {all -> 0x024e, blocks: (B:5:0x000e, B:7:0x004f, B:9:0x0054, B:11:0x00bb, B:24:0x00fd, B:44:0x0142, B:46:0x0148, B:48:0x0150, B:51:0x0156, B:59:0x0185, B:61:0x0193, B:63:0x019b, B:65:0x01a3, B:67:0x01ae, B:71:0x01e9, B:77:0x020b, B:82:0x022b, B:84:0x0231, B:87:0x0238, B:90:0x0240, B:80:0x0225, B:73:0x01ee, B:74:0x01fe, B:76:0x0205, B:27:0x0107, B:31:0x0112, B:34:0x0124, B:37:0x012e, B:40:0x0137, B:17:0x00c8, B:19:0x00f3), top: B:104:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x023e A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String b(java.util.Map<java.lang.String, java.lang.String> r27) {
        /*
            Method dump skipped, instructions count: 595
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.apmobilesecuritysdk.a.a.b(java.util.Map):java.lang.String");
    }
}
