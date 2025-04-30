package com.xinzhu.haunted.android.os.storage;

import android.os.IInterface;
import android.os.storage.StorageVolume;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtStorageManager.java */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63505b = "c";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63506c = com.xinzhu.haunted.d.b("android.os.storage.StorageManager");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f63507d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63508e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Field> f63509f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f63510g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Method> f63511h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f63512i = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63513a;

    public c(Object egoInstance) {
        this.f63513a = egoInstance;
    }

    public static boolean b() {
        if (f63507d.get() == null) {
            if (f63508e) {
                return false;
            }
            f63507d.compareAndSet(null, com.xinzhu.haunted.d.f(f63506c, "sStorageManager"));
            f63508e = true;
            return f63507d.get() != null;
        }
        return true;
    }

    public static boolean c(int arg0, int arg1) {
        if (f63511h.get() == null) {
            if (f63512i) {
                return false;
            }
            AtomicReference<Method> atomicReference = f63511h;
            Class<?> cls = f63506c;
            Class cls2 = Integer.TYPE;
            atomicReference.compareAndSet(null, com.xinzhu.haunted.d.g(cls, "getVolumeList", cls2, cls2));
            f63512i = true;
            return f63511h.get() != null;
        }
        return true;
    }

    public static StorageVolume[] d(int arg0, int arg1) {
        if (c(arg0, arg1)) {
            try {
                return (StorageVolume[]) f63511h.get().invoke(null, Integer.valueOf(arg0), Integer.valueOf(arg1));
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

    public static IInterface f() {
        if (b()) {
            try {
                return (IInterface) f63507d.get().get(null);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public static boolean h(IInterface value) {
        if (b()) {
            try {
                f63507d.get().set(null, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean a() {
        if (f63509f.get() == null) {
            if (f63510g) {
                return false;
            }
            f63509f.compareAndSet(null, com.xinzhu.haunted.d.f(f63506c, "mStorageManager"));
            f63510g = true;
            return f63509f.get() != null;
        }
        return true;
    }

    public IInterface e() {
        if (a()) {
            try {
                return (IInterface) f63509f.get().get(this.f63513a);
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
                f63509f.get().set(this.f63513a, value);
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
