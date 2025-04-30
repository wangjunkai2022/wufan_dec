package com.facebook.imagepipeline.animated.base;

import android.graphics.Bitmap;
import android.graphics.Canvas;
/* compiled from: DelegatingAnimatedDrawableBackend.java */
/* loaded from: classes2.dex */
public abstract class h implements a {

    /* renamed from: a  reason: collision with root package name */
    private final a f12416a;

    public h(a aVar) {
        this.f12416a = aVar;
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int a() {
        return this.f12416a.a();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int b() {
        return this.f12416a.b();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int c() {
        return this.f12416a.c();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int d() {
        return this.f12416a.d();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public void e() {
        this.f12416a.e();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public AnimatedDrawableFrameInfo f(int i2) {
        return this.f12416a.f(i2);
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public void g(int i2, Canvas canvas) {
        this.f12416a.g(i2, canvas);
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int getHeight() {
        return this.f12416a.getHeight();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public boolean i(int i2) {
        return this.f12416a.i(i2);
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int j(int i2) {
        return this.f12416a.j(i2);
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public com.facebook.common.references.a<Bitmap> k(int i2) {
        return this.f12416a.k(i2);
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int l(int i2) {
        return this.f12416a.l(i2);
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int m() {
        return this.f12416a.m();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int n(int i2) {
        return this.f12416a.n(i2);
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int o() {
        return this.f12416a.o();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int p() {
        return this.f12416a.p();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int q() {
        return this.f12416a.q();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public f r() {
        return this.f12416a.r();
    }

    protected a s() {
        return this.f12416a;
    }
}
