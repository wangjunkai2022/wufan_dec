package com.xinzhu.haunted.android.app;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIActivityTaskManager.java */
/* loaded from: classes.dex */
public final class m {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62702b = "m";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62703c = com.xinzhu.haunted.d.b("android.app.IActivityTaskManager");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Method> f62704d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62705e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Method> f62706f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f62707g = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62708a;

    /* compiled from: HtIActivityTaskManager.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f62709a = com.xinzhu.haunted.d.b("android.app.IActivityTaskManager$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f62710b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f62711c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f62710b.get().invoke(null, arg0);
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

        public static boolean b(IBinder arg0) {
            if (f62710b.get() == null) {
                if (f62711c) {
                    return false;
                }
                f62710b.compareAndSet(null, com.xinzhu.haunted.d.g(f62709a, "asInterface", IBinder.class));
                f62711c = true;
                return f62710b.get() != null;
            }
            return true;
        }
    }

    public m(Object egoInstance) {
        this.f62708a = egoInstance;
    }

    public boolean a(IBinder arg0) {
        if (f62706f.get() == null) {
            if (f62707g) {
                return false;
            }
            f62706f.compareAndSet(null, com.xinzhu.haunted.d.g(f62703c, "getLaunchedFromPackage", IBinder.class));
            f62707g = true;
            return f62706f.get() != null;
        }
        return true;
    }

    public boolean b(IBinder arg0) {
        if (f62704d.get() == null) {
            if (f62705e) {
                return false;
            }
            f62704d.compareAndSet(null, com.xinzhu.haunted.d.g(f62703c, "getLaunchedFromUid", IBinder.class));
            f62705e = true;
            return f62704d.get() != null;
        }
        return true;
    }

    public String c(IBinder arg0) {
        if (a(arg0)) {
            try {
                return (String) f62706f.get().invoke(this.f62708a, arg0);
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

    public int d(IBinder arg0) {
        if (b(arg0)) {
            try {
                return ((Integer) f62704d.get().invoke(this.f62708a, arg0)).intValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    private m() {
    }
}
