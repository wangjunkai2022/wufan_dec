package com.sdk.Unicorn.base.module.config;

import com.sdk.f.c;
import com.sdk.l.a;
/* loaded from: classes4.dex */
public class BaseConfig implements c {
    public static String apk = "com.cucc.sdk.api_key";

    /* renamed from: c  reason: collision with root package name */
    public static int f56507c = 49;
    public static String cm = "CUCC";

    /* renamed from: n  reason: collision with root package name */
    public static String f56508n = "SDKFactory";

    /* renamed from: v  reason: collision with root package name */
    public static String f56509v = "安卓4.0.3.4专业版Z21022214";

    /* renamed from: r  reason: collision with root package name */
    public long f56510r = System.currentTimeMillis();

    public String getApiKey() {
        return apk;
    }

    public String getCM() {
        return cm;
    }

    public String toJsonString() {
        return a.a(this);
    }
}
