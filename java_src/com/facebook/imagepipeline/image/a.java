package com.facebook.imagepipeline.image;

import javax.annotation.Nullable;
/* compiled from: CloseableAnimatedImage.java */
/* loaded from: classes.dex */
public class a extends c {

    /* renamed from: b  reason: collision with root package name */
    private com.facebook.imagepipeline.animated.base.f f12754b;

    public a(com.facebook.imagepipeline.animated.base.f fVar) {
        this.f12754b = fVar;
    }

    @Override // com.facebook.imagepipeline.image.f
    public synchronized int a() {
        return isClosed() ? 0 : this.f12754b.e().a();
    }

    @Override // com.facebook.imagepipeline.image.c, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            com.facebook.imagepipeline.animated.base.f fVar = this.f12754b;
            if (fVar == null) {
                return;
            }
            this.f12754b = null;
            fVar.a();
        }
    }

    @Override // com.facebook.imagepipeline.image.c
    public synchronized int d() {
        return isClosed() ? 0 : this.f12754b.e().c();
    }

    @Override // com.facebook.imagepipeline.image.c
    public boolean e() {
        return true;
    }

    @Nullable
    public synchronized com.facebook.imagepipeline.animated.base.d g() {
        return isClosed() ? null : this.f12754b.e();
    }

    @Override // com.facebook.imagepipeline.image.f
    public synchronized int getHeight() {
        return isClosed() ? 0 : this.f12754b.e().getHeight();
    }

    public synchronized com.facebook.imagepipeline.animated.base.f h() {
        return this.f12754b;
    }

    @Override // com.facebook.imagepipeline.image.c
    public synchronized boolean isClosed() {
        return this.f12754b == null;
    }
}
