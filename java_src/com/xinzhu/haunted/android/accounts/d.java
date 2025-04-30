package com.xinzhu.haunted.android.accounts;

import android.os.IInterface;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIAccountManager.java */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62394b = "d";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62395c = com.xinzhu.haunted.d.b("android.accounts.IAccountManager");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f62396d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62397e = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62398a;

    /* compiled from: HtIAccountManager.java */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f62399a = com.xinzhu.haunted.d.b("android.accounts.IAccountManager$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f62400b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f62401c = false;

        public static IInterface a() {
            if (b()) {
                try {
                    return (IInterface) f62400b.get().invoke(null, new Object[0]);
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

        public static boolean b() {
            if (f62400b.get() == null) {
                if (f62401c) {
                    return false;
                }
                f62400b.compareAndSet(null, com.xinzhu.haunted.d.g(f62399a, "asInterface", new Object[0]));
                f62401c = true;
                return f62400b.get() != null;
            }
            return true;
        }
    }

    public d(Object egoInstance) {
        this.f62398a = egoInstance;
    }

    public boolean a() {
        if (f62396d.get() == null) {
            if (f62397e) {
                return false;
            }
            f62396d.compareAndSet(null, com.xinzhu.haunted.d.f(f62395c, "_stub"));
            f62397e = true;
            return f62396d.get() != null;
        }
        return true;
    }

    public Object b() {
        if (a()) {
            try {
                return f62396d.get().get(this.f62398a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean c(Object value) {
        if (a()) {
            try {
                f62396d.get().set(this.f62398a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private d() {
    }
}
