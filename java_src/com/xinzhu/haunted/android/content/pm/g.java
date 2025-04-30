package com.xinzhu.haunted.android.content.pm;

import android.content.pm.PackageInfo;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtPackageInfo.java */
/* loaded from: classes3.dex */
public final class g {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63085b = "g";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63086c = com.xinzhu.haunted.d.a(PackageInfo.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f63087d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63088e = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63089a;

    public g(Object egoInstance) {
        this.f63089a = egoInstance;
    }

    public boolean a() {
        if (f63087d.get() == null) {
            if (f63088e) {
                return false;
            }
            f63087d.compareAndSet(null, com.xinzhu.haunted.d.f(f63086c, "restrictedAccountType"));
            f63088e = true;
            return f63087d.get() != null;
        }
        return true;
    }

    public String b() {
        if (a()) {
            try {
                return (String) f63087d.get().get(this.f63089a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean c(String value) {
        if (a()) {
            try {
                f63087d.get().set(this.f63089a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private g() {
    }
}
