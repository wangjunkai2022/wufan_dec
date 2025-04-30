package com.cmic.sso.sdk.c.b;

import com.join.mgps.dto.Constant;
import com.qq.e.comm.pi.ACTD;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: LogReportParameter.java */
/* loaded from: classes2.dex */
public class f extends g {

    /* renamed from: a  reason: collision with root package name */
    private b f10852a;

    /* renamed from: b  reason: collision with root package name */
    private a f10853b;

    /* compiled from: LogReportParameter.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private JSONObject f10854a;

        public JSONObject a() {
            return this.f10854a;
        }

        public void a(JSONObject jSONObject) {
            this.f10854a = jSONObject;
        }
    }

    /* compiled from: LogReportParameter.java */
    /* loaded from: classes2.dex */
    public static class b extends g {

        /* renamed from: a  reason: collision with root package name */
        private String f10855a;

        /* renamed from: b  reason: collision with root package name */
        private String f10856b;

        /* renamed from: c  reason: collision with root package name */
        private String f10857c;

        /* renamed from: d  reason: collision with root package name */
        private String f10858d;

        /* renamed from: e  reason: collision with root package name */
        private String f10859e;

        @Override // com.cmic.sso.sdk.c.b.g
        public JSONObject b() {
            return null;
        }

        public void b(String str) {
            this.f10859e = str;
        }

        public String c() {
            return this.f10859e;
        }

        public String d() {
            return this.f10855a;
        }

        public String e() {
            return this.f10856b;
        }

        public String f() {
            return this.f10857c;
        }

        @Override // com.cmic.sso.sdk.c.b.g
        public String a() {
            return this.f10858d;
        }

        public void c(String str) {
            this.f10858d = str;
        }

        public void d(String str) {
            this.f10855a = str;
        }

        public void e(String str) {
            this.f10856b = str;
        }

        public void f(String str) {
            this.f10857c = str;
        }

        @Override // com.cmic.sso.sdk.c.b.g
        protected String a(String str) {
            return this.f10859e + this.f10858d + this.f10857c + this.f10856b + "@Fdiwmxy7CBDDQNUI";
        }
    }

    @Override // com.cmic.sso.sdk.c.b.g
    protected String a(String str) {
        return null;
    }

    public void a(b bVar) {
        this.f10852a = bVar;
    }

    @Override // com.cmic.sso.sdk.c.b.g
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject2.put(Constant.MD5, this.f10852a.d());
            jSONObject2.put("msgid", this.f10852a.e());
            jSONObject2.put("systemtime", this.f10852a.f());
            jSONObject2.put(ACTD.APPID_KEY, this.f10852a.a());
            jSONObject2.put("version", this.f10852a.c());
            jSONObject.put("header", jSONObject2);
            jSONObject3.put("log", this.f10853b.a());
            jSONObject.put("body", jSONObject3);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        return jSONObject;
    }

    public void a(a aVar) {
        this.f10853b = aVar;
    }

    @Override // com.cmic.sso.sdk.c.b.g
    public String a() {
        return this.f10852a.f10858d;
    }
}
