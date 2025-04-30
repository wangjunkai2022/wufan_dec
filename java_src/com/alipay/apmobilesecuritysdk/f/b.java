package com.alipay.apmobilesecuritysdk.f;

import android.content.Context;
import android.content.SharedPreferences;
import com.alipay.security.mobile.module.commonutils.crypto.d;
import java.util.UUID;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static String f9547a = "";

    public static synchronized String a(Context context) {
        String str;
        SharedPreferences.Editor edit;
        synchronized (b.class) {
            if (com.alipay.security.mobile.module.commonutils.a.b(f9547a)) {
                String a4 = s.c.a(context, "alipay_vkey_random", "random", "");
                f9547a = a4;
                if (com.alipay.security.mobile.module.commonutils.a.b(a4)) {
                    String a5 = d.a(UUID.randomUUID().toString());
                    f9547a = a5;
                    if (a5 != null && (edit = context.getSharedPreferences("alipay_vkey_random", 0).edit()) != null) {
                        edit.clear();
                        edit.putString("random", a5);
                        edit.commit();
                    }
                }
            }
            str = f9547a;
        }
        return str;
    }
}
