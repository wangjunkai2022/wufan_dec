package com.xinzhu.haunted.android.app;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtActivityTaskManager.java */
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62524a = "f";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f62525b = com.xinzhu.haunted.d.b("android.app.ActivityTaskManager");

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Field> f62526c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f62527d = false;

    /* renamed from: e  reason: collision with root package name */
    private static AtomicReference<Method> f62528e = new AtomicReference<>();

    /* renamed from: f  reason: collision with root package name */
    private static boolean f62529f = false;

    public static boolean a() {
        if (f62526c.get() == null) {
            if (f62527d) {
                return false;
            }
            f62526c.compareAndSet(null, com.xinzhu.haunted.d.f(f62525b, "IActivityTaskManagerSingleton"));
            f62527d = true;
            return f62526c.get() != null;
        }
        return true;
    }

    public static boolean b() {
        if (f62528e.get() == null) {
            if (f62529f) {
                return false;
            }
            f62528e.compareAndSet(null, com.xinzhu.haunted.d.g(f62525b, "getService", new Object[0]));
            f62529f = true;
            return f62528e.get() != null;
        }
        return true;
    }

    public static m c() {
        if (b()) {
            try {
                return new m(f62528e.get().invoke(null, new Object[0]));
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
                return f62526c.get().get(null);
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
                f62526c.get().set(null, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }
}
