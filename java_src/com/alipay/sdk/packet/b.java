package com.alipay.sdk.packet;

import android.text.TextUtils;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    String f9778a;

    /* renamed from: b  reason: collision with root package name */
    public String f9779b;

    public b(String str, String str2) {
        this.f9778a = str;
        this.f9779b = str2;
    }

    private void b(String str) {
        this.f9778a = str;
    }

    private String c() {
        return this.f9778a;
    }

    private void d(String str) {
        this.f9779b = str;
    }

    private String e() {
        return this.f9779b;
    }

    public final JSONObject a() {
        if (TextUtils.isEmpty(this.f9779b)) {
            return null;
        }
        try {
            return new JSONObject(this.f9779b);
        } catch (Exception unused) {
            return null;
        }
    }

    public final String toString() {
        return "\nenvelop:" + this.f9778a + "\nbody:" + this.f9779b;
    }
}
