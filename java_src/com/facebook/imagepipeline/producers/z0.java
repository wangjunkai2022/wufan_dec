package com.facebook.imagepipeline.producers;

import com.facebook.common.util.TriState;
import java.io.InputStream;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* compiled from: WebpTranscodeProducer.java */
/* loaded from: classes2.dex */
public class z0 implements i0<com.facebook.imagepipeline.image.e> {

    /* renamed from: d  reason: collision with root package name */
    public static final String f13292d = "WebpTranscodeProducer";

    /* renamed from: e  reason: collision with root package name */
    private static final int f13293e = 80;

    /* renamed from: a  reason: collision with root package name */
    private final Executor f13294a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.common.memory.g f13295b;

    /* renamed from: c  reason: collision with root package name */
    private final i0<com.facebook.imagepipeline.image.e> f13296c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WebpTranscodeProducer.java */
    /* loaded from: classes2.dex */
    public class a extends r0<com.facebook.imagepipeline.image.e> {

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ com.facebook.imagepipeline.image.e f13297k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Consumer consumer, m0 m0Var, String str, String str2, com.facebook.imagepipeline.image.e eVar) {
            super(consumer, m0Var, str, str2);
            this.f13297k = eVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.r0, com.facebook.common.executors.h
        public void d() {
            com.facebook.imagepipeline.image.e.d(this.f13297k);
            super.d();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.r0, com.facebook.common.executors.h
        public void e(Exception exc) {
            com.facebook.imagepipeline.image.e.d(this.f13297k);
            super.e(exc);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.r0, com.facebook.common.executors.h
        /* renamed from: j */
        public void b(com.facebook.imagepipeline.image.e eVar) {
            com.facebook.imagepipeline.image.e.d(eVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.common.executors.h
        /* renamed from: k */
        public com.facebook.imagepipeline.image.e c() throws Exception {
            com.facebook.common.memory.i c4 = z0.this.f13295b.c();
            try {
                z0.g(this.f13297k, c4);
                com.facebook.common.references.a p3 = com.facebook.common.references.a.p(c4.a());
                com.facebook.imagepipeline.image.e eVar = new com.facebook.imagepipeline.image.e(p3);
                eVar.e(this.f13297k);
                com.facebook.common.references.a.g(p3);
                return eVar;
            } finally {
                c4.close();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.r0, com.facebook.common.executors.h
        /* renamed from: l */
        public void f(com.facebook.imagepipeline.image.e eVar) {
            com.facebook.imagepipeline.image.e.d(this.f13297k);
            super.f(eVar);
        }
    }

    /* compiled from: WebpTranscodeProducer.java */
    /* loaded from: classes.dex */
    private class b extends m<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* renamed from: i  reason: collision with root package name */
        private final k0 f13299i;

        /* renamed from: j  reason: collision with root package name */
        private TriState f13300j;

        public b(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var) {
            super(consumer);
            this.f13299i = k0Var;
            this.f13300j = TriState.UNSET;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: q */
        public void h(@Nullable com.facebook.imagepipeline.image.e eVar, int i2) {
            if (this.f13300j == TriState.UNSET && eVar != null) {
                this.f13300j = z0.h(eVar);
            }
            if (this.f13300j == TriState.NO) {
                p().b(eVar, i2);
            } else if (com.facebook.imagepipeline.producers.b.d(i2)) {
                if (this.f13300j == TriState.YES && eVar != null) {
                    z0.this.i(eVar, p(), this.f13299i);
                } else {
                    p().b(eVar, i2);
                }
            }
        }
    }

    public z0(Executor executor, com.facebook.common.memory.g gVar, i0<com.facebook.imagepipeline.image.e> i0Var) {
        this.f13294a = (Executor) com.facebook.common.internal.h.i(executor);
        this.f13295b = (com.facebook.common.memory.g) com.facebook.common.internal.h.i(gVar);
        this.f13296c = (i0) com.facebook.common.internal.h.i(i0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void g(com.facebook.imagepipeline.image.e eVar, com.facebook.common.memory.i iVar) throws Exception {
        InputStream p3 = eVar.p();
        com.facebook.imageformat.c d4 = com.facebook.imageformat.d.d(p3);
        if (d4 != com.facebook.imageformat.b.f12377f && d4 != com.facebook.imageformat.b.f12379h) {
            if (d4 != com.facebook.imageformat.b.f12378g && d4 != com.facebook.imageformat.b.f12380i) {
                throw new IllegalArgumentException("Wrong image format");
            }
            com.facebook.imagepipeline.nativecode.f.a().a(p3, iVar);
            eVar.G(com.facebook.imageformat.b.f12373b);
            return;
        }
        com.facebook.imagepipeline.nativecode.f.a().c(p3, iVar, 80);
        eVar.G(com.facebook.imageformat.b.f12372a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TriState h(com.facebook.imagepipeline.image.e eVar) {
        com.facebook.common.internal.h.i(eVar);
        com.facebook.imageformat.c d4 = com.facebook.imageformat.d.d(eVar.p());
        if (com.facebook.imageformat.b.b(d4)) {
            com.facebook.imagepipeline.nativecode.e a4 = com.facebook.imagepipeline.nativecode.f.a();
            if (a4 == null) {
                return TriState.NO;
            }
            return TriState.valueOf(!a4.b(d4));
        } else if (d4 == com.facebook.imageformat.c.f12384c) {
            return TriState.UNSET;
        } else {
            return TriState.NO;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(com.facebook.imagepipeline.image.e eVar, Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var) {
        com.facebook.common.internal.h.i(eVar);
        this.f13294a.execute(new a(consumer, k0Var.getListener(), f13292d, k0Var.getId(), com.facebook.imagepipeline.image.e.b(eVar)));
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void b(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var) {
        this.f13296c.b(new b(consumer, k0Var), k0Var);
    }
}
