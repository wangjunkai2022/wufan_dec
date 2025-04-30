package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.request.ImageRequest;
/* compiled from: BranchOnSeparateImagesProducer.java */
/* loaded from: classes2.dex */
public class j implements i0<com.facebook.imagepipeline.image.e> {

    /* renamed from: a  reason: collision with root package name */
    private final i0<com.facebook.imagepipeline.image.e> f13093a;

    /* renamed from: b  reason: collision with root package name */
    private final i0<com.facebook.imagepipeline.image.e> f13094b;

    /* compiled from: BranchOnSeparateImagesProducer.java */
    /* loaded from: classes2.dex */
    private class b extends m<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* renamed from: i  reason: collision with root package name */
        private k0 f13095i;

        @Override // com.facebook.imagepipeline.producers.m, com.facebook.imagepipeline.producers.b
        protected void g(Throwable th) {
            j.this.f13094b.b(p(), this.f13095i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: q */
        public void h(com.facebook.imagepipeline.image.e eVar, int i2) {
            ImageRequest b4 = this.f13095i.b();
            boolean d4 = com.facebook.imagepipeline.producers.b.d(i2);
            boolean c4 = y0.c(eVar, b4.p());
            if (eVar != null && (c4 || b4.h())) {
                if (d4 && c4) {
                    p().b(eVar, i2);
                } else {
                    p().b(eVar, com.facebook.imagepipeline.producers.b.n(i2, 1));
                }
            }
            if (!d4 || c4) {
                return;
            }
            com.facebook.imagepipeline.image.e.d(eVar);
            j.this.f13094b.b(p(), this.f13095i);
        }

        private b(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var) {
            super(consumer);
            this.f13095i = k0Var;
        }
    }

    public j(i0<com.facebook.imagepipeline.image.e> i0Var, i0<com.facebook.imagepipeline.image.e> i0Var2) {
        this.f13093a = i0Var;
        this.f13094b = i0Var2;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void b(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var) {
        this.f13093a.b(new b(consumer, k0Var), k0Var);
    }
}
