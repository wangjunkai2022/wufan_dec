package com.xinzhu.haunted.android.net;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtINetworkScoreService.java */
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63339a = "b";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63340b = com.xinzhu.haunted.d.b("android.net.INetworkScoreService");

    /* compiled from: HtINetworkScoreService.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63341a = com.xinzhu.haunted.d.b("android.net.INetworkScoreService$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63342b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63343c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63342b.get().invoke(null, arg0);
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
            if (f63342b.get() == null) {
                if (f63343c) {
                    return false;
                }
                f63342b.compareAndSet(null, com.xinzhu.haunted.d.g(f63341a, "asInterface", IBinder.class));
                f63343c = true;
                return f63342b.get() != null;
            }
            return true;
        }
    }
}
