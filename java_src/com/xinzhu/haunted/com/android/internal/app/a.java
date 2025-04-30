package com.xinzhu.haunted.com.android.internal.app;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIAppOpsService.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63753a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63754b = com.xinzhu.haunted.d.b("com.android.internal.app.IAppOpsService");

    /* compiled from: HtIAppOpsService.java */
    /* renamed from: com.xinzhu.haunted.com.android.internal.app.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0390a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63755a = com.xinzhu.haunted.d.b("com.android.internal.app.IAppOpsService$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63756b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63757c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63756b.get().invoke(null, arg0);
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
            if (f63756b.get() == null) {
                if (f63757c) {
                    return false;
                }
                f63756b.compareAndSet(null, com.xinzhu.haunted.d.g(f63755a, "asInterface", IBinder.class));
                f63757c = true;
                return f63756b.get() != null;
            }
            return true;
        }
    }
}
