package com.xinzhu.haunted.android.app.servertransaction;

import android.os.IBinder;
import java.lang.reflect.Field;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtClientTransaction.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62766b = "a";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62767c = com.xinzhu.haunted.d.b("android.app.servertransaction.ClientTransaction");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f62768d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62769e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Field> f62770f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f62771g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Field> f62772h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f62773i = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62774a;

    public a(Object egoInstance) {
        this.f62774a = egoInstance;
    }

    public boolean a() {
        if (f62772h.get() == null) {
            if (f62773i) {
                return false;
            }
            f62772h.compareAndSet(null, com.xinzhu.haunted.d.f(f62767c, "mActivityCallbacks"));
            f62773i = true;
            return f62772h.get() != null;
        }
        return true;
    }

    public boolean b() {
        if (f62768d.get() == null) {
            if (f62769e) {
                return false;
            }
            f62768d.compareAndSet(null, com.xinzhu.haunted.d.f(f62767c, "mActivityToken"));
            f62769e = true;
            return f62768d.get() != null;
        }
        return true;
    }

    public boolean c() {
        if (f62770f.get() == null) {
            if (f62771g) {
                return false;
            }
            f62770f.compareAndSet(null, com.xinzhu.haunted.d.f(f62767c, "mLifecycleStateRequest"));
            f62771g = true;
            return f62770f.get() != null;
        }
        return true;
    }

    public List<Object> d() {
        if (a()) {
            try {
                return (List) f62772h.get().get(this.f62774a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public IBinder e() {
        if (b()) {
            try {
                return (IBinder) f62768d.get().get(this.f62774a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public Object f() {
        if (c()) {
            try {
                return f62770f.get().get(this.f62774a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean g(List<Object> value) {
        if (a()) {
            try {
                f62772h.get().set(this.f62774a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean h(IBinder value) {
        if (b()) {
            try {
                f62768d.get().set(this.f62774a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean i(Object value) {
        if (c()) {
            try {
                f62770f.get().set(this.f62774a, value);
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
