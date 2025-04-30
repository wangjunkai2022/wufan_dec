package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.request.ImageRequest;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* compiled from: LocalFetchProducer.java */
/* loaded from: classes2.dex */
public abstract class x implements i0<com.facebook.imagepipeline.image.e> {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f13278a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.common.memory.g f13279b;

    /* compiled from: LocalFetchProducer.java */
    /* loaded from: classes.dex */
    class a extends r0<com.facebook.imagepipeline.image.e> {

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ ImageRequest f13280k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ m0 f13281l;

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ String f13282m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Consumer consumer, m0 m0Var, String str, String str2, ImageRequest imageRequest, m0 m0Var2, String str3) {
            super(consumer, m0Var, str, str2);
            this.f13280k = imageRequest;
            this.f13281l = m0Var2;
            this.f13282m = str3;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.r0, com.facebook.common.executors.h
        /* renamed from: j */
        public void b(com.facebook.imagepipeline.image.e eVar) {
            com.facebook.imagepipeline.image.e.d(eVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.common.executors.h
        @Nullable
        /* renamed from: k */
        public com.facebook.imagepipeline.image.e c() throws Exception {
            com.facebook.imagepipeline.image.e d4 = x.this.d(this.f13280k);
            if (d4 == null) {
                this.f13281l.h(this.f13282m, x.this.f(), false);
                return null;
            }
            d4.z();
            this.f13281l.h(this.f13282m, x.this.f(), true);
            return d4;
        }
    }

    /* compiled from: LocalFetchProducer.java */
    /* loaded from: classes2.dex */
    class b extends e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ r0 f13284a;

        b(r0 r0Var) {
            this.f13284a = r0Var;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.l0
        public void b() {
            this.f13284a.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public x(Executor executor, com.facebook.common.memory.g gVar) {
        this.f13278a = executor;
        this.f13279b = gVar;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void b(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var) {
        m0 listener = k0Var.getListener();
        String id = k0Var.getId();
        a aVar = new a(consumer, listener, f(), id, k0Var.b(), listener, id);
        k0Var.d(new b(aVar));
        this.f13278a.execute(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.facebook.imagepipeline.image.e c(InputStream inputStream, int i2) throws IOException {
        com.facebook.common.references.a p3;
        com.facebook.common.references.a aVar = null;
        try {
            if (i2 <= 0) {
                p3 = com.facebook.common.references.a.p(this.f13279b.a(inputStream));
            } else {
                p3 = com.facebook.common.references.a.p(this.f13279b.b(inputStream, i2));
            }
            aVar = p3;
            return new com.facebook.imagepipeline.image.e(aVar);
        } finally {
            com.facebook.common.internal.c.b(inputStream);
            com.facebook.common.references.a.g(aVar);
        }
    }

    protected abstract com.facebook.imagepipeline.image.e d(ImageRequest imageRequest) throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public com.facebook.imagepipeline.image.e e(InputStream inputStream, int i2) throws IOException {
        return c(inputStream, i2);
    }

    protected abstract String f();
}
