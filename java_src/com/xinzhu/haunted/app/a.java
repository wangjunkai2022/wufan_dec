package com.xinzhu.haunted.app;

import com.xinzhu.haunted.d;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtHwApiCacheManagerEx.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63665b = "a";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63666c = d.b("huawei.android.app.HwApiCacheMangerEx");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f63667d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63668e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Method> f63669f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f63670g = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63671a;

    public a(Object egoInstance) {
        this.f63671a = egoInstance;
    }

    public static boolean b() {
        if (f63669f.get() == null) {
            if (f63670g) {
                return false;
            }
            f63669f.compareAndSet(null, d.g(f63666c, "getDefault", new Object[0]));
            f63670g = true;
            return f63669f.get() != null;
        }
        return true;
    }

    public static a c() {
        if (b()) {
            try {
                return new a(f63669f.get().invoke(null, new Object[0]));
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
        if (f63667d.get() == null) {
            if (f63668e) {
                return false;
            }
            f63667d.compareAndSet(null, d.f(f63666c, "mPkg"));
            f63668e = true;
            return f63667d.get() != null;
        }
        return true;
    }

    public Object d() {
        if (a()) {
            try {
                return f63667d.get().get(this.f63671a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean e(Object value) {
        if (a()) {
            try {
                f63667d.get().set(this.f63671a, value);
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
