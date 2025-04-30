package com.xinzhu.haunted.android.content.pm;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtParceledListSlice.java */
/* loaded from: classes.dex */
public final class j {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63135b = "j";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63136c = com.xinzhu.haunted.d.b("android.content.pm.ParceledListSlice");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Method> f63137d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63138e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Constructor> f63139f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f63140g = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63141a;

    public j(Object egoInstance) {
        this.f63141a = egoInstance;
    }

    public static boolean a(List arg0) {
        if (f63139f.get() == null) {
            if (f63140g) {
                return false;
            }
            f63139f.compareAndSet(null, com.xinzhu.haunted.d.d(f63136c, "HtParceledListSlice", List.class));
            f63140g = true;
            return f63139f.get() != null;
        }
        return true;
    }

    public static j c(List arg0) {
        if (a(arg0)) {
            try {
                j jVar = new j();
                jVar.f63141a = f63139f.get().newInstance(arg0);
                return jVar;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            } catch (InstantiationException e5) {
                e5.printStackTrace();
                return null;
            } catch (InvocationTargetException e6) {
                e6.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean b() {
        if (f63137d.get() == null) {
            if (f63138e) {
                return false;
            }
            f63137d.compareAndSet(null, com.xinzhu.haunted.d.g(f63136c, "getList", new Object[0]));
            f63138e = true;
            return f63137d.get() != null;
        }
        return true;
    }

    public List<?> d() {
        if (b()) {
            try {
                return (List) f63137d.get().invoke(this.f63141a, new Object[0]);
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

    private j() {
    }
}
