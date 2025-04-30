package com.xinzhu.haunted.android.os.storage;

import java.io.File;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtStorageVolume.java */
/* loaded from: classes3.dex */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63514b = "d";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63515c = com.xinzhu.haunted.d.b("android.os.storage.StorageVolume");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f63516d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63517e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Field> f63518f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f63519g = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63520a;

    public d(Object egoInstance) {
        this.f63520a = egoInstance;
    }

    public boolean a() {
        if (f63518f.get() == null) {
            if (f63519g) {
                return false;
            }
            f63518f.compareAndSet(null, com.xinzhu.haunted.d.f(f63515c, "mInternalPath"));
            f63519g = true;
            return f63518f.get() != null;
        }
        return true;
    }

    public boolean b() {
        if (f63516d.get() == null) {
            if (f63517e) {
                return false;
            }
            f63516d.compareAndSet(null, com.xinzhu.haunted.d.f(f63515c, "mPath"));
            f63517e = true;
            return f63516d.get() != null;
        }
        return true;
    }

    public File c() {
        if (a()) {
            try {
                return (File) f63518f.get().get(this.f63520a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public File d() {
        if (b()) {
            try {
                return (File) f63516d.get().get(this.f63520a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean e(File value) {
        if (a()) {
            try {
                f63518f.get().set(this.f63520a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean f(File value) {
        if (b()) {
            try {
                f63516d.get().set(this.f63520a, value);
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
