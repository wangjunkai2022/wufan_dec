package com.alipay.apmobilesecuritysdk.e;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class a {
    public static synchronized b a() {
        synchronized (a.class) {
            String b4 = com.alipay.apmobilesecuritysdk.f.c.b("wxcasxx_v3", "wxcasxx");
            if (com.alipay.security.mobile.module.commonutils.a.b(b4)) {
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject(b4);
                return new b(jSONObject.optString("apdid"), jSONObject.optString("deviceInfoHash"), jSONObject.optString("token"), jSONObject.optString("timestamp"));
            } catch (Exception e4) {
                com.alipay.security.mobile.module.commonutils.d.c(e4);
                return null;
            }
        }
    }

    public static synchronized b b(Context context) {
        synchronized (a.class) {
            String e4 = e(context);
            if (com.alipay.security.mobile.module.commonutils.a.b(e4)) {
                e4 = com.alipay.apmobilesecuritysdk.f.c.b("wxcasxx_v3", "wxcasxx");
            }
            if (com.alipay.security.mobile.module.commonutils.a.b(e4)) {
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject(e4);
                return new b(jSONObject.optString("apdid"), jSONObject.optString("deviceInfoHash"), jSONObject.optString("token"), jSONObject.optString("timestamp"));
            } catch (Exception e5) {
                com.alipay.security.mobile.module.commonutils.d.c(e5);
                return null;
            }
        }
    }

    public static synchronized void c(Context context, b bVar) {
        synchronized (a.class) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("apdid", bVar.f9536a);
                jSONObject.put("deviceInfoHash", bVar.f9537b);
                jSONObject.put("token", bVar.f9538c);
                jSONObject.put("timestamp", bVar.f9539d);
                String jSONObject2 = jSONObject.toString();
                com.alipay.apmobilesecuritysdk.f.c.c(context, "vkeyid_profiles_v3", "deviceid", jSONObject2);
                com.alipay.apmobilesecuritysdk.f.c.d("wxcasxx_v3", "wxcasxx", jSONObject2);
            } catch (JSONException e4) {
                com.alipay.security.mobile.module.commonutils.d.c(e4);
            }
        }
    }

    public static synchronized b d(Context context) {
        synchronized (a.class) {
            String e4 = e(context);
            if (com.alipay.security.mobile.module.commonutils.a.b(e4)) {
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject(e4);
                return new b(jSONObject.optString("apdid"), jSONObject.optString("deviceInfoHash"), jSONObject.optString("token"), jSONObject.optString("timestamp"));
            } catch (Exception e5) {
                com.alipay.security.mobile.module.commonutils.d.c(e5);
                return null;
            }
        }
    }

    private static String e(Context context) {
        return com.alipay.apmobilesecuritysdk.f.c.a(context, "vkeyid_profiles_v3", "deviceid");
    }
}
