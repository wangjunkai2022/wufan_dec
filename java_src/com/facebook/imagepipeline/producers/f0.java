package com.facebook.imagepipeline.producers;

import android.net.Uri;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;
/* compiled from: PartialDiskCacheProducer.java */
/* loaded from: classes.dex */
public class f0 implements i0<com.facebook.imagepipeline.image.e> {

    /* renamed from: f  reason: collision with root package name */
    public static final String f13023f = "PartialDiskCacheProducer";

    /* renamed from: g  reason: collision with root package name */
    public static final String f13024g = "cached_value_found";

    /* renamed from: h  reason: collision with root package name */
    public static final String f13025h = "encodedImageSize";

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e f13026a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f13027b;

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.common.memory.g f13028c;

    /* renamed from: d  reason: collision with root package name */
    private final com.facebook.common.memory.a f13029d;

    /* renamed from: e  reason: collision with root package name */
    private final i0<com.facebook.imagepipeline.image.e> f13030e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PartialDiskCacheProducer.java */
    /* loaded from: classes2.dex */
    public class a implements bolts.g<com.facebook.imagepipeline.image.e, Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ m0 f13031a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f13032b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Consumer f13033c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ k0 f13034d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f13035e;

        a(m0 m0Var, String str, Consumer consumer, k0 k0Var, com.facebook.cache.common.c cVar) {
            this.f13031a = m0Var;
            this.f13032b = str;
            this.f13033c = consumer;
            this.f13034d = k0Var;
            this.f13035e = cVar;
        }

