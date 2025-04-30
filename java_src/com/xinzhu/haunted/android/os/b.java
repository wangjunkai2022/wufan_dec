package com.xinzhu.haunted.android.os;

import android.os.DropBoxManager;
import android.os.IInterface;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtDropBoxManager.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63363b = "b";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63364c = com.xinzhu.haunted.d.a(DropBoxManager.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f63365d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63366e = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63367a;

    public b(Object egoInstance) {
        this.f63367a = egoInstance;
    }

    public boolean a() {
        if (f63365d.get() == null) {
            if (f63366e) {
                return false;
            }
            f63365d.compareAndSet(null, com.xinzhu.haunted.d.f(f63364c, "mService"));
            f63366e = true;
            return f63365d.get() != null;
        }
        return true;
    }

    public IInterface b() {
        if (a()) {
            try {
                return (IInterface) f63365d.get().get(this.f63367a);
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
                f63365d.get().set(this.f63367a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private b() {
    }
}
