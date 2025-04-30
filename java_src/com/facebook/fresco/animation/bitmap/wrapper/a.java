package com.facebook.fresco.animation.bitmap.wrapper;

import com.facebook.fresco.animation.backend.d;
/* compiled from: AnimatedDrawableBackendAnimationInformation.java */
/* loaded from: classes2.dex */
public class a implements d {

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.imagepipeline.animated.base.a f12288c;

    public a(com.facebook.imagepipeline.animated.base.a aVar) {
        this.f12288c = aVar;
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int b() {
        return this.f12288c.b();
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int d() {
        return this.f12288c.d();
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int j(int i2) {
        return this.f12288c.n(i2);
    }
}
