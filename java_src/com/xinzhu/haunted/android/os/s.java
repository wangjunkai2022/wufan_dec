package com.xinzhu.haunted.android.os;

import android.content.Context;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtSystemNotificationChannels.java */
/* loaded from: classes3.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63488a = "s";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63489b = com.xinzhu.haunted.d.b("com.android.internal.notification.SystemNotificationChannels");

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Field> f63490c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f63491d = false;

    /* renamed from: e  reason: collision with root package name */
    private static AtomicReference<Method> f63492e = new AtomicReference<>();

    /* renamed from: f  reason: collision with root package name */
    private static boolean f63493f = false;

    public static boolean a() {
        if (f63490c.get() == null) {
            if (f63491d) {
                return false;
            }
            f63490c.compareAndSet(null, com.xinzhu.haunted.d.f(f63489b, "ACCOUNT"));
            f63491d = true;
            return f63490c.get() != null;
        }
        return true;
    }

    public static boolean b(String arg0, int arg1, Context arg2) {
        if (f63492e.get() == null) {
            if (f63493f) {
                return false;
            }
            f63492e.compareAndSet(null, com.xinzhu.haunted.d.g(f63489b, "createAccountChannelForPackage", String.class, Integer.TYPE, Context.class));
            f63493f = true;
            return f63492e.get() != null;
        }
        return true;
    }

    public static void c(String arg0, int arg1, Context arg2) {
        if (b(arg0, arg1, arg2)) {
            try {
                f63492e.get().invoke(null, arg0, Integer.valueOf(arg1), arg2);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
    }

    public static String d() {
        if (a()) {
            try {
                return (String) f63490c.get().get(null);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public static boolean e(String value) {
        if (a()) {
            try {
                f63490c.get().set(null, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }
}
