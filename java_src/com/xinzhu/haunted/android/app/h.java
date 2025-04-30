package com.xinzhu.haunted.android.app;

import android.app.AppOpsManager;
import android.os.IInterface;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtAppOpsManager.java */
/* loaded from: classes.dex */
public final class h {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62606b = "h";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62607c = com.xinzhu.haunted.d.a(AppOpsManager.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f62608d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62609e = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62610a;

    public h(Object egoInstance) {
        this.f62610a = egoInstance;
    }

    public boolean a() {
        if (f62608d.get() == null) {
            if (f62609e) {
                return false;
            }
            f62608d.compareAndSet(null, com.xinzhu.haunted.d.f(f62607c, "mService"));
            f62609e = true;
            return f62608d.get() != null;
        }
        return true;
    }

    public IInterface b() {
        if (a()) {
            try {
                return (IInterface) f62608d.get().get(this.f62610a);
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
                f62608d.get().set(this.f62610a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private h() {
    }
}
