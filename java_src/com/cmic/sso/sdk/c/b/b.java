package com.cmic.sso.sdk.c.b;

import com.join.mgps.dto.Constant;
import com.qq.e.comm.pi.ACTD;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: GetConfigParameter.java */
/* loaded from: classes2.dex */
public class b extends g {

    /* renamed from: a  reason: collision with root package name */
    private String f10833a;

    /* renamed from: b  reason: collision with root package name */
    private String f10834b;

    /* renamed from: c  reason: collision with root package name */
    private String f10835c;

    /* renamed from: d  reason: collision with root package name */
    private String f10836d;

    /* renamed from: e  reason: collision with root package name */
    private String f10837e;

    /* renamed from: f  reason: collision with root package name */
    private String f10838f;

    /* renamed from: g  reason: collision with root package name */
    private String f10839g;

    @Override // com.cmic.sso.sdk.c.b.g
    public String a() {
        return this.f10838f;
    }

    @Override // com.cmic.sso.sdk.c.b.g
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("version", this.f10833a);
            jSONObject.put("apptype", this.f10834b);
            jSONObject.put("phone_ID", this.f10835c);
            jSONObject.put("certflag", this.f10836d);
            jSONObject.put("sdkversion", this.f10837e);
            jSONObject.put(ACTD.APPID_KEY, this.f10838f);
            jSONObject.put("expandparams", "");
            jSONObject.put(Constant.MD5, this.f10839g);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        return jSONObject;
    }

    public void c(String str) {
        this.f10834b = str;
    }

    public void d(String str) {
        this.f10835c = str;
    }

    public void e(String str) {
        this.f10836d = str;
    }

    public void f(String str) {
        this.f10837e = str;
    }

    public void g(String str) {
        this.f10838f = str;
    }

    public void h(String str) {
        this.f10839g = str;
    }

    @Override // com.cmic.sso.sdk.c.b.g
    protected String a(String str) {
        return this.f10833a + this.f10837e + this.f10838f + "iYm0HAnkxQtpvN44";
    }

    public void b(String str) {
        this.f10833a = str;
    }
}
