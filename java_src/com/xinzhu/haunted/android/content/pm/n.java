package com.xinzhu.haunted.android.content.pm;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtUserInfo.java */
/* loaded from: classes.dex */
public final class n {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63181b = "n";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63182c = com.xinzhu.haunted.d.b("android.content.pm.UserInfo");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f63183d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63184e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Constructor> f63185f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f63186g = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63187a;

    public n(Object egoInstance) {
        this.f63187a = egoInstance;
    }

    public static boolean a(int arg0, String arg1, int arg2) {
        if (f63185f.get() == null) {
            if (f63186g) {
                return false;
            }
            AtomicReference<Constructor> atomicReference = f63185f;
            Class<?> cls = f63182c;
            Class cls2 = Integer.TYPE;
            atomicReference.compareAndSet(null, com.xinzhu.haunted.d.d(cls, "HtUserInfo", cls2, String.class, cls2));
            f63186g = true;
            return f63185f.get() != null;
        }
        return true;
    }

    public static boolean b() {
        if (f63183d.get() == null) {
            if (f63184e) {
                return false;
            }
            f63183d.compareAndSet(null, com.xinzhu.haunted.d.f(f63182c, "FLAG_PRIMARY"));
            f63184e = true;
            return f63183d.get() != null;
        }
        return true;
    }

    public static n c(int arg0, String arg1, int arg2) {
        if (a(arg0, arg1, arg2)) {
            try {
                n nVar = new n();
                nVar.f63187a = f63185f.get().newInstance(Integer.valueOf(arg0), arg1, Integer.valueOf(arg2));
                return nVar;
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

    public static int d() {
        if (b()) {
            try {
                return ((Integer) f63183d.get().get(null)).intValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    public static boolean e(int value) {
        if (b()) {
            try {
                f63183d.get().set(null, Integer.valueOf(value));
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private n() {
    }
}
