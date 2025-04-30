package com.sdk.j;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import com.sdk.f.g;
import com.sdk.o.b;
@SuppressLint({"ApplySharedPref"})
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f56668a = "com.sdk.j.a";

    /* renamed from: b  reason: collision with root package name */
    public static final Boolean f56669b = Boolean.valueOf(g.f56647b);

    public static void a(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("ZzxCache", 0);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        for (String str2 : sharedPreferences.getAll().keySet()) {
            if (str2.startsWith(str)) {
                edit.remove(str2);
            }
        }
        edit.commit();
    }

    public static void a(Context context, String str, Long l4) {
        try {
            SharedPreferences.Editor edit = context.getSharedPreferences("ZzxCache", 0).edit();
            edit.putLong(str, l4.longValue());
            edit.commit();
        } catch (Exception e4) {
            b.a(f56668a, e4.getMessage(), f56669b);
        }
    }

    public static boolean a(Context context, String str, String str2) {
        try {
            SharedPreferences.Editor edit = context.getSharedPreferences("ZzxCache", 0).edit();
            edit.putString(str, str2);
            return edit.commit();
        } catch (Exception e4) {
            b.a(f56668a, e4.getMessage(), f56669b);
            return false;
        }
    }

    public static Long b(Context context, String str) {
        long j4 = 0;
        try {
            j4 = context.getSharedPreferences("ZzxCache", 0).getLong(str, 0L);
        } catch (Exception e4) {
            b.a(f56668a, e4.getMessage(), f56669b);
        }
        return Long.valueOf(j4);
    }

    public static String c(Context context, String str) {
        try {
            return context.getSharedPreferences("ZzxCache", 0).getString(str, "");
        } catch (Exception e4) {
            b.a(f56668a, e4.getMessage(), f56669b);
            return "";
        }
    }
}
