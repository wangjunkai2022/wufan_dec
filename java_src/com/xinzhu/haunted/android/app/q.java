package com.xinzhu.haunted.android.app;

import android.content.ComponentName;
import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIServiceConnection.java */
/* loaded from: classes3.dex */
public final class q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62731b = "q";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62732c = com.xinzhu.haunted.d.b("android.app.IServiceConnection");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Method> f62733d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62734e = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62735a;

    public q(Object egoInstance) {
        this.f62735a = egoInstance;
    }

    public boolean a(ComponentName arg0, IBinder arg1, boolean arg2) {
        if (f62733d.get() == null) {
            if (f62734e) {
                return false;
            }
            f62733d.compareAndSet(null, com.xinzhu.haunted.d.g(f62732c, "connected", ComponentName.class, IBinder.class, Boolean.TYPE));
            f62734e = true;
            return f62733d.get() != null;
        }
        return true;
    }

    public void b(ComponentName arg0, IBinder arg1, boolean arg2) {
        if (a(arg0, arg1, arg2)) {
            try {
                f62733d.get().invoke(this.f62735a, arg0, arg1, Boolean.valueOf(arg2));
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
    }

    private q() {
    }
}
