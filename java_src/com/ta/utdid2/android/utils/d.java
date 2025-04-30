package com.ta.utdid2.android.utils;

import java.lang.reflect.Method;
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f59160a = "alidebug";

    /* renamed from: b  reason: collision with root package name */
    public static boolean f59161b;

    /* renamed from: c  reason: collision with root package name */
    private static Class<?> f59162c;

    /* renamed from: d  reason: collision with root package name */
    private static Method f59163d;

    /* renamed from: e  reason: collision with root package name */
    private static Method f59164e;

    static {
        f59161b = b(f59160a, 0) == 1;
        f59162c = null;
        f59163d = null;
        f59164e = null;
    }

    public static String a(String str) {
        c();
        try {
            return (String) f59163d.invoke(f59162c, str);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static int b(String str, int i2) {
        c();
        try {
            return ((Integer) f59164e.invoke(f59162c, str, Integer.valueOf(i2))).intValue();
        } catch (Exception e4) {
            e4.printStackTrace();
            return i2;
        }
    }

    private static void c() {
        try {
            if (f59162c == null) {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                f59162c = cls;
                f59163d = cls.getDeclaredMethod("get", String.class);
                f59164e = f59162c.getDeclaredMethod("getInt", String.class, Integer.TYPE);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
