package com.xinzhu.haunted.android.content;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtAttributionSource.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62855b = "a";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62856c = com.xinzhu.haunted.d.b("android.content.AttributionSource");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f62857d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62858e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Method> f62859f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f62860g = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62861a;

    public a(Object egoInstance) {
        this.f62861a = egoInstance;
    }

    public boolean a() {
        if (f62857d.get() == null) {
            if (f62858e) {
                return false;
            }
            f62857d.compareAndSet(null, com.xinzhu.haunted.d.f(f62856c, "mAttributionSourceState"));
            f62858e = true;
            return f62857d.get() != null;
        }
        return true;
    }

    public boolean b() {
        if (f62859f.get() == null) {
            if (f62860g) {
                return false;
            }
            f62859f.compareAndSet(null, com.xinzhu.haunted.d.g(f62856c, "getNext", new Object[0]));
            f62860g = true;
            return f62859f.get() != null;
        }
        return true;
    }

    public Object c() {
        if (b()) {
            try {
                return f62859f.get().invoke(this.f62861a, new Object[0]);
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
                return f62857d.get().get(this.f62861a);
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
                f62857d.get().set(this.f62861a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private a() {
    }
}
