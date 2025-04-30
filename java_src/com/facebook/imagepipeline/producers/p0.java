package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.util.TriState;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imagepipeline.producers.JobScheduler;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* compiled from: ResizeAndRotateProducer.java */
/* loaded from: classes2.dex */
public class p0 implements i0<com.facebook.imagepipeline.image.e> {

    /* renamed from: f  reason: collision with root package name */
    private static final String f13173f = "ResizeAndRotateProducer";

    /* renamed from: g  reason: collision with root package name */
    private static final String f13174g = "Image format";

    /* renamed from: h  reason: collision with root package name */
    private static final String f13175h = "Original size";

    /* renamed from: i  reason: collision with root package name */
    private static final String f13176i = "Requested size";

    /* renamed from: j  reason: collision with root package name */
    private static final String f13177j = "Transcoding result";

    /* renamed from: k  reason: collision with root package name */
    private static final String f13178k = "Transcoder id";
    @VisibleForTesting

    /* renamed from: l  reason: collision with root package name */
    static final int f13179l = 100;

    /* renamed from: a  reason: collision with root package name */
    private final Executor f13180a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.common.memory.g f13181b;

    /* renamed from: c  reason: collision with root package name */
    private final i0<com.facebook.imagepipeline.image.e> f13182c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f13183d;

    /* renamed from: e  reason: collision with root package name */
    private final com.facebook.imagepipeline.transcoder.d f13184e;

    /* compiled from: ResizeAndRotateProducer.java */
    /* loaded from: classes.dex */
    private class a extends m<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* renamed from: i  reason: collision with root package name */
        private final boolean f13185i;

        /* renamed from: j  reason: collision with root package name */
        private final com.facebook.imagepipeline.transcoder.d f13186j;

        /* renamed from: k  reason: collision with root package name */
        private final k0 f13187k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f13188l;

        /* renamed from: m  reason: collision with root package name */
        private final JobScheduler f13189m;

        /* compiled from: ResizeAndRotateProducer.java */
        /* renamed from: com.facebook.imagepipeline.producers.p0$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0085a implements JobScheduler.d {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ p0 f13191a;

            C0085a(p0 p0Var) {
                this.f13191a = p0Var;
            }

            @Override // com.facebook.imagepipeline.producers.JobScheduler.d
            public void a(com.facebook.imagepipeline.image.e eVar, int i2) {
                a aVar = a.this;
                aVar.w(eVar, i2, (com.facebook.imagepipeline.transcoder.c) com.facebook.common.internal.h.i(aVar.f13186j.createImageTranscoder(eVar.o(), a.this.f13185i)));
            }
        }

        /* compiled from: ResizeAndRotateProducer.java */
        /* loaded from: classes2.dex */
        class b extends e {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ p0 f13193a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Consumer f13194b;

