package com.facebook.imagepipeline.producers;

import android.os.SystemClock;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.imagepipeline.producers.d0;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import javax.annotation.Nullable;
/* compiled from: NetworkFetchProducer.java */
/* loaded from: classes.dex */
public class c0 implements i0<com.facebook.imagepipeline.image.e> {

    /* renamed from: d  reason: collision with root package name */
    public static final String f13003d = "NetworkFetchProducer";

    /* renamed from: e  reason: collision with root package name */
    public static final String f13004e = "intermediate_result";

    /* renamed from: f  reason: collision with root package name */
    private static final int f13005f = 16384;
    @VisibleForTesting

    /* renamed from: g  reason: collision with root package name */
    static final long f13006g = 100;

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.common.memory.g f13007a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.common.memory.a f13008b;

    /* renamed from: c  reason: collision with root package name */
    private final d0 f13009c;

    /* compiled from: NetworkFetchProducer.java */
    /* loaded from: classes2.dex */
    class a implements d0.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ r f13010a;

        a(r rVar) {
            this.f13010a = rVar;
        }

        @Override // com.facebook.imagepipeline.producers.d0.a
        public void a() {
            c0.this.j(this.f13010a);
        }

        @Override // com.facebook.imagepipeline.producers.d0.a
        public void b(InputStream inputStream, int i2) throws IOException {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("NetworkFetcher->onResponse");
            }
            c0.this.l(this.f13010a, inputStream, i2);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }

        @Override // com.facebook.imagepipeline.producers.d0.a
        public void onFailure(Throwable th) {
            c0.this.k(this.f13010a, th);
        }
    }

    public c0(com.facebook.common.memory.g gVar, com.facebook.common.memory.a aVar, d0 d0Var) {
        this.f13007a = gVar;
        this.f13008b = aVar;
        this.f13009c = d0Var;
    }

    protected static float e(int i2, int i4) {
        if (i4 > 0) {
            return i2 / i4;
        }
        double d4 = -i2;
        Double.isNaN(d4);
        return 1.0f - ((float) Math.exp(d4 / 50000.0d));
    }

    @Nullable
    private Map<String, String> f(r rVar, int i2) {
        if (rVar.d().d(rVar.b())) {
            return this.f13009c.d(rVar, i2);
        }
        return null;
    }

    protected static void i(com.facebook.common.memory.i iVar, int i2, @Nullable com.facebook.imagepipeline.common.a aVar, Consumer<com.facebook.imagepipeline.image.e> consumer) {
        com.facebook.imagepipeline.image.e eVar;
        com.facebook.common.references.a p3 = com.facebook.common.references.a.p(iVar.a());
        com.facebook.imagepipeline.image.e eVar2 = null;
        try {
            eVar = new com.facebook.imagepipeline.image.e(p3);
        } catch (Throwable th) {
            th = th;
        }
        try {
            eVar.D(aVar);
            eVar.z();
            consumer.b(eVar, i2);
            com.facebook.imagepipeline.image.e.d(eVar);
            com.facebook.common.references.a.g(p3);
        } catch (Throwable th2) {
            th = th2;
            eVar2 = eVar;
            com.facebook.imagepipeline.image.e.d(eVar2);
            com.facebook.common.references.a.g(p3);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(r rVar) {
        rVar.d().g(rVar.b(), f13003d, null);
        rVar.a().a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(r rVar, Throwable th) {
        rVar.d().f(rVar.b(), f13003d, th, null);
        rVar.d().h(rVar.b(), f13003d, false);
        rVar.a().onFailure(th);
    }

    private boolean m(r rVar) {
        if (rVar.getContext().e()) {
            return this.f13009c.c(rVar);
        }
        return false;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void b(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var) {
        k0Var.getListener().b(k0Var.getId(), f13003d);
        r e4 = this.f13009c.e(consumer, k0Var);
        this.f13009c.a(e4, new a(e4));
    }

    protected void g(com.facebook.common.memory.i iVar, r rVar) {
        Map<String, String> f4 = f(rVar, iVar.size());
        m0 d4 = rVar.d();
        d4.e(rVar.b(), f13003d, f4);
        d4.h(rVar.b(), f13003d, true);
        i(iVar, rVar.e() | 1, rVar.f(), rVar.a());
    }

    protected void h(com.facebook.common.memory.i iVar, r rVar) {
        long uptimeMillis = SystemClock.uptimeMillis();
        if (!m(rVar) || uptimeMillis - rVar.c() < f13006g) {
            return;
        }
        rVar.h(uptimeMillis);
        rVar.d().j(rVar.b(), f13003d, f13004e);
        i(iVar, rVar.e(), rVar.f(), rVar.a());
    }

    protected void l(r rVar, InputStream inputStream, int i2) throws IOException {
        com.facebook.common.memory.i c4;
        if (i2 > 0) {
            c4 = this.f13007a.f(i2);
        } else {
            c4 = this.f13007a.c();
        }
        byte[] bArr = this.f13008b.get(16384);
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read < 0) {
                    this.f13009c.b(rVar, c4.size());
                    g(c4, rVar);
                    return;
                } else if (read > 0) {
                    c4.write(bArr, 0, read);
                    h(c4, rVar);
                    rVar.a().c(e(c4.size(), i2));
                }
            } finally {
                this.f13008b.release(bArr);
                c4.close();
            }
        }
    }
}
