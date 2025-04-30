package com.xinzhu.haunted.android.os;

import android.os.IInterface;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtUserManager.java */
/* loaded from: classes.dex */
public final class v {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63547b = "v";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63548c = com.xinzhu.haunted.d.b("android.os.UserManager");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f63549d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63550e = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63551a;

    public v(Object egoInstance) {
        this.f63551a = egoInstance;
    }

    public boolean a() {
        if (f63549d.get() == null) {
            if (f63550e) {
                return false;
            }
            f63549d.compareAndSet(null, com.xinzhu.haunted.d.f(f63548c, "mService"));
            f63550e = true;
            return f63549d.get() != null;
        }
        return true;
    }

    public IInterface b() {
        if (a()) {
            try {
                return (IInterface) f63549d.get().get(this.f63551a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean c(IInterface value) {
        if (a()) {
            try {
                f63549d.get().set(this.f63551a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private v() {
    }
}
