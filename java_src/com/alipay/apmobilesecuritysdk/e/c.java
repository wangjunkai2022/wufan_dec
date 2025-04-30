package com.alipay.apmobilesecuritysdk.e;

import android.content.Context;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class c {
    public static d a(Context context) {
        if (context == null) {
            return null;
        }
        String a4 = com.alipay.apmobilesecuritysdk.f.c.a(context, "device_feature_prefs_name", "device_feature_prefs_key");
        if (com.alipay.security.mobile.module.commonutils.a.b(a4)) {
            a4 = com.alipay.apmobilesecuritysdk.f.c.b("device_feature_file_name", "device_feature_file_key");
        }
        if (com.alipay.security.mobile.module.commonutils.a.b(a4)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(a4);
            d dVar = new d();
            dVar.f9540a = jSONObject.getString("imei");
            dVar.f9541b = jSONObject.getString("imsi");
            dVar.f9542c = jSONObject.getString("mac");
            dVar.f9543d = jSONObject.getString("bluetoothmac");
            dVar.f9544e = jSONObject.getString("gsi");
            return dVar;
        } catch (Exception e4) {
            com.alipay.security.mobile.module.commonutils.d.c(e4);
            return null;
        }
    }
}
