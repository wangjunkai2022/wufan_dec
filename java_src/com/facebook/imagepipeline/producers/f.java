package com.facebook.imagepipeline.producers;
/* compiled from: BitmapMemoryCacheGetProducer.java */
/* loaded from: classes2.dex */
public class f extends h {

    /* renamed from: f  reason: collision with root package name */
    public static final String f13022f = "BitmapMemoryCacheGetProducer";

    public f(com.facebook.imagepipeline.cache.p<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> pVar, com.facebook.imagepipeline.cache.f fVar, i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> i0Var) {
        super(pVar, fVar, i0Var);
    }

    @Override // com.facebook.imagepipeline.producers.h
    protected String d() {
        return f13022f;
    }

    @Override // com.facebook.imagepipeline.producers.h
    protected Consumer<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> e(Consumer<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, com.facebook.cache.common.c cVar, boolean z3) {
        return consumer;
    }
}
