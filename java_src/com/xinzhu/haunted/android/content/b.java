package com.xinzhu.haunted.android.content;

import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtAttributionSourceState.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62884b = "b";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62885c = com.xinzhu.haunted.d.b("android.content.AttributionSourceState");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f62886d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62887e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Field> f62888f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f62889g = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62890a;

    public b(Object egoInstance) {
        this.f62890a = egoInstance;
    }

    public boolean a() {
        if (f62886d.get() == null) {
            if (f62887e) {
                return false;
            }
            f62886d.compareAndSet(null, com.xinzhu.haunted.d.f(f62885c, "packageName"));
            f62887e = true;
            return f62886d.get() != null;
        }
        return true;
    }

    public boolean b() {
        if (f62888f.get() == null) {
            if (f62889g) {
                return false;
            }
            f62888f.compareAndSet(null, com.xinzhu.haunted.d.f(f62885c, "uid"));
            f62889g = true;
            return f62888f.get() != null;
        }
        return true;
    }

    public String c() {
        if (a()) {
            try {
                return (String) f62886d.get().get(this.f62890a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public Integer d() {
        if (b()) {
            try {
                return (Integer) f62888f.get().get(this.f62890a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean e(String value) {
        if (a()) {
            try {
                f62886d.get().set(this.f62890a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean f(Integer value) {
        if (b()) {
            try {
                f62888f.get().set(this.f62890a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private b() {
    }
}
