package com.xinzhu.haunted.android.media.session;

import android.os.IBinder;
import android.os.IInterface;
import com.xinzhu.haunted.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtISessionManager.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63328a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63329b = d.b("android.media.session.ISessionManager");

    /* compiled from: HtISessionManager.java */
    /* renamed from: com.xinzhu.haunted.android.media.session.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0379a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63330a = d.b("android.media.session.ISessionManager$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63331b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63332c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63331b.get().invoke(null, arg0);
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
            if (f63331b.get() == null) {
                if (f63332c) {
                    return false;
                }
                f63331b.compareAndSet(null, d.g(f63330a, "asInterface", IBinder.class));
                f63332c = true;
                return f63331b.get() != null;
            }
            return true;
        }
    }
}
