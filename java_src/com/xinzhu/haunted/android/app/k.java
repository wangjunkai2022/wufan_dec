package com.xinzhu.haunted.android.app;

import android.content.Context;
import android.content.pm.PackageManager;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtContextImpl.java */
/* loaded from: classes.dex */
public final class k {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62659b = "k";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62660c = com.xinzhu.haunted.d.b("android.app.ContextImpl");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f62661d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62662e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Field> f62663f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f62664g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Field> f62665h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f62666i = false;

    /* renamed from: j  reason: collision with root package name */
    private static AtomicReference<Field> f62667j = new AtomicReference<>();

    /* renamed from: k  reason: collision with root package name */
    private static boolean f62668k = false;

    /* renamed from: l  reason: collision with root package name */
    private static AtomicReference<Method> f62669l = new AtomicReference<>();

    /* renamed from: m  reason: collision with root package name */
    private static boolean f62670m = false;

    /* renamed from: n  reason: collision with root package name */
    private static AtomicReference<Method> f62671n = new AtomicReference<>();

    /* renamed from: o  reason: collision with root package name */
    private static boolean f62672o = false;

    /* renamed from: p  reason: collision with root package name */
    private static AtomicReference<Method> f62673p = new AtomicReference<>();

    /* renamed from: q  reason: collision with root package name */
    private static boolean f62674q = false;

    /* renamed from: r  reason: collision with root package name */
    private static AtomicReference<Method> f62675r = new AtomicReference<>();

    /* renamed from: s  reason: collision with root package name */
    private static boolean f62676s = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62677a;

    public k(Object egoInstance) {
        this.f62677a = egoInstance;
    }

    public boolean a() {
        if (f62663f.get() == null) {
            if (f62664g) {
                return false;
            }
            f62663f.compareAndSet(null, com.xinzhu.haunted.d.f(f62660c, "mBasePackageName"));
            f62664g = true;
            return f62663f.get() != null;
        }
        return true;
    }

    public boolean b() {
        if (f62665h.get() == null) {
            if (f62666i) {
                return false;
            }
            f62665h.compareAndSet(null, com.xinzhu.haunted.d.f(f62660c, "mOpPackageName"));
            f62666i = true;
            return f62665h.get() != null;
        }
        return true;
    }

    public boolean c() {
        if (f62667j.get() == null) {
            if (f62668k) {
                return false;
            }
            f62667j.compareAndSet(null, com.xinzhu.haunted.d.f(f62660c, "mPackageInfo"));
            f62668k = true;
            return f62667j.get() != null;
        }
        return true;
    }

    public boolean d() {
        if (f62661d.get() == null) {
            if (f62662e) {
                return false;
            }
            f62661d.compareAndSet(null, com.xinzhu.haunted.d.f(f62660c, "mPackageManager"));
            f62662e = true;
            return f62661d.get() != null;
        }
        return true;
    }

    public boolean e() {
        if (f62673p.get() == null) {
            if (f62674q) {
                return false;
            }
            f62673p.compareAndSet(null, com.xinzhu.haunted.d.g(f62660c, "getAttributionSource", new Object[0]));
            f62674q = true;
            return f62673p.get() != null;
        }
        return true;
    }

    public boolean f() {
        if (f62669l.get() == null) {
            if (f62670m) {
                return false;
            }
            f62669l.compareAndSet(null, com.xinzhu.haunted.d.g(f62660c, "getUserId", new Object[0]));
            f62670m = true;
            return f62669l.get() != null;
        }
        return true;
    }

    public boolean g() {
        if (f62675r.get() == null) {
            if (f62676s) {
                return false;
            }
            f62675r.compareAndSet(null, com.xinzhu.haunted.d.g(f62660c, "isCredentialProtectedStorage", new Object[0]));
            f62676s = true;
            return f62675r.get() != null;
        }
        return true;
    }

    public boolean h(Context arg0) {
        if (f62671n.get() == null) {
            if (f62672o) {
                return false;
            }
            f62671n.compareAndSet(null, com.xinzhu.haunted.d.g(f62660c, "setOuterContext", Context.class));
            f62672o = true;
            return f62671n.get() != null;
        }
        return true;
    }

    public Object i() {
        if (e()) {
            try {
                return f62673p.get().invoke(this.f62677a, new Object[0]);
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

    public int j() {
        if (f()) {
            try {
                return ((Integer) f62669l.get().invoke(this.f62677a, new Object[0])).intValue();
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

    public String k() {
        if (a()) {
            try {
                return (String) f62663f.get().get(this.f62677a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public String l() {
        if (b()) {
            try {
                return (String) f62665h.get().get(this.f62677a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public Object m() {
        if (c()) {
            try {
                return f62667j.get().get(this.f62677a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public PackageManager n() {
        if (d()) {
            try {
                return (PackageManager) f62661d.get().get(this.f62677a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean o() {
        if (g()) {
            try {
                return ((Boolean) f62675r.get().invoke(this.f62677a, new Object[0])).booleanValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public void p(Context arg0) {
        if (h(arg0)) {
            try {
                f62671n.get().invoke(this.f62677a, arg0);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
    }

    public boolean q(String value) {
        if (a()) {
            try {
                f62663f.get().set(this.f62677a, value);
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
                f62665h.get().set(this.f62677a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean s(Object value) {
        if (c()) {
            try {
                f62667j.get().set(this.f62677a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean t(PackageManager value) {
        if (d()) {
            try {
                f62661d.get().set(this.f62677a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private k() {
    }
}
