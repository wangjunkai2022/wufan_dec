package com.xinzhu.haunted.android.sec.clipboard;

import android.os.IBinder;
import android.os.IInterface;
import com.xinzhu.haunted.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIClipboardService.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63597a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63598b = d.b("android.sec.clipboard.IClipboardService");

    /* compiled from: HtIClipboardService.java */
    /* renamed from: com.xinzhu.haunted.android.sec.clipboard.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0386a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63599a = d.b("android.sec.clipboard.IClipboardService$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63600b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63601c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63600b.get().invoke(null, arg0);
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
            if (f63600b.get() == null) {
                if (f63601c) {
                    return false;
                }
                f63600b.compareAndSet(null, d.g(f63599a, "asInterface", IBinder.class));
                f63601c = true;
                return f63600b.get() != null;
            }
            return true;
        }
    }
}
