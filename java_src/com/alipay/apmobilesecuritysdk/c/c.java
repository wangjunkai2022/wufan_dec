package com.alipay.apmobilesecuritysdk.c;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class c {
    public static Map<String, String> a(Context context) {
        com.alipay.security.mobile.module.deviceinfo.c a4 = com.alipay.security.mobile.module.deviceinfo.c.a();
        HashMap hashMap = new HashMap();
        com.alipay.apmobilesecuritysdk.e.d a5 = com.alipay.apmobilesecuritysdk.e.c.a(context);
        String b4 = com.alipay.security.mobile.module.deviceinfo.c.b(context);
        String e4 = com.alipay.security.mobile.module.deviceinfo.c.e(context);
        String q3 = com.alipay.security.mobile.module.deviceinfo.c.q(context);
        String p3 = com.alipay.security.mobile.module.deviceinfo.c.p();
        String u3 = com.alipay.security.mobile.module.deviceinfo.c.u(context);
        if (a5 != null) {
            if (com.alipay.security.mobile.module.commonutils.a.b(b4)) {
                b4 = com.alipay.security.mobile.module.commonutils.a.f(a5.f9540a);
            }
            if (com.alipay.security.mobile.module.commonutils.a.b(e4)) {
                e4 = com.alipay.security.mobile.module.commonutils.a.f(a5.f9541b);
            }
            if (com.alipay.security.mobile.module.commonutils.a.b(q3)) {
                q3 = com.alipay.security.mobile.module.commonutils.a.f(a5.f9542c);
            }
            if (com.alipay.security.mobile.module.commonutils.a.b(p3)) {
                p3 = com.alipay.security.mobile.module.commonutils.a.f(a5.f9543d);
            }
            if (com.alipay.security.mobile.module.commonutils.a.b(u3)) {
                u3 = com.alipay.security.mobile.module.commonutils.a.f(a5.f9544e);
            }
        }
        com.alipay.apmobilesecuritysdk.e.d dVar = new com.alipay.apmobilesecuritysdk.e.d(b4, e4, q3, p3, u3);
        if (context != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("imei", com.alipay.security.mobile.module.commonutils.a.f(dVar.f9540a));
                jSONObject.put("imsi", com.alipay.security.mobile.module.commonutils.a.f(dVar.f9541b));
                jSONObject.put("mac", com.alipay.security.mobile.module.commonutils.a.f(dVar.f9542c));
                jSONObject.put("bluetoothmac", com.alipay.security.mobile.module.commonutils.a.f(dVar.f9543d));
                jSONObject.put("gsi", com.alipay.security.mobile.module.commonutils.a.f(dVar.f9544e));
                String jSONObject2 = jSONObject.toString();
                com.alipay.apmobilesecuritysdk.f.c.d("device_feature_file_name", "device_feature_file_key", jSONObject2);
                com.alipay.apmobilesecuritysdk.f.c.c(context, "device_feature_prefs_name", "device_feature_prefs_key", jSONObject2);
            } catch (Exception e5) {
                com.alipay.security.mobile.module.commonutils.d.c(e5);
            }
        }
        hashMap.put("AD1", b4);
        hashMap.put("AD2", e4);
        hashMap.put("AD3", com.alipay.security.mobile.module.deviceinfo.c.i(context));
        hashMap.put("AD5", com.alipay.security.mobile.module.deviceinfo.c.k(context));
        hashMap.put("AD6", com.alipay.security.mobile.module.deviceinfo.c.m(context));
        hashMap.put("AD7", com.alipay.security.mobile.module.deviceinfo.c.o(context));
        hashMap.put("AD8", q3);
        hashMap.put("AD9", com.alipay.security.mobile.module.deviceinfo.c.s(context));
        hashMap.put("AD10", u3);
        hashMap.put("AD11", com.alipay.security.mobile.module.deviceinfo.c.d());
        hashMap.put("AD12", a4.f());
        hashMap.put("AD13", com.alipay.security.mobile.module.deviceinfo.c.h());
        hashMap.put("AD14", com.alipay.security.mobile.module.deviceinfo.c.j());
        hashMap.put("AD15", com.alipay.security.mobile.module.deviceinfo.c.l());
        hashMap.put("AD16", com.alipay.security.mobile.module.deviceinfo.c.n());
        hashMap.put("AD17", "");
        hashMap.put("AD18", p3);
        hashMap.put("AD19", com.alipay.security.mobile.module.deviceinfo.c.w(context));
        hashMap.put("AD20", com.alipay.security.mobile.module.deviceinfo.c.r());
        hashMap.put("AD21", com.alipay.security.mobile.module.deviceinfo.c.g(context));
        hashMap.put("AD22", "");
        hashMap.put("AD23", com.alipay.security.mobile.module.deviceinfo.c.t());
        hashMap.put("AL3", com.alipay.security.mobile.module.deviceinfo.c.y(context));
        return hashMap;
    }
}
