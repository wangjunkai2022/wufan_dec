package com.cmic.sso.sdk.e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import java.util.Map;
/* compiled from: SharedPreferencesUtil.java */
@SuppressLint({"ApplySharedPref"})
/* loaded from: classes2.dex */
public class k {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: a  reason: collision with root package name */
    private static Context f10934a;

    /* compiled from: SharedPreferencesUtil.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final SharedPreferences.Editor f10935a;

        a(SharedPreferences.Editor editor) {
            this.f10935a = editor;
        }

        public void a(String str, String str2) {
            this.f10935a.putString(d.a(str), str2);
        }

        public void b() {
            this.f10935a.commit();
        }

        public void c() {
            this.f10935a.clear();
        }

        public void a(String str, long j4) {
            this.f10935a.putLong(d.a(str), j4);
        }

        public void a(String str, int i2) {
            this.f10935a.putInt(d.a(str), i2);
        }

        public void a() {
            this.f10935a.apply();
        }

        public void a(String str) {
            this.f10935a.remove(d.a(str));
        }
    }

    public static void a(Context context) {
        f10934a = context.getApplicationContext();
    }

    public static String b(String str, String str2) {
        return f10934a.getSharedPreferences("ssoconfigs", 0).getString(d.a(str), str2);
    }

    public static int a(String str, int i2) {
        return f10934a.getSharedPreferences("ssoconfigs", 0).getInt(d.a(str), i2);
    }

    public static a b(String str) {
        return new a(f10934a.getSharedPreferences(str, 0).edit());
    }

    public static int a(String str, String str2, int i2) {
        return f10934a.getSharedPreferences(str, 0).getInt(d.a(str2), i2);
    }

    public static long a(String str, long j4) {
        return f10934a.getSharedPreferences("ssoconfigs", 0).getLong(d.a(str), j4);
    }

    public static long a(String str, String str2, long j4) {
        return f10934a.getSharedPreferences(str, 0).getLong(d.a(str2), j4);
    }

    public static void a(String str, String str2) {
        SharedPreferences sharedPreferences = f10934a.getSharedPreferences("ssoconfigs", 0);
        sharedPreferences.edit().putString(d.a(str), str2).commit();
    }

    public static void a(Map<String, Object> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        SharedPreferences.Editor edit = f10934a.getSharedPreferences("ssoconfigs", 0).edit();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            String a4 = d.a(str);
            if (obj instanceof String) {
                edit.putString(a4, (String) obj);
            } else if (obj instanceof Integer) {
                edit.putInt(a4, ((Integer) obj).intValue());
            } else if (obj instanceof Long) {
                edit.putLong(a4, ((Long) obj).longValue());
            } else if (obj instanceof Boolean) {
                edit.putBoolean(a4, ((Boolean) obj).booleanValue());
            }
        }
        edit.commit();
    }

    public static String a(String str, String str2, String str3) {
        return f10934a.getSharedPreferences(str, 0).getString(d.a(str2), str3);
    }

    public static void a(String str) {
        SharedPreferences sharedPreferences = f10934a.getSharedPreferences("ssoconfigs", 0);
        sharedPreferences.edit().remove(d.a(str)).commit();
    }

    public static a a() {
        return new a(f10934a.getSharedPreferences("ssoconfigs", 0).edit());
    }
}
