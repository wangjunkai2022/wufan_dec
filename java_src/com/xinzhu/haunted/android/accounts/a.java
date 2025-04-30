package com.xinzhu.haunted.android.accounts;

import android.accounts.Account;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtAccount.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62365b = "a";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62366c = com.xinzhu.haunted.d.a(Account.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Method> f62367d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62368e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Method> f62369f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f62370g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Method> f62371h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f62372i = false;

    /* renamed from: j  reason: collision with root package name */
    private static AtomicReference<Constructor> f62373j = new AtomicReference<>();

    /* renamed from: k  reason: collision with root package name */
    private static boolean f62374k = false;

    /* renamed from: l  reason: collision with root package name */
    private static AtomicReference<Constructor> f62375l = new AtomicReference<>();

    /* renamed from: m  reason: collision with root package name */
    private static boolean f62376m = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62377a;

    public a(Object egoInstance) {
        this.f62377a = egoInstance;
    }

    public static boolean a(Account arg0, String arg1) {
        if (f62373j.get() == null) {
            if (f62374k) {
                return false;
            }
            f62373j.compareAndSet(null, com.xinzhu.haunted.d.d(f62366c, "HtAccount", Account.class, String.class));
            f62374k = true;
            return f62373j.get() != null;
        }
        return true;
    }

    public static boolean b(String arg0, String arg1, String arg2) {
        if (f62375l.get() == null) {
            if (f62376m) {
                return false;
            }
            f62375l.compareAndSet(null, com.xinzhu.haunted.d.d(f62366c, "HtAccount", String.class, String.class, String.class));
            f62376m = true;
            return f62375l.get() != null;
        }
        return true;
    }

    public static a f(Account arg0, String arg1) {
        if (a(arg0, arg1)) {
            try {
                a aVar = new a();
                aVar.f62377a = f62373j.get().newInstance(arg0, arg1);
                return aVar;
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

    public static a g(String arg0, String arg1, String arg2) {
        if (b(arg0, arg1, arg2)) {
            try {
                a aVar = new a();
                aVar.f62377a = f62375l.get().newInstance(arg0, arg1, arg2);
                return aVar;
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

    public boolean c() {
        if (f62369f.get() == null) {
            if (f62370g) {
                return false;
            }
            f62369f.compareAndSet(null, com.xinzhu.haunted.d.g(f62366c, "getAccessId", new Object[0]));
            f62370g = true;
            return f62369f.get() != null;
        }
        return true;
    }

    public boolean d(String arg0, String arg1) {
        if (f62371h.get() == null) {
            if (f62372i) {
                return false;
            }
            f62371h.compareAndSet(null, com.xinzhu.haunted.d.g(f62366c, "putString", String.class, String.class));
            f62372i = true;
            return f62371h.get() != null;
        }
        return true;
    }

    public boolean e() {
        if (f62367d.get() == null) {
            if (f62368e) {
                return false;
            }
            f62367d.compareAndSet(null, com.xinzhu.haunted.d.g(f62366c, "toSafeString", new Object[0]));
            f62368e = true;
            return f62367d.get() != null;
        }
        return true;
    }

    public String h() {
        if (c()) {
            try {
                return (String) f62369f.get().invoke(this.f62377a, new Object[0]);
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

    public String i(String arg0, String arg1) {
        if (d(arg0, arg1)) {
            try {
                return (String) f62371h.get().invoke(this.f62377a, arg0, arg1);
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

    public String j() {
        if (e()) {
            try {
                return (String) f62367d.get().invoke(this.f62377a, new Object[0]);
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

    private a() {
    }
}
