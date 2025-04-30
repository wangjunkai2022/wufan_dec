package com.qq.e.comm.constants;

import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class LoadAdParams {

    /* renamed from: a  reason: collision with root package name */
    private LoginType f56420a;

    /* renamed from: b  reason: collision with root package name */
    private String f56421b;

    /* renamed from: c  reason: collision with root package name */
    private String f56422c;

    /* renamed from: d  reason: collision with root package name */
    private String f56423d;

    /* renamed from: e  reason: collision with root package name */
    private Map<String, String> f56424e;

    /* renamed from: f  reason: collision with root package name */
    private JSONObject f56425f;

    /* renamed from: g  reason: collision with root package name */
    private final JSONObject f56426g = new JSONObject();

    public Map getDevExtra() {
        return this.f56424e;
    }

    public String getDevExtraJsonString() {
        try {
            Map<String, String> map = this.f56424e;
            return (map == null || map.size() <= 0) ? "" : new JSONObject(this.f56424e).toString();
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }

    public JSONObject getExtraInfo() {
        return this.f56425f;
    }

    public String getLoginAppId() {
        return this.f56421b;
    }

    public String getLoginOpenid() {
        return this.f56422c;
    }

    public LoginType getLoginType() {
        return this.f56420a;
    }

    public JSONObject getParams() {
        return this.f56426g;
    }

    public String getUin() {
        return this.f56423d;
    }

    public void setDevExtra(Map<String, String> map) {
        this.f56424e = map;
    }

    public void setExtraInfo(JSONObject jSONObject) {
        this.f56425f = jSONObject;
    }

    public void setLoginAppId(String str) {
        this.f56421b = str;
    }

    public void setLoginOpenid(String str) {
        this.f56422c = str;
    }

    public void setLoginType(LoginType loginType) {
        this.f56420a = loginType;
    }

    public void setUin(String str) {
        this.f56423d = str;
    }

    public String toString() {
        return "LoadAdParams{, loginType=" + this.f56420a + ", loginAppId=" + this.f56421b + ", loginOpenid=" + this.f56422c + ", uin=" + this.f56423d + ", passThroughInfo=" + this.f56424e + ", extraInfo=" + this.f56425f + '}';
    }
}
