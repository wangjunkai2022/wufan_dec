package com.xinzhu.haunted.android.app;

import android.os.IInterface;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtApplicationPackageManager.java */
/* loaded from: classes.dex */
public final class i {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62618b = "i";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62619c = com.xinzhu.haunted.d.b("android.app.ApplicationPackageManager");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f62620d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62621e = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62622a;

    public i(Object egoInstance) {
        this.f62622a = egoInstance;
    }

    public boolean a() {
        if (f62620d.get() == null) {
            if (f62621e) {
                return false;
            }
            f62620d.compareAndSet(null, com.xinzhu.haunted.d.f(f62619c, "mPermissionManager"));
            f62621e = true;
            return f62620d.get() != null;
        }
        return true;
    }

    public IInterface b() {
        if (a()) {
            try {
                return (IInterface) f62620d.get().get(this.f62622a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean c(IInterface value) {
        if (a()) {
            try {
                f62620d.get().set(this.f62622a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private i() {
    }
}
