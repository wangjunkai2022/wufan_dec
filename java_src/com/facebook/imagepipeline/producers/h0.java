package com.facebook.imagepipeline.producers;

import android.graphics.Bitmap;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.internal.VisibleForTesting;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* compiled from: PostprocessorProducer.java */
/* loaded from: classes2.dex */
public class h0 implements i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

    /* renamed from: d  reason: collision with root package name */
    public static final String f13063d = "PostprocessorProducer";
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    static final String f13064e = "Postprocessor";

    /* renamed from: a  reason: collision with root package name */
    private final i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f13065a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.bitmaps.f f13066b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f13067c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PostprocessorProducer.java */
    /* loaded from: classes.dex */
    public class b extends m<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>, com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

        /* renamed from: i  reason: collision with root package name */
        private final m0 f13068i;

        /* renamed from: j  reason: collision with root package name */
        private final String f13069j;

        /* renamed from: k  reason: collision with root package name */
        private final com.facebook.imagepipeline.request.d f13070k;
        @GuardedBy("PostprocessorConsumer.this")

        /* renamed from: l  reason: collision with root package name */
        private boolean f13071l;
        @GuardedBy("PostprocessorConsumer.this")
        @Nullable

        /* renamed from: m  reason: collision with root package name */
        private com.facebook.common.references.a<com.facebook.imagepipeline.image.c> f13072m;
        @GuardedBy("PostprocessorConsumer.this")

        /* renamed from: n  reason: collision with root package name */
        private int f13073n;
        @GuardedBy("PostprocessorConsumer.this")

        /* renamed from: o  reason: collision with root package name */
        private boolean f13074o;
        @GuardedBy("PostprocessorConsumer.this")

        /* renamed from: p  reason: collision with root package name */
        private boolean f13075p;

        /* compiled from: PostprocessorProducer.java */
        /* loaded from: classes2.dex */
        class a extends e {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h0 f13077a;

            a(h0 h0Var) {
                this.f13077a = h0Var;
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.l0
            public void b() {
                b.this.C();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: PostprocessorProducer.java */
        /* renamed from: com.facebook.imagepipeline.producers.h0$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class RunnableC0084b implements Runnable {
            RunnableC0084b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                com.facebook.common.references.a aVar;
                int i2;
                synchronized (b.this) {
                    aVar = b.this.f13072m;
                    i2 = b.this.f13073n;
                    b.this.f13072m = null;
                    b.this.f13074o = false;
                }
                if (com.facebook.common.references.a.o(aVar)) {
                    try {
                        b.this.z(aVar, i2);
                    } finally {
                        com.facebook.common.references.a.g(aVar);
                    }
                }
                b.this.x();
            }
        }

        public b(Consumer<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, m0 m0Var, String str, com.facebook.imagepipeline.request.d dVar, k0 k0Var) {
            super(consumer);
            this.f13072m = null;
            this.f13073n = 0;
            this.f13074o = false;
            this.f13075p = false;
            this.f13068i = m0Var;
            this.f13069j = str;
            this.f13070k = dVar;
            k0Var.d(new a(h0.this));
        }

        @Nullable
        private Map<String, String> A(m0 m0Var, String str, com.facebook.imagepipeline.request.d dVar) {
            if (m0Var.d(str)) {
                return ImmutableMap.of(h0.f13064e, dVar.getName());
            }
            return null;
        }

        private synchronized boolean B() {
            return this.f13071l;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void C() {
            if (y()) {
                p().a();
            }
        }

        private void D(Throwable th) {
            if (y()) {
                p().onFailure(th);
            }
        }

        private void E(com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar, int i2) {
            boolean d4 = com.facebook.imagepipeline.producers.b.d(i2);
            if ((d4 || B()) && !(d4 && y())) {
                return;
            }
            p().b(aVar, i2);
        }

        private com.facebook.common.references.a<com.facebook.imagepipeline.image.c> G(com.facebook.imagepipeline.image.c cVar) {
            com.facebook.imagepipeline.image.d dVar = (com.facebook.imagepipeline.image.d) cVar;
            com.facebook.common.references.a<Bitmap> c4 = this.f13070k.c(dVar.g(), h0.this.f13066b);
            try {
                return com.facebook.common.references.a.p(new com.facebook.imagepipeline.image.d(c4, cVar.b(), dVar.p(), dVar.o()));
            } finally {
                com.facebook.common.references.a.g(c4);
            }
        }

        private synchronized boolean H() {
            if (this.f13071l || !this.f13074o || this.f13075p || !com.facebook.common.references.a.o(this.f13072m)) {
                return false;
            }
            this.f13075p = true;
            return true;
        }

        private boolean I(com.facebook.imagepipeline.image.c cVar) {
            return cVar instanceof com.facebook.imagepipeline.image.d;
        }

        private void J() {
            h0.this.f13067c.execute(new RunnableC0084b());
        }

        private void K(@Nullable com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar, int i2) {
            synchronized (this) {
                if (this.f13071l) {
                    return;
                }
                com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar2 = this.f13072m;
                this.f13072m = com.facebook.common.references.a.d(aVar);
                this.f13073n = i2;
                this.f13074o = true;
                boolean H = H();
                com.facebook.common.references.a.g(aVar2);
                if (H) {
                    J();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void x() {
            boolean H;
            synchronized (this) {
                this.f13075p = false;
                H = H();
            }
            if (H) {
                J();
            }
        }

        private boolean y() {
            synchronized (this) {
                if (this.f13071l) {
                    return false;
                }
                com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar = this.f13072m;
                this.f13072m = null;
                this.f13071l = true;
                com.facebook.common.references.a.g(aVar);
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void z(com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar, int i2) {
            com.facebook.common.internal.h.d(com.facebook.common.references.a.o(aVar));
            if (!I(aVar.i())) {
                E(aVar, i2);
                return;
            }
            this.f13068i.b(this.f13069j, h0.f13063d);
            try {
                try {
                    com.facebook.common.references.a<com.facebook.imagepipeline.image.c> G = G(aVar.i());
                    m0 m0Var = this.f13068i;
                    String str = this.f13069j;
                    m0Var.e(str, h0.f13063d, A(m0Var, str, this.f13070k));
                    E(G, i2);
                    com.facebook.common.references.a.g(G);
                } catch (Exception e4) {
                    m0 m0Var2 = this.f13068i;
                    String str2 = this.f13069j;
                    m0Var2.f(str2, h0.f13063d, e4, A(m0Var2, str2, this.f13070k));
                    D(e4);
                    com.facebook.common.references.a.g(null);
                }
            } catch (Throwable th) {
                com.facebook.common.references.a.g(null);
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: F */
        public void h(com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar, int i2) {
            if (!com.facebook.common.references.a.o(aVar)) {
                if (com.facebook.imagepipeline.producers.b.d(i2)) {
                    E(null, i2);
                    return;
                }
                return;
            }
            K(aVar, i2);
        }

        @Override // com.facebook.imagepipeline.producers.m, com.facebook.imagepipeline.producers.b
        protected void f() {
            C();
        }

        @Override // com.facebook.imagepipeline.producers.m, com.facebook.imagepipeline.producers.b
        protected void g(Throwable th) {
            D(th);
        }
    }

    /* compiled from: PostprocessorProducer.java */
    /* loaded from: classes.dex */
    class c extends m<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>, com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> implements com.facebook.imagepipeline.request.f {
        @GuardedBy("RepeatedPostprocessorConsumer.this")

        /* renamed from: i  reason: collision with root package name */
        private boolean f13080i;
        @GuardedBy("RepeatedPostprocessorConsumer.this")
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private com.facebook.common.references.a<com.facebook.imagepipeline.image.c> f13081j;

        /* compiled from: PostprocessorProducer.java */
        /* loaded from: classes2.dex */
        class a extends e {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h0 f13083a;

            a(h0 h0Var) {
                this.f13083a = h0Var;
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.l0
            public void b() {
                if (c.this.r()) {
                    c.this.p().a();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean r() {
            synchronized (this) {
                if (this.f13080i) {
                    return false;
                }
                com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar = this.f13081j;
                this.f13081j = null;
                this.f13080i = true;
                com.facebook.common.references.a.g(aVar);
                return true;
            }
        }

        private void t(com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar) {
            synchronized (this) {
                if (this.f13080i) {
                    return;
                }
                com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar2 = this.f13081j;
                this.f13081j = com.facebook.common.references.a.d(aVar);
                com.facebook.common.references.a.g(aVar2);
            }
        }

        private void u() {
            synchronized (this) {
                if (this.f13080i) {
                    return;
                }
                com.facebook.common.references.a<com.facebook.imagepipeline.image.c> d4 = com.facebook.common.references.a.d(this.f13081j);
                try {
                    p().b(d4, 0);
                } finally {
                    com.facebook.common.references.a.g(d4);
                }
            }
        }

        @Override // com.facebook.imagepipeline.producers.m, com.facebook.imagepipeline.producers.b
        protected void f() {
            if (r()) {
                p().a();
            }
        }

        @Override // com.facebook.imagepipeline.producers.m, com.facebook.imagepipeline.producers.b
        protected void g(Throwable th) {
            if (r()) {
                p().onFailure(th);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: s */
        public void h(com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar, int i2) {
            if (com.facebook.imagepipeline.producers.b.e(i2)) {
                return;
            }
            t(aVar);
            u();
        }

        @Override // com.facebook.imagepipeline.request.f
        public synchronized void update() {
            u();
        }

        private c(b bVar, com.facebook.imagepipeline.request.e eVar, k0 k0Var) {
            super(bVar);
            this.f13080i = false;
            this.f13081j = null;
            eVar.b(this);
            k0Var.d(new a(h0.this));
        }
    }

    /* compiled from: PostprocessorProducer.java */
    /* loaded from: classes2.dex */
    class d extends m<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>, com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: q */
        public void h(com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar, int i2) {
            if (com.facebook.imagepipeline.producers.b.e(i2)) {
                return;
            }
            p().b(aVar, i2);
        }

        private d(b bVar) {
            super(bVar);
        }
    }

    public h0(i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> i0Var, com.facebook.imagepipeline.bitmaps.f fVar, Executor executor) {
        this.f13065a = (i0) com.facebook.common.internal.h.i(i0Var);
        this.f13066b = fVar;
        this.f13067c = (Executor) com.facebook.common.internal.h.i(executor);
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void b(Consumer<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, k0 k0Var) {
        Consumer<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> dVar;
        m0 listener = k0Var.getListener();
        com.facebook.imagepipeline.request.d j4 = k0Var.b().j();
        b bVar = new b(consumer, listener, k0Var.getId(), j4, k0Var);
        if (j4 instanceof com.facebook.imagepipeline.request.e) {
            dVar = new c(bVar, (com.facebook.imagepipeline.request.e) j4, k0Var);
        } else {
            dVar = new d(bVar);
        }
        this.f13065a.b(dVar, k0Var);
    }
}
