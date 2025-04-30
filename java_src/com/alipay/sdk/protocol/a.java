package com.alipay.sdk.protocol;

import android.text.TextUtils;
/* loaded from: classes2.dex */
public enum a {
    None("none"),
    WapPay("js://wappay"),
    Update("js://update");
    

    /* renamed from: d  reason: collision with root package name */
    private String f9809d;

    a(String str) {
        this.f9809d = str;
    }

    public static a a(String str) {
        a[] values;
        if (TextUtils.isEmpty(str)) {
            return None;
        }
        a aVar = None;
        for (a aVar2 : values()) {
            if (str.startsWith(aVar2.f9809d)) {
                return aVar2;
            }
        }
        return aVar;
    }
}
