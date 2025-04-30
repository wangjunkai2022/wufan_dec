package com.facebook.imagepipeline.cache;

import com.facebook.common.memory.PooledByteBuffer;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;
/* compiled from: BufferedDiskCache.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: h  reason: collision with root package name */
    private static final Class<?> f12472h = e.class;

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.cache.disk.h f12473a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.common.memory.g f12474b;

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.common.memory.j f12475c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f12476d;

    /* renamed from: e  reason: collision with root package name */
    private final Executor f12477e;

    /* renamed from: f  reason: collision with root package name */
    private final u f12478f = u.d();

    /* renamed from: g  reason: collision with root package name */
    private final n f12479g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BufferedDiskCache.java */
    /* loaded from: classes2.dex */
    public class a implements Callable<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f12480a;

        a(com.facebook.cache.common.c cVar) {
            this.f12480a = cVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            return Boolean.valueOf(e.this.i(this.f12480a));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BufferedDiskCache.java */
    /* loaded from: classes.dex */
    public class b implements Callable<com.facebook.imagepipeline.image.e> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f12482a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f12483b;

        b(AtomicBoolean atomicBoolean, com.facebook.cache.common.c cVar) {
            this.f12482a = atomicBoolean;
            this.f12483b = cVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        @Nullable
        public com.facebook.imagepipeline.image.e call() throws Exception {
            try {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("BufferedDiskCache#getAsync");
                }
                if (!this.f12482a.get()) {
                    com.facebook.imagepipeline.image.e c4 = e.this.f12478f.c(this.f12483b);
                    if (c4 != null) {
                        com.facebook.common.logging.a.V(e.f12472h, "Found image for %s in staging area", this.f12483b.a());
                        e.this.f12479g.f(this.f12483b);
                    } else {
                        com.facebook.common.logging.a.V(e.f12472h, "Did not find image for %s in staging area", this.f12483b.a());
                        e.this.f12479g.l();
                        try {
                            com.facebook.common.references.a p3 = com.facebook.common.references.a.p(e.this.s(this.f12483b));
                            try {
                                c4 = new com.facebook.imagepipeline.image.e(p3);
                            } finally {
                                com.facebook.common.references.a.g(p3);
                            }
                        } catch (Exception unused) {
                            if (com.facebook.imagepipeline.systrace.b.e()) {
                                com.facebook.imagepipeline.systrace.b.c();
                            }
                            return null;
                        }
                    }
                    if (Thread.interrupted()) {
                        com.facebook.common.logging.a.U(e.f12472h, "Host thread was interrupted, decreasing reference count");
                        c4.close();
                        throw new InterruptedException();
                    }
                    return c4;
                }
                throw new CancellationException();
            } finally {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            }
        }
    }

    /* compiled from: BufferedDiskCache.java */
    /* loaded from: classes2.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f12485a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.facebook.imagepipeline.image.e f12486b;

        c(com.facebook.cache.common.c cVar, com.facebook.imagepipeline.image.e eVar) {
            this.f12485a = cVar;
            this.f12486b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("BufferedDiskCache#putAsync");
                }
                e.this.u(this.f12485a, this.f12486b);
            } finally {
                e.this.f12478f.h(this.f12485a, this.f12486b);
                com.facebook.imagepipeline.image.e.d(this.f12486b);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BufferedDiskCache.java */
    /* loaded from: classes2.dex */
    public class d implements Callable<Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f12488a;

        d(com.facebook.cache.common.c cVar) {
            this.f12488a = cVar;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            try {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("BufferedDiskCache#remove");
                }
                e.this.f12478f.g(this.f12488a);
                e.this.f12473a.h(this.f12488a);
            } finally {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BufferedDiskCache.java */
    /* renamed from: com.facebook.imagepipeline.cache.e$e  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class CallableC0076e implements Callable<Void> {
        CallableC0076e() {
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            e.this.f12478f.a();
            e.this.f12473a.clearAll();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BufferedDiskCache.java */
    /* loaded from: classes2.dex */
    public class f implements com.facebook.cache.common.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.facebook.imagepipeline.image.e f12491a;

        f(com.facebook.imagepipeline.image.e eVar) {
            this.f12491a = eVar;
        }

        @Override // com.facebook.cache.common.j
        public void a(OutputStream outputStream) throws IOException {
            e.this.f12475c.a(this.f12491a.p(), outputStream);
        }
    }

    public e(com.facebook.cache.disk.h hVar, com.facebook.common.memory.g gVar, com.facebook.common.memory.j jVar, Executor executor, Executor executor2, n nVar) {
        this.f12473a = hVar;
        this.f12474b = gVar;
        this.f12475c = jVar;
        this.f12476d = executor;
        this.f12477e = executor2;
        this.f12479g = nVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean i(com.facebook.cache.common.c cVar) {
        com.facebook.imagepipeline.image.e c4 = this.f12478f.c(cVar);
        if (c4 != null) {
            c4.close();
            com.facebook.common.logging.a.V(f12472h, "Found image for %s in staging area", cVar.a());
            this.f12479g.f(cVar);
            return true;
        }
        com.facebook.common.logging.a.V(f12472h, "Did not find image for %s in staging area", cVar.a());
        this.f12479g.l();
        try {
            return this.f12473a.i(cVar);
        } catch (Exception unused) {
            return false;
        }
    }

    private bolts.h<Boolean> l(com.facebook.cache.common.c cVar) {
        try {
            return bolts.h.call(new a(cVar), this.f12476d);
        } catch (Exception e4) {
            com.facebook.common.logging.a.n0(f12472h, e4, "Failed to schedule disk-cache read for %s", cVar.a());
            return bolts.h.y(e4);
        }
    }

    private bolts.h<com.facebook.imagepipeline.image.e> o(com.facebook.cache.common.c cVar, com.facebook.imagepipeline.image.e eVar) {
        com.facebook.common.logging.a.V(f12472h, "Found image for %s in staging area", cVar.a());
        this.f12479g.f(cVar);
        return bolts.h.z(eVar);
    }

    private bolts.h<com.facebook.imagepipeline.image.e> q(com.facebook.cache.common.c cVar, AtomicBoolean atomicBoolean) {
        try {
            return bolts.h.call(new b(atomicBoolean, cVar), this.f12476d);
        } catch (Exception e4) {
            com.facebook.common.logging.a.n0(f12472h, e4, "Failed to schedule disk-cache read for %s", cVar.a());
            return bolts.h.y(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public PooledByteBuffer s(com.facebook.cache.common.c cVar) throws IOException {
        try {
            Class<?> cls = f12472h;
            com.facebook.common.logging.a.V(cls, "Disk cache read for %s", cVar.a());
            a0.a c4 = this.f12473a.c(cVar);
            if (c4 == null) {
                com.facebook.common.logging.a.V(cls, "Disk cache miss for %s", cVar.a());
                this.f12479g.k();
                return null;
            }
            com.facebook.common.logging.a.V(cls, "Found entry in disk cache for %s", cVar.a());
            this.f12479g.h(cVar);
            InputStream a4 = c4.a();
            PooledByteBuffer b4 = this.f12474b.b(a4, (int) c4.size());
            a4.close();
            com.facebook.common.logging.a.V(cls, "Successful read from disk cache for %s", cVar.a());
            return b4;
        } catch (IOException e4) {
            com.facebook.common.logging.a.n0(f12472h, e4, "Exception reading from cache for %s", cVar.a());
            this.f12479g.c();
            throw e4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(com.facebook.cache.common.c cVar, com.facebook.imagepipeline.image.e eVar) {
        Class<?> cls = f12472h;
        com.facebook.common.logging.a.V(cls, "About to write to disk-cache for key %s", cVar.a());
        try {
            this.f12473a.insert(cVar, new f(eVar));
            com.facebook.common.logging.a.V(cls, "Successful disk-cache write for key %s", cVar.a());
        } catch (IOException e4) {
            com.facebook.common.logging.a.n0(f12472h, e4, "Failed to write to disk-cache for key %s", cVar.a());
        }
    }

    public bolts.h<Void> j() {
        this.f12478f.a();
        try {
            return bolts.h.call(new CallableC0076e(), this.f12477e);
        } catch (Exception e4) {
            com.facebook.common.logging.a.n0(f12472h, e4, "Failed to schedule disk-cache clear", new Object[0]);
            return bolts.h.y(e4);
        }
    }

    public bolts.h<Boolean> k(com.facebook.cache.common.c cVar) {
        if (m(cVar)) {
            return bolts.h.z(Boolean.TRUE);
        }
        return l(cVar);
    }

    public boolean m(com.facebook.cache.common.c cVar) {
        return this.f12478f.b(cVar) || this.f12473a.f(cVar);
    }

    public boolean n(com.facebook.cache.common.c cVar) {
        if (m(cVar)) {
            return true;
        }
        return i(cVar);
    }

    public bolts.h<com.facebook.imagepipeline.image.e> p(com.facebook.cache.common.c cVar, AtomicBoolean atomicBoolean) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("BufferedDiskCache#get");
            }
            com.facebook.imagepipeline.image.e c4 = this.f12478f.c(cVar);
            if (c4 != null) {
                return o(cVar, c4);
            }
            bolts.h<com.facebook.imagepipeline.image.e> q3 = q(cVar, atomicBoolean);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            return q3;
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    public void r(com.facebook.cache.common.c cVar, com.facebook.imagepipeline.image.e eVar) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("BufferedDiskCache#put");
            }
            com.facebook.common.internal.h.i(cVar);
            com.facebook.common.internal.h.d(com.facebook.imagepipeline.image.e.y(eVar));
            this.f12478f.f(cVar, eVar);
            com.facebook.imagepipeline.image.e b4 = com.facebook.imagepipeline.image.e.b(eVar);
            try {
                this.f12477e.execute(new c(cVar, b4));
            } catch (Exception e4) {
                com.facebook.common.logging.a.n0(f12472h, e4, "Failed to schedule disk-cache write for %s", cVar.a());
                this.f12478f.h(cVar, eVar);
                com.facebook.imagepipeline.image.e.d(b4);
            }
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    public bolts.h<Void> t(com.facebook.cache.common.c cVar) {
        com.facebook.common.internal.h.i(cVar);
        this.f12478f.g(cVar);
        try {
            return bolts.h.call(new d(cVar), this.f12477e);
        } catch (Exception e4) {
            com.facebook.common.logging.a.n0(f12472h, e4, "Failed to schedule disk-cache remove for %s", cVar.a());
            return bolts.h.y(e4);
        }
    }
}
