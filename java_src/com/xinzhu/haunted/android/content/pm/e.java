package com.xinzhu.haunted.android.content.pm;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIPackageManager.java */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63071b = "e";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63072c = com.xinzhu.haunted.d.b("android.content.pm.IPackageManager");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Method> f63073d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63074e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Method> f63075f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f63076g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Method> f63077h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f63078i = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63079a;

    public e(Object egoInstance) {
        this.f63079a = egoInstance;
    }

    public boolean a(String arg0, int arg1, int arg2) {
        if (f63073d.get() == null) {
            if (f63074e) {
                return false;
            }
            AtomicReference<Method> atomicReference = f63073d;
            Class<?> cls = f63072c;
            Class cls2 = Integer.TYPE;
            atomicReference.compareAndSet(null, com.xinzhu.haunted.d.g(cls, "getApplicationInfo", String.class, cls2, cls2));
            f63074e = true;
            return f63073d.get() != null;
        }
        return true;
    }

    public boolean b(String arg0, long arg1, int arg2) {
        if (f63075f.get() == null) {
            if (f63076g) {
                return false;
            }
            f63075f.compareAndSet(null, com.xinzhu.haunted.d.g(f63072c, "getApplicationInfo", String.class, Long.TYPE, Integer.TYPE));
            f63076g = true;
            return f63075f.get() != null;
        }
        return true;
    }

    public boolean c(Intent arg0, String arg1, int arg2, int arg3) {
        if (f63077h.get() == null) {
            if (f63078i) {
                return false;
            }
            AtomicReference<Method> atomicReference = f63077h;
            Class<?> cls = f63072c;
            Class cls2 = Integer.TYPE;
            atomicReference.compareAndSet(null, com.xinzhu.haunted.d.g(cls, "resolveIntent", Intent.class, String.class, cls2, cls2));
            f63078i = true;
            return f63077h.get() != null;
        }
        return true;
    }

    public ApplicationInfo d(String arg0, int arg1, int arg2) {
        if (a(arg0, arg1, arg2)) {
            try {
                return (ApplicationInfo) f63073d.get().invoke(this.f63079a, arg0, Integer.valueOf(arg1), Integer.valueOf(arg2));
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

    public ApplicationInfo e(String arg0, long arg1, int arg2) {
        if (b(arg0, arg1, arg2)) {
            try {
                return (ApplicationInfo) f63075f.get().invoke(this.f63079a, arg0, Long.valueOf(arg1), Integer.valueOf(arg2));
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

    public ResolveInfo f(Intent arg0, String arg1, int arg2, int arg3) {
        if (c(arg0, arg1, arg2, arg3)) {
            try {
                return (ResolveInfo) f63077h.get().invoke(this.f63079a, arg0, arg1, Integer.valueOf(arg2), Integer.valueOf(arg3));
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

    private e() {
    }
}
