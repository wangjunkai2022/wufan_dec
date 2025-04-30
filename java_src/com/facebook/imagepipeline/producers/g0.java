package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.imagepipeline.request.ImageRequest;
import com.tencent.bugly.Bugly;
/* compiled from: PostprocessedBitmapMemoryCacheProducer.java */
/* loaded from: classes2.dex */
public class g0 implements i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

    /* renamed from: d  reason: collision with root package name */
    public static final String f13046d = "PostprocessedBitmapMemoryCacheProducer";
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    static final String f13047e = "cached_value_found";

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.p<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f13048a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f13049b;

    /* renamed from: c  reason: collision with root package name */
    private final i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f13050c;

    /* compiled from: PostprocessedBitmapMemoryCacheProducer.java */
    /* loaded from: classes2.dex */
    public static class a extends m<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>, com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

        /* renamed from: i  reason: collision with root package name */
        private final com.facebook.cache.common.c f13051i;

        /* renamed from: j  reason: collision with root package name */
        private final boolean f13052j;

        /* renamed from: k  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.p<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f13053k;

        /* renamed from: l  reason: collision with root package name */
        private final boolean f13054l;

        public a(Consumer<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, com.facebook.cache.common.c cVar, boolean z3, com.facebook.imagepipeline.cache.p<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> pVar, boolean z4) {
            super(consumer);
            this.f13051i = cVar;
            this.f13052j = z3;
            this.f13053k = pVar;
            this.f13054l = z4;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: q */
        public void h(com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar, int i2) {
            if (aVar == null) {
                if (b.d(i2)) {
                    p().b(null, i2);
                }
            } else if (!b.e(i2) || this.f13052j) {
                com.facebook.common.references.a<com.facebook.imagepipeline.image.c> a4 = this.f13054l ? this.f13053k.a(this.f13051i, aVar) : null;
                try {
                    p().c(1.0f);
                    Consumer<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> p3 = p();
                    if (a4 != null) {
                        aVar = a4;
                    }
                    p3.b(aVar, i2);
                } finally {
                    com.facebook.common.references.a.g(a4);
                }
            }
        }
    }

    public g0(com.facebook.imagepipeline.cache.p<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> pVar, com.facebook.imagepipeline.cache.f fVar, i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> i0Var) {
        this.f13048a = pVar;
        this.f13049b = fVar;
        this.f13050c = i0Var;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void b(Consumer<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, k0 k0Var) {
        m0 listener = k0Var.getListener();
        String id = k0Var.getId();
        ImageRequest b4 = k0Var.b();
        Object c4 = k0Var.c();
        com.facebook.imagepipeline.request.d j4 = b4.j();
        if (j4 != null && j4.a() != null) {
            listener.b(id, c());
            com.facebook.cache.common.c c5 = this.f13049b.c(b4, c4);
            com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar = this.f13048a.get(c5);
            if (aVar != null) {
                listener.e(id, c(), listener.d(id) ? ImmutableMap.of("cached_value_found", "true") : null);
                listener.h(id, f13046d, true);
                consumer.c(1.0f);
                consumer.b(aVar, 1);
                aVar.close();
                return;
            }
            a aVar2 = new a(consumer, c5, j4 instanceof com.facebook.imagepipeline.request.e, this.f13048a, k0Var.b().x());
            listener.e(id, c(), listener.d(id) ? ImmutableMap.of("cached_value_found", Bugly.SDK_IS_DEV) : null);
            this.f13050c.b(aVar2, k0Var);
            return;
        }
        this.f13050c.b(consumer, k0Var);
    }

    protected String c() {
        return f13046d;
    }
}
