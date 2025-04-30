package com.cmic.sso.sdk.c.b;

import org.json.JSONObject;
/* compiled from: RequestParameter.java */
/* loaded from: classes2.dex */
public abstract class g {
    public abstract String a();

    protected abstract String a(String str);

    public abstract JSONObject b();

    public String u(String str) {
        return com.cmic.sso.sdk.e.d.a(a(str)).toLowerCase();
    }
}
