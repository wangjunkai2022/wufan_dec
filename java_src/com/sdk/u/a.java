package com.sdk.u;

import android.content.Context;
import android.net.ConnectivityManager;
import com.join.mgps.dto.Constant;
import com.sdk.f.g;
import com.sdk.o.c;
import com.sdk.q.b;
import com.sdk.r.f;
import java.util.TreeMap;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f56698a;

    /* renamed from: b  reason: collision with root package name */
    public static Boolean f56699b;

    static {
        new TreeMap();
        f56698a = a.class.getSimpleName();
        f56699b = Boolean.valueOf(g.f56647b);
    }

    public static String a(String str) {
        String optString;
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString2 = jSONObject.optString("aesKey");
            String optString3 = jSONObject.optString("data");
            String optString4 = jSONObject.optString(Constant.MD5);
            if (com.sdk.v.a.f56703d == 0) {
                optString = b.a(optString2, com.sdk.v.a.f56701b);
            } else {
                optString = jSONObject.optString("key");
                f a4 = f.a();
                String a5 = a4.f56696b.a(a4.f56697c, optString, optString, optString4);
                if (com.sdk.o.b.a(a5).booleanValue() && !Boolean.parseBoolean(a5)) {
                    return null;
                }
            }
            return f.a().f56696b.b(optString, optString3);
        } catch (Throwable th) {
            c.b(th.toString());
            String str2 = f56698a;
            com.sdk.o.b.a(str2, "SDK解密异常：" + th.toString(), f56699b);
            return null;
        }
    }

    public static void a() {
    }

    public static boolean b(String str) {
        try {
            return new JSONObject(str).optLong("exp") < System.currentTimeMillis();
        } catch (Exception e4) {
            String str2 = f56698a;
            com.sdk.o.b.c(str2, "out data error" + e4, f56699b);
            return true;
        }
    }

    public static void a(Context context) {
        ConnectivityManager.NetworkCallback networkCallback;
        com.sdk.a.b bVar = new com.sdk.a.b();
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        bVar.f56523g = connectivityManager;
        if (connectivityManager == null || (networkCallback = com.sdk.a.b.f56521e) == null) {
            return;
        }
        connectivityManager.unregisterNetworkCallback(networkCallback);
        com.sdk.a.b.f56520d = true;
        com.sdk.a.b.f56521e = null;
    }
}
