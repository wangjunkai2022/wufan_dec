package com.xinzhu.haunted.android.content;

import android.content.ContentProviderClient;
import android.os.IInterface;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtContentProviderClient.java */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62906b = "e";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62907c = com.xinzhu.haunted.d.a(ContentProviderClient.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f62908d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62909e = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62910a;

    public e(Object egoInstance) {
        this.f62910a = egoInstance;
    }

    public boolean a() {
        if (f62908d.get() == null) {
            if (f62909e) {
                return false;
            }
            f62908d.compareAndSet(null, com.xinzhu.haunted.d.f(f62907c, "mContentProvider"));
            f62909e = true;
            return f62908d.get() != null;
        }
        return true;
    }

    public IInterface b() {
        if (a()) {
            try {
                return (IInterface) f62908d.get().get(this.f62910a);
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
                f62908d.get().set(this.f62910a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private e() {
    }
}
