package com.cmic.sso.sdk.d;

import com.cmic.sso.sdk.c.b.g;
import com.qq.e.comm.pi.ACTD;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: LogBean.java */
/* loaded from: classes2.dex */
public class b extends g {
    private String A;
    private String B;

    /* renamed from: o  reason: collision with root package name */
    private JSONArray f10900o;

    /* renamed from: y  reason: collision with root package name */
    private String f10910y;

    /* renamed from: z  reason: collision with root package name */
    private String f10911z;

    /* renamed from: b  reason: collision with root package name */
    private String f10887b = null;

    /* renamed from: c  reason: collision with root package name */
    private String f10888c = null;

    /* renamed from: d  reason: collision with root package name */
    private String f10889d = null;

    /* renamed from: e  reason: collision with root package name */
    private String f10890e = null;

    /* renamed from: f  reason: collision with root package name */
    private String f10891f = null;

    /* renamed from: g  reason: collision with root package name */
    private String f10892g = null;

    /* renamed from: h  reason: collision with root package name */
    private String f10893h = null;

    /* renamed from: i  reason: collision with root package name */
    private String f10894i = null;

    /* renamed from: j  reason: collision with root package name */
    private String f10895j = null;

    /* renamed from: k  reason: collision with root package name */
    private String f10896k = "";

    /* renamed from: l  reason: collision with root package name */
    private String f10897l = null;

    /* renamed from: m  reason: collision with root package name */
    private String f10898m = null;

    /* renamed from: n  reason: collision with root package name */
    private String f10899n = null;

    /* renamed from: p  reason: collision with root package name */
    private String f10901p = null;

    /* renamed from: q  reason: collision with root package name */
    private String f10902q = null;

    /* renamed from: r  reason: collision with root package name */
    private String f10903r = null;

    /* renamed from: s  reason: collision with root package name */
    private String f10904s = null;

    /* renamed from: t  reason: collision with root package name */
    private String f10905t = null;

    /* renamed from: u  reason: collision with root package name */
    private String f10906u = null;

    /* renamed from: v  reason: collision with root package name */
    private String f10907v = null;

    /* renamed from: w  reason: collision with root package name */
    private String f10908w = null;

    /* renamed from: x  reason: collision with root package name */
    private String f10909x = null;

    /* renamed from: a  reason: collision with root package name */
    public CopyOnWriteArrayList<Throwable> f10886a = new CopyOnWriteArrayList<>();

    public void A(String str) {
        this.A = str;
    }

    public void B(String str) {
        this.B = str;
    }

    @Override // com.cmic.sso.sdk.c.b.g
    public String a() {
        return null;
    }

    @Override // com.cmic.sso.sdk.c.b.g
    protected String a(String str) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(JSONArray jSONArray) {
        this.f10900o = jSONArray;
    }

    public void b(String str) {
        this.f10887b = str;
    }

    public void c(String str) {
        this.f10910y = str;
    }

    public void d(String str) {
        this.f10908w = str;
    }

    public void e(String str) {
        this.f10909x = str;
    }

    public void f(String str) {
        this.f10904s = str;
    }

    public void g(String str) {
        this.f10898m = str;
    }

    public void h(String str) {
        this.f10897l = str;
    }

    public void i(String str) {
        this.f10896k = str;
    }

    public void j(String str) {
        this.f10889d = str;
    }

    public void k(String str) {
        this.f10890e = str;
    }

    public void l(String str) {
        this.f10891f = str;
    }

    public void m(String str) {
        this.f10894i = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(String str) {
        this.f10907v = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(String str) {
        this.f10901p = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(String str) {
        this.f10905t = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(String str) {
        this.f10906u = str;
    }

    public void r(String str) {
        this.f10899n = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(String str) {
        this.f10888c = str;
    }

    public void t(String str) {
        this.f10892g = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v(String str) {
        this.f10903r = str;
    }

    public void w(String str) {
        this.f10893h = str;
    }

    public void x(String str) {
        this.f10895j = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void y(String str) {
        this.f10902q = str;
    }

    public void z(String str) {
        this.f10911z = str;
    }

    @Override // com.cmic.sso.sdk.c.b.g
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ACTD.APPID_KEY, this.f10887b);
            jSONObject.put("traceId", this.f10888c);
            jSONObject.put("appName", this.f10889d);
            jSONObject.put("appVersion", this.f10890e);
            jSONObject.put("sdkVersion", com.cmic.sso.sdk.auth.c.SDK_VERSION);
            jSONObject.put("clientType", q.a.f73954a);
            jSONObject.put("timeOut", this.f10891f);
            jSONObject.put("requestTime", this.f10892g);
            jSONObject.put("responseTime", this.f10893h);
            jSONObject.put("elapsedTime", this.f10894i);
            jSONObject.put("requestType", this.f10895j);
            jSONObject.put("interfaceType", this.f10896k);
            jSONObject.put("interfaceCode", this.f10897l);
            jSONObject.put("interfaceElasped", this.f10898m);
            jSONObject.put("loginType", this.f10899n);
            jSONObject.put("exceptionStackTrace", this.f10900o);
            jSONObject.put("operatorType", this.f10901p);
            jSONObject.put("networkType", this.f10902q);
            jSONObject.put("networkClass", this.f10903r);
            jSONObject.put("brand", this.f10904s);
            jSONObject.put("reqDevice", this.f10905t);
            jSONObject.put("reqSystem", this.f10906u);
            jSONObject.put("simCardNum", this.f10907v);
            jSONObject.put("imsiState", this.f10908w);
            jSONObject.put("resultCode", this.f10909x);
            jSONObject.put("is_phoneStatePermission", this.f10910y);
            jSONObject.put("AID", this.f10911z);
            jSONObject.put("sysOperType", this.A);
            jSONObject.put("scripType", this.B);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        return jSONObject;
    }
}
