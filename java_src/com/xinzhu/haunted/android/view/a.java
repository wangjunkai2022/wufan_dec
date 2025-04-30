package com.xinzhu.haunted.android.view;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIAutoFillManager.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63630a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63631b = com.xinzhu.haunted.d.b("android.view.autofill.IAutoFillManager");

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Method> f63632c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f63633d = false;

    /* compiled from: HtIAutoFillManager.java */
    /* renamed from: com.xinzhu.haunted.android.view.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0387a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63634a = com.xinzhu.haunted.d.b("android.view.autofill.IAutoFillManager$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63635b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63636c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63635b.get().invoke(null, arg0);
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

        public static boolean b(IBinder arg0) {
            if (f63635b.get() == null) {
                if (f63636c) {
                    return false;
                }
                f63635b.compareAndSet(null, com.xinzhu.haunted.d.g(f63634a, "asInterface", IBinder.class));
                f63636c = true;
                return f63635b.get() != null;
            }
            return true;
        }
    }

    public static boolean a(Bundle arg0, boolean arg1) {
        if (f63632c.get() == null) {
            if (f63633d) {
                return false;
            }
            f63632c.compareAndSet(null, com.xinzhu.haunted.d.g(f63631b, "setDefusable", Bundle.class, Boolean.TYPE));
            f63633d = true;
            return f63632c.get() != null;
        }
        return true;
    }

    public static Bundle b(Bundle arg0, boolean arg1) {
        if (a(arg0, arg1)) {
            try {
                return (Bundle) f63632c.get().invoke(null, arg0, Boolean.valueOf(arg1));
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
}
