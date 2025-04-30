package com.xinzhu.haunted.android.app;

import android.app.Application;
import android.app.Service;
import android.content.Context;
import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtService.java */
/* loaded from: classes.dex */
public final class w {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62836b = "w";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62837c = com.xinzhu.haunted.d.a(Service.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Method> f62838d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62839e = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62840a;

    public w(Object egoInstance) {
        this.f62840a = egoInstance;
    }

    public void a(Context arg0, Object arg1, String arg2, IBinder arg3, Application arg4, Object arg5) {
        if (b(arg0, arg1, arg2, arg3, arg4, arg5)) {
            try {
                f62838d.get().invoke(this.f62840a, arg0, arg1, arg2, arg3, arg4, arg5);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
    }

    public boolean b(Context arg0, Object arg1, String arg2, IBinder arg3, Application arg4, Object arg5) {
        if (f62838d.get() == null) {
            if (f62839e) {
                return false;
            }
            f62838d.compareAndSet(null, com.xinzhu.haunted.d.g(f62837c, "attach", Context.class, "android.app.ActivityThread", String.class, IBinder.class, Application.class, Object.class));
            f62839e = true;
            return f62838d.get() != null;
        }
        return true;
    }

    private w() {
    }
}
