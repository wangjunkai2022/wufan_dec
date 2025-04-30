package com.cmic.sso.sdk.d;

import android.content.Context;
import android.text.TextUtils;
import com.cmic.sso.sdk.e.f;
import com.cmic.sso.sdk.e.k;
import com.cmic.sso.sdk.e.m;
import com.qq.e.comm.pi.ACTD;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: SendLog.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private com.cmic.sso.sdk.a f10915a;

    private static void a(b bVar, com.cmic.sso.sdk.a aVar) {
        if (bVar == null || aVar == null) {
            return;
        }
        bVar.b(aVar.b(ACTD.APPID_KEY, ""));
        bVar.f(m.a());
        bVar.i(aVar.b("interfaceType", ""));
        bVar.h(aVar.b("interfaceCode", ""));
        bVar.g(aVar.b("interfaceElasped", ""));
        bVar.l(aVar.b("timeOut"));
        bVar.s(aVar.b("traceId"));
        bVar.v(aVar.b("networkClass"));
        bVar.n(aVar.b("simCardNum"));
        bVar.o(aVar.b("operatortype"));
        bVar.p(m.b());
        bVar.q(m.c());
        bVar.y(String.valueOf(aVar.b("networktype", 0)));
        bVar.t(aVar.b("starttime"));
        bVar.w(aVar.b("endtime"));
        bVar.m(String.valueOf(aVar.b("systemEndTime", 0L) - aVar.b("systemStartTime", 0L)));
        bVar.d(aVar.b("imsiState"));
        bVar.z(k.b("AID", ""));
        bVar.A(aVar.b("operatortype"));
        bVar.B(aVar.b("scripType"));
        com.cmic.sso.sdk.e.c.a("SendLog", "traceId" + aVar.b("traceId"));
    }

    public void a(Context context, String str, com.cmic.sso.sdk.a aVar) {
        StackTraceElement[] stackTrace;
        String str2 = "";
        try {
            b a4 = aVar.a();
            String b4 = f.b(context);
            a4.e(str);
            a4.x(aVar.b("loginMethod", ""));
            if (aVar.b("isCacheScrip", false)) {
                a4.r("scrip");
            } else {
                a4.r("pgw");
            }
            a4.j(f.a(context));
            if (!TextUtils.isEmpty(b4)) {
                str2 = b4;
            }
            a4.k(str2);
            a4.c(aVar.b("hsaReadPhoneStatePermission", false) ? "1" : "0");
            a(a4, aVar);
            JSONArray jSONArray = null;
            if (a4.f10886a.size() > 0) {
                jSONArray = new JSONArray();
                Iterator<Throwable> it2 = a4.f10886a.iterator();
                while (it2.hasNext()) {
                    Throwable next = it2.next();
                    StringBuffer stringBuffer = new StringBuffer();
                    JSONObject jSONObject = new JSONObject();
                    for (StackTraceElement stackTraceElement : next.getStackTrace()) {
                        stringBuffer.append("\n");
                        stringBuffer.append(stackTraceElement.toString());
                    }
                    jSONObject.put("message", next.toString());
                    jSONObject.put("stack", stringBuffer.toString());
                    jSONArray.put(jSONObject);
                }
                a4.f10886a.clear();
            }
            if (jSONArray != null && jSONArray.length() > 0) {
                a4.a(jSONArray);
            }
            com.cmic.sso.sdk.e.c.a("SendLog", "登录日志");
            a(a4.b(), aVar);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    protected void a(JSONObject jSONObject, com.cmic.sso.sdk.a aVar) {
        this.f10915a = aVar;
        a(jSONObject);
    }

    private void a(JSONObject jSONObject) {
        com.cmic.sso.sdk.c.c.a.a().a(jSONObject, this.f10915a, new com.cmic.sso.sdk.c.c.d() { // from class: com.cmic.sso.sdk.d.d.1
            @Override // com.cmic.sso.sdk.c.c.d
            public void a(String str, String str2, JSONObject jSONObject2) {
                com.cmic.sso.sdk.a.a b4 = d.this.f10915a.b();
                HashMap hashMap = new HashMap();
                if (!str.equals("103000")) {
                    if (b4.l() != 0 && b4.k() != 0) {
                        int a4 = k.a("logFailTimes", 0) + 1;
                        if (a4 >= b4.k()) {
                            hashMap.put("logFailTimes", 0);
                            hashMap.put("logCloseTime", Long.valueOf(System.currentTimeMillis()));
                        } else {
                            hashMap.put("logFailTimes", Integer.valueOf(a4));
                        }
                    }
                } else {
                    hashMap.put("logFailTimes", 0);
                    hashMap.put("logCloseTime", 0L);
                }
                k.a(hashMap);
            }
        });
    }
}
