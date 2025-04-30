package com.xinzhu.haunted.android.content;

import android.content.ClipboardManager;
import android.os.IInterface;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtClipboardManager.java */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62898b = "d";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62899c = com.xinzhu.haunted.d.a(ClipboardManager.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f62900d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62901e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Field> f62902f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f62903g = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62904a;

    public d(Object egoInstance) {
        this.f62904a = egoInstance;
    }

    public static boolean b() {
        if (f62902f.get() == null) {
            if (f62903g) {
                return false;
            }
            f62902f.compareAndSet(null, com.xinzhu.haunted.d.f(f62899c, "sService"));
            f62903g = true;
            return f62902f.get() != null;
        }
        return true;
    }

    public static IInterface d() {
        if (b()) {
            try {
                return (IInterface) f62902f.get().get(null);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public static boolean f(IInterface value) {
        if (b()) {
            try {
                f62902f.get().set(null, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean a() {
        if (f62900d.get() == null) {
            if (f62901e) {
                return false;
            }
            f62900d.compareAndSet(null, com.xinzhu.haunted.d.f(f62899c, "mService"));
            f62901e = true;
            return f62900d.get() != null;
        }
        return true;
    }

    public IInterface c() {
        if (a()) {
            try {
                return (IInterface) f62900d.get().get(this.f62904a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean e(IInterface value) {
        if (a()) {
            try {
                f62900d.get().set(this.f62904a, value);
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
