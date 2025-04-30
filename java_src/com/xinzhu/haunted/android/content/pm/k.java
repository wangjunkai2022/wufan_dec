package com.xinzhu.haunted.android.content.pm;

import android.content.pm.SharedLibraryInfo;
import android.content.pm.VersionedPackage;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtSharedLibraryInfo.java */
/* loaded from: classes3.dex */
public final class k {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63142b = "k";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63143c = com.xinzhu.haunted.d.a(SharedLibraryInfo.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Method> f63144d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63145e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Method> f63146f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f63147g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Constructor> f63148h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f63149i = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63150a;

    public k(Object egoInstance) {
        this.f63150a = egoInstance;
    }

    public static boolean a(String arg0, String arg1, List arg2, String arg3, long arg4, int arg5, VersionedPackage arg6, List arg7, List arg8, boolean arg9) {
        if (f63148h.get() == null) {
            if (f63149i) {
                return false;
            }
            f63148h.compareAndSet(null, com.xinzhu.haunted.d.d(f63143c, "HtSharedLibraryInfo", String.class, String.class, List.class, String.class, Long.TYPE, Integer.TYPE, VersionedPackage.class, List.class, List.class, Boolean.TYPE));
            f63149i = true;
            return f63148h.get() != null;
        }
        return true;
    }

    public static k d(String arg0, String arg1, List arg2, String arg3, long arg4, int arg5, VersionedPackage arg6, List arg7, List arg8, boolean arg9) {
        if (a(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)) {
            try {
                k kVar = new k();
                kVar.f63150a = f63148h.get().newInstance(arg0, arg1, arg2, arg3, Long.valueOf(arg4), Integer.valueOf(arg5), arg6, arg7, arg8, Boolean.valueOf(arg9));
                return kVar;
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
        if (f63144d.get() == null) {
            if (f63145e) {
                return false;
            }
            f63144d.compareAndSet(null, com.xinzhu.haunted.d.g(f63143c, "getName", new Object[0]));
            f63145e = true;
            return f63144d.get() != null;
        }
        return true;
    }

    public boolean c() {
        if (f63146f.get() == null) {
            if (f63147g) {
                return false;
            }
            f63146f.compareAndSet(null, com.xinzhu.haunted.d.g(f63143c, "getPath", new Object[0]));
            f63147g = true;
            return f63146f.get() != null;
        }
        return true;
    }

    public String e() {
        if (b()) {
            try {
                return (String) f63144d.get().invoke(this.f63150a, new Object[0]);
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

    public String f() {
        if (c()) {
            try {
                return (String) f63146f.get().invoke(this.f63150a, new Object[0]);
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

    private k() {
    }
}
