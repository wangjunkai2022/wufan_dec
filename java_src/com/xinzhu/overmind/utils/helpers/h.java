package com.xinzhu.overmind.utils.helpers;

import android.text.TextUtils;
import com.xinzhu.overmind.utils.s;
/* compiled from: SystemPropertiesHelper.java */
/* loaded from: classes.dex */
public class h {
    public static String a(String key) {
        try {
            return (String) s.n("android.os.SystemProperties").k("get", String.class).call(key);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static String b(String key, String def) {
        try {
            return (String) s.n("android.os.SystemProperties").k("get", String.class, String.class).call(key, def);
        } catch (Exception e4) {
            e4.printStackTrace();
            return def;
        }
    }

    public static int c(String key, int def) {
        try {
            return ((Integer) s.n("android.os.SystemProperties").k("getInt", String.class, Integer.TYPE).call(key, Integer.valueOf(def))).intValue();
        } catch (Exception e4) {
            e4.printStackTrace();
            return def;
        }
    }

    public static boolean d(String key) {
        return !TextUtils.isEmpty(a(key));
    }
}
