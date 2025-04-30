package com.xinzhu.haunted.android.net.wifi;

import android.os.IBinder;
import android.os.IInterface;
import com.xinzhu.haunted.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIWifiManager.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63352a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63353b = d.b("android.net.wifi.IWifiManager");

    /* compiled from: HtIWifiManager.java */
    /* renamed from: com.xinzhu.haunted.android.net.wifi.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0381a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63354a = d.b("android.net.wifi.IWifiManager$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f63355b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63356c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f63355b.get().invoke(null, arg0);
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
            if (f63355b.get() == null) {
                if (f63356c) {
                    return false;
                }
                f63355b.compareAndSet(null, d.g(f63354a, "asInterface", IBinder.class));
                f63356c = true;
                return f63355b.get() != null;
            }
            return true;
        }
    }
}
