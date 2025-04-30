package com.xinzhu.haunted.android.hardware.display;

import android.os.IInterface;
import com.xinzhu.haunted.d;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtDisplayManagerGlobal.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63289b = "a";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63290c = d.b("android.hardware.display.DisplayManagerGlobal");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f63291d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63292e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Method> f63293f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f63294g = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63295a;

    public a(Object egoInstance) {
        this.f63295a = egoInstance;
    }

    public static boolean b() {
        if (f63293f.get() == null) {
            if (f63294g) {
                return false;
            }
            f63293f.compareAndSet(null, d.g(f63290c, "getInstance", new Object[0]));
            f63294g = true;
            return f63293f.get() != null;
        }
        return true;
    }

    public static Object c() {
        if (b()) {
            try {
                return f63293f.get().invoke(null, new Object[0]);
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

    public boolean a() {
        if (f63291d.get() == null) {
            if (f63292e) {
                return false;
            }
            f63291d.compareAndSet(null, d.f(f63290c, "mDm"));
            f63292e = true;
            return f63291d.get() != null;
        }
        return true;
    }

    public IInterface d() {
        if (a()) {
            try {
                return (IInterface) f63291d.get().get(this.f63295a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean e(IInterface value) {
        if (a()) {
            try {
                f63291d.get().set(this.f63295a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private a() {
    }
}
