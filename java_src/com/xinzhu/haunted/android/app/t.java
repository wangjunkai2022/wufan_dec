package com.xinzhu.haunted.android.app;

import android.app.Application;
import android.app.Instrumentation;
import android.content.pm.ApplicationInfo;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtLoadedApk.java */
/* loaded from: classes.dex */
public final class t {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62790b = "t";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62791c = com.xinzhu.haunted.d.b("android.app.LoadedApk");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f62792d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62793e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Field> f62794f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f62795g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Field> f62796h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f62797i = false;

    /* renamed from: j  reason: collision with root package name */
    private static AtomicReference<Method> f62798j = new AtomicReference<>();

    /* renamed from: k  reason: collision with root package name */
    private static boolean f62799k = false;

    /* renamed from: l  reason: collision with root package name */
    private static AtomicReference<Method> f62800l = new AtomicReference<>();

    /* renamed from: m  reason: collision with root package name */
    private static boolean f62801m = false;

    /* renamed from: n  reason: collision with root package name */
    private static AtomicReference<Method> f62802n = new AtomicReference<>();

    /* renamed from: o  reason: collision with root package name */
    private static boolean f62803o = false;

    /* renamed from: p  reason: collision with root package name */
    private static AtomicReference<Method> f62804p = new AtomicReference<>();

    /* renamed from: q  reason: collision with root package name */
    private static boolean f62805q = false;

    /* renamed from: r  reason: collision with root package name */
    private static AtomicReference<Method> f62806r = new AtomicReference<>();

    /* renamed from: s  reason: collision with root package name */
    private static boolean f62807s = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62808a;

    /* compiled from: HtLoadedApk.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: b  reason: collision with root package name */
        public static Class<?> f62809b = com.xinzhu.haunted.d.b("android.app.LoadedApk$ReceiverDispatcher");

        /* renamed from: c  reason: collision with root package name */
        private static AtomicReference<Field> f62810c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        private static boolean f62811d = false;

        /* renamed from: a  reason: collision with root package name */
        public Object f62812a;

        public a(Object egoInstance) {
            this.f62812a = egoInstance;
        }

        public boolean a() {
            if (f62810c.get() == null) {
                if (f62811d) {
                    return false;
                }
                f62810c.compareAndSet(null, com.xinzhu.haunted.d.f(f62809b, "mIIntentReceiver"));
                f62811d = true;
                return f62810c.get() != null;
            }
            return true;
        }

