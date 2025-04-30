package com.netease.nis.quicklogin.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.netease.nis.basesdk.Logger;
import java.lang.reflect.InvocationTargetException;
import java.util.UUID;
/* compiled from: GrowDeviceUtils.java */
/* loaded from: classes4.dex */
public class d {
    public static void a(Context context, String str) {
        try {
            Class<?> cls = Class.forName("com.netease.mobsec.grow.GrowDevice");
            cls.getMethod("init", Context.class, String.class).invoke(cls.getMethod("get", new Class[0]).invoke(null, new Object[0]), context, str);
        } catch (ClassNotFoundException unused) {
            Logger.e("GrowDevice不存在");
        } catch (IllegalAccessException unused2) {
            Logger.e("GrowDevice不存在");
        } catch (NoSuchMethodException unused3) {
            Logger.e("GrowDevice不存在");
        } catch (InvocationTargetException unused4) {
            Logger.e("GrowDevice不存在");
        }
    }

    public static String a() {
        try {
            Class<?> cls = Class.forName("com.netease.mobsec.grow.GrowDevice");
            return (String) cls.getMethod("getToken", new Class[0]).invoke(cls.getMethod("get", new Class[0]).invoke(null, new Object[0]), new Object[0]);
        } catch (ClassNotFoundException unused) {
            Logger.e("GrowDevice不存在");
            return null;
        } catch (IllegalAccessException unused2) {
            Logger.e("GrowDevice不存在");
            return null;
        } catch (NoSuchMethodException unused3) {
            Logger.e("GrowDevice不存在");
            return null;
        } catch (InvocationTargetException unused4) {
            Logger.e("GrowDevice不存在");
            return null;
        }
    }

    public static String a(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        if (defaultSharedPreferences.contains("uuid")) {
            return defaultSharedPreferences.getString("uuid", "");
        }
        String uuid = UUID.randomUUID().toString();
        defaultSharedPreferences.edit().putString("uuid", uuid).apply();
        return uuid;
    }
}
