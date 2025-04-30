package com.facebook.drawee.backends.pipeline;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.facebook.common.internal.ImmutableList;
import com.facebook.common.internal.h;
import com.facebook.common.internal.k;
import com.facebook.common.time.AwakeTimeSinceBootClock;
import com.facebook.drawee.drawable.q;
import com.facebook.drawee.drawable.r;
import com.facebook.imagepipeline.cache.p;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* compiled from: PipelineDraweeController.java */
/* loaded from: classes.dex */
public class d extends com.facebook.drawee.controller.a<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>, com.facebook.imagepipeline.image.f> {
    private static final Class<?> I = d.class;
    private com.facebook.cache.common.c A;
    private k<com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> B;
    private boolean C;
    @Nullable
    private ImmutableList<p0.a> D;
    @Nullable
    private com.facebook.drawee.backends.pipeline.info.c E;
    @GuardedBy("this")
    @Nullable
    private Set<r0.c> F;
    @GuardedBy("this")
    @Nullable
    private h0.b G;
    private g0.a H;

    /* renamed from: w  reason: collision with root package name */
    private final Resources f11838w;

    /* renamed from: x  reason: collision with root package name */
    private final p0.a f11839x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private final ImmutableList<p0.a> f11840y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private final p<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f11841z;

    public d(Resources resources, com.facebook.drawee.components.a aVar, p0.a aVar2, Executor executor, @Nullable p<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> pVar, @Nullable ImmutableList<p0.a> immutableList) {
        super(aVar, executor, null, null);
        this.f11838w = resources;
        this.f11839x = new b(resources, aVar2);
        this.f11840y = immutableList;
        this.f11841z = pVar;
    }

    private void c0(k<com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> kVar) {
        this.B = kVar;
        g0(null);
    }

    @Nullable
    private Drawable f0(@Nullable ImmutableList<p0.a> immutableList, com.facebook.imagepipeline.image.c cVar) {
        Drawable b4;
        if (immutableList == null) {
            return null;
        }
        Iterator<p0.a> it2 = immutableList.iterator();
        while (it2.hasNext()) {
            p0.a next = it2.next();
            if (next.a(cVar) && (b4 = next.b(cVar)) != null) {
                return b4;
            }
        }
        return null;
    }

    private void g0(@Nullable com.facebook.imagepipeline.image.c cVar) {
        q a4;
        if (this.C) {
            if (q() == null) {
                com.facebook.drawee.debug.a aVar = new com.facebook.drawee.debug.a();
                j0.a aVar2 = new j0.a(aVar);
                this.H = new g0.a();
                l(aVar2);
                L(aVar);
            }
            if (this.G == null) {
                S(this.H);
            }
            if (q() instanceof com.facebook.drawee.debug.a) {
                com.facebook.drawee.debug.a aVar3 = (com.facebook.drawee.debug.a) q();
                aVar3.g(t());
                k0.b e4 = e();
                r.c cVar2 = null;
                if (e4 != null && (a4 = r.a(e4.c())) != null) {
                    cVar2 = a4.B();
                }
                aVar3.n(cVar2);
                aVar3.m(this.H.b());
                if (cVar != null) {
                    aVar3.h(cVar.a(), cVar.getHeight());
                    aVar3.l(cVar.d());
                    return;
                }
                aVar3.e();
            }
        }
    }

    @Override // com.facebook.drawee.controller.a
    protected void H(@Nullable Drawable drawable) {
        if (drawable instanceof e0.a) {
            ((e0.a) drawable).e();
        }
    }

    public synchronized void S(h0.b bVar) {
        h0.b bVar2 = this.G;
        if (bVar2 instanceof h0.a) {
            ((h0.a) bVar2).b(bVar);
        } else if (bVar2 != null) {
            this.G = new h0.a(bVar2, bVar);
        } else {
            this.G = bVar;
        }
    }

    public synchronized void T(r0.c cVar) {
        if (this.F == null) {
            this.F = new HashSet();
        }
        this.F.add(cVar);
    }

