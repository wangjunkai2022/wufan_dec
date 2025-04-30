package com.xinzhu.haunted.android.net;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtITetheringConnector.java */
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63344a = "c";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63345b = com.xinzhu.haunted.d.b("android.net.ITetheringConnector");

    /* compiled from: HtITetheringConnector.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63346a = com.xinzhu.haunted.d.b("android.net.ITetheringConnector$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63347b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63348c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63347b.get().invoke(null, arg0);
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
            if (f63347b.get() == null) {
                if (f63348c) {
                    return false;
                }
                f63347b.compareAndSet(null, com.xinzhu.haunted.d.g(f63346a, "asInterface", IBinder.class));
                f63348c = true;
                return f63347b.get() != null;
            }
            return true;
        }
    }
}
