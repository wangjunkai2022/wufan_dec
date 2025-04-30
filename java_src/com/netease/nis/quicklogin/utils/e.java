package com.netease.nis.quicklogin.utils;

import android.content.Context;
/* compiled from: SpUtils.java */
/* loaded from: classes4.dex */
public class e {
    public static void a(Context context, String str, String str2) {
        context.getSharedPreferences("yd_share_data", 0).edit().putString(str, str2).apply();
    }

    public static String b(Context context, String str) {
        return context.getSharedPreferences("yd_share_data", 0).getString(str, "");
    }

    public static void a(Context context, String str, long j4) {
        context.getSharedPreferences("yd_share_data", 0).edit().putLong(str, j4).apply();
    }

    public static long a(Context context, String str) {
        return context.getSharedPreferences("yd_share_data", 0).getLong(str, -1L);
    }
}
