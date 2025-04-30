package com.tencent.stat;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class NetworkMonitor {

    /* renamed from: a  reason: collision with root package name */
    private long f59924a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f59925b = 0;

    /* renamed from: c  reason: collision with root package name */
    private String f59926c = "";

    /* renamed from: d  reason: collision with root package name */
    private int f59927d = 0;

    /* renamed from: e  reason: collision with root package name */
    private String f59928e = "";

    public String getDomain() {
        return this.f59926c;
    }

    public long getMillisecondsConsume() {
        return this.f59924a;
    }

    public int getPort() {
        return this.f59927d;
    }

    public String getRemoteIp() {
        return this.f59928e;
    }

    public int getStatusCode() {
        return this.f59925b;
    }

    public void setDomain(String str) {
        this.f59926c = str;
    }

    public void setMillisecondsConsume(long j4) {
        this.f59924a = j4;
    }

    public void setPort(int i2) {
        this.f59927d = i2;
    }

    public void setRemoteIp(String str) {
        this.f59928e = str;
    }

    public void setStatusCode(int i2) {
        this.f59925b = i2;
    }

    public JSONObject toJSONObject() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("tm", this.f59924a);
            jSONObject.put("st", this.f59925b);
            String str = this.f59926c;
            if (str != null) {
                jSONObject.put("dm", str);
            }
            jSONObject.put("pt", this.f59927d);
            String str2 = this.f59928e;
            if (str2 != null) {
                jSONObject.put("rip", str2);
            }
            jSONObject.put("ts", System.currentTimeMillis() / 1000);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
