package com.umeng.analytics.pro;

import android.content.Context;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.service.UMGlobalContext;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: DefconProcesser.java */
/* loaded from: classes4.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private static final int f60876a = 0;

    /* renamed from: b  reason: collision with root package name */
    private static final int f60877b = 1;

    /* renamed from: c  reason: collision with root package name */
    private static final int f60878c = 2;

    /* renamed from: d  reason: collision with root package name */
    private static final int f60879d = 3;

    /* renamed from: e  reason: collision with root package name */
    private final long f60880e;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefconProcesser.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static final q f60881a = new q();

        private a() {
        }
    }

    public static q a() {
        return a.f60881a;
    }

    private JSONArray c() {
        JSONArray jSONArray = new JSONArray();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", x.a().d(UMGlobalContext.getAppContext(null)));
            jSONObject.put(c.f60639p, currentTimeMillis);
            jSONArray.put(jSONObject);
        } catch (JSONException unused) {
        }
        return jSONArray;
    }

    public void b(JSONObject jSONObject, Context context) {
        int a4 = a(context);
        if (a4 == 1) {
            if (jSONObject.has(c.L)) {
                jSONObject.remove(c.L);
            }
            if (jSONObject.has(c.f60637n)) {
                try {
                    JSONArray jSONArray = jSONObject.getJSONArray(c.f60637n);
                    int length = jSONArray.length();
                    for (int i2 = 0; i2 < length; i2++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                        if (jSONObject2.has(c.au)) {
                            jSONObject2.remove(c.au);
                        }
                        if (jSONObject2.has(c.av)) {
                            jSONObject2.remove(c.av);
                        }
                    }
                } catch (JSONException unused) {
                }
            }
            h.a(context).a(false, true);
        } else if (a4 == 2) {
            if (jSONObject.has(c.L)) {
                jSONObject.remove(c.L);
            }
            if (jSONObject.has(c.f60637n)) {
                jSONObject.remove(c.f60637n);
            }
            try {
                jSONObject.put(c.f60637n, c());
            } catch (Exception unused2) {
            }
            h.a(context).a(false, true);
        } else if (a4 == 3) {
            if (jSONObject.has(c.L)) {
                jSONObject.remove(c.L);
            }
            jSONObject.remove(c.f60637n);
            h.a(context).a(false, true);
        }
    }

    private q() {
        this.f60880e = 60000L;
    }

    public int a(Context context) {
        return Integer.valueOf(UMEnvelopeBuild.imprintProperty(context, "defcon", String.valueOf(0))).intValue();
    }

    private void a(JSONObject jSONObject, boolean z3) {
        if (!z3 && jSONObject.has(c.f60637n)) {
            jSONObject.remove(c.f60637n);
        }
        if (jSONObject.has(c.L)) {
            jSONObject.remove(c.L);
        }
        if (jSONObject.has("error")) {
            jSONObject.remove("error");
        }
        if (jSONObject.has("ekv")) {
            jSONObject.remove("ekv");
        }
        if (jSONObject.has(c.T)) {
            jSONObject.remove(c.T);
        }
        if (jSONObject.has(c.L)) {
            jSONObject.remove(c.L);
        }
        if (jSONObject.has("userlevel")) {
            jSONObject.remove("userlevel");
        }
    }

    public void a(JSONObject jSONObject, Context context) {
        int a4 = a(context);
        if (a4 == 1) {
            a(jSONObject, true);
            h.a(context).b(false, true);
        } else if (a4 == 2) {
            jSONObject.remove(c.f60637n);
            try {
                jSONObject.put(c.f60637n, b());
            } catch (Exception unused) {
            }
            a(jSONObject, true);
            h.a(context).b(false, true);
        } else if (a4 == 3) {
            a(jSONObject, false);
            h.a(context).b(false, true);
        }
    }

    private JSONArray b() {
        JSONArray jSONArray = new JSONArray();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", x.a().a(UMGlobalContext.getAppContext(null)));
            jSONObject.put(c.f60639p, currentTimeMillis);
            jSONObject.put(c.f60640q, currentTimeMillis + 60000);
            jSONObject.put("duration", 60000L);
            jSONArray.put(jSONObject);
        } catch (JSONException unused) {
        }
        return jSONArray;
    }
}
