package com.alipay.android.phone.mrpc.core;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class b implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    private static final long f9422b = -6098125857367743614L;

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f9423a = new HashMap();

    private Map<String, String> b() {
        return this.f9423a;
    }

    private void d(Map<String, String> map) {
        this.f9423a = map;
    }

    public final String a(String str) {
        return this.f9423a.get(str);
    }

    public final void c(String str, String str2) {
        this.f9423a.put(str, str2);
    }
}
