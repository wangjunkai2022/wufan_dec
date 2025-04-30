package com.xinzhu.haunted.android.content;

import android.accounts.Account;
import android.content.PeriodicSync;
import android.os.Bundle;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtPeriodicSync.java */
/* loaded from: classes3.dex */
public final class p {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63020b = "p";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63021c = com.xinzhu.haunted.d.a(PeriodicSync.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f63022d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63023e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Constructor> f63024f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f63025g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Constructor> f63026h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f63027i = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63028a;

    public p(Object egoInstance) {
        this.f63028a = egoInstance;
    }

    public static boolean a(Account arg0, String arg1, Bundle arg2, long arg3, long arg4) {
        if (f63024f.get() == null) {
            if (f63025g) {
                return false;
            }
            AtomicReference<Constructor> atomicReference = f63024f;
            Class<?> cls = f63021c;
            Class cls2 = Long.TYPE;
            atomicReference.compareAndSet(null, com.xinzhu.haunted.d.d(cls, "HtPeriodicSync", Account.class, String.class, Bundle.class, cls2, cls2));
            f63025g = true;
            return f63024f.get() != null;
        }
        return true;
    }

    public static boolean b(PeriodicSync arg0) {
        if (f63026h.get() == null) {
            if (f63027i) {
                return false;
            }
            f63026h.compareAndSet(null, com.xinzhu.haunted.d.d(f63021c, "HtPeriodicSync", PeriodicSync.class));
            f63027i = true;
            return f63026h.get() != null;
        }
        return true;
    }

    public static p d(Account arg0, String arg1, Bundle arg2, long arg3, long arg4) {
        if (a(arg0, arg1, arg2, arg3, arg4)) {
            try {
                p pVar = new p();
                pVar.f63028a = f63024f.get().newInstance(arg0, arg1, arg2, Long.valueOf(arg3), Long.valueOf(arg4));
                return pVar;
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

    public static p e(PeriodicSync arg0) {
        if (b(arg0)) {
            try {
                p pVar = new p();
                pVar.f63028a = f63026h.get().newInstance(arg0);
                return pVar;
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
        if (f63022d.get() == null) {
            if (f63023e) {
                return false;
            }
            f63022d.compareAndSet(null, com.xinzhu.haunted.d.f(f63021c, "flexTime"));
            f63023e = true;
            return f63022d.get() != null;
        }
        return true;
    }

    public long f() {
        if (c()) {
            try {
                return ((Long) f63022d.get().get(this.f63028a)).longValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0L;
            }
        }
        return 0L;
    }

    public boolean g(long value) {
        if (c()) {
            try {
                f63022d.get().set(this.f63028a, Long.valueOf(value));
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private p() {
    }
}
