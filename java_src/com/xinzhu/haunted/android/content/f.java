package com.xinzhu.haunted.android.content;

import android.os.IInterface;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtContentProviderHolder.java */
/* loaded from: classes3.dex */
public final class f {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62912b = "f";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62913c = com.xinzhu.haunted.d.b("android.app.ContentProviderHolder");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f62914d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62915e = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62916a;

    public f(Object egoInstance) {
        this.f62916a = egoInstance;
    }

    public boolean a() {
        if (f62914d.get() == null) {
            if (f62915e) {
                return false;
            }
            f62914d.compareAndSet(null, com.xinzhu.haunted.d.f(f62913c, com.umeng.analytics.pro.c.M));
            f62915e = true;
            return f62914d.get() != null;
        }
        return true;
    }

    public IInterface b() {
        if (a()) {
            try {
                return (IInterface) f62914d.get().get(this.f62916a);
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
                f62914d.get().set(this.f62916a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private f() {
    }
}
