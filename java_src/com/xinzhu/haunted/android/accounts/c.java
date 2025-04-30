package com.xinzhu.haunted.android.accounts;

import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.os.Handler;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtAccountManager.java */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62383b = "c";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62384c = com.xinzhu.haunted.d.a(AccountManager.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f62385d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62386e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Method> f62387f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f62388g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Method> f62389h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f62390i = false;

    /* renamed from: j  reason: collision with root package name */
    private static AtomicReference<Method> f62391j = new AtomicReference<>();

    /* renamed from: k  reason: collision with root package name */
    private static boolean f62392k = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62393a;

    public c(Object egoInstance) {
        this.f62393a = egoInstance;
    }

    public static boolean d() {
        if (f62389h.get() == null) {
            if (f62390i) {
                return false;
            }
            f62389h.compareAndSet(null, com.xinzhu.haunted.d.g(f62384c, "invalidateLocalAccountsDataCaches", new Object[0]));
            f62390i = true;
            return f62389h.get() != null;
        }
        return true;
    }

    public static void h() {
        if (d()) {
            try {
                f62389h.get().invoke(null, new Object[0]);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
    }

    public boolean a() {
        if (f62385d.get() == null) {
            if (f62386e) {
                return false;
            }
            f62385d.compareAndSet(null, com.xinzhu.haunted.d.f(f62384c, "mService"));
            f62386e = true;
            return f62385d.get() != null;
        }
        return true;
    }

    public boolean b() {
        if (f62391j.get() == null) {
            if (f62392k) {
                return false;
            }
            f62391j.compareAndSet(null, com.xinzhu.haunted.d.g(f62384c, "disableLocalAccountCaches", new Object[0]));
            f62392k = true;
            return f62391j.get() != null;
        }
        return true;
    }

    public boolean c(String arg0, String arg1, AccountManagerCallback arg2, Handler arg3) {
        if (f62387f.get() == null) {
            if (f62388g) {
                return false;
            }
            f62387f.compareAndSet(null, com.xinzhu.haunted.d.g(f62384c, "getAuthTokenLabel", String.class, String.class, AccountManagerCallback.class, Handler.class));
            f62388g = true;
            return f62387f.get() != null;
        }
        return true;
    }

    public void e() {
        if (b()) {
            try {
                f62391j.get().invoke(this.f62393a, new Object[0]);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
    }

    public AccountManagerFuture<String> f(String arg0, String arg1, AccountManagerCallback arg2, Handler arg3) {
        if (c(arg0, arg1, arg2, arg3)) {
            try {
                return (AccountManagerFuture) f62387f.get().invoke(this.f62393a, arg0, arg1, arg2, arg3);
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

    public d g() {
        if (a()) {
            try {
                return new d(f62385d.get().get(this.f62393a));
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean i(d value) {
        if (a()) {
            try {
                f62385d.get().set(this.f62393a, value.f62398a);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private c() {
    }
}
