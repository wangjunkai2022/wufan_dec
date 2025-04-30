package com.xinzhu.haunted.android.media;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIMediaRouterService.java */
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63321a = "b";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63322b = com.xinzhu.haunted.d.b("android.media.IMediaRouterService");

    /* compiled from: HtIMediaRouterService.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63323a = com.xinzhu.haunted.d.b("android.media.IMediaRouterService$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63324b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63325c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63324b.get().invoke(null, arg0);
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
            if (f63324b.get() == null) {
                if (f63325c) {
                    return false;
                }
                f63324b.compareAndSet(null, com.xinzhu.haunted.d.g(f63323a, "asInterface", IBinder.class));
                f63325c = true;
                return f63324b.get() != null;
            }
            return true;
        }
    }
}
