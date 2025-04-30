package com.xinzhu.haunted.android.os.health;

import android.os.IInterface;
import android.os.health.SystemHealthManager;
import com.xinzhu.haunted.d;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtSystemHealthManager.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63411b = "a";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63412c = d.a(SystemHealthManager.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f63413d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63414e = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63415a;

    public a(Object egoInstance) {
        this.f63415a = egoInstance;
    }

    public boolean a() {
        if (f63413d.get() == null) {
            if (f63414e) {
                return false;
            }
            f63413d.compareAndSet(null, d.f(f63412c, "mBatteryStats"));
            f63414e = true;
            return f63413d.get() != null;
        }
        return true;
    }

    public IInterface b() {
        if (a()) {
            try {
                return (IInterface) f63413d.get().get(this.f63415a);
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
                f63413d.get().set(this.f63415a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private a() {
    }
}
