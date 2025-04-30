package com.nineoldandroids.util;
/* compiled from: Property.java */
/* loaded from: classes4.dex */
public abstract class c<T, V> {

    /* renamed from: a  reason: collision with root package name */
    private final String f54495a;

    /* renamed from: b  reason: collision with root package name */
    private final Class<V> f54496b;

    public c(Class<V> cls, String str) {
        this.f54495a = str;
        this.f54496b = cls;
    }

    public static <T, V> c<T, V> d(Class<T> cls, Class<V> cls2, String str) {
        return new d(cls, cls2, str);
    }

    public abstract V a(T t3);

    public String b() {
        return this.f54495a;
    }

    public boolean c() {
        return false;
    }

    public void e(T t3, V v3) {
        throw new UnsupportedOperationException("Property " + b() + " is read-only");
    }

    public Class<V> getType() {
        return this.f54496b;
    }
}
