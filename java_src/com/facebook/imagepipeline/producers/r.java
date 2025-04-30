package com.facebook.imagepipeline.producers;

import android.net.Uri;
import javax.annotation.Nullable;
/* compiled from: FetchState.java */
/* loaded from: classes.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private final Consumer<com.facebook.imagepipeline.image.e> f13204a;

    /* renamed from: b  reason: collision with root package name */
    private final k0 f13205b;

    /* renamed from: c  reason: collision with root package name */
    private long f13206c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f13207d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private com.facebook.imagepipeline.common.a f13208e;

    public r(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var) {
        this.f13204a = consumer;
        this.f13205b = k0Var;
    }

    public Consumer<com.facebook.imagepipeline.image.e> a() {
        return this.f13204a;
    }

    public String b() {
        return this.f13205b.getId();
    }

    public long c() {
        return this.f13206c;
    }

    public m0 d() {
        return this.f13205b.getListener();
    }

    public int e() {
        return this.f13207d;
    }

    @Nullable
    public com.facebook.imagepipeline.common.a f() {
        return this.f13208e;
    }

    public Uri g() {
        return this.f13205b.b().t();
    }

    public k0 getContext() {
        return this.f13205b;
    }

    public void h(long j4) {
        this.f13206c = j4;
    }

    public void i(int i2) {
        this.f13207d = i2;
    }

    public void j(com.facebook.imagepipeline.common.a aVar) {
        this.f13208e = aVar;
    }
}
