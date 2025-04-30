package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.VisibleForTesting;
import com.facebook.imagepipeline.request.ImageRequest;
/* compiled from: DiskCacheWriteProducer.java */
/* loaded from: classes2.dex */
public class o implements i0<com.facebook.imagepipeline.image.e> {
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    static final String f13161e = "DiskCacheProducer";

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e f13162a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e f13163b;

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f13164c;

    /* renamed from: d  reason: collision with root package name */
    private final i0<com.facebook.imagepipeline.image.e> f13165d;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiskCacheWriteProducer.java */
    /* loaded from: classes2.dex */
    public static class b extends m<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* renamed from: i  reason: collision with root package name */
        private final k0 f13166i;

        /* renamed from: j  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.e f13167j;

        /* renamed from: k  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.e f13168k;

        /* renamed from: l  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.f f13169l;

        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: q */
        public void h(com.facebook.imagepipeline.image.e eVar, int i2) {
            if (!com.facebook.imagepipeline.producers.b.e(i2) && eVar != null && !com.facebook.imagepipeline.producers.b.l(i2, 10) && eVar.o() != com.facebook.imageformat.c.f12384c) {
                ImageRequest b4 = this.f13166i.b();
                com.facebook.cache.common.c d4 = this.f13169l.d(b4, this.f13166i.c());
                if (b4.f() == ImageRequest.CacheChoice.SMALL) {
                    this.f13168k.r(d4, eVar);
                } else {
                    this.f13167j.r(d4, eVar);
                }
                p().b(eVar, i2);
                return;
            }
            p().b(eVar, i2);
        }

        private b(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var, com.facebook.imagepipeline.cache.e eVar, com.facebook.imagepipeline.cache.e eVar2, com.facebook.imagepipeline.cache.f fVar) {
            super(consumer);
            this.f13166i = k0Var;
            this.f13167j = eVar;
            this.f13168k = eVar2;
            this.f13169l = fVar;
        }
    }

    public o(com.facebook.imagepipeline.cache.e eVar, com.facebook.imagepipeline.cache.e eVar2, com.facebook.imagepipeline.cache.f fVar, i0<com.facebook.imagepipeline.image.e> i0Var) {
        this.f13162a = eVar;
        this.f13163b = eVar2;
        this.f13164c = fVar;
        this.f13165d = i0Var;
    }

    private void c(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var) {
        if (k0Var.g().getValue() >= ImageRequest.RequestLevel.DISK_CACHE.getValue()) {
            consumer.b(null, 1);
            return;
        }
        if (k0Var.b().w()) {
            consumer = new b(consumer, k0Var, this.f13162a, this.f13163b, this.f13164c);
        }
        this.f13165d.b(consumer, k0Var);
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void b(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var) {
        c(consumer, k0Var);
    }
}
