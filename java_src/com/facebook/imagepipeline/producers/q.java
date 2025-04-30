package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.request.ImageRequest;
import com.tencent.bugly.Bugly;
/* compiled from: EncodedMemoryCacheProducer.java */
/* loaded from: classes2.dex */
public class q implements i0<com.facebook.imagepipeline.image.e> {

    /* renamed from: d  reason: collision with root package name */
    public static final String f13196d = "EncodedMemoryCacheProducer";

    /* renamed from: e  reason: collision with root package name */
    public static final String f13197e = "cached_value_found";

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.p<com.facebook.cache.common.c, PooledByteBuffer> f13198a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f13199b;

    /* renamed from: c  reason: collision with root package name */
    private final i0<com.facebook.imagepipeline.image.e> f13200c;

    /* compiled from: EncodedMemoryCacheProducer.java */
    /* loaded from: classes2.dex */
    private static class a extends m<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* renamed from: i  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.p<com.facebook.cache.common.c, PooledByteBuffer> f13201i;

        /* renamed from: j  reason: collision with root package name */
        private final com.facebook.cache.common.c f13202j;

        /* renamed from: k  reason: collision with root package name */
        private final boolean f13203k;

        public a(Consumer<com.facebook.imagepipeline.image.e> consumer, com.facebook.imagepipeline.cache.p<com.facebook.cache.common.c, PooledByteBuffer> pVar, com.facebook.cache.common.c cVar, boolean z3) {
            super(consumer);
            this.f13201i = pVar;
            this.f13202j = cVar;
            this.f13203k = z3;
        }

        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: q */
        public void h(com.facebook.imagepipeline.image.e eVar, int i2) {
            boolean e4;
            try {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("EncodedMemoryCacheProducer#onNewResultImpl");
                }
                if (!b.e(i2) && eVar != null && !b.l(i2, 10) && eVar.o() != com.facebook.imageformat.c.f12384c) {
                    com.facebook.common.references.a<PooledByteBuffer> g4 = eVar.g();
                    if (g4 != null) {
                        com.facebook.common.references.a<PooledByteBuffer> a4 = this.f13203k ? this.f13201i.a(this.f13202j, g4) : null;
                        com.facebook.common.references.a.g(g4);
                        if (a4 != null) {
                            com.facebook.imagepipeline.image.e eVar2 = new com.facebook.imagepipeline.image.e(a4);
                            eVar2.e(eVar);
                            com.facebook.common.references.a.g(a4);
                            p().c(1.0f);
                            p().b(eVar2, i2);
                            com.facebook.imagepipeline.image.e.d(eVar2);
                            if (e4) {
                                return;
                            }
                            return;
                        }
                    }
                    p().b(eVar, i2);
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                        return;
                    }
                    return;
                }
                p().b(eVar, i2);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            } finally {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            }
        }
    }

    public q(com.facebook.imagepipeline.cache.p<com.facebook.cache.common.c, PooledByteBuffer> pVar, com.facebook.imagepipeline.cache.f fVar, i0<com.facebook.imagepipeline.image.e> i0Var) {
        this.f13198a = pVar;
        this.f13199b = fVar;
        this.f13200c = i0Var;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void b(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("EncodedMemoryCacheProducer#produceResults");
            }
            String id = k0Var.getId();
            m0 listener = k0Var.getListener();
            listener.b(id, f13196d);
            com.facebook.cache.common.c d4 = this.f13199b.d(k0Var.b(), k0Var.c());
            com.facebook.common.references.a<PooledByteBuffer> aVar = this.f13198a.get(d4);
            if (aVar != null) {
                com.facebook.imagepipeline.image.e eVar = new com.facebook.imagepipeline.image.e(aVar);
                listener.e(id, f13196d, listener.d(id) ? ImmutableMap.of("cached_value_found", "true") : null);
                listener.h(id, f13196d, true);
                consumer.c(1.0f);
                consumer.b(eVar, 1);
                com.facebook.imagepipeline.image.e.d(eVar);
                com.facebook.common.references.a.g(aVar);
            } else if (k0Var.g().getValue() >= ImageRequest.RequestLevel.ENCODED_MEMORY_CACHE.getValue()) {
                listener.e(id, f13196d, listener.d(id) ? ImmutableMap.of("cached_value_found", Bugly.SDK_IS_DEV) : null);
                listener.h(id, f13196d, false);
                consumer.b(null, 1);
                com.facebook.common.references.a.g(aVar);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            } else {
                a aVar2 = new a(consumer, this.f13198a, d4, k0Var.b().x());
                listener.e(id, f13196d, listener.d(id) ? ImmutableMap.of("cached_value_found", Bugly.SDK_IS_DEV) : null);
                this.f13200c.b(aVar2, k0Var);
                com.facebook.common.references.a.g(aVar);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            }
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }
}