    protected void U() {
        synchronized (this) {
            this.G = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    /* renamed from: V */
    public Drawable m(com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("PipelineDraweeController#createDrawable");
            }
            h.o(com.facebook.common.references.a.o(aVar));
            com.facebook.imagepipeline.image.c i2 = aVar.i();
            g0(i2);
            Drawable f02 = f0(this.D, i2);
            if (f02 != null) {
                return f02;
            }
            Drawable f03 = f0(this.f11840y, i2);
            if (f03 != null) {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return f03;
            }
            Drawable b4 = this.f11839x.b(i2);
            if (b4 != null) {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return b4;
            }
            throw new UnsupportedOperationException("Unrecognized image class: " + i2);
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    protected com.facebook.cache.common.c W() {
        return this.A;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    @Nullable
    /* renamed from: X */
    public com.facebook.common.references.a<com.facebook.imagepipeline.image.c> n() {
        com.facebook.cache.common.c cVar;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("PipelineDraweeController#getCachedImage");
        }
        try {
            p<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> pVar = this.f11841z;
            if (pVar != null && (cVar = this.A) != null) {
                com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar = pVar.get(cVar);
                if (aVar != null && !aVar.i().b().a()) {
                    aVar.close();
                    return null;
                }
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return aVar;
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            return null;
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    protected k<com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> Y() {
        return this.B;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    /* renamed from: Z */
    public int v(@Nullable com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar) {
        if (aVar != null) {
            return aVar.m();
        }
        return 0;
    }

    @Override // com.facebook.drawee.controller.a, k0.a
    public void a(@Nullable k0.b bVar) {
        super.a(bVar);
        g0(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    /* renamed from: a0 */
    public com.facebook.imagepipeline.image.f w(com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar) {
        h.o(com.facebook.common.references.a.o(aVar));
        return aVar.i();
    }

    @Nullable
    public synchronized r0.c b0() {
        com.facebook.drawee.backends.pipeline.info.a aVar = this.G != null ? new com.facebook.drawee.backends.pipeline.info.a(t(), this.G) : null;
        Set<r0.c> set = this.F;
        if (set != null) {
            r0.b bVar = new r0.b(set);
            if (aVar != null) {
                bVar.l(aVar);
            }
            return bVar;
        }
        return aVar;
    }

    public void d0(k<com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> kVar, String str, com.facebook.cache.common.c cVar, Object obj, @Nullable ImmutableList<p0.a> immutableList, @Nullable h0.b bVar) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("PipelineDraweeController#initialize");
        }
        super.z(str, obj);
        c0(kVar);
        this.A = cVar;
        l0(immutableList);
        U();
        g0(null);
        S(bVar);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void e0(@Nullable h0.d dVar) {
        com.facebook.drawee.backends.pipeline.info.c cVar = this.E;
        if (cVar != null) {
            cVar.g();
        }
        if (dVar != null) {
            if (this.E == null) {
                this.E = new com.facebook.drawee.backends.pipeline.info.c(AwakeTimeSinceBootClock.get(), this);
            }
            this.E.a(dVar);
            this.E.h(true);
        }
    }

    protected Resources getResources() {
        return this.f11838w;
    }

    @Override // k0.a
    public boolean h(@Nullable k0.a aVar) {
        com.facebook.cache.common.c cVar = this.A;
        if (cVar == null || !(aVar instanceof d)) {
            return false;
        }
        return com.facebook.common.internal.g.a(cVar, ((d) aVar).W());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    /* renamed from: h0 */
    public void E(String str, com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar) {
        super.E(str, aVar);
        synchronized (this) {
            h0.b bVar = this.G;
            if (bVar != null) {
                bVar.a(str, 5, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    /* renamed from: i0 */
    public void J(@Nullable com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar) {
        com.facebook.common.references.a.g(aVar);
    }

    public synchronized void j0(h0.b bVar) {
        h0.b bVar2 = this.G;
        if (bVar2 instanceof h0.a) {
            ((h0.a) bVar2).c(bVar);
        } else if (bVar2 != null) {
            this.G = new h0.a(bVar2, bVar);
        } else {
            this.G = bVar;
        }
    }

    public synchronized void k0(r0.c cVar) {
        Set<r0.c> set = this.F;
        if (set == null) {
            return;
        }
        set.remove(cVar);
    }

    public void l0(@Nullable ImmutableList<p0.a> immutableList) {
        this.D = immutableList;
    }

    public void m0(boolean z3) {
        this.C = z3;
    }

    @Override // com.facebook.drawee.controller.a
    protected com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> r() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("PipelineDraweeController#getDataSource");
        }
        if (com.facebook.common.logging.a.R(2)) {
            com.facebook.common.logging.a.V(I, "controller %x: getDataSource", Integer.valueOf(System.identityHashCode(this)));
        }
        com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> cVar = this.B.get();
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return cVar;
    }

    @Override // com.facebook.drawee.controller.a
    public String toString() {
        return com.facebook.common.internal.g.f(this).f("super", super.toString()).f("dataSourceSupplier", this.B).toString();
    }
}
