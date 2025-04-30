package com.xinzhu.haunted.android.security.net.config;

import android.content.Context;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtNetworkSecurityConfigProvider.java */
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63607a = "b";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63608b = com.xinzhu.haunted.d.b("android.security.net.config.NetworkSecurityConfigProvider");

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Method> f63609c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f63610d = false;

    public static boolean a(Context arg0) {
        if (f63609c.get() == null) {
            if (f63610d) {
                return false;
            }
            f63609c.compareAndSet(null, com.xinzhu.haunted.d.g(f63608b, "install", Context.class));
            f63610d = true;
            return f63609c.get() != null;
        }
        return true;
    }

    public static void b(Context arg0) {
        if (a(arg0)) {
            try {
                f63609c.get().invoke(null, arg0);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
    }
}
