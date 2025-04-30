package com.xinzhu.haunted.android.app;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.IBinder;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtActivity.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62411b = "a";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62412c = com.xinzhu.haunted.d.a(Activity.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f62413d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62414e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Field> f62415f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f62416g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Field> f62417h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f62418i = false;

    /* renamed from: j  reason: collision with root package name */
    private static AtomicReference<Field> f62419j = new AtomicReference<>();

    /* renamed from: k  reason: collision with root package name */
    private static boolean f62420k = false;

    /* renamed from: l  reason: collision with root package name */
    private static AtomicReference<Field> f62421l = new AtomicReference<>();

    /* renamed from: m  reason: collision with root package name */
    private static boolean f62422m = false;

    /* renamed from: n  reason: collision with root package name */
    private static AtomicReference<Method> f62423n = new AtomicReference<>();

    /* renamed from: o  reason: collision with root package name */
    private static boolean f62424o = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62425a;

    public a(Object egoInstance) {
        this.f62425a = egoInstance;
    }

    public boolean a() {
        if (f62419j.get() == null) {
            if (f62420k) {
                return false;
            }
            f62419j.compareAndSet(null, com.xinzhu.haunted.d.f(f62412c, "mActivityInfo"));
            f62420k = true;
            return f62419j.get() != null;
        }
        return true;
    }

    public boolean b() {
        if (f62417h.get() == null) {
            if (f62418i) {
                return false;
            }
            f62417h.compareAndSet(null, com.xinzhu.haunted.d.f(f62412c, "mFinished"));
            f62418i = true;
            return f62417h.get() != null;
        }
        return true;
    }

    public boolean c() {
        if (f62413d.get() == null) {
            if (f62414e) {
                return false;
            }
            f62413d.compareAndSet(null, com.xinzhu.haunted.d.f(f62412c, "mResultCode"));
            f62414e = true;
            return f62413d.get() != null;
        }
        return true;
    }

    public boolean d() {
        if (f62415f.get() == null) {
            if (f62416g) {
                return false;
            }
            f62415f.compareAndSet(null, com.xinzhu.haunted.d.f(f62412c, "mResultData"));
            f62416g = true;
            return f62415f.get() != null;
        }
        return true;
    }

    public boolean e() {
        if (f62421l.get() == null) {
            if (f62422m) {
                return false;
            }
            f62421l.compareAndSet(null, com.xinzhu.haunted.d.f(f62412c, "mToken"));
            f62422m = true;
            return f62421l.get() != null;
        }
        return true;
    }

    public boolean f() {
        if (f62423n.get() == null) {
            if (f62424o) {
                return false;
            }
            f62423n.compareAndSet(null, com.xinzhu.haunted.d.g(f62412c, "getActivityToken", new Object[0]));
            f62424o = true;
            return f62423n.get() != null;
        }
        return true;
    }

    public IBinder g() {
        if (f()) {
            try {
                return (IBinder) f62423n.get().invoke(this.f62425a, new Object[0]);
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

    public ActivityInfo h() {
        if (a()) {
            try {
                return (ActivityInfo) f62419j.get().get(this.f62425a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean i() {
        if (b()) {
            try {
                return ((Boolean) f62417h.get().get(this.f62425a)).booleanValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public int j() {
        if (c()) {
            try {
                return ((Integer) f62413d.get().get(this.f62425a)).intValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    public Intent k() {
        if (d()) {
            try {
                return (Intent) f62415f.get().get(this.f62425a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public IBinder l() {
        if (e()) {
            try {
                return (IBinder) f62421l.get().get(this.f62425a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean m(ActivityInfo value) {
        if (a()) {
            try {
                f62419j.get().set(this.f62425a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean n(boolean value) {
        if (b()) {
            try {
                f62417h.get().set(this.f62425a, Boolean.valueOf(value));
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean o(int value) {
        if (c()) {
            try {
                f62413d.get().set(this.f62425a, Integer.valueOf(value));
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean p(Intent value) {
        if (d()) {
            try {
                f62415f.get().set(this.f62425a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean q(IBinder value) {
        if (e()) {
            try {
                f62421l.get().set(this.f62425a, value);
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
