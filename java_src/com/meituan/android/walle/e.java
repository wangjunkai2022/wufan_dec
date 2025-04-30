package com.meituan.android.walle;
/* compiled from: Pair.java */
/* loaded from: classes4.dex */
final class e<A, B> {

    /* renamed from: a  reason: collision with root package name */
    private final A f52620a;

    /* renamed from: b  reason: collision with root package name */
    private final B f52621b;

    private e(A a4, B b4) {
        this.f52620a = a4;
        this.f52621b = b4;
    }

    public static <A, B> e<A, B> c(A a4, B b4) {
        return new e<>(a4, b4);
    }

    public A a() {
        return this.f52620a;
    }

    public B b() {
        return this.f52621b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && e.class == obj.getClass()) {
            e eVar = (e) obj;
            A a4 = this.f52620a;
            if (a4 == null) {
                if (eVar.f52620a != null) {
                    return false;
                }
            } else if (!a4.equals(eVar.f52620a)) {
                return false;
            }
            B b4 = this.f52621b;
            if (b4 == null) {
                if (eVar.f52621b != null) {
                    return false;
                }
            } else if (!b4.equals(eVar.f52621b)) {
                return false;
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        A a4 = this.f52620a;
        int hashCode = ((a4 == null ? 0 : a4.hashCode()) + 31) * 31;
        B b4 = this.f52621b;
        return hashCode + (b4 != null ? b4.hashCode() : 0);
    }
}
