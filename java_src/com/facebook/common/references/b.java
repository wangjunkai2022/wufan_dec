package com.facebook.common.references;

import java.lang.ref.SoftReference;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
/* compiled from: OOMSoftReference.java */
/* loaded from: classes.dex */
public class b<T> {

    /* renamed from: a  reason: collision with root package name */
    SoftReference<T> f11738a = null;

    /* renamed from: b  reason: collision with root package name */
    SoftReference<T> f11739b = null;

    /* renamed from: c  reason: collision with root package name */
    SoftReference<T> f11740c = null;

    public void a() {
        SoftReference<T> softReference = this.f11738a;
        if (softReference != null) {
            softReference.clear();
            this.f11738a = null;
        }
        SoftReference<T> softReference2 = this.f11739b;
        if (softReference2 != null) {
            softReference2.clear();
            this.f11739b = null;
        }
        SoftReference<T> softReference3 = this.f11740c;
        if (softReference3 != null) {
            softReference3.clear();
            this.f11740c = null;
        }
    }

    @Nullable
    public T b() {
        SoftReference<T> softReference = this.f11738a;
        if (softReference == null) {
            return null;
        }
        return softReference.get();
    }

    public void c(@Nonnull T t3) {
        this.f11738a = new SoftReference<>(t3);
        this.f11739b = new SoftReference<>(t3);
        this.f11740c = new SoftReference<>(t3);
    }
}