        @Override // bolts.g
        /* renamed from: b */
        public Void a(bolts.h<com.facebook.imagepipeline.image.e> hVar) throws Exception {
            if (f0.g(hVar)) {
                this.f13031a.g(this.f13032b, f0.f13023f, null);
                this.f13033c.a();
            } else if (hVar.F()) {
                this.f13031a.f(this.f13032b, f0.f13023f, hVar.A(), null);
                f0.this.i(this.f13033c, this.f13034d, this.f13035e, null);
            } else {
                com.facebook.imagepipeline.image.e B = hVar.B();
                if (B != null) {
                    m0 m0Var = this.f13031a;
                    String str = this.f13032b;
                    m0Var.e(str, f0.f13023f, f0.f(m0Var, str, true, B.s()));
                    com.facebook.imagepipeline.common.a e4 = com.facebook.imagepipeline.common.a.e(B.s() - 1);
                    B.D(e4);
                    int s3 = B.s();
                    ImageRequest b4 = this.f13034d.b();
                    if (e4.a(b4.e())) {
                        this.f13031a.h(this.f13032b, f0.f13023f, true);
                        this.f13033c.b(B, 9);
                    } else {
                        this.f13033c.b(B, 8);
                        f0.this.i(this.f13033c, new q0(ImageRequestBuilder.d(b4).w(com.facebook.imagepipeline.common.a.b(s3 - 1)).a(), this.f13034d), this.f13035e, B);
                    }
                } else {
                    m0 m0Var2 = this.f13031a;
                    String str2 = this.f13032b;
                    m0Var2.e(str2, f0.f13023f, f0.f(m0Var2, str2, false, 0));
                    f0.this.i(this.f13033c, this.f13034d, this.f13035e, B);
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PartialDiskCacheProducer.java */
    /* loaded from: classes2.dex */
    public class b extends e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f13037a;

        b(AtomicBoolean atomicBoolean) {
            this.f13037a = atomicBoolean;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.l0
        public void b() {
            this.f13037a.set(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PartialDiskCacheProducer.java */
    /* loaded from: classes.dex */
    public static class c extends m<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* renamed from: n  reason: collision with root package name */
        private static final int f13039n = 16384;

        /* renamed from: i  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.e f13040i;

        /* renamed from: j  reason: collision with root package name */
        private final com.facebook.cache.common.c f13041j;

        /* renamed from: k  reason: collision with root package name */
        private final com.facebook.common.memory.g f13042k;

        /* renamed from: l  reason: collision with root package name */
        private final com.facebook.common.memory.a f13043l;
        @Nullable

        /* renamed from: m  reason: collision with root package name */
        private final com.facebook.imagepipeline.image.e f13044m;

        /* synthetic */ c(Consumer consumer, com.facebook.imagepipeline.cache.e eVar, com.facebook.cache.common.c cVar, com.facebook.common.memory.g gVar, com.facebook.common.memory.a aVar, com.facebook.imagepipeline.image.e eVar2, a aVar2) {
            this(consumer, eVar, cVar, gVar, aVar, eVar2);
        }

        private void q(InputStream inputStream, OutputStream outputStream, int i2) throws IOException {
            byte[] bArr = this.f13043l.get(16384);
            int i4 = i2;
            while (i4 > 0) {
                try {
                    int read = inputStream.read(bArr, 0, Math.min(16384, i4));
                    if (read < 0) {
                        break;
                    } else if (read > 0) {
                        outputStream.write(bArr, 0, read);
                        i4 -= read;
                    }
                } finally {
                    this.f13043l.release(bArr);
                }
            }
            if (i4 > 0) {
                throw new IOException(String.format(null, "Failed to read %d bytes - finished %d short", Integer.valueOf(i2), Integer.valueOf(i4)));
            }
        }

        private com.facebook.common.memory.i r(com.facebook.imagepipeline.image.e eVar, com.facebook.imagepipeline.image.e eVar2) throws IOException {
            com.facebook.common.memory.i f4 = this.f13042k.f(eVar2.s() + eVar2.h().f12548a);
            q(eVar.p(), f4, eVar2.h().f12548a);
            q(eVar2.p(), f4, eVar2.s());
            return f4;
        }

        private void t(com.facebook.common.memory.i iVar) {
            com.facebook.imagepipeline.image.e eVar;
            Throwable th;
            com.facebook.common.references.a p3 = com.facebook.common.references.a.p(iVar.a());
            try {
                eVar = new com.facebook.imagepipeline.image.e(p3);
                try {
                    eVar.z();
                    p().b(eVar, 1);
                    com.facebook.imagepipeline.image.e.d(eVar);
                    com.facebook.common.references.a.g(p3);
                } catch (Throwable th2) {
                    th = th2;
                    com.facebook.imagepipeline.image.e.d(eVar);
                    com.facebook.common.references.a.g(p3);
                    throw th;
                }
            } catch (Throwable th3) {
                eVar = null;
                th = th3;
            }
        }

        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: s */
        public void h(com.facebook.imagepipeline.image.e eVar, int i2) {
            if (com.facebook.imagepipeline.producers.b.e(i2)) {
                return;
            }
            if (this.f13044m != null) {
                try {
                    if (eVar.h() != null) {
                        try {
                            t(r(this.f13044m, eVar));
                        } catch (IOException e4) {
                            com.facebook.common.logging.a.v(f0.f13023f, "Error while merging image data", e4);
                            p().onFailure(e4);
                        }
                        this.f13040i.t(this.f13041j);
                        return;
                    }
                } finally {
                    eVar.close();
                    this.f13044m.close();
                }
            }
            if (com.facebook.imagepipeline.producers.b.m(i2, 8) && com.facebook.imagepipeline.producers.b.d(i2) && eVar.o() != com.facebook.imageformat.c.f12384c) {
                this.f13040i.r(this.f13041j, eVar);
                p().b(eVar, i2);
                return;
            }
            p().b(eVar, i2);
        }

        private c(Consumer<com.facebook.imagepipeline.image.e> consumer, com.facebook.imagepipeline.cache.e eVar, com.facebook.cache.common.c cVar, com.facebook.common.memory.g gVar, com.facebook.common.memory.a aVar, @Nullable com.facebook.imagepipeline.image.e eVar2) {
            super(consumer);
            this.f13040i = eVar;
            this.f13041j = cVar;
            this.f13042k = gVar;
            this.f13043l = aVar;
            this.f13044m = eVar2;
        }
    }

    public f0(com.facebook.imagepipeline.cache.e eVar, com.facebook.imagepipeline.cache.f fVar, com.facebook.common.memory.g gVar, com.facebook.common.memory.a aVar, i0<com.facebook.imagepipeline.image.e> i0Var) {
        this.f13026a = eVar;
        this.f13027b = fVar;
        this.f13028c = gVar;
        this.f13029d = aVar;
        this.f13030e = i0Var;
    }

    private static Uri e(ImageRequest imageRequest) {
        return imageRequest.t().buildUpon().appendQueryParameter("fresco_partial", "true").build();
    }

    @VisibleForTesting
    @Nullable
    static Map<String, String> f(m0 m0Var, String str, boolean z3, int i2) {
        if (m0Var.d(str)) {
            if (z3) {
                return ImmutableMap.of("cached_value_found", String.valueOf(z3), "encodedImageSize", String.valueOf(i2));
            }
            return ImmutableMap.of("cached_value_found", String.valueOf(z3));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean g(bolts.h<?> hVar) {
        return hVar.D() || (hVar.F() && (hVar.A() instanceof CancellationException));
    }

    private bolts.g<com.facebook.imagepipeline.image.e, Void> h(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var, com.facebook.cache.common.c cVar) {
        return new a(k0Var.getListener(), k0Var.getId(), consumer, k0Var, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var, com.facebook.cache.common.c cVar, @Nullable com.facebook.imagepipeline.image.e eVar) {
        this.f13030e.b(new c(consumer, this.f13026a, cVar, this.f13028c, this.f13029d, eVar, null), k0Var);
    }

    private void j(AtomicBoolean atomicBoolean, k0 k0Var) {
        k0Var.d(new b(atomicBoolean));
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void b(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var) {
        ImageRequest b4 = k0Var.b();
        if (!b4.w()) {
            this.f13030e.b(consumer, k0Var);
            return;
        }
        k0Var.getListener().b(k0Var.getId(), f13023f);
        com.facebook.cache.common.c b5 = this.f13027b.b(b4, e(b4), k0Var.c());
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.f13026a.p(b5, atomicBoolean).m(h(consumer, k0Var, b5));
        j(atomicBoolean, k0Var);
    }
}
