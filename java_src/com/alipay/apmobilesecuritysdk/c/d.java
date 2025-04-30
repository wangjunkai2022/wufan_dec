package com.alipay.apmobilesecuritysdk.c;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class d {
    public static synchronized Map<String, String> a(Context context) {
        HashMap hashMap;
        synchronized (d.class) {
            com.alipay.security.mobile.module.deviceinfo.e.a();
            hashMap = new HashMap();
            hashMap.put("AE1", com.alipay.security.mobile.module.deviceinfo.e.d());
            StringBuilder sb = new StringBuilder();
            sb.append(com.alipay.security.mobile.module.deviceinfo.e.f() ? "1" : "0");
            hashMap.put("AE2", sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(com.alipay.security.mobile.module.deviceinfo.e.c(context) ? "1" : "0");
            hashMap.put("AE3", sb2.toString());
            hashMap.put("AE4", com.alipay.security.mobile.module.deviceinfo.e.g());
            hashMap.put("AE5", com.alipay.security.mobile.module.deviceinfo.e.h());
            hashMap.put("AE6", com.alipay.security.mobile.module.deviceinfo.e.i());
            hashMap.put("AE7", com.alipay.security.mobile.module.deviceinfo.e.j());
            hashMap.put("AE8", com.alipay.security.mobile.module.deviceinfo.e.k());
            hashMap.put("AE9", com.alipay.security.mobile.module.deviceinfo.e.l());
            hashMap.put("AE10", com.alipay.security.mobile.module.deviceinfo.e.m());
            hashMap.put("AE11", com.alipay.security.mobile.module.deviceinfo.e.n());
            hashMap.put("AE12", com.alipay.security.mobile.module.deviceinfo.e.o());
            hashMap.put("AE13", com.alipay.security.mobile.module.deviceinfo.e.p());
            hashMap.put("AE14", com.alipay.security.mobile.module.deviceinfo.e.q());
            hashMap.put("AE15", com.alipay.security.mobile.module.deviceinfo.e.r());
        }
        return hashMap;
    }
}
