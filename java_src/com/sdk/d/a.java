package com.sdk.d;
/* loaded from: classes4.dex */
public class a<T> {

    /* renamed from: a  reason: collision with root package name */
    public boolean f56590a = false;

    /* renamed from: b  reason: collision with root package name */
    public h<?> f56591b;

    /* renamed from: c  reason: collision with root package name */
    public a<T> f56592c;

    public a(T t3) {
        a(t3);
    }

    public b a() {
        return this.f56591b.f56619a;
    }

    public void a(T t3) {
        if (t3 == null) {
            this.f56591b = null;
        } else if (!(t3 instanceof h)) {
            this.f56591b = new h<>(b.DEFAULT, t3);
        } else {
            this.f56591b = (h) t3;
            this.f56590a = true;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.sdk.d.h, T, com.sdk.d.h<?>] */
    public T b() {
        ?? r02 = (T) this.f56591b;
        if (r02 == 0) {
            return null;
        }
        return this.f56590a ? r02 : (T) r02.f56620b;
    }
}
