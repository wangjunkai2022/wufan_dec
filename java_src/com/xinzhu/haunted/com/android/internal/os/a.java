package com.xinzhu.haunted.com.android.internal.os;

import android.os.IBinder;
import android.os.IInterface;
import com.xinzhu.haunted.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIDropBoxManagerService.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63823a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63824b = d.b("com.android.internal.os.IDropBoxManagerService");

    /* compiled from: HtIDropBoxManagerService.java */
    /* renamed from: com.xinzhu.haunted.com.android.internal.os.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0393a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63825a = d.b("com.android.internal.os.IDropBoxManagerService$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63826b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63827c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63826b.get().invoke(null, arg0);
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
            if (f63826b.get() == null) {
                if (f63827c) {
                    return false;
                }
                f63826b.compareAndSet(null, d.g(f63825a, "asInterface", IBinder.class));
                f63827c = true;
                return f63826b.get() != null;
            }
            return true;
        }
    }
}
