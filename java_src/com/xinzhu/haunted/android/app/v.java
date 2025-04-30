package com.xinzhu.haunted.android.app;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.UserHandle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtPendingIntent.java */
/* loaded from: classes3.dex */
public final class v {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62829b = "v";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62830c = com.xinzhu.haunted.d.b("android.app.PendingIntent");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Method> f62831d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62832e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Method> f62833f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f62834g = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62835a;

    public v(Object egoInstance) {
        this.f62835a = egoInstance;
    }

    public static boolean a(Context arg0, int arg1, Intent arg2, int arg3, Bundle arg4, UserHandle arg5) {
        if (f62831d.get() == null) {
            if (f62832e) {
                return false;
            }
            AtomicReference<Method> atomicReference = f62831d;
            Class<?> cls = f62830c;
            Class cls2 = Integer.TYPE;
            atomicReference.compareAndSet(null, com.xinzhu.haunted.d.g(cls, "getActivityAsUser", Context.class, cls2, Intent.class, cls2, Bundle.class, UserHandle.class));
            f62832e = true;
            return f62831d.get() != null;
        }
        return true;
    }

    public static PendingIntent c(Context arg0, int arg1, Intent arg2, int arg3, Bundle arg4, UserHandle arg5) {
        if (a(arg0, arg1, arg2, arg3, arg4, arg5)) {
            try {
                return (PendingIntent) f62831d.get().invoke(null, arg0, Integer.valueOf(arg1), arg2, Integer.valueOf(arg3), arg4, arg5);
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

    public boolean b() {
        if (f62833f.get() == null) {
            if (f62834g) {
                return false;
            }
            f62833f.compareAndSet(null, com.xinzhu.haunted.d.g(f62830c, "getIntentSender", new Object[0]));
            f62834g = true;
            return f62833f.get() != null;
        }
        return true;
    }

    public IntentSender d() {
        if (b()) {
            try {
                return (IntentSender) f62833f.get().invoke(this.f62835a, new Object[0]);
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

    private v() {
    }
}
