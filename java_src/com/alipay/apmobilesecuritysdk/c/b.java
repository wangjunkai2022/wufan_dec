package com.alipay.apmobilesecuritysdk.c;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class b {
    public static synchronized Map<String, String> a(Context context, Map<String, String> map) {
        HashMap hashMap;
        synchronized (b.class) {
            hashMap = new HashMap();
            String a4 = com.alipay.security.mobile.module.commonutils.a.a(map, com.alipay.sdk.cons.b.f9718c, "");
            String a5 = com.alipay.security.mobile.module.commonutils.a.a(map, com.alipay.sdk.cons.b.f9722g, "");
            String a6 = com.alipay.apmobilesecuritysdk.f.b.a(context);
            String a7 = com.alipay.security.mobile.module.commonutils.a.a(map, "userId", "");
            hashMap.put("AC1", a4);
            hashMap.put("AC2", a5);
            hashMap.put("AC3", "");
            hashMap.put("AC4", a6);
            hashMap.put("AC5", a7);
        }
        return hashMap;
    }
}
