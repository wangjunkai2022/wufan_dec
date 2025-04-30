package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.ImmutableMap;
import com.facebook.imagepipeline.request.ImageRequest;
import com.tencent.bugly.Bugly;
/* compiled from: BitmapMemoryCacheProducer.java */
/* loaded from: classes2.dex */
public class h implements i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

    /* renamed from: d  reason: collision with root package name */
    public static final String f13055d = "BitmapMemoryCacheProducer";

    /* renamed from: e  reason: collision with root package name */
    public static final String f13056e = "cached_value_found";

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.p<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f13057a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f13058b;

    /* renamed from: c  reason: collision with root package name */
    private final i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f13059c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BitmapMemoryCacheProducer.java */
    /* loaded from: classes2.dex */
    public class a extends m<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>, com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f13060i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ boolean f13061j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Consumer consumer, com.facebook.cache.common.c cVar, boolean z3) {
            super(consumer);
            this.f13060i = cVar;
            this.f13061j = z3;
        }

        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: q */
        public void h(com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar, int i2) {
            com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar2;
            boolean e4;
            try {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("BitmapMemoryCacheProducer#onNewResultImpl");
                }
                boolean d4 = b.d(i2);
                if (aVar == null) {
                    if (d4) {
                        p().b(null, i2);
                    }
                    if (e4) {
                        return;
                    }
                    return;
                }
                if (!aVar.i().e() && !b.m(i2, 8)) {
                    if (!d4 && (aVar2 = h.this.f13057a.get(this.f13060i)) != null) {
                        com.facebook.imagepipeline.image.h b4 = aVar.i().b();
                        com.facebook.imagepipeline.image.h b5 = aVar2.i().b();
                        if (!b5.a() && b5.c() < b4.c()) {
                            com.facebook.common.references.a.g(aVar2);
                        } else {
                            p().b(aVar2, i2);
                            com.facebook.common.references.a.g(aVar2);
                            if (com.facebook.imagepipeline.systrace.b.e()) {
                                com.facebook.imagepipeline.systrace.b.c();
                                return;
                            }
                            return;
                        }
                    }
                    com.facebook.common.references.a<com.facebook.imagepipeline.image.c> a4 = this.f13061j ? h.this.f13057a.a(this.f13060i, aVar) : null;
                    if (d4) {
                        p().c(1.0f);
                    }
                    Consumer<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> p3 = p();
                    if (a4 != null) {
                        aVar = a4;
                    }
                    p3.b(aVar, i2);
                    com.facebook.common.references.a.g(a4);
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                        return;
                    }
                    return;
                }
                p().b(aVar, i2);
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

    public h(com.facebook.imagepipeline.cache.p<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> pVar, com.facebook.imagepipeline.cache.f fVar, i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> i0Var) {
        this.f13057a = pVar;
        this.f13058b = fVar;
        this.f13059c = i0Var;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void b(Consumer<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, k0 k0Var) {
        boolean e4;
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("BitmapMemoryCacheProducer#produceResults");
            }
            m0 listener = k0Var.getListener();
            String id = k0Var.getId();
            listener.b(id, d());
            com.facebook.cache.common.c a4 = this.f13058b.a(k0Var.b(), k0Var.c());
            com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar = this.f13057a.get(a4);
            if (aVar != null) {
                boolean a5 = aVar.i().b().a();
                if (a5) {
                    listener.e(id, d(), listener.d(id) ? ImmutableMap.of("cached_value_found", "true") : null);
                    listener.h(id, d(), true);
                    consumer.c(1.0f);
                }
                consumer.b(aVar, b.k(a5));
                aVar.close();
                if (a5) {
                    if (e4) {
                        return;
                    }
                    return;
                }
            }
            if (k0Var.g().getValue() >= ImageRequest.RequestLevel.BITMAP_MEMORY_CACHE.getValue()) {
                listener.e(id, d(), listener.d(id) ? ImmutableMap.of("cached_value_found", Bugly.SDK_IS_DEV) : null);
                listener.h(id, d(), false);
                consumer.b(null, 1);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                    return;
                }
                return;
            }
            Consumer<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> e5 = e(consumer, a4, k0Var.b().x());
            listener.e(id, d(), listener.d(id) ? ImmutableMap.of("cached_value_found", Bugly.SDK_IS_DEV) : null);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("mInputProducer.produceResult");
            }
            this.f13059c.b(e5, k0Var);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    protected String d() {
        return f13055d;
    }

    protected Consumer<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> e(Consumer<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, com.facebook.cache.common.c cVar, boolean z3) {
        return new a(consumer, cVar, z3);
    }
}
