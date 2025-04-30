package com.xinzhu.haunted.android.content;

import android.content.Intent;
import android.os.Bundle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIIntentReceiver.java */
/* loaded from: classes3.dex */
public final class k {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62969b = "k";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62970c = com.xinzhu.haunted.d.b("android.content.IIntentReceiver");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Method> f62971d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62972e = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62973a;

    public k(Object egoInstance) {
        this.f62973a = egoInstance;
    }

    public boolean a(Intent arg0, int arg1, String arg2, Bundle arg3, boolean arg4, boolean arg5, int arg6) {
        if (f62971d.get() == null) {
            if (f62972e) {
                return false;
            }
            AtomicReference<Method> atomicReference = f62971d;
            Class<?> cls = f62970c;
            Class cls2 = Integer.TYPE;
            Class cls3 = Boolean.TYPE;
            atomicReference.compareAndSet(null, com.xinzhu.haunted.d.g(cls, "performReceive", Intent.class, cls2, String.class, Bundle.class, cls3, cls3, cls2));
            f62972e = true;
            return f62971d.get() != null;
        }
        return true;
    }

    public void b(Intent arg0, int arg1, String arg2, Bundle arg3, boolean arg4, boolean arg5, int arg6) {
        if (a(arg0, arg1, arg2, arg3, arg4, arg5, arg6)) {
            try {
                f62971d.get().invoke(this.f62973a, arg0, Integer.valueOf(arg1), arg2, arg3, Boolean.valueOf(arg4), Boolean.valueOf(arg5), Integer.valueOf(arg6));
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
    }

    private k() {
    }
}
