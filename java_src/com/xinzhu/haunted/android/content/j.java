package com.xinzhu.haunted.android.content;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIContentService.java */
/* loaded from: classes3.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62964a = "j";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f62965b = com.xinzhu.haunted.d.b("android.content.IContentService");

    /* compiled from: HtIContentService.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f62966a = com.xinzhu.haunted.d.b("android.content.IContentService$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f62967b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f62968c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f62967b.get().invoke(null, arg0);
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
            if (f62967b.get() == null) {
                if (f62968c) {
                    return false;
                }
                f62967b.compareAndSet(null, com.xinzhu.haunted.d.g(f62966a, "asInterface", IBinder.class));
                f62968c = true;
                return f62967b.get() != null;
            }
            return true;
        }
    }
}
