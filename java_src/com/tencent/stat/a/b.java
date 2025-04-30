package com.tencent.stat.a;

import android.content.Context;
import java.util.Map;
import java.util.Properties;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class b extends e {

    /* renamed from: a  reason: collision with root package name */
    protected c f59993a;

    /* renamed from: l  reason: collision with root package name */
    private long f59994l;

    public b(Context context, int i2, String str) {
        super(context, i2);
        c cVar = new c();
        this.f59993a = cVar;
        this.f59994l = -1L;
        cVar.f59995a = str;
    }

    @Override // com.tencent.stat.a.e
    public f a() {
        return f.CUSTOM;
    }

    public void a(long j4) {
        this.f59994l = j4;
    }

    public void a(Properties properties) {
        if (properties != null) {
            this.f59993a.f59997c = (Properties) properties.clone();
        }
    }

    public void a(String[] strArr) {
        if (strArr != null) {
            this.f59993a.f59996b = (String[]) strArr.clone();
        }
    }

    @Override // com.tencent.stat.a.e
    public boolean a(JSONObject jSONObject) {
        jSONObject.put("ei", this.f59993a.f59995a);
        long j4 = this.f59994l;
        if (j4 > 0) {
            jSONObject.put(com.umeng.analytics.pro.c.W, j4);
        }
        c cVar = this.f59993a;
        if (cVar.f59997c == null && cVar.f59996b == null) {
            jSONObject.put("kv", new JSONObject());
        }
        if (this.f59993a.f59996b != null) {
            JSONArray jSONArray = new JSONArray();
            for (String str : this.f59993a.f59996b) {
                jSONArray.put(str);
            }
            jSONObject.put("ar", jSONArray);
        }
        if (this.f59993a.f59997c != null) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                for (Map.Entry entry : this.f59993a.f59997c.entrySet()) {
                    jSONObject2.put(entry.getKey().toString(), entry.getValue().toString());
                }
            } catch (Exception unused) {
                jSONObject2 = new JSONObject(this.f59993a.f59997c);
            }
            jSONObject.put("kv", jSONObject2);
            return true;
        }
        return true;
    }
}
