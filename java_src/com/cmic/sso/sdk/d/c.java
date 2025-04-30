package com.cmic.sso.sdk.d;

import androidx.core.app.NotificationCompat;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: LogBeanEx.java */
/* loaded from: classes2.dex */
public class c extends b {

    /* renamed from: b  reason: collision with root package name */
    public static ArrayList<Throwable> f10912b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private JSONObject f10913c;

    /* renamed from: d  reason: collision with root package name */
    private JSONArray f10914d;

    @Override // com.cmic.sso.sdk.d.b
    public void a(JSONArray jSONArray) {
        this.f10914d = jSONArray;
    }

    @Override // com.cmic.sso.sdk.d.b, com.cmic.sso.sdk.c.b.g
    public JSONObject b() {
        JSONObject b4 = super.b();
        try {
            b4.put(NotificationCompat.CATEGORY_EVENT, this.f10913c);
            b4.put("exceptionStackTrace", this.f10914d);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        return b4;
    }
}
