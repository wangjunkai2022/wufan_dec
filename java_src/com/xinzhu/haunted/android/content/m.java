package com.xinzhu.haunted.android.content;

import android.content.Intent;
import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIntent.java */
/* loaded from: classes.dex */
public final class m {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62987b = "m";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62988c = com.xinzhu.haunted.d.a(Intent.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Method> f62989d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62990e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Method> f62991f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f62992g = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62993a;

    public m(Object egoInstance) {
        this.f62993a = egoInstance;
    }

    public boolean a(String arg0) {
        if (f62991f.get() == null) {
            if (f62992g) {
                return false;
            }
            f62991f.compareAndSet(null, com.xinzhu.haunted.d.g(f62988c, "getIBinderExtra", String.class));
            f62992g = true;
            return f62991f.get() != null;
        }
        return true;
    }

    public boolean b(String arg0, IBinder arg1) {
        if (f62989d.get() == null) {
            if (f62990e) {
                return false;
            }
            f62989d.compareAndSet(null, com.xinzhu.haunted.d.g(f62988c, "putExtra", String.class, IBinder.class));
            f62990e = true;
            return f62989d.get() != null;
        }
        return true;
    }

    public IBinder c(String arg0) {
        if (a(arg0)) {
            try {
                return (IBinder) f62991f.get().invoke(this.f62993a, arg0);
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

    public void d(String arg0, IBinder arg1) {
        if (b(arg0, arg1)) {
            try {
                f62989d.get().invoke(this.f62993a, arg0, arg1);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
    }

    private m() {
    }
}
