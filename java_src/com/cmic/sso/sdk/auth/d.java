package com.cmic.sso.sdk.auth;

import android.text.TextUtils;
import com.join.mgps.dto.PayCenterOrderRequest;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AuthnResult.java */
/* loaded from: classes2.dex */
public class d {
    public static JSONObject a(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("resultCode", str);
            jSONObject.put("desc", str2);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONObject b(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("resultCode", str);
            jSONObject.put("desc", str2);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONObject a(String str, com.cmic.sso.sdk.a aVar, JSONObject jSONObject) {
        String b4;
        String[] strArr = {"未知", "移动", "联通", "电信"};
        try {
            b4 = aVar.b("operatortype", "0");
        } catch (Exception unused) {
        }
        if (!"0".equals(b4) && !TextUtils.isEmpty(b4)) {
            jSONObject.put("operatorType", strArr[Integer.parseInt(b4)]);
            return jSONObject;
        }
        if ("103000".equals(str)) {
            jSONObject.put("operatorType", strArr[1]);
        } else {
            jSONObject.put("operatorType", strArr[0]);
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONObject a(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("resultCode", "103000");
            jSONObject.put("desc", "true");
            jSONObject.put("securityphone", str);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONObject a(String str, String str2, com.cmic.sso.sdk.a aVar, JSONObject jSONObject) {
        String str3;
        String str4;
        String str5;
        String str6 = "0";
        JSONObject jSONObject2 = new JSONObject();
        try {
            int parseInt = Integer.parseInt(aVar.b("authType", "0"));
            int c4 = aVar.c("networktype");
            if (parseInt == 3) {
                if (c4 == 3) {
                    str4 = "WIFI下网关鉴权";
                    str5 = "1";
                } else {
                    str4 = "网关鉴权";
                    str5 = PayCenterOrderRequest.PAY_TYPE_RECHARGE;
                }
                String str7 = str5;
                str3 = str4;
                str6 = str7;
            } else {
                str3 = "其他";
            }
            jSONObject2.put("resultCode", str);
            jSONObject2.put("authType", str6);
            jSONObject2.put("authTypeDes", str3);
            if ("103000".equals(str)) {
                if (1 == aVar.c("logintype")) {
                    jSONObject2.put("openId", aVar.b("openId"));
                    jSONObject2.put("securityphone", aVar.b("securityphone"));
                }
                jSONObject2.put("token", jSONObject.optString("token"));
                jSONObject2.put("tokenExpiresIn", jSONObject.optString("tokenExpiresIn"));
            } else {
                jSONObject2.put("desc", str2);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        com.cmic.sso.sdk.e.c.b("AuthnResult", "返回参数:" + jSONObject2.toString());
        return jSONObject2;
    }
}
