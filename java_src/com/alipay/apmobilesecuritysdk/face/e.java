package com.alipay.apmobilesecuritysdk.face;

import android.content.Context;
import java.util.Map;
/* loaded from: classes2.dex */
public final class e {
    public static synchronized String a(Context context, Map<String, String> map) {
        String b4;
        synchronized (e.class) {
            b4 = new com.alipay.apmobilesecuritysdk.a.a(context).b(map);
        }
        return b4;
    }
}
