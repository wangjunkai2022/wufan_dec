package com.xinzhu.haunted.android.app;

import android.os.IInterface;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtActivityClient.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62434a = "b";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f62435b = com.xinzhu.haunted.d.b("android.app.ActivityClient");

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Field> f62436c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f62437d = false;

    /* renamed from: e  reason: collision with root package name */
    private static AtomicReference<Method> f62438e = new AtomicReference<>();

    /* renamed from: f  reason: collision with root package name */
    private static boolean f62439f = false;

    public static boolean a() {
        if (f62436c.get() == null) {
            if (f62437d) {
                return false;
            }
            f62436c.compareAndSet(null, com.xinzhu.haunted.d.f(f62435b, "INTERFACE_SINGLETON"));
            f62437d = true;
            return f62436c.get() != null;
        }
        return true;
    }

    public static boolean b() {
        if (f62438e.get() == null) {
            if (f62439f) {
                return false;
            }
            f62438e.compareAndSet(null, com.xinzhu.haunted.d.g(f62435b, "getActivityClientController", new Object[0]));
            f62439f = true;
            return f62438e.get() != null;
        }
        return true;
    }

    public static IInterface c() {
        if (b()) {
            try {
                return (IInterface) f62438e.get().invoke(null, new Object[0]);
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
                return f62436c.get().get(null);
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
                f62436c.get().set(null, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    /* compiled from: HtActivityClient.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: b  reason: collision with root package name */
        public static Class<?> f62440b = com.xinzhu.haunted.d.b("android.app.ActivityClient$ActivityClientControllerSingleton");

        /* renamed from: c  reason: collision with root package name */
        private static AtomicReference<Field> f62441c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        private static boolean f62442d = false;

        /* renamed from: a  reason: collision with root package name */
        public Object f62443a;

        public a(Object egoInstance) {
            this.f62443a = egoInstance;
        }

        public boolean a() {
            if (f62441c.get() == null) {
                if (f62442d) {
                    return false;
                }
                f62441c.compareAndSet(null, com.xinzhu.haunted.d.f(f62440b, "mKnownInstance"));
                f62442d = true;
                return f62441c.get() != null;
            }
            return true;
        }

        public IInterface b() {
            if (a()) {
                try {
                    return (IInterface) f62441c.get().get(this.f62443a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public boolean c(IInterface value) {
            if (a()) {
                try {
                    f62441c.get().set(this.f62443a, value);
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
}
