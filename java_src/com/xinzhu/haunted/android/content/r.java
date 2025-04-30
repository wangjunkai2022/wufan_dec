package com.xinzhu.haunted.android.content;

import android.accounts.Account;
import android.content.SyncInfo;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtSyncInfo.java */
/* loaded from: classes3.dex */
public final class r {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63233b = "r";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63234c = com.xinzhu.haunted.d.a(SyncInfo.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f63235d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63236e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Method> f63237f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f63238g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Constructor> f63239h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f63240i = false;

    /* renamed from: j  reason: collision with root package name */
    private static AtomicReference<Constructor> f63241j = new AtomicReference<>();

    /* renamed from: k  reason: collision with root package name */
    private static boolean f63242k = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63243a;

    public r(Object egoInstance) {
        this.f63243a = egoInstance;
    }

    public static boolean a(int arg0, Account arg1, String arg2, long arg3) {
        if (f63239h.get() == null) {
            if (f63240i) {
                return false;
            }
            f63239h.compareAndSet(null, com.xinzhu.haunted.d.d(f63234c, "HtSyncInfo", Integer.TYPE, Account.class, String.class, Long.TYPE));
            f63240i = true;
            return f63239h.get() != null;
        }
        return true;
    }

    public static boolean b(SyncInfo arg0) {
        if (f63241j.get() == null) {
            if (f63242k) {
                return false;
            }
            f63241j.compareAndSet(null, com.xinzhu.haunted.d.d(f63234c, "HtSyncInfo", SyncInfo.class));
            f63242k = true;
            return f63241j.get() != null;
        }
        return true;
    }

    public static boolean d(int arg0, String arg1, long arg2) {
        if (f63237f.get() == null) {
            if (f63238g) {
                return false;
            }
            f63237f.compareAndSet(null, com.xinzhu.haunted.d.g(f63234c, "createAccountRedacted", Integer.TYPE, String.class, Long.TYPE));
            f63238g = true;
            return f63237f.get() != null;
        }
        return true;
    }

    public static r e(int arg0, Account arg1, String arg2, long arg3) {
        if (a(arg0, arg1, arg2, arg3)) {
            try {
                r rVar = new r();
                rVar.f63243a = f63239h.get().newInstance(Integer.valueOf(arg0), arg1, arg2, Long.valueOf(arg3));
                return rVar;
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

    public static r f(SyncInfo arg0) {
        if (b(arg0)) {
            try {
                r rVar = new r();
                rVar.f63243a = f63241j.get().newInstance(arg0);
                return rVar;
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

    public static SyncInfo g(int arg0, String arg1, long arg2) {
        if (d(arg0, arg1, arg2)) {
            try {
                return (SyncInfo) f63237f.get().invoke(null, Integer.valueOf(arg0), arg1, Long.valueOf(arg2));
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

    public boolean c() {
        if (f63235d.get() == null) {
            if (f63236e) {
                return false;
            }
            f63235d.compareAndSet(null, com.xinzhu.haunted.d.f(f63234c, "authorityId"));
            f63236e = true;
            return f63235d.get() != null;
        }
        return true;
    }

    public int h() {
        if (c()) {
            try {
                return ((Integer) f63235d.get().get(this.f63243a)).intValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    public boolean i(int value) {
        if (c()) {
            try {
                f63235d.get().set(this.f63243a, Integer.valueOf(value));
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private r() {
    }
}
