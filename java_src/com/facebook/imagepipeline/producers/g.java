package com.facebook.imagepipeline.producers;

import android.util.Pair;
import com.facebook.imagepipeline.request.ImageRequest;
/* compiled from: BitmapMemoryCacheKeyMultiplexProducer.java */
/* loaded from: classes2.dex */
public class g extends b0<Pair<com.facebook.cache.common.c, ImageRequest.RequestLevel>, com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f13045c;

    public g(com.facebook.imagepipeline.cache.f fVar, i0 i0Var) {
        super(i0Var);
        this.f13045c = fVar;
    }

    @Override // com.facebook.imagepipeline.producers.b0
    /* renamed from: k */
    public com.facebook.common.references.a<com.facebook.imagepipeline.image.c> f(com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar) {
        return com.facebook.common.references.a.d(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.producers.b0
    /* renamed from: l */
    public Pair<com.facebook.cache.common.c, ImageRequest.RequestLevel> i(k0 k0Var) {
        return Pair.create(this.f13045c.a(k0Var.b(), k0Var.c()), k0Var.g());
    }
}