            b(p0 p0Var, Consumer consumer) {
                this.f13193a = p0Var;
                this.f13194b = consumer;
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.l0
            public void a() {
                if (a.this.f13187k.e()) {
                    a.this.f13189m.h();
                }
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.l0
            public void b() {
                a.this.f13189m.c();
                a.this.f13188l = true;
                this.f13194b.a();
            }
        }

        a(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var, boolean z3, com.facebook.imagepipeline.transcoder.d dVar) {
            super(consumer);
            this.f13188l = false;
            this.f13187k = k0Var;
            Boolean q3 = k0Var.b().q();
            this.f13185i = q3 != null ? q3.booleanValue() : z3;
            this.f13186j = dVar;
            this.f13189m = new JobScheduler(p0.this.f13180a, new C0085a(p0.this), 100);
            k0Var.d(new b(p0.this, consumer));
        }

        @Nullable
        private com.facebook.imagepipeline.image.e A(com.facebook.imagepipeline.image.e eVar) {
            RotationOptions r3 = this.f13187k.b().r();
            return (r3.h() || !r3.g()) ? eVar : y(eVar, r3.f());
        }

        @Nullable
        private com.facebook.imagepipeline.image.e B(com.facebook.imagepipeline.image.e eVar) {
            return (this.f13187k.b().r().c() || eVar.q() == 0 || eVar.q() == -1) ? eVar : y(eVar, 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void w(com.facebook.imagepipeline.image.e eVar, int i2, com.facebook.imagepipeline.transcoder.c cVar) {
            this.f13187k.getListener().b(this.f13187k.getId(), p0.f13173f);
            ImageRequest b4 = this.f13187k.b();
            com.facebook.common.memory.i c4 = p0.this.f13181b.c();
            try {
                com.facebook.imagepipeline.transcoder.b b5 = cVar.b(eVar, c4, b4.r(), b4.p(), null, 85);
                if (b5.a() != 2) {
                    Map<String, String> z3 = z(eVar, b4.p(), b5, cVar.getIdentifier());
                    com.facebook.common.references.a p3 = com.facebook.common.references.a.p(c4.a());
                    try {
                        com.facebook.imagepipeline.image.e eVar2 = new com.facebook.imagepipeline.image.e(p3);
                        eVar2.G(com.facebook.imageformat.b.f12372a);
                        eVar2.z();
                        this.f13187k.getListener().e(this.f13187k.getId(), p0.f13173f, z3);
                        if (b5.a() != 1) {
                            i2 |= 16;
                        }
                        p().b(eVar2, i2);
                        com.facebook.imagepipeline.image.e.d(eVar2);
                        return;
                    } finally {
                        com.facebook.common.references.a.g(p3);
                    }
                }
                throw new RuntimeException("Error while transcoding the image");
            } catch (Exception e4) {
                this.f13187k.getListener().f(this.f13187k.getId(), p0.f13173f, e4, null);
                if (com.facebook.imagepipeline.producers.b.d(i2)) {
                    p().onFailure(e4);
                }
            } finally {
                c4.close();
            }
        }

        private void x(com.facebook.imagepipeline.image.e eVar, int i2, com.facebook.imageformat.c cVar) {
            com.facebook.imagepipeline.image.e B;
            if (cVar != com.facebook.imageformat.b.f12372a && cVar != com.facebook.imageformat.b.f12382k) {
                B = A(eVar);
            } else {
                B = B(eVar);
            }
            p().b(B, i2);
        }

        @Nullable
        private com.facebook.imagepipeline.image.e y(com.facebook.imagepipeline.image.e eVar, int i2) {
            com.facebook.imagepipeline.image.e b4 = com.facebook.imagepipeline.image.e.b(eVar);
            eVar.close();
            if (b4 != null) {
                b4.H(i2);
            }
            return b4;
        }

        @Nullable
        private Map<String, String> z(com.facebook.imagepipeline.image.e eVar, @Nullable com.facebook.imagepipeline.common.d dVar, @Nullable com.facebook.imagepipeline.transcoder.b bVar, @Nullable String str) {
            String str2;
            if (this.f13187k.getListener().d(this.f13187k.getId())) {
                String str3 = eVar.u() + "x" + eVar.n();
                if (dVar != null) {
                    str2 = dVar.f12570a + "x" + dVar.f12571b;
                } else {
                    str2 = "Unspecified";
                }
                HashMap hashMap = new HashMap();
                hashMap.put(p0.f13174g, String.valueOf(eVar.o()));
                hashMap.put(p0.f13175h, str3);
                hashMap.put(p0.f13176i, str2);
                hashMap.put("queueTime", String.valueOf(this.f13189m.f()));
                hashMap.put(p0.f13178k, str);
                hashMap.put(p0.f13177j, String.valueOf(bVar));
                return ImmutableMap.a(hashMap);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: C */
        public void h(@Nullable com.facebook.imagepipeline.image.e eVar, int i2) {
            if (this.f13188l) {
                return;
            }
            boolean d4 = com.facebook.imagepipeline.producers.b.d(i2);
            if (eVar == null) {
                if (d4) {
                    p().b(null, 1);
                    return;
                }
                return;
            }
            com.facebook.imageformat.c o3 = eVar.o();
            TriState h4 = p0.h(this.f13187k.b(), eVar, (com.facebook.imagepipeline.transcoder.c) com.facebook.common.internal.h.i(this.f13186j.createImageTranscoder(o3, this.f13185i)));
            if (d4 || h4 != TriState.UNSET) {
                if (h4 != TriState.YES) {
                    x(eVar, i2, o3);
                } else if (this.f13189m.k(eVar, i2)) {
                    if (d4 || this.f13187k.e()) {
                        this.f13189m.h();
                    }
                }
            }
        }
    }

    public p0(Executor executor, com.facebook.common.memory.g gVar, i0<com.facebook.imagepipeline.image.e> i0Var, boolean z3, com.facebook.imagepipeline.transcoder.d dVar) {
        this.f13180a = (Executor) com.facebook.common.internal.h.i(executor);
        this.f13181b = (com.facebook.common.memory.g) com.facebook.common.internal.h.i(gVar);
        this.f13182c = (i0) com.facebook.common.internal.h.i(i0Var);
        this.f13184e = (com.facebook.imagepipeline.transcoder.d) com.facebook.common.internal.h.i(dVar);
        this.f13183d = z3;
    }

    private static boolean f(RotationOptions rotationOptions, com.facebook.imagepipeline.image.e eVar) {
        return !rotationOptions.c() && (com.facebook.imagepipeline.transcoder.e.e(rotationOptions, eVar) != 0 || g(rotationOptions, eVar));
    }

    private static boolean g(RotationOptions rotationOptions, com.facebook.imagepipeline.image.e eVar) {
        if (rotationOptions.g() && !rotationOptions.c()) {
            return com.facebook.imagepipeline.transcoder.e.f13350g.contains(Integer.valueOf(eVar.k()));
        }
        eVar.E(0);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TriState h(ImageRequest imageRequest, com.facebook.imagepipeline.image.e eVar, com.facebook.imagepipeline.transcoder.c cVar) {
        if (eVar != null && eVar.o() != com.facebook.imageformat.c.f12384c) {
            if (!cVar.c(eVar.o())) {
                return TriState.NO;
            }
            return TriState.valueOf(f(imageRequest.r(), eVar) || cVar.a(eVar, imageRequest.r(), imageRequest.p()));
        }
        return TriState.UNSET;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void b(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var) {
        this.f13182c.b(new a(consumer, k0Var, this.f13183d, this.f13184e), k0Var);
    }
}
