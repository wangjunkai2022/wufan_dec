package com.xinzhu.haunted.android.app.servertransaction;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.IInterface;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtLaunchActivityItem.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62775b = "b";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62776c = com.xinzhu.haunted.d.b("android.app.servertransaction.LaunchActivityItem");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f62777d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62778e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Field> f62779f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f62780g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Field> f62781h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f62782i = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62783a;

    public b(Object egoInstance) {
        this.f62783a = egoInstance;
    }

    public boolean a() {
        if (f62781h.get() == null) {
            if (f62782i) {
                return false;
            }
            f62781h.compareAndSet(null, com.xinzhu.haunted.d.f(f62776c, "mActivityClientController"));
            f62782i = true;
            return f62781h.get() != null;
        }
        return true;
    }

    public boolean b() {
        if (f62777d.get() == null) {
            if (f62778e) {
                return false;
            }
            f62777d.compareAndSet(null, com.xinzhu.haunted.d.f(f62776c, "mInfo"));
            f62778e = true;
            return f62777d.get() != null;
        }
        return true;
    }

    public boolean c() {
        if (f62779f.get() == null) {
            if (f62780g) {
                return false;
            }
            f62779f.compareAndSet(null, com.xinzhu.haunted.d.f(f62776c, "mIntent"));
            f62780g = true;
            return f62779f.get() != null;
        }
        return true;
    }

    public IInterface d() {
        if (a()) {
            try {
                return (IInterface) f62781h.get().get(this.f62783a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public ActivityInfo e() {
        if (b()) {
            try {
                return (ActivityInfo) f62777d.get().get(this.f62783a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public Intent f() {
        if (c()) {
            try {
                return (Intent) f62779f.get().get(this.f62783a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean g(IInterface value) {
        if (a()) {
            try {
                f62781h.get().set(this.f62783a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean h(ActivityInfo value) {
        if (b()) {
            try {
                f62777d.get().set(this.f62783a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean i(Intent value) {
        if (c()) {
            try {
                f62779f.get().set(this.f62783a, value);
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
