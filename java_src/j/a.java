package j;

import android.content.Context;
import com.alipay.sdk.packet.d;
import com.alipay.security.mobile.module.commonutils.crypto.i;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class a {
    public static synchronized String a() {
        synchronized (a.class) {
            String d4 = d();
            if (com.alipay.security.mobile.module.commonutils.a.b(d4)) {
                return null;
            }
            String[] split = d4.split("`");
            if (split != null && split.length >= 2) {
                return split[0];
            }
            return null;
        }
    }

    public static synchronized String b(Context context) {
        String a4;
        synchronized (a.class) {
            a4 = a();
            if (com.alipay.security.mobile.module.commonutils.a.b(a4)) {
                a4 = e(context);
            }
        }
        return a4;
    }

    public static synchronized void c(com.alipay.apmobilesecuritysdk.e.b bVar) {
        synchronized (a.class) {
            if (com.alipay.security.mobile.module.commonutils.a.b(bVar.f9536a)) {
                return;
            }
            if (bVar.f9536a.equals(a())) {
                return;
            }
            String str = bVar.f9536a + "`" + bVar.f9539d;
            if (str != null) {
                try {
                    String c4 = i.c(i.a(), str);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(d.f9795p, c4);
                    s.a.b("deviceid_v2", jSONObject.toString());
                } catch (Exception unused) {
                }
            }
        }
    }

    private static String d() {
        try {
            return i.f(i.a(), new JSONObject(s.a.a("deviceid_v2")).getString(d.f9795p));
        } catch (Exception unused) {
            return null;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:19:0x003e
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public static synchronized java.lang.String e(android.content.Context r5) {
        /*
            java.lang.Class<j.a> r0 = j.a.class
            monitor-enter(r0)
            java.lang.String r1 = ""
            java.lang.String r2 = "profiles"
            java.lang.String r3 = "deviceid"
            java.lang.String r4 = ""
            java.lang.String r5 = s.c.a(r5, r2, r3, r4)     // Catch: java.lang.Throwable -> L3c
            boolean r2 = com.alipay.security.mobile.module.commonutils.a.b(r5)     // Catch: java.lang.Throwable -> L3c
            r3 = 0
            if (r2 == 0) goto L18
            r5 = r3
            goto L20
        L18:
            java.lang.String r2 = com.alipay.security.mobile.module.commonutils.crypto.i.a()     // Catch: java.lang.Throwable -> L3c
            java.lang.String r5 = com.alipay.security.mobile.module.commonutils.crypto.i.f(r2, r5)     // Catch: java.lang.Throwable -> L3c
        L20:
            boolean r2 = com.alipay.security.mobile.module.commonutils.a.b(r5)     // Catch: java.lang.Throwable -> L3c
            if (r2 == 0) goto L28
            monitor-exit(r0)
            return r3
        L28:
            j.b r2 = new j.b     // Catch: java.lang.Throwable -> L3c
            r2.<init>()     // Catch: java.lang.Throwable -> L3c
            java.util.Map r5 = j.b.a(r5)     // Catch: java.lang.Throwable -> L3c
            if (r5 == 0) goto L3c
            java.lang.String r2 = "deviceId"
            java.lang.Object r5 = r5.get(r2)     // Catch: java.lang.Throwable -> L3c
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> L3c
            r1 = r5
        L3c:
            monitor-exit(r0)
            return r1
        L3e:
            r5 = move-exception
            monitor-exit(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: j.a.e(android.content.Context):java.lang.String");
    }
}
