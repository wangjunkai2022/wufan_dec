package com.facebook.imagepipeline.producers;

import android.util.Pair;
import com.facebook.imagepipeline.request.ImageRequest;
/* compiled from: EncodedCacheKeyMultiplexProducer.java */
/* loaded from: classes2.dex */
public class p extends b0<Pair<com.facebook.cache.common.c, ImageRequest.RequestLevel>, com.facebook.imagepipeline.image.e> {

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f13172c;

    public p(com.facebook.imagepipeline.cache.f fVar, i0 i0Var) {
        super(i0Var);
        this.f13172c = fVar;
    }

    @Override // com.facebook.imagepipeline.producers.b0
    /* renamed from: k */
    public com.facebook.imagepipeline.image.e f(com.facebook.imagepipeline.image.e eVar) {
        return com.facebook.imagepipeline.image.e.b(eVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.producers.b0
    /* renamed from: l */
    public Pair<com.facebook.cache.common.c, ImageRequest.RequestLevel> i(k0 k0Var) {
        return Pair.create(this.f13172c.d(k0Var.b(), k0Var.c()), k0Var.g());
    }
}
