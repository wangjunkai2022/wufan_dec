package com.xinzhu.haunted.android.view;

import android.os.IInterface;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtWindowManagerGlobal.java */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63653a = "d";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63654b = com.xinzhu.haunted.d.b("android.view.WindowManagerGlobal");

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Field> f63655c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f63656d = false;

    /* renamed from: e  reason: collision with root package name */
    private static AtomicReference<Field> f63657e = new AtomicReference<>();

    /* renamed from: f  reason: collision with root package name */
    private static boolean f63658f = false;

    public static boolean a() {
        if (f63657e.get() == null) {
            if (f63658f) {
                return false;
            }
            f63657e.compareAndSet(null, com.xinzhu.haunted.d.f(f63654b, "ADD_PERMISSION_DENIED"));
            f63658f = true;
            return f63657e.get() != null;
        }
        return true;
    }

    public static boolean b() {
        if (f63655c.get() == null) {
            if (f63656d) {
                return false;
            }
            f63655c.compareAndSet(null, com.xinzhu.haunted.d.f(f63654b, "sWindowManagerService"));
            f63656d = true;
            return f63655c.get() != null;
        }
        return true;
    }

    public static int c() {
        if (a()) {
            try {
                return ((Integer) f63657e.get().get(null)).intValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    public static IInterface d() {
        if (b()) {
            try {
                return (IInterface) f63655c.get().get(null);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public static boolean e(int value) {
        if (a()) {
            try {
                f63657e.get().set(null, Integer.valueOf(value));
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public static boolean f(IInterface value) {
        if (b()) {
            try {
                f63655c.get().set(null, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }
}