        public Object b() {
            if (a()) {
                try {
                    return f62810c.get().get(this.f62812a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public boolean c(Object value) {
            if (a()) {
                try {
                    f62810c.get().set(this.f62812a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        /* compiled from: HtLoadedApk.java */
        /* renamed from: com.xinzhu.haunted.android.app.t$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0374a {

            /* renamed from: b  reason: collision with root package name */
            public static Class<?> f62813b = com.xinzhu.haunted.d.b("android.app.LoadedApk$ReceiverDispatcher$InnerReceiver");

            /* renamed from: c  reason: collision with root package name */
            private static AtomicReference<Field> f62814c = new AtomicReference<>();

            /* renamed from: d  reason: collision with root package name */
            private static boolean f62815d = false;

            /* renamed from: a  reason: collision with root package name */
            public Object f62816a;

            public C0374a(Object egoInstance) {
                this.f62816a = egoInstance;
            }

            public boolean a() {
                if (f62814c.get() == null) {
                    if (f62815d) {
                        return false;
                    }
                    f62814c.compareAndSet(null, com.xinzhu.haunted.d.f(f62813b, "mDispatcher"));
                    f62815d = true;
                    return f62814c.get() != null;
                }
                return true;
            }

            public Object b() {
                if (a()) {
                    try {
                        return f62814c.get().get(this.f62816a);
                    } catch (IllegalAccessException e4) {
                        e4.printStackTrace();
                        return null;
                    }
                }
                return null;
            }

            public boolean c(Object value) {
                if (a()) {
                    try {
                        f62814c.get().set(this.f62816a, value);
                        return true;
                    } catch (IllegalAccessException e4) {
                        e4.printStackTrace();
                        return false;
                    }
                }
                return false;
            }

            private C0374a() {
            }
        }

        private a() {
        }
    }

    public t(Object egoInstance) {
        this.f62808a = egoInstance;
    }

    public boolean a() {
        if (f62794f.get() == null) {
            if (f62795g) {
                return false;
            }
            f62794f.compareAndSet(null, com.xinzhu.haunted.d.f(f62791c, "mApplicationInfo"));
            f62795g = true;
            return f62794f.get() != null;
        }
        return true;
    }

    public boolean b() {
        if (f62796h.get() == null) {
            if (f62797i) {
                return false;
            }
            f62796h.compareAndSet(null, com.xinzhu.haunted.d.f(f62791c, "mPackageName"));
            f62797i = true;
            return f62796h.get() != null;
        }
        return true;
    }

    public boolean c() {
        if (f62792d.get() == null) {
            if (f62793e) {
                return false;
            }
            f62792d.compareAndSet(null, com.xinzhu.haunted.d.f(f62791c, "mSecurityViolation"));
            f62793e = true;
            return f62792d.get() != null;
        }
        return true;
    }

    public boolean d() {
        if (f62800l.get() == null) {
            if (f62801m) {
                return false;
            }
            f62800l.compareAndSet(null, com.xinzhu.haunted.d.g(f62791c, "getClassLoader", new Object[0]));
            f62801m = true;
            return f62800l.get() != null;
        }
        return true;
    }

    public boolean e() {
        if (f62806r.get() == null) {
            if (f62807s) {
                return false;
            }
            f62806r.compareAndSet(null, com.xinzhu.haunted.d.g(f62791c, "getCredentialProtectedDataDirFile", new Object[0]));
            f62807s = true;
            return f62806r.get() != null;
        }
        return true;
    }

    public boolean f() {
        if (f62802n.get() == null) {
            if (f62803o) {
                return false;
            }
            f62802n.compareAndSet(null, com.xinzhu.haunted.d.g(f62791c, "getDataDirFile", new Object[0]));
            f62803o = true;
            return f62802n.get() != null;
        }
        return true;
    }

    public boolean g() {
        if (f62804p.get() == null) {
            if (f62805q) {
                return false;
            }
            f62804p.compareAndSet(null, com.xinzhu.haunted.d.g(f62791c, "getDeviceProtectedDataDirFile", new Object[0]));
            f62805q = true;
            return f62804p.get() != null;
        }
        return true;
    }

    public boolean h(boolean arg0, Instrumentation arg1) {
        if (f62798j.get() == null) {
            if (f62799k) {
                return false;
            }
            f62798j.compareAndSet(null, com.xinzhu.haunted.d.g(f62791c, "makeApplication", Boolean.TYPE, Instrumentation.class));
            f62799k = true;
            return f62798j.get() != null;
        }
        return true;
    }

    public ClassLoader i() {
        if (d()) {
            try {
                return (ClassLoader) f62800l.get().invoke(this.f62808a, new Object[0]);
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

    public File j() {
        if (e()) {
            try {
                return (File) f62806r.get().invoke(this.f62808a, new Object[0]);
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

    public File k() {
        if (f()) {
            try {
                return (File) f62802n.get().invoke(this.f62808a, new Object[0]);
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

    public File l() {
        if (g()) {
            try {
                return (File) f62804p.get().invoke(this.f62808a, new Object[0]);
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

    public ApplicationInfo m() {
        if (a()) {
            try {
                return (ApplicationInfo) f62794f.get().get(this.f62808a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public String n() {
        if (b()) {
            try {
                return (String) f62796h.get().get(this.f62808a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean o() {
        if (c()) {
            try {
                return ((Boolean) f62792d.get().get(this.f62808a)).booleanValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public Application p(boolean arg0, Instrumentation arg1) {
        if (h(arg0, arg1)) {
            try {
                return (Application) f62798j.get().invoke(this.f62808a, Boolean.valueOf(arg0), arg1);
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

    public boolean q(ApplicationInfo value) {
        if (a()) {
            try {
                f62794f.get().set(this.f62808a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean r(String value) {
        if (b()) {
            try {
                f62796h.get().set(this.f62808a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean s(boolean value) {
        if (c()) {
            try {
                f62792d.get().set(this.f62808a, Boolean.valueOf(value));
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private t() {
    }
}
