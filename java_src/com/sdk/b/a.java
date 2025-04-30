package com.sdk.b;

import android.content.Context;
import com.sdk.Unicorn.base.module.manager.SDKManager;
import com.sdk.f.g;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f56583a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Boolean f56584b = Boolean.valueOf(g.f56647b);

    public static String a(int i2, String str) {
        String a4 = com.sdk.m.a.a();
        if (com.sdk.o.b.b(a4).booleanValue()) {
            return "accessCode" + i2 + str + a4;
        }
        return null;
    }

    public static String a(Context context, int i2, String str) {
        if (SDKManager.useCache) {
            String a4 = a(i2, str);
            if (com.sdk.o.b.b(a4).booleanValue()) {
                String c4 = com.sdk.j.a.c(context, a4);
                if (com.sdk.o.b.b(c4).booleanValue()) {
                    String b4 = b(c4);
                    String a5 = com.sdk.u.a.a(a(c4));
                    if (!com.sdk.u.a.b(a5)) {
                        com.sdk.o.b.b(f56583a, "can use cache", f56584b);
                        JSONObject jSONObject = new JSONObject(a5);
                        if (i2 == 1) {
                            jSONObject.remove("fakeMobile");
                        }
                        StringBuilder sb = new StringBuilder();
                        sb.append(jSONObject.toString());
                        sb.append("-");
                        sb.append(b4);
                        return sb.toString();
                    }
                    com.sdk.o.b.b(f56583a, "OutDate cache invalid", f56584b);
                }
            }
            return null;
        }
        return null;
    }

    public static <T> String a(T t3, String str) {
        return t3 + "-" + str;
    }

    public static String a(String str) {
        return str.split("-")[0];
    }

    public static void a(Context context) {
        com.sdk.o.b.b(f56583a, "cache clear", f56584b);
        com.sdk.j.a.a(context, "accessCode");
    }

    public static String b(String str) {
        return str.split("-")[1];
    }

    public static void a(Context context, int i2, String str, String str2) {
        if (SDKManager.useCache && com.sdk.o.b.b(str).booleanValue()) {
            String a4 = a(i2, str2);
            if (com.sdk.o.b.b(a4).booleanValue()) {
                com.sdk.j.a.a(context, a4, str);
            }
        }
    }
}
