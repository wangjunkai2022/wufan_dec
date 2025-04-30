package com.xinzhu.haunted.android.content;

import android.accounts.Account;
import android.content.SyncRequest;
import android.os.Bundle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtSyncRequest.java */
/* loaded from: classes3.dex */
public final class s {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63260b = "s";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63261c = com.xinzhu.haunted.d.a(SyncRequest.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Method> f63262d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63263e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Method> f63264f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f63265g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Method> f63266h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f63267i = false;

    /* renamed from: j  reason: collision with root package name */
    private static AtomicReference<Method> f63268j = new AtomicReference<>();

    /* renamed from: k  reason: collision with root package name */
    private static boolean f63269k = false;

    /* renamed from: l  reason: collision with root package name */
    private static AtomicReference<Method> f63270l = new AtomicReference<>();

    /* renamed from: m  reason: collision with root package name */
    private static boolean f63271m = false;

    /* renamed from: n  reason: collision with root package name */
    private static AtomicReference<Method> f63272n = new AtomicReference<>();

    /* renamed from: o  reason: collision with root package name */
    private static boolean f63273o = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63274a;

    public s(Object egoInstance) {
        this.f63274a = egoInstance;
    }

    public boolean a() {
        if (f63270l.get() == null) {
            if (f63271m) {
                return false;
            }
            f63270l.compareAndSet(null, com.xinzhu.haunted.d.g(f63261c, "getAccount", new Object[0]));
            f63271m = true;
            return f63270l.get() != null;
        }
        return true;
    }

    public boolean b() {
        if (f63262d.get() == null) {
            if (f63263e) {
                return false;
            }
            f63262d.compareAndSet(null, com.xinzhu.haunted.d.g(f63261c, "getBundle", new Object[0]));
            f63263e = true;
            return f63262d.get() != null;
        }
        return true;
    }

    public boolean c() {
        if (f63272n.get() == null) {
            if (f63273o) {
                return false;
            }
            f63272n.compareAndSet(null, com.xinzhu.haunted.d.g(f63261c, "getProvider", new Object[0]));
            f63273o = true;
            return f63272n.get() != null;
        }
        return true;
    }

    public boolean d() {
        if (f63264f.get() == null) {
            if (f63265g) {
                return false;
            }
            f63264f.compareAndSet(null, com.xinzhu.haunted.d.g(f63261c, "getSyncFlexTime", new Object[0]));
            f63265g = true;
            return f63264f.get() != null;
        }
        return true;
    }

    public boolean e() {
        if (f63266h.get() == null) {
            if (f63267i) {
                return false;
            }
            f63266h.compareAndSet(null, com.xinzhu.haunted.d.g(f63261c, "getSyncRunTime", new Object[0]));
            f63267i = true;
            return f63266h.get() != null;
        }
        return true;
    }

    public boolean f() {
        if (f63268j.get() == null) {
            if (f63269k) {
                return false;
            }
            f63268j.compareAndSet(null, com.xinzhu.haunted.d.g(f63261c, "isPeriodic", new Object[0]));
            f63269k = true;
            return f63268j.get() != null;
        }
        return true;
    }

    public Account g() {
        if (a()) {
            try {
                return (Account) f63270l.get().invoke(this.f63274a, new Object[0]);
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

    public Bundle h() {
        if (b()) {
            try {
                return (Bundle) f63262d.get().invoke(this.f63274a, new Object[0]);
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

    public String i() {
        if (c()) {
            try {
                return (String) f63272n.get().invoke(this.f63274a, new Object[0]);
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

    public long j() {
        if (d()) {
            try {
                return ((Long) f63264f.get().invoke(this.f63274a, new Object[0])).longValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0L;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return 0L;
            }
        }
        return 0L;
    }

    public long k() {
        if (e()) {
            try {
                return ((Long) f63266h.get().invoke(this.f63274a, new Object[0])).longValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0L;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return 0L;
            }
        }
        return 0L;
    }

    public boolean l() {
        if (f()) {
            try {
                return ((Boolean) f63268j.get().invoke(this.f63274a, new Object[0])).booleanValue();
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

    private s() {
    }
}
