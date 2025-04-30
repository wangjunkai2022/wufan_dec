package cn.com.chinatelecom.account.api.b;

import android.content.Context;
import android.net.Network;
import android.os.Build;
import cn.com.chinatelecom.account.api.CtAuth;
import cn.com.chinatelecom.account.api.CtSetting;
import cn.com.chinatelecom.account.api.Helper;
import cn.com.chinatelecom.account.api.a.d;
import cn.com.chinatelecom.account.api.c.c;
import cn.com.chinatelecom.account.api.d.g;
import cn.com.chinatelecom.account.api.e.e;
import cn.com.chinatelecom.account.api.e.f;
import cn.com.chinatelecom.account.api.e.j;
import io.netty.handler.codec.http.HttpConstants;
import java.util.HashMap;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f8495a = {122, 99, 122, 102};

    /* renamed from: b  reason: collision with root package name */
    public static final byte[] f8496b = {HttpConstants.COMMA, 104, 120, 99, 109, 75, 122, 122, 55};

    /* renamed from: c  reason: collision with root package name */
    public static final byte[] f8497c = {HttpConstants.COMMA, 121, 126, 55};

    /* renamed from: d  reason: collision with root package name */
    public static final byte[] f8498d = {HttpConstants.COMMA, 104, 126, 55};

    /* renamed from: e  reason: collision with root package name */
    public static final byte[] f8499e = {HttpConstants.COMMA, 107, ByteCompanionObject.MAX_VALUE, 126, 98, 94, 115, 122, 111, 55};

    /* renamed from: f  reason: collision with root package name */
    private static final String f8500f = "b";

    /* renamed from: g  reason: collision with root package name */
    private c f8501g;

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject a(Context context, String str, String str2, Network network, String str3, String str4) {
        try {
            g.a aVar = new g.a();
            aVar.a(str4);
            aVar.a(false, cn.com.chinatelecom.account.api.d.c.a(), d.a(cn.com.chinatelecom.account.api.e.b.f8625f));
            aVar.b(str3);
            aVar.a(network);
            aVar.a(CtSetting.getConnTimeout(null));
            aVar.b(CtSetting.getReadTimeout(null));
            HashMap hashMap = new HashMap();
            hashMap.put(d.a(f8495a), Helper.dnprecohdjs());
            aVar.a(hashMap);
            JSONObject a4 = cn.com.chinatelecom.account.api.e.a.a(context, new cn.com.chinatelecom.account.api.d.b(context).a(str2, "", 0, aVar.a()), str, network, true, str3);
            f.b(str3, a4, str2);
            return a4;
        } catch (Throwable th) {
            JSONObject g4 = j.g();
            e a5 = f.a(str3);
            a5.g("gpm ：" + th.getMessage()).a(80102).e(d.a(j.f8678k));
            CtAuth.warn(f8500f, "GPM Throwable", th);
            return g4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        c cVar = this.f8501g;
        if (cVar != null) {
            cVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, String str, String str2, long j4, String str3, a aVar) {
        f.a(str2).a(i2).e(str).b(j4).g(str3);
        f.c(str2);
        String a4 = j.a(i2, str, str2);
        if (aVar != null) {
            aVar.callbackPreCode(a4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final Context context, final String str, final String str2, final Network network, long j4, final String str3, final String str4, final a aVar) {
        new cn.com.chinatelecom.account.api.c.d().a(new cn.com.chinatelecom.account.api.c.e(j4) { // from class: cn.com.chinatelecom.account.api.b.b.3
            @Override // cn.com.chinatelecom.account.api.c.e
            public void a() {
                JSONObject a4 = b.this.a(context, str, str2, network, str3, str4);
                synchronized (this) {
                    if (!c()) {
                        a(true);
                        d();
                        if (aVar != null) {
                            try {
                                a4.put("reqId", str3);
                            } catch (JSONException e4) {
                                e4.printStackTrace();
                            }
                            aVar.callbackPreCode(a4.toString());
                        }
                        f.c(str3);
                    }
                }
                if (network != null) {
                    b.this.a();
                }
            }

            @Override // cn.com.chinatelecom.account.api.c.e
            public void b() {
                super.b();
                synchronized (this) {
                    if (!c()) {
                        a(true);
                        b.this.a(80000, d.a(j.f8668a), str3, 0L, "", aVar);
                    }
                }
                if (network != null) {
                    b.this.a();
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String r9, cn.com.chinatelecom.account.api.b.a r10) {
        /*
            r8 = this;
            cn.com.chinatelecom.account.api.CtAuth r0 = cn.com.chinatelecom.account.api.CtAuth.getInstance()
            android.content.Context r0 = r0.getContext()
            boolean r1 = android.text.TextUtils.isEmpty(r9)
            r2 = 0
            java.lang.String r3 = ""
            if (r1 != 0) goto L34
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: org.json.JSONException -> L2b
            r1.<init>(r9)     // Catch: org.json.JSONException -> L2b
            java.lang.String r9 = "st"
            java.lang.String r3 = r1.optString(r9)     // Catch: org.json.JSONException -> L2b
            java.lang.String r9 = "bt"
            java.lang.String r9 = r1.optString(r9)     // Catch: org.json.JSONException -> L2b
            java.lang.String r4 = "authType"
            java.lang.String r2 = r1.optString(r4)     // Catch: org.json.JSONException -> L29
            goto L30
        L29:
            r1 = move-exception
            goto L2d
        L2b:
            r1 = move-exception
            r9 = r2
        L2d:
            r1.printStackTrace()
        L30:
            r7 = r2
            r2 = r9
            r9 = r7
            goto L35
        L34:
            r9 = r2
        L35:
            long r4 = cn.com.chinatelecom.account.api.e.a.a(r0)
            java.lang.StringBuffer r1 = new java.lang.StringBuffer
            r1.<init>()
            byte[] r6 = cn.com.chinatelecom.account.api.b.b.f8496b
            java.lang.String r6 = cn.com.chinatelecom.account.api.a.d.a(r6)
            r1.append(r6)
            java.lang.String r6 = cn.com.chinatelecom.account.api.CtAuth.mAppId
            r1.append(r6)
            byte[] r6 = cn.com.chinatelecom.account.api.b.b.f8497c
            java.lang.String r6 = cn.com.chinatelecom.account.api.a.d.a(r6)
            r1.append(r6)
            r1.append(r3)
            byte[] r3 = cn.com.chinatelecom.account.api.b.b.f8498d
            java.lang.String r3 = cn.com.chinatelecom.account.api.a.d.a(r3)
            r1.append(r3)
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            if (r3 == 0) goto L69
            java.lang.String r2 = "tyx"
        L69:
            r1.append(r2)
            byte[] r2 = cn.com.chinatelecom.account.api.b.b.f8499e
            java.lang.String r2 = cn.com.chinatelecom.account.api.a.d.a(r2)
            r1.append(r2)
            boolean r2 = android.text.TextUtils.isEmpty(r9)
            if (r2 == 0) goto L7d
            java.lang.String r9 = "2"
        L7d:
            r1.append(r9)
            java.lang.String r9 = r1.toString()
            java.lang.String r9 = cn.com.chinatelecom.account.api.e.h.a(r0, r4, r9)
            if (r10 == 0) goto L8d
            r10.callbackPreCodeParams(r9)
        L8d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.com.chinatelecom.account.api.b.b.a(java.lang.String, cn.com.chinatelecom.account.api.b.a):void");
    }

    public void a(String str, String str2, a aVar) {
        Context context = CtAuth.getInstance().getContext();
        int totalTimeout = CtSetting.getTotalTimeout(null);
        String a4 = cn.com.chinatelecom.account.api.e.d.a();
        f.a(a4).a(cn.com.chinatelecom.account.api.e.d.a(context)).c("preCodeByJs").b(cn.com.chinatelecom.account.api.e.g.e(context)).f(cn.com.chinatelecom.account.api.e.g.i(context));
        a(context, str, str2, null, totalTimeout, a4, "preCodeByJs", aVar);
    }

    public void b(final String str, final String str2, final a aVar) {
        final Context context = CtAuth.getInstance().getContext();
        final int totalTimeout = CtSetting.getTotalTimeout(null);
        final String a4 = cn.com.chinatelecom.account.api.e.d.a();
        f.a(a4).a(cn.com.chinatelecom.account.api.e.d.a(context)).c("preCodeByJs").b("BOTH").f(cn.com.chinatelecom.account.api.e.g.i(context));
        if (Build.VERSION.SDK_INT >= 21) {
            c cVar = new c(context);
            this.f8501g = cVar;
            cVar.a(new cn.com.chinatelecom.account.api.c.b() { // from class: cn.com.chinatelecom.account.api.b.b.1
                @Override // cn.com.chinatelecom.account.api.c.b
                public void a() {
                    b.this.a();
                    b.this.a(80800, d.a(j.f8682o), a4, 2500L, "", aVar);
                }

                @Override // cn.com.chinatelecom.account.api.c.b
                public void a(long j4) {
                    b.this.a();
                    b.this.a(80801, d.a(j.f8683p), a4, j4, "", aVar);
                }

                @Override // cn.com.chinatelecom.account.api.c.b
                public void a(Network network, long j4) {
                    f.a(a4).b(j4);
                    long j5 = totalTimeout - j4;
                    if (j5 > 100) {
                        b.this.a(context, str, str2, network, j5, a4, "preCodeByJs", aVar);
                        return;
                    }
                    b.this.a();
                    b.this.a(80000, d.a(j.f8668a), a4, j4, "", aVar);
                }
            });
            return;
        }
        c cVar2 = new c(context);
        this.f8501g = cVar2;
        cVar2.a(new cn.com.chinatelecom.account.api.c.b() { // from class: cn.com.chinatelecom.account.api.b.b.2
            @Override // cn.com.chinatelecom.account.api.c.b
            public void a() {
                b.this.a(80800, d.a(j.f8682o), a4, 2500L, "Switching network timeout (4.x)", aVar);
            }

            @Override // cn.com.chinatelecom.account.api.c.b
            public void a(long j4) {
                b.this.a(80801, d.a(j.f8683p), a4, j4, "Switching network failed (4.x)", aVar);
            }

            @Override // cn.com.chinatelecom.account.api.c.b
            public void a(Network network, long j4) {
                f.a(a4).b(j4);
                long j5 = totalTimeout - j4;
                if (j5 > 100) {
                    b.this.a(context, str, str2, network, j5, a4, "preCodeByJs", aVar);
                } else {
                    b.this.a(80000, d.a(j.f8668a), a4, j4, "", aVar);
                }
            }
        }, str2);
    }
}
