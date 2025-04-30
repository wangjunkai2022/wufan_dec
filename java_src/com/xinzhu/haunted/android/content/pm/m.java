package com.xinzhu.haunted.android.content.pm;

import android.content.pm.SigningInfo;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtSigningInfo.java */
/* loaded from: classes3.dex */
public final class m {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63172b = "m";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63173c = com.xinzhu.haunted.d.a(SigningInfo.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f63174d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63175e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Constructor> f63176f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f63177g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Constructor> f63178h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f63179i = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63180a;

    public m(Object egoInstance) {
        this.f63180a = egoInstance;
    }

    public static boolean a(Object arg0) {
        if (f63176f.get() == null) {
            if (f63177g) {
                return false;
            }
            f63176f.compareAndSet(null, com.xinzhu.haunted.d.d(f63173c, "HtSigningInfo", "android.content.pm.PackageParser$SigningDetails"));
            f63177g = true;
            return f63176f.get() != null;
        }
        return true;
    }

    public static boolean b() {
        if (f63178h.get() == null) {
            if (f63179i) {
                return false;
            }
            f63178h.compareAndSet(null, com.xinzhu.haunted.d.d(f63173c, "HtSigningInfo", new Object[0]));
            f63179i = true;
            return f63178h.get() != null;
        }
        return true;
    }

    public static m d() {
        if (b()) {
            try {
                m mVar = new m();
                mVar.f63180a = f63178h.get().newInstance(new Object[0]);
                return mVar;
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

    public static m e(Object arg0) {
        if (a(arg0)) {
            try {
                m mVar = new m();
                mVar.f63180a = f63176f.get().newInstance(arg0);
                return mVar;
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
        if (f63174d.get() == null) {
            if (f63175e) {
                return false;
            }
            f63174d.compareAndSet(null, com.xinzhu.haunted.d.f(f63173c, "mSigningDetails"));
            f63175e = true;
            return f63174d.get() != null;
        }
        return true;
    }

    public Object f() {
        if (c()) {
            try {
                return f63174d.get().get(this.f63180a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean g(Object value) {
        if (c()) {
            try {
                f63174d.get().set(this.f63180a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private m() {
    }
}
