package com.tencent.stat.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
/* loaded from: classes4.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private static SharedPreferences f60097a;

    public static int a(Context context, String str, int i2) {
        return a(context).getInt(k.b(context, "" + str), i2);
    }

    public static long a(Context context, String str, long j4) {
        return a(context).getLong(k.b(context, "" + str), j4);
    }

    static synchronized SharedPreferences a(Context context) {
        SharedPreferences sharedPreferences;
        synchronized (p.class) {
            if (f60097a == null) {
                f60097a = PreferenceManager.getDefaultSharedPreferences(context);
            }
            sharedPreferences = f60097a;
        }
        return sharedPreferences;
    }

    public static String a(Context context, String str, String str2) {
        return a(context).getString(k.b(context, "" + str), str2);
    }

    public static void b(Context context, String str, int i2) {
        String b4 = k.b(context, "" + str);
        SharedPreferences.Editor edit = a(context).edit();
        edit.putInt(b4, i2);
        edit.commit();
    }

    public static void b(Context context, String str, long j4) {
        String b4 = k.b(context, "" + str);
        SharedPreferences.Editor edit = a(context).edit();
        edit.putLong(b4, j4);
        edit.commit();
    }

    public static void b(Context context, String str, String str2) {
        String b4 = k.b(context, "" + str);
        SharedPreferences.Editor edit = a(context).edit();
        edit.putString(b4, str2);
        edit.commit();
    }
}
