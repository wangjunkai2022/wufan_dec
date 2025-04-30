package com.alipay.sdk.data;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.util.i;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: c  reason: collision with root package name */
    public static final int f9740c = 3500;

    /* renamed from: d  reason: collision with root package name */
    public static final String f9741d = "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&";

    /* renamed from: e  reason: collision with root package name */
    public static final int f9742e = 1000;

    /* renamed from: f  reason: collision with root package name */
    public static final int f9743f = 20000;

    /* renamed from: g  reason: collision with root package name */
    public static final String f9744g = "alipay_cashier_dynamic_config";

    /* renamed from: h  reason: collision with root package name */
    public static final String f9745h = "timeout";

    /* renamed from: i  reason: collision with root package name */
    public static final String f9746i = "st_sdk_config";

    /* renamed from: j  reason: collision with root package name */
    public static final String f9747j = "tbreturl";

    /* renamed from: k  reason: collision with root package name */
    private static a f9748k;

    /* renamed from: a  reason: collision with root package name */
    private int f9749a = f9740c;

    /* renamed from: b  reason: collision with root package name */
    public String f9750b = f9741d;

    private static /* synthetic */ void c(a aVar) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("timeout", aVar.a());
            jSONObject.put(f9747j, aVar.f9750b);
            i.c(m.b.b().f72580a, f9744g, jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    public static a f() {
        if (f9748k == null) {
            a aVar = new a();
            f9748k = aVar;
            aVar.e(i.b(m.b.b().f72580a, f9744g));
        }
        return f9748k;
    }

    private String g() {
        return this.f9750b;
    }

    private void h() {
        e(i.b(m.b.b().f72580a, f9744g));
    }

    private void i() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("timeout", a());
            jSONObject.put(f9747j, this.f9750b);
            i.c(m.b.b().f72580a, f9744g, jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    public final int a() {
        int i2 = this.f9749a;
        return (i2 < 1000 || i2 > 20000) ? f9740c : this.f9749a;
    }

    public final void b(Context context) {
        new Thread(new b(this, context)).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject optJSONObject = new JSONObject(str).optJSONObject(f9746i);
            this.f9749a = optJSONObject.optInt("timeout", f9740c);
            this.f9750b = optJSONObject.optString(f9747j, f9741d).trim();
        } catch (Throwable unused) {
        }
    }
}
