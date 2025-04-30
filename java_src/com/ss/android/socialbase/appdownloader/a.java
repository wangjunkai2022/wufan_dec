package com.ss.android.socialbase.appdownloader;

import android.text.TextUtils;
import org.json.JSONObject;
/* compiled from: AhAttempt.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public String f57555a;

    /* renamed from: b  reason: collision with root package name */
    public int f57556b = -1;

    /* renamed from: c  reason: collision with root package name */
    public String f57557c;

    /* renamed from: d  reason: collision with root package name */
    public String f57558d;

    /* renamed from: e  reason: collision with root package name */
    public String f57559e;

    public String a() {
        return b().toString();
    }

    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        a(jSONObject);
        return jSONObject;
    }

    public void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("ah_plan_type", this.f57555a);
            jSONObject.put("error_code", String.valueOf(this.f57556b));
            jSONObject.put("error_msg", this.f57557c);
            jSONObject.put("real_device_plan", this.f57558d);
            jSONObject.put("device_plans", this.f57559e);
        } catch (Throwable unused) {
        }
    }

    public static a a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        a aVar = new a();
        try {
            JSONObject jSONObject = new JSONObject(str);
            aVar.f57559e = jSONObject.optString("device_plans", null);
            aVar.f57558d = jSONObject.optString("real_device_plan", null);
            aVar.f57557c = jSONObject.optString("error_msg", null);
            aVar.f57555a = jSONObject.optString("ah_plan_type", null);
            String optString = jSONObject.optString("error_code");
            if (TextUtils.isEmpty(optString)) {
                aVar.f57556b = -1;
            } else {
                aVar.f57556b = Integer.parseInt(optString);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return aVar;
    }
}
