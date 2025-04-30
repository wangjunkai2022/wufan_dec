package com.facebook.imagepipeline.producers;

import android.graphics.Bitmap;
/* compiled from: BitmapPrepareProducer.java */
/* loaded from: classes2.dex */
public class i implements i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

    /* renamed from: e  reason: collision with root package name */
    public static final String f13086e = "BitmapPrepareProducer";

    /* renamed from: a  reason: collision with root package name */
    private final i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f13087a;

    /* renamed from: b  reason: collision with root package name */
    private final int f13088b;

    /* renamed from: c  reason: collision with root package name */
    private final int f13089c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f13090d;

    /* compiled from: BitmapPrepareProducer.java */
    /* loaded from: classes2.dex */
    private static class a extends m<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>, com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

        /* renamed from: i  reason: collision with root package name */
        private final int f13091i;

        /* renamed from: j  reason: collision with root package name */
        private final int f13092j;

        a(Consumer<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, int i2, int i4) {
            super(consumer);
            this.f13091i = i2;
            this.f13092j = i4;
        }

        private void q(com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar) {
            com.facebook.imagepipeline.image.c i2;
            Bitmap g4;
            int rowBytes;
            if (aVar == null || !aVar.n() || (i2 = aVar.i()) == null || i2.isClosed() || !(i2 instanceof com.facebook.imagepipeline.image.d) || (g4 = ((com.facebook.imagepipeline.image.d) i2).g()) == null || (rowBytes = g4.getRowBytes() * g4.getHeight()) < this.f13091i || rowBytes > this.f13092j) {
                return;
            }
            g4.prepareToDraw();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: r */
        public void h(com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar, int i2) {
            q(aVar);
            p().b(aVar, i2);
        }
    }

    public i(i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> i0Var, int i2, int i4, boolean z3) {
        com.facebook.common.internal.h.d(i2 <= i4);
        this.f13087a = (i0) com.facebook.common.internal.h.i(i0Var);
        this.f13088b = i2;
        this.f13089c = i4;
        this.f13090d = z3;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void b(Consumer<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, k0 k0Var) {
        if (k0Var.f() && !this.f13090d) {
            this.f13087a.b(consumer, k0Var);
        } else {
            this.f13087a.b(new a(consumer, this.f13088b, this.f13089c), k0Var);
        }
    }
}
