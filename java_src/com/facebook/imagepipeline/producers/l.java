package com.facebook.imagepipeline.producers;

import android.graphics.Bitmap;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.util.ExceptionWithNoStacktrace;
import com.facebook.imagepipeline.producers.JobScheduler;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* compiled from: DecodeProducer.java */
/* loaded from: classes2.dex */
public class l implements i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

    /* renamed from: j  reason: collision with root package name */
    public static final String f13107j = "DecodeProducer";

    /* renamed from: k  reason: collision with root package name */
    public static final String f13108k = "bitmapSize";

    /* renamed from: l  reason: collision with root package name */
    public static final String f13109l = "hasGoodQuality";

    /* renamed from: m  reason: collision with root package name */
    public static final String f13110m = "isFinal";

    /* renamed from: n  reason: collision with root package name */
    public static final String f13111n = "imageFormat";

    /* renamed from: o  reason: collision with root package name */
    public static final String f13112o = "encodedImageSize";

    /* renamed from: p  reason: collision with root package name */
    public static final String f13113p = "requestedImageSize";

    /* renamed from: q  reason: collision with root package name */
    public static final String f13114q = "sampleSize";

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.common.memory.a f13115a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f13116b;

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.imagepipeline.decoder.b f13117c;

    /* renamed from: d  reason: collision with root package name */
    private final com.facebook.imagepipeline.decoder.d f13118d;

    /* renamed from: e  reason: collision with root package name */
    private final i0<com.facebook.imagepipeline.image.e> f13119e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f13120f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f13121g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f13122h;

    /* renamed from: i  reason: collision with root package name */
    private final int f13123i;

    /* compiled from: DecodeProducer.java */
    /* loaded from: classes2.dex */
    private class a extends c {
        public a(Consumer<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, k0 k0Var, boolean z3, int i2) {
            super(consumer, k0Var, z3, i2);
        }

        @Override // com.facebook.imagepipeline.producers.l.c
        protected synchronized boolean E(com.facebook.imagepipeline.image.e eVar, int i2) {
            if (com.facebook.imagepipeline.producers.b.e(i2)) {
                return false;
            }
            return super.E(eVar, i2);
        }

        @Override // com.facebook.imagepipeline.producers.l.c
        protected int w(com.facebook.imagepipeline.image.e eVar) {
            return eVar.s();
        }

        @Override // com.facebook.imagepipeline.producers.l.c
        protected com.facebook.imagepipeline.image.h x() {
            return com.facebook.imagepipeline.image.g.d(0, false, false);
        }
    }

    /* compiled from: DecodeProducer.java */
    /* loaded from: classes2.dex */
    private class b extends c {

        /* renamed from: q  reason: collision with root package name */
        private final com.facebook.imagepipeline.decoder.e f13125q;

        /* renamed from: r  reason: collision with root package name */
        private final com.facebook.imagepipeline.decoder.d f13126r;

        /* renamed from: s  reason: collision with root package name */
        private int f13127s;

        public b(Consumer<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, k0 k0Var, com.facebook.imagepipeline.decoder.e eVar, com.facebook.imagepipeline.decoder.d dVar, boolean z3, int i2) {
            super(consumer, k0Var, z3, i2);
            this.f13125q = (com.facebook.imagepipeline.decoder.e) com.facebook.common.internal.h.i(eVar);
            this.f13126r = (com.facebook.imagepipeline.decoder.d) com.facebook.common.internal.h.i(dVar);
            this.f13127s = 0;
        }

        @Override // com.facebook.imagepipeline.producers.l.c
        protected synchronized boolean E(com.facebook.imagepipeline.image.e eVar, int i2) {
            boolean E = super.E(eVar, i2);
            if ((com.facebook.imagepipeline.producers.b.e(i2) || com.facebook.imagepipeline.producers.b.m(i2, 8)) && !com.facebook.imagepipeline.producers.b.m(i2, 4) && com.facebook.imagepipeline.image.e.y(eVar) && eVar.o() == com.facebook.imageformat.b.f12372a) {
                if (!this.f13125q.h(eVar)) {
                    return false;
                }
                int d4 = this.f13125q.d();
                int i4 = this.f13127s;
                if (d4 <= i4) {
                    return false;
                }
                if (d4 < this.f13126r.a(i4) && !this.f13125q.e()) {
                    return false;
                }
                this.f13127s = d4;
            }
            return E;
        }

        @Override // com.facebook.imagepipeline.producers.l.c
        protected int w(com.facebook.imagepipeline.image.e eVar) {
            return this.f13125q.c();
        }

        @Override // com.facebook.imagepipeline.producers.l.c
        protected com.facebook.imagepipeline.image.h x() {
            return this.f13126r.b(this.f13125q.d());
        }
    }

    /* compiled from: DecodeProducer.java */
    /* loaded from: classes.dex */
    private abstract class c extends m<com.facebook.imagepipeline.image.e, com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

        /* renamed from: p  reason: collision with root package name */
        private static final int f13129p = 10;

        /* renamed from: i  reason: collision with root package name */
        private final String f13130i;

        /* renamed from: j  reason: collision with root package name */
        private final k0 f13131j;

        /* renamed from: k  reason: collision with root package name */
        private final m0 f13132k;

        /* renamed from: l  reason: collision with root package name */
        private final com.facebook.imagepipeline.common.b f13133l;
        @GuardedBy("this")

        /* renamed from: m  reason: collision with root package name */
        private boolean f13134m;

        /* renamed from: n  reason: collision with root package name */
        private final JobScheduler f13135n;

        /* compiled from: DecodeProducer.java */
        /* loaded from: classes2.dex */
        class a implements JobScheduler.d {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ l f13137a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ k0 f13138b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ int f13139c;

            a(l lVar, k0 k0Var, int i2) {
                this.f13137a = lVar;
                this.f13138b = k0Var;
                this.f13139c = i2;
            }

            @Override // com.facebook.imagepipeline.producers.JobScheduler.d
            public void a(com.facebook.imagepipeline.image.e eVar, int i2) {
                if (eVar != null) {
                    if (l.this.f13120f || !com.facebook.imagepipeline.producers.b.m(i2, 16)) {
                        ImageRequest b4 = this.f13138b.b();
                        if (l.this.f13121g || !com.facebook.common.util.f.m(b4.t())) {
                            eVar.I(com.facebook.imagepipeline.transcoder.a.b(b4.r(), b4.p(), eVar, this.f13139c));
                        }
                    }
                    c.this.u(eVar, i2);
                }
            }
        }

        /* compiled from: DecodeProducer.java */
        /* loaded from: classes2.dex */
        class b extends e {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ l f13141a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ boolean f13142b;

            b(l lVar, boolean z3) {
                this.f13141a = lVar;
                this.f13142b = z3;
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.l0
            public void a() {
                if (c.this.f13131j.e()) {
                    c.this.f13135n.h();
                }
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.l0
            public void b() {
                if (this.f13142b) {
                    c.this.y();
                }
            }
        }

        public c(Consumer<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, k0 k0Var, boolean z3, int i2) {
            super(consumer);
            this.f13130i = "ProgressiveDecoder";
            this.f13131j = k0Var;
            this.f13132k = k0Var.getListener();
            com.facebook.imagepipeline.common.b g4 = k0Var.b().g();
            this.f13133l = g4;
            this.f13134m = false;
            this.f13135n = new JobScheduler(l.this.f13116b, new a(l.this, k0Var, i2), g4.f12551a);
            k0Var.d(new b(l.this, z3));
        }

        private void A(com.facebook.imagepipeline.image.c cVar, int i2) {
            com.facebook.common.references.a<com.facebook.imagepipeline.image.c> p3 = com.facebook.common.references.a.p(cVar);
            try {
                C(com.facebook.imagepipeline.producers.b.d(i2));
                p().b(p3, i2);
            } finally {
                com.facebook.common.references.a.g(p3);
            }
        }

        private synchronized boolean B() {
            return this.f13134m;
        }

        private void C(boolean z3) {
            synchronized (this) {
                if (z3) {
                    if (!this.f13134m) {
                        p().c(1.0f);
                        this.f13134m = true;
                        this.f13135n.c();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Can't wrap try/catch for region: R(8:23|24|(10:(14:28|(12:32|33|34|35|37|38|39|(1:41)|42|43|44|45)|59|33|34|35|37|38|39|(0)|42|43|44|45)|(12:32|33|34|35|37|38|39|(0)|42|43|44|45)|37|38|39|(0)|42|43|44|45)|60|59|33|34|35) */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00fd, code lost:
            r0 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00fe, code lost:
            r2 = null;
         */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00dd  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void u(com.facebook.imagepipeline.image.e r19, int r20) {
            /*
                Method dump skipped, instructions count: 334
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.producers.l.c.u(com.facebook.imagepipeline.image.e, int):void");
        }

        @Nullable
        private Map<String, String> v(@Nullable com.facebook.imagepipeline.image.c cVar, long j4, com.facebook.imagepipeline.image.h hVar, boolean z3, String str, String str2, String str3, String str4) {
            if (this.f13132k.d(this.f13131j.getId())) {
                String valueOf = String.valueOf(j4);
                String valueOf2 = String.valueOf(hVar.b());
                String valueOf3 = String.valueOf(z3);
                if (cVar instanceof com.facebook.imagepipeline.image.d) {
                    Bitmap g4 = ((com.facebook.imagepipeline.image.d) cVar).g();
                    HashMap hashMap = new HashMap(8);
                    hashMap.put(l.f13108k, g4.getWidth() + "x" + g4.getHeight());
                    hashMap.put("queueTime", valueOf);
                    hashMap.put(l.f13109l, valueOf2);
                    hashMap.put(l.f13110m, valueOf3);
                    hashMap.put("encodedImageSize", str2);
                    hashMap.put(l.f13111n, str);
                    hashMap.put(l.f13113p, str3);
                    hashMap.put(l.f13114q, str4);
                    return ImmutableMap.a(hashMap);
                }
                HashMap hashMap2 = new HashMap(7);
                hashMap2.put("queueTime", valueOf);
                hashMap2.put(l.f13109l, valueOf2);
                hashMap2.put(l.f13110m, valueOf3);
                hashMap2.put("encodedImageSize", str2);
                hashMap2.put(l.f13111n, str);
                hashMap2.put(l.f13113p, str3);
                hashMap2.put(l.f13114q, str4);
                return ImmutableMap.a(hashMap2);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void y() {
            C(true);
            p().a();
        }

        private void z(Throwable th) {
            C(true);
            p().onFailure(th);
        }

        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: D */
        public void h(com.facebook.imagepipeline.image.e eVar, int i2) {
            try {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("DecodeProducer#onNewResultImpl");
                }
                boolean d4 = com.facebook.imagepipeline.producers.b.d(i2);
                if (d4 && !com.facebook.imagepipeline.image.e.y(eVar)) {
                    z(new ExceptionWithNoStacktrace("Encoded image is not valid."));
                } else if (!E(eVar, i2)) {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                } else {
                    boolean m4 = com.facebook.imagepipeline.producers.b.m(i2, 4);
                    if (d4 || m4 || this.f13131j.e()) {
                        this.f13135n.h();
                    }
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

        protected boolean E(com.facebook.imagepipeline.image.e eVar, int i2) {
            return this.f13135n.k(eVar, i2);
        }

        @Override // com.facebook.imagepipeline.producers.m, com.facebook.imagepipeline.producers.b
        public void f() {
            y();
        }

        @Override // com.facebook.imagepipeline.producers.m, com.facebook.imagepipeline.producers.b
        public void g(Throwable th) {
            z(th);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.m, com.facebook.imagepipeline.producers.b
        public void i(float f4) {
            super.i(f4 * 0.99f);
        }

        protected abstract int w(com.facebook.imagepipeline.image.e eVar);

        protected abstract com.facebook.imagepipeline.image.h x();
    }

    public l(com.facebook.common.memory.a aVar, Executor executor, com.facebook.imagepipeline.decoder.b bVar, com.facebook.imagepipeline.decoder.d dVar, boolean z3, boolean z4, boolean z5, i0<com.facebook.imagepipeline.image.e> i0Var, int i2) {
        this.f13115a = (com.facebook.common.memory.a) com.facebook.common.internal.h.i(aVar);
        this.f13116b = (Executor) com.facebook.common.internal.h.i(executor);
        this.f13117c = (com.facebook.imagepipeline.decoder.b) com.facebook.common.internal.h.i(bVar);
        this.f13118d = (com.facebook.imagepipeline.decoder.d) com.facebook.common.internal.h.i(dVar);
        this.f13120f = z3;
        this.f13121g = z4;
        this.f13119e = (i0) com.facebook.common.internal.h.i(i0Var);
        this.f13122h = z5;
        this.f13123i = i2;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void b(Consumer<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, k0 k0Var) {
        Consumer<com.facebook.imagepipeline.image.e> bVar;
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("DecodeProducer#produceResults");
            }
            if (!com.facebook.common.util.f.m(k0Var.b().t())) {
                bVar = new a(consumer, k0Var, this.f13122h, this.f13123i);
            } else {
                bVar = new b(consumer, k0Var, new com.facebook.imagepipeline.decoder.e(this.f13115a), this.f13118d, this.f13122h, this.f13123i);
            }
            this.f13119e.b(bVar, k0Var);
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }
}
