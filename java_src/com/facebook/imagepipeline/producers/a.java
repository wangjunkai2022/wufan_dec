package com.facebook.imagepipeline.producers;
/* compiled from: AddImageTransformMetaDataProducer.java */
/* loaded from: classes2.dex */
public class a implements i0<com.facebook.imagepipeline.image.e> {

    /* renamed from: a  reason: collision with root package name */
    private final i0<com.facebook.imagepipeline.image.e> f12978a;

    /* compiled from: AddImageTransformMetaDataProducer.java */
    /* loaded from: classes2.dex */
    private static class b extends m<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: q */
        public void h(com.facebook.imagepipeline.image.e eVar, int i2) {
            if (eVar == null) {
                p().b(null, i2);
                return;
            }
            if (!com.facebook.imagepipeline.image.e.w(eVar)) {
                eVar.z();
            }
            p().b(eVar, i2);
        }

        private b(Consumer<com.facebook.imagepipeline.image.e> consumer) {
            super(consumer);
        }
    }

    public a(i0<com.facebook.imagepipeline.image.e> i0Var) {
        this.f12978a = i0Var;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void b(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var) {
        this.f12978a.b(new b(consumer), k0Var);
    }
}
