package com.xinzhu.haunted.android.view;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIWindowManager.java */
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63648a = "c";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63649b = com.xinzhu.haunted.d.b("android.view.IWindowManager");

    /* compiled from: HtIWindowManager.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63650a = com.xinzhu.haunted.d.b("android.view.IWindowManager$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63651b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63652c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63651b.get().invoke(null, arg0);
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
            if (f63651b.get() == null) {
                if (f63652c) {
                    return false;
                }
                f63651b.compareAndSet(null, com.xinzhu.haunted.d.g(f63650a, "asInterface", IBinder.class));
                f63652c = true;
                return f63651b.get() != null;
            }
            return true;
        }
    }
}
