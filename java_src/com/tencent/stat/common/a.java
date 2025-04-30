package com.tencent.stat.common;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    static c f60042a;

    /* renamed from: d  reason: collision with root package name */
    private static StatLogger f60043d = k.b();

    /* renamed from: e  reason: collision with root package name */
    private static JSONObject f60044e = null;

    /* renamed from: b  reason: collision with root package name */
    Integer f60045b;

    /* renamed from: c  reason: collision with root package name */
    String f60046c;

    public a(Context context) {
        this.f60045b = null;
        this.f60046c = null;
        try {
            a(context);
            this.f60045b = k.q(context.getApplicationContext());
            this.f60046c = k.p(context);
        } catch (Throwable th) {
            f60043d.e(th);
        }
    }

    static synchronized c a(Context context) {
        c cVar;
        synchronized (a.class) {
            if (f60042a == null) {
                f60042a = new c(context.getApplicationContext());
            }
            cVar = f60042a;
        }
        return cVar;
    }

    public static void a(Context context, Map<String, String> map) {
        if (map == null) {
            return;
        }
        HashMap hashMap = new HashMap(map);
        if (f60044e == null) {
            f60044e = new JSONObject();
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            f60044e.put((String) entry.getKey(), entry.getValue());
        }
    }

    public void a(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            c cVar = f60042a;
            if (cVar != null) {
                cVar.a(jSONObject2);
            }
            k.a(jSONObject2, "cn", this.f60046c);
            Integer num = this.f60045b;
            if (num != null) {
                jSONObject2.put("tn", num);
            }
            jSONObject.put("ev", jSONObject2);
            JSONObject jSONObject3 = f60044e;
            if (jSONObject3 == null || jSONObject3.length() <= 0) {
                return;
            }
            jSONObject.put("eva", f60044e);
        } catch (Throwable th) {
            f60043d.e(th);
        }
    }
}
