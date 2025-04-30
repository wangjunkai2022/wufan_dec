package com.xinzhu.haunted.android.os;

import android.os.UserHandle;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtUserHandle.java */
/* loaded from: classes.dex */
public final class u {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63540b = "u";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63541c = com.xinzhu.haunted.d.a(UserHandle.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Method> f63542d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63543e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Constructor> f63544f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f63545g = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63546a;

    public u(Object egoInstance) {
        this.f63546a = egoInstance;
    }

    public static boolean a(int arg0) {
        if (f63544f.get() == null) {
            if (f63545g) {
                return false;
            }
            f63544f.compareAndSet(null, com.xinzhu.haunted.d.d(f63541c, "HtUserHandle", Integer.TYPE));
            f63545g = true;
            return f63544f.get() != null;
        }
        return true;
    }

    public static u c(int arg0) {
        if (a(arg0)) {
            try {
                u uVar = new u();
                uVar.f63546a = f63544f.get().newInstance(Integer.valueOf(arg0));
                return uVar;
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

    public boolean b() {
        if (f63542d.get() == null) {
            if (f63543e) {
                return false;
            }
            f63542d.compareAndSet(null, com.xinzhu.haunted.d.g(f63541c, "getIdentifier", new Object[0]));
            f63543e = true;
            return f63542d.get() != null;
        }
        return true;
    }

    public int getIdentifier() {
        if (b()) {
            try {
                return ((Integer) f63542d.get().invoke(this.f63546a, new Object[0])).intValue();
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

    private u() {
    }
}
