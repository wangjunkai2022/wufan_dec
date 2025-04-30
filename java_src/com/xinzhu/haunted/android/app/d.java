package com.xinzhu.haunted.android.app;

import android.os.IInterface;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtActivityManagerNative.java */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62470a = "d";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f62471b = com.xinzhu.haunted.d.b("android.app.ActivityManagerNative");

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Field> f62472c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f62473d = false;

    /* renamed from: e  reason: collision with root package name */
    private static AtomicReference<Method> f62474e = new AtomicReference<>();

    /* renamed from: f  reason: collision with root package name */
    private static boolean f62475f = false;

    public static boolean a() {
        if (f62472c.get() == null) {
            if (f62473d) {
                return false;
            }
            f62472c.compareAndSet(null, com.xinzhu.haunted.d.f(f62471b, "gDefault"));
            f62473d = true;
            return f62472c.get() != null;
        }
        return true;
    }

    public static boolean b() {
        if (f62474e.get() == null) {
            if (f62475f) {
                return false;
            }
            f62474e.compareAndSet(null, com.xinzhu.haunted.d.g(f62471b, "getDefault", new Object[0]));
            f62475f = true;
            return f62474e.get() != null;
        }
        return true;
    }

    public static IInterface c() {
        if (b()) {
            try {
                return (IInterface) f62474e.get().invoke(null, new Object[0]);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public static Object d() {
        if (a()) {
            try {
                return f62472c.get().get(null);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public static boolean e(Object value) {
        if (a()) {
            try {
                f62472c.get().set(null, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }
}
