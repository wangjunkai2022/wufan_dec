package com.facebook.imagepipeline.producers;
/* compiled from: ThumbnailBranchProducer.java */
/* loaded from: classes2.dex */
public class w0 implements i0<com.facebook.imagepipeline.image.e> {

    /* renamed from: a  reason: collision with root package name */
    private final x0<com.facebook.imagepipeline.image.e>[] f13273a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ThumbnailBranchProducer.java */
    /* loaded from: classes2.dex */
    public class a extends m<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* renamed from: i  reason: collision with root package name */
        private final k0 f13274i;

        /* renamed from: j  reason: collision with root package name */
        private final int f13275j;

        /* renamed from: k  reason: collision with root package name */
        private final com.facebook.imagepipeline.common.d f13276k;

        public a(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var, int i2) {
            super(consumer);
            this.f13274i = k0Var;
            this.f13275j = i2;
            this.f13276k = k0Var.b().p();
        }

        @Override // com.facebook.imagepipeline.producers.m, com.facebook.imagepipeline.producers.b
        protected void g(Throwable th) {
            if (w0.this.e(this.f13275j + 1, p(), this.f13274i)) {
                return;
            }
            p().onFailure(th);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: q */
        public void h(com.facebook.imagepipeline.image.e eVar, int i2) {
            if (eVar != null && (b.e(i2) || y0.c(eVar, this.f13276k))) {
                p().b(eVar, i2);
            } else if (b.d(i2)) {
                com.facebook.imagepipeline.image.e.d(eVar);
                if (w0.this.e(this.f13275j + 1, p(), this.f13274i)) {
                    return;
                }
                p().b(null, 1);
            }
        }
    }

    public w0(x0<com.facebook.imagepipeline.image.e>... x0VarArr) {
        x0<com.facebook.imagepipeline.image.e>[] x0VarArr2 = (x0[]) com.facebook.common.internal.h.i(x0VarArr);
        this.f13273a = x0VarArr2;
        com.facebook.common.internal.h.g(0, x0VarArr2.length);
    }

    private int d(int i2, com.facebook.imagepipeline.common.d dVar) {
        while (true) {
            x0<com.facebook.imagepipeline.image.e>[] x0VarArr = this.f13273a;
            if (i2 >= x0VarArr.length) {
                return -1;
            }
            if (x0VarArr[i2].a(dVar)) {
                return i2;
            }
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e(int i2, Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var) {
        int d4 = d(i2, k0Var.b().p());
        if (d4 == -1) {
            return false;
        }
        this.f13273a[d4].b(new a(consumer, k0Var, d4), k0Var);
        return true;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void b(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var) {
        if (k0Var.b().p() == null) {
            consumer.b(null, 1);
        } else if (e(0, consumer, k0Var)) {
        } else {
            consumer.b(null, 1);
        }
    }
}
