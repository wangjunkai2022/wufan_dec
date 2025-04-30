package com.alipay.sdk.authjs;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: g  reason: collision with root package name */
    public static final String f9673g = "CallInfo";

    /* renamed from: h  reason: collision with root package name */
    public static final String f9674h = "call";

    /* renamed from: i  reason: collision with root package name */
    public static final String f9675i = "callback";

    /* renamed from: j  reason: collision with root package name */
    public static final String f9676j = "bundleName";

    /* renamed from: k  reason: collision with root package name */
    public static final String f9677k = "clientId";

    /* renamed from: l  reason: collision with root package name */
    public static final String f9678l = "param";

    /* renamed from: m  reason: collision with root package name */
    public static final String f9679m = "func";

    /* renamed from: n  reason: collision with root package name */
    public static final String f9680n = "msgType";

    /* renamed from: a  reason: collision with root package name */
    public String f9681a;

    /* renamed from: b  reason: collision with root package name */
    public String f9682b;

    /* renamed from: c  reason: collision with root package name */
    public String f9683c;

    /* renamed from: d  reason: collision with root package name */
    public String f9684d;

    /* renamed from: e  reason: collision with root package name */
    public JSONObject f9685e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f9686f = false;

    /* renamed from: com.alipay.sdk.authjs.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public enum EnumC0025a {
        NONE_ERROR,
        FUNCTION_NOT_FOUND,
        INVALID_PARAMETER,
        RUNTIME_ERROR,
        NONE_PERMISS
    }

    public a(String str) {
        this.f9684d = str;
    }

    private static String a(EnumC0025a enumC0025a) {
        int i2 = b.f9693a[enumC0025a.ordinal()];
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? "none" : "runtime error" : "invalid parameter" : "function not found";
    }

    private void b(String str) {
        this.f9681a = str;
    }

    private void c(JSONObject jSONObject) {
        this.f9685e = jSONObject;
    }

    private void d(boolean z3) {
        this.f9686f = z3;
    }

    private boolean e() {
        return this.f9686f;
    }

    private String f() {
        return this.f9681a;
    }

    private void g(String str) {
        this.f9682b = str;
    }

    private String h() {
        return this.f9682b;
    }

    private void i(String str) {
        this.f9683c = str;
    }

    private String j() {
        return this.f9683c;
    }

    private void k(String str) {
        this.f9684d = str;
    }

    private String l() {
        return this.f9684d;
    }

    private JSONObject m() {
        return this.f9685e;
    }

    private String n() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(f9677k, this.f9681a);
        jSONObject.put(f9679m, this.f9683c);
        jSONObject.put(f9678l, this.f9685e);
        jSONObject.put(f9680n, this.f9684d);
        return jSONObject.toString();
    }
}
