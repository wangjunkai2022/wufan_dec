package com.bytedance.sdk.openadsdk.api.plugin.b;

import android.text.TextUtils;
import androidx.annotation.Keep;
import com.bytedance.JProtect;
import java.security.SecureRandom;
import org.json.JSONObject;
/* compiled from: AESUtils.java */
/* loaded from: classes.dex */
public class b {
    public static String a() {
        String a4 = a(16);
        if (a4 == null || a4.length() != 32) {
            return null;
        }
        return a4;
    }

    public static String a(int i2) {
        try {
            byte[] bArr = new byte[i2];
            new SecureRandom().nextBytes(bArr);
            return c.a(bArr);
        } catch (Exception unused) {
            return null;
        }
    }

    @Keep
    @JProtect
    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String a4 = a();
        String a5 = a(a4, 32);
        String b4 = b();
        String str2 = null;
        if (a5 != null && b4 != null) {
            str2 = a.a(str, b4, a5);
        }
        return 3 + a4 + b4 + str2;
    }

    public static String a(String str, int i2) {
        if (str == null || str.length() != i2) {
            return null;
        }
        int i4 = i2 / 2;
        return str.substring(i4, i2) + str.substring(0, i4);
    }

    @Keep
    @JProtect
    public static JSONObject a(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject == null) {
            return jSONObject2;
        }
        try {
            try {
                String a4 = a(jSONObject.toString());
                if (TextUtils.isEmpty(a4)) {
                    jSONObject2.put("message", jSONObject.toString());
                    jSONObject2.put("cypher", 0);
                } else {
                    jSONObject2.put("message", a4);
                    jSONObject2.put("cypher", 3);
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            jSONObject2.put("message", jSONObject.toString());
            jSONObject2.put("cypher", 0);
        }
        return jSONObject2;
    }

    public static String b() {
        String a4 = a(8);
        if (a4 == null || a4.length() != 16) {
            return null;
        }
        return a4;
    }
}
