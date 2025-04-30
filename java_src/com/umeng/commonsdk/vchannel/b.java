package com.umeng.commonsdk.vchannel;

import android.content.Context;
import com.umeng.commonsdk.service.UMGlobalContext;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Event.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private String f61551b;

    /* renamed from: a  reason: collision with root package name */
    private String f61550a = "_$unknown";

    /* renamed from: c  reason: collision with root package name */
    private long f61552c = 0;

    /* renamed from: d  reason: collision with root package name */
    private long f61553d = 0;

    /* renamed from: e  reason: collision with root package name */
    private String f61554e = a.f61549j;

    /* renamed from: f  reason: collision with root package name */
    private Map<String, Object> f61555f = null;

    public b(Context context) {
        this.f61551b = UMGlobalContext.getInstance(context).getProcessName(context);
    }

    public String a() {
        return this.f61550a;
    }

    public long b() {
        return this.f61552c;
    }

    public Map<String, Object> c() {
        return this.f61555f;
    }

    public JSONObject d() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", this.f61550a);
            jSONObject.put("pn", this.f61551b);
            jSONObject.put("ds", this.f61553d);
            jSONObject.put("ts", this.f61552c);
            Map<String, Object> map = this.f61555f;
            if (map != null && map.size() > 0) {
                for (String str : this.f61555f.keySet()) {
                    jSONObject.put(str, this.f61555f.get(str));
                }
            }
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(this.f61554e, jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("ekv", jSONArray2);
            return jSONObject3;
        } catch (Throwable unused) {
            return null;
        }
    }

    public String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder("[");
        sb.append("id:" + this.f61550a + ",");
        sb.append("pn:" + this.f61551b + ",");
        sb.append("ts:" + this.f61552c + ",");
        Map<String, Object> map = this.f61555f;
        if (map != null && map.size() > 0) {
            for (String str : this.f61555f.keySet()) {
                sb.append(this.f61555f.get(str) == null ? str + ": null," : str + ": " + obj.toString() + ",");
            }
        }
        sb.append("ds:" + this.f61553d + "]");
        return sb.toString();
    }

    public void a(String str) {
        this.f61550a = str;
    }

    public void a(long j4) {
        this.f61552c = j4;
    }

    public void a(Map<String, Object> map) {
        this.f61555f = map;
    }
}
