package com.xinzhu.haunted.android.util;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtSingleton.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63620b = "b";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63621c = com.xinzhu.haunted.d.b("android.util.Singleton");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f63622d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63623e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Method> f63624f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f63625g = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63626a;

    public b(Object egoInstance) {
        this.f63626a = egoInstance;
    }

    public boolean a() {
        if (f63622d.get() == null) {
            if (f63623e) {
                return false;
            }
            f63622d.compareAndSet(null, com.xinzhu.haunted.d.f(f63621c, "mInstance"));
            f63623e = true;
            return f63622d.get() != null;
        }
        return true;
    }

    public boolean b() {
        if (f63624f.get() == null) {
            if (f63625g) {
                return false;
            }
            f63624f.compareAndSet(null, com.xinzhu.haunted.d.g(f63621c, "get", new Object[0]));
            f63625g = true;
            return f63624f.get() != null;
        }
        return true;
    }

    public Object c() {
        if (b()) {
            try {
                return f63624f.get().invoke(this.f63626a, new Object[0]);
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

    public Object d() {
        if (a()) {
            try {
                return f63622d.get().get(this.f63626a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean e(Object value) {
        if (a()) {
            try {
                f63622d.get().set(this.f63626a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private b() {
    }
}
