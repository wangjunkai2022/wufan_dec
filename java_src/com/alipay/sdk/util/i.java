package com.alipay.sdk.util;

import android.content.Context;
import android.preference.PreferenceManager;
import android.text.TextUtils;
/* loaded from: classes2.dex */
public final class i {
    private static String a() {
        return "1234567812345678A1F20E7=";
    }

    public static String b(Context context, String str) {
        try {
            String string = PreferenceManager.getDefaultSharedPreferences(context).getString(str, null);
            r0 = TextUtils.isEmpty(string) ? null : com.alipay.sdk.encrypt.e.c("1234567812345678A1F20E7=", string);
            if (!TextUtils.isEmpty(string) && TextUtils.isEmpty(r0)) {
                com.alipay.sdk.app.statistic.a.c(com.alipay.sdk.app.statistic.c.f9618m, com.alipay.sdk.app.statistic.c.f9626u, String.format("%s,%s", str, string));
            }
        } catch (Exception unused) {
        }
        return r0;
    }

    public static void c(Context context, String str, String str2) {
        try {
            String a4 = com.alipay.sdk.encrypt.e.a("1234567812345678A1F20E7=", str2);
            if (!TextUtils.isEmpty(str2) && TextUtils.isEmpty(a4)) {
                com.alipay.sdk.app.statistic.a.c(com.alipay.sdk.app.statistic.c.f9618m, com.alipay.sdk.app.statistic.c.f9627v, String.format("%s,%s", str, str2));
            }
            PreferenceManager.getDefaultSharedPreferences(context).edit().putString(str, a4).commit();
        } catch (Throwable unused) {
        }
    }

    private static boolean d(Context context, String str) {
        try {
            return PreferenceManager.getDefaultSharedPreferences(context).contains(str);
        } catch (Throwable unused) {
            return false;
        }
    }

    private static void e(Context context, String str) {
        try {
            PreferenceManager.getDefaultSharedPreferences(context).edit().remove(str).commit();
        } catch (Throwable unused) {
        }
    }
}
