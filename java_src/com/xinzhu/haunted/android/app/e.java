package com.xinzhu.haunted.android.app;

import android.os.IInterface;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtActivityManagerOreo.java */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62517a = "e";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f62518b = com.xinzhu.haunted.d.b("android.app.ActivityManager");

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Field> f62519c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f62520d = false;

    /* renamed from: e  reason: collision with root package name */
    private static AtomicReference<Method> f62521e = new AtomicReference<>();

    /* renamed from: f  reason: collision with root package name */
    private static boolean f62522f = false;

    public static boolean a() {
        if (f62519c.get() == null) {
            if (f62520d) {
                return false;
            }
            f62519c.compareAndSet(null, com.xinzhu.haunted.d.f(f62518b, "IActivityManagerSingleton"));
            f62520d = true;
            return f62519c.get() != null;
        }
        return true;
    }

    public static boolean b() {
        if (f62521e.get() == null) {
            if (f62522f) {
                return false;
            }
            f62521e.compareAndSet(null, com.xinzhu.haunted.d.g(f62518b, "getService", new Object[0]));
            f62522f = true;
            return f62521e.get() != null;
        }
        return true;
    }

    public static IInterface c() {
        if (b()) {
            try {
                return (IInterface) f62521e.get().invoke(null, new Object[0]);
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
                return f62519c.get().get(null);
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
                f62519c.get().set(null, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }
}
