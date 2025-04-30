package com.alipay.apmobilesecuritysdk.d;

import android.content.Context;
import j2.c;
/* loaded from: classes2.dex */
public final class b {
    public static String a(Context context) {
        try {
            return (String) c.class.getMethod("getUtdid", Context.class).invoke(null, context);
        } catch (Exception unused) {
            return "";
        }
    }
}
