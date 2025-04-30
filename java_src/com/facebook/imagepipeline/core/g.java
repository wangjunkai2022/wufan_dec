package com.facebook.imagepipeline.core;

import android.net.Uri;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.cache.p;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.producers.i0;
import com.facebook.imagepipeline.producers.q0;
import com.facebook.imagepipeline.producers.u0;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLong;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: ImagePipeline.java */
@ThreadSafe
/* loaded from: classes.dex */
public class g {

    /* renamed from: m  reason: collision with root package name */
    private static final CancellationException f12581m = new CancellationException("Prefetching is not enabled");

    /* renamed from: a  reason: collision with root package name */
    private final l f12582a;

    /* renamed from: b  reason: collision with root package name */
    private final r0.c f12583b;

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.common.internal.k<Boolean> f12584c;

    /* renamed from: d  reason: collision with root package name */
    private final p<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f12585d;

    /* renamed from: e  reason: collision with root package name */
    private final p<com.facebook.cache.common.c, PooledByteBuffer> f12586e;

    /* renamed from: f  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e f12587f;

    /* renamed from: g  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e f12588g;

    /* renamed from: h  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f12589h;

    /* renamed from: i  reason: collision with root package name */
    private final u0 f12590i;

    /* renamed from: j  reason: collision with root package name */
    private final com.facebook.common.internal.k<Boolean> f12591j;

    /* renamed from: k  reason: collision with root package name */
    private AtomicLong f12592k = new AtomicLong();

    /* renamed from: l  reason: collision with root package name */
    private final com.facebook.common.internal.k<Boolean> f12593l;

    /* compiled from: ImagePipeline.java */
    /* loaded from: classes2.dex */
    class a implements com.facebook.common.internal.k<com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageRequest f12594a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f12595b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ImageRequest.RequestLevel f12596c;

        a(ImageRequest imageRequest, Object obj, ImageRequest.RequestLevel requestLevel) {
            this.f12594a = imageRequest;
            this.f12595b = obj;
            this.f12596c = requestLevel;
        }

        @Override // com.facebook.common.internal.k
        /* renamed from: a */
        public com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> get() {
            return g.this.j(this.f12594a, this.f12595b, this.f12596c);
        }

        public String toString() {
            return com.facebook.common.internal.g.f(this).f("uri", this.f12594a.t()).toString();
        }
    }

    /* compiled from: ImagePipeline.java */
    /* loaded from: classes2.dex */
    class b implements com.facebook.common.internal.k<com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageRequest f12598a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f12599b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ImageRequest.RequestLevel f12600c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ r0.c f12601d;

        b(ImageRequest imageRequest, Object obj, ImageRequest.RequestLevel requestLevel, r0.c cVar) {
            this.f12598a = imageRequest;
            this.f12599b = obj;
            this.f12600c = requestLevel;
            this.f12601d = cVar;
        }

        @Override // com.facebook.common.internal.k
        /* renamed from: a */
        public com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> get() {
            return g.this.k(this.f12598a, this.f12599b, this.f12600c, this.f12601d);
        }

        public String toString() {
            return com.facebook.common.internal.g.f(this).f("uri", this.f12598a.t()).toString();
        }
    }

    /* compiled from: ImagePipeline.java */
    /* loaded from: classes2.dex */
    class c implements com.facebook.common.internal.k<com.facebook.datasource.c<com.facebook.common.references.a<PooledByteBuffer>>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageRequest f12603a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f12604b;

        c(ImageRequest imageRequest, Object obj) {
            this.f12603a = imageRequest;
            this.f12604b = obj;
        }

        @Override // com.facebook.common.internal.k
        /* renamed from: a */
        public com.facebook.datasource.c<com.facebook.common.references.a<PooledByteBuffer>> get() {
            return g.this.m(this.f12603a, this.f12604b);
        }

        public String toString() {
            return com.facebook.common.internal.g.f(this).f("uri", this.f12603a.t()).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImagePipeline.java */
    /* loaded from: classes2.dex */
    public class d implements com.facebook.common.internal.i<com.facebook.cache.common.c> {
        d() {
        }

        @Override // com.facebook.common.internal.i
        /* renamed from: a */
        public boolean apply(com.facebook.cache.common.c cVar) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImagePipeline.java */
    /* loaded from: classes2.dex */
    public class e implements bolts.g<Boolean, Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.facebook.datasource.i f12607a;

        e(com.facebook.datasource.i iVar) {
            this.f12607a = iVar;
        }

        @Override // bolts.g
        /* renamed from: b */
        public Void a(bolts.h<Boolean> hVar) throws Exception {
            this.f12607a.setResult(Boolean.valueOf((hVar.D() || hVar.F() || !hVar.B().booleanValue()) ? false : true));
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImagePipeline.java */
    /* loaded from: classes2.dex */
    public class f implements bolts.g<Boolean, bolts.h<Boolean>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f12609a;

        f(com.facebook.cache.common.c cVar) {
            this.f12609a = cVar;
        }

        @Override // bolts.g
        /* renamed from: b */
        public bolts.h<Boolean> a(bolts.h<Boolean> hVar) throws Exception {
            if (hVar.D() || hVar.F() || !hVar.B().booleanValue()) {
                return g.this.f12588g.k(this.f12609a);
            }
            return bolts.h.z(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImagePipeline.java */
    /* renamed from: com.facebook.imagepipeline.core.g$g  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0077g implements com.facebook.common.internal.i<com.facebook.cache.common.c> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Uri f12611a;

        C0077g(Uri uri) {
            this.f12611a = uri;
        }

        @Override // com.facebook.common.internal.i
        /* renamed from: a */
        public boolean apply(com.facebook.cache.common.c cVar) {
            return cVar.b(this.f12611a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImagePipeline.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class h {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12613a;

        static {
            int[] iArr = new int[ImageRequest.CacheChoice.values().length];
            f12613a = iArr;
            try {
                iArr[ImageRequest.CacheChoice.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12613a[ImageRequest.CacheChoice.SMALL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public g(l lVar, Set<r0.c> set, com.facebook.common.internal.k<Boolean> kVar, p<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> pVar, p<com.facebook.cache.common.c, PooledByteBuffer> pVar2, com.facebook.imagepipeline.cache.e eVar, com.facebook.imagepipeline.cache.e eVar2, com.facebook.imagepipeline.cache.f fVar, u0 u0Var, com.facebook.common.internal.k<Boolean> kVar2, com.facebook.common.internal.k<Boolean> kVar3) {
        this.f12582a = lVar;
        this.f12583b = new r0.b(set);
        this.f12584c = kVar;
        this.f12585d = pVar;
        this.f12586e = pVar2;
        this.f12587f = eVar;
        this.f12588g = eVar2;
        this.f12589h = fVar;
        this.f12590i = u0Var;
        this.f12591j = kVar2;
        this.f12593l = kVar3;
    }

    private com.facebook.common.internal.i<com.facebook.cache.common.c> J(Uri uri) {
        return new C0077g(uri);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <T> com.facebook.datasource.c<com.facebook.common.references.a<T>> P(com.facebook.imagepipeline.producers.i0<com.facebook.common.references.a<T>> r11, com.facebook.imagepipeline.request.ImageRequest r12, com.facebook.imagepipeline.request.ImageRequest.RequestLevel r13, java.lang.Object r14, @javax.annotation.Nullable r0.c r15) {
        /*
            r10 = this;
            boolean r0 = com.facebook.imagepipeline.systrace.b.e()
            if (r0 == 0) goto Lb
            java.lang.String r0 = "ImagePipeline#submitFetchRequest"
            com.facebook.imagepipeline.systrace.b.a(r0)
        Lb:
            r0.c r15 = r10.y(r12, r15)
            com.facebook.imagepipeline.request.ImageRequest$RequestLevel r0 = r12.i()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            com.facebook.imagepipeline.request.ImageRequest$RequestLevel r6 = com.facebook.imagepipeline.request.ImageRequest.RequestLevel.getMax(r0, r13)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            com.facebook.imagepipeline.producers.q0 r13 = new com.facebook.imagepipeline.producers.q0     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            java.lang.String r3 = r10.p()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            r7 = 0
            boolean r0 = r12.n()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            if (r0 != 0) goto L32
            android.net.Uri r0 = r12.t()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            boolean r0 = com.facebook.common.util.f.m(r0)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            if (r0 != 0) goto L2f
            goto L32
        L2f:
            r0 = 0
            r8 = 0
            goto L34
        L32:
            r0 = 1
            r8 = 1
        L34:
            com.facebook.imagepipeline.common.Priority r9 = r12.m()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            r1 = r13
            r2 = r12
            r4 = r15
            r5 = r14
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            com.facebook.datasource.c r11 = com.facebook.imagepipeline.datasource.e.A(r11, r13, r15)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            boolean r12 = com.facebook.imagepipeline.systrace.b.e()
            if (r12 == 0) goto L4c
            com.facebook.imagepipeline.systrace.b.c()
        L4c:
            return r11
        L4d:
            r11 = move-exception
            goto L5e
        L4f:
            r11 = move-exception
            com.facebook.datasource.c r11 = com.facebook.datasource.d.c(r11)     // Catch: java.lang.Throwable -> L4d
            boolean r12 = com.facebook.imagepipeline.systrace.b.e()
            if (r12 == 0) goto L5d
            com.facebook.imagepipeline.systrace.b.c()
        L5d:
            return r11
        L5e:
            boolean r12 = com.facebook.imagepipeline.systrace.b.e()
            if (r12 == 0) goto L67
            com.facebook.imagepipeline.systrace.b.c()
        L67:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.core.g.P(com.facebook.imagepipeline.producers.i0, com.facebook.imagepipeline.request.ImageRequest, com.facebook.imagepipeline.request.ImageRequest$RequestLevel, java.lang.Object, r0.c):com.facebook.datasource.c");
    }

    private com.facebook.datasource.c<Void> Q(i0<Void> i0Var, ImageRequest imageRequest, ImageRequest.RequestLevel requestLevel, Object obj, Priority priority) {
        r0.c y3 = y(imageRequest, null);
        try {
            return com.facebook.imagepipeline.datasource.g.z(i0Var, new q0(imageRequest, p(), y3, obj, ImageRequest.RequestLevel.getMax(imageRequest.i(), requestLevel), true, false, priority), y3);
        } catch (Exception e4) {
            return com.facebook.datasource.d.c(e4);
        }
    }

    public boolean A(ImageRequest imageRequest) {
        if (imageRequest == null) {
            return false;
        }
        com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar = this.f12585d.get(this.f12589h.a(imageRequest, null));
        try {
            return com.facebook.common.references.a.o(aVar);
        } finally {
            com.facebook.common.references.a.g(aVar);
        }
    }

    public com.facebook.datasource.c<Boolean> B(Uri uri) {
        return C(ImageRequest.b(uri));
    }

    public com.facebook.datasource.c<Boolean> C(ImageRequest imageRequest) {
        com.facebook.cache.common.c d4 = this.f12589h.d(imageRequest, null);
        com.facebook.datasource.i s3 = com.facebook.datasource.i.s();
        this.f12587f.k(d4).q(new f(d4)).m(new e(s3));
        return s3;
    }

    public boolean D(Uri uri) {
        return E(uri, ImageRequest.CacheChoice.SMALL) || E(uri, ImageRequest.CacheChoice.DEFAULT);
    }

    public boolean E(Uri uri, ImageRequest.CacheChoice cacheChoice) {
        return F(ImageRequestBuilder.u(uri).x(cacheChoice).a());
    }

    public boolean F(ImageRequest imageRequest) {
        com.facebook.cache.common.c d4 = this.f12589h.d(imageRequest, null);
        int i2 = h.f12613a[imageRequest.f().ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                return false;
            }
            return this.f12588g.n(d4);
        }
        return this.f12587f.n(d4);
    }

    public com.facebook.common.internal.k<Boolean> G() {
        return this.f12593l;
    }

    public boolean H() {
        return this.f12590i.c();
    }

    public void I() {
        this.f12590i.e();
    }

    public com.facebook.datasource.c<Void> K(ImageRequest imageRequest, Object obj) {
        boolean booleanValue;
        i0<Void> g4;
        if (!this.f12584c.get().booleanValue()) {
            return com.facebook.datasource.d.c(f12581m);
        }
        try {
            Boolean y3 = imageRequest.y();
            if (y3 != null) {
                booleanValue = !y3.booleanValue();
            } else {
                booleanValue = this.f12591j.get().booleanValue();
            }
            if (booleanValue) {
                g4 = this.f12582a.j(imageRequest);
            } else {
                g4 = this.f12582a.g(imageRequest);
            }
            return Q(g4, imageRequest, ImageRequest.RequestLevel.FULL_FETCH, obj, Priority.MEDIUM);
        } catch (Exception e4) {
            return com.facebook.datasource.d.c(e4);
        }
    }

    public com.facebook.datasource.c<Void> L(ImageRequest imageRequest, Object obj) {
        return M(imageRequest, obj, Priority.MEDIUM);
    }

    public com.facebook.datasource.c<Void> M(ImageRequest imageRequest, Object obj, Priority priority) {
        if (!this.f12584c.get().booleanValue()) {
            return com.facebook.datasource.d.c(f12581m);
        }
        try {
            return Q(this.f12582a.j(imageRequest), imageRequest, ImageRequest.RequestLevel.FULL_FETCH, obj, priority);
        } catch (Exception e4) {
            return com.facebook.datasource.d.c(e4);
        }
    }

    public void N() {
        this.f12590i.f();
    }

    public <T> com.facebook.datasource.c<com.facebook.common.references.a<T>> O(i0<com.facebook.common.references.a<T>> i0Var, q0 q0Var, r0.c cVar) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ImagePipeline#submitFetchRequest");
        }
        try {
            try {
                com.facebook.datasource.c<com.facebook.common.references.a<T>> A = com.facebook.imagepipeline.datasource.e.A(i0Var, q0Var, cVar);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return A;
            } catch (Exception e4) {
                com.facebook.datasource.c<com.facebook.common.references.a<T>> c4 = com.facebook.datasource.d.c(e4);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return c4;
            }
        } catch (Throwable th) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            throw th;
        }
    }

    public void b() {
        d();
        c();
    }

    public void c() {
        this.f12587f.j();
        this.f12588g.j();
    }

    public void d() {
        d dVar = new d();
        this.f12585d.b(dVar);
        this.f12586e.b(dVar);
    }

    public void e(Uri uri) {
        h(uri);
        f(uri);
    }

    public void f(Uri uri) {
        g(ImageRequest.b(uri));
    }

    public void g(ImageRequest imageRequest) {
        com.facebook.cache.common.c d4 = this.f12589h.d(imageRequest, null);
        this.f12587f.t(d4);
        this.f12588g.t(d4);
    }

    public void h(Uri uri) {
        com.facebook.common.internal.i<com.facebook.cache.common.c> J = J(uri);
        this.f12585d.b(J);
        this.f12586e.b(J);
    }

    public com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> i(ImageRequest imageRequest, Object obj) {
        return j(imageRequest, obj, ImageRequest.RequestLevel.FULL_FETCH);
    }

    public com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> j(ImageRequest imageRequest, Object obj, ImageRequest.RequestLevel requestLevel) {
        return k(imageRequest, obj, requestLevel, null);
    }

    public com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> k(ImageRequest imageRequest, Object obj, ImageRequest.RequestLevel requestLevel, @Nullable r0.c cVar) {
        try {
            return P(this.f12582a.i(imageRequest), imageRequest, requestLevel, obj, cVar);
        } catch (Exception e4) {
            return com.facebook.datasource.d.c(e4);
        }
    }

    public com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> l(ImageRequest imageRequest, Object obj, @Nullable r0.c cVar) {
        return k(imageRequest, obj, ImageRequest.RequestLevel.FULL_FETCH, cVar);
    }

    public com.facebook.datasource.c<com.facebook.common.references.a<PooledByteBuffer>> m(ImageRequest imageRequest, Object obj) {
        return n(imageRequest, obj, null);
    }

    public com.facebook.datasource.c<com.facebook.common.references.a<PooledByteBuffer>> n(ImageRequest imageRequest, Object obj, @Nullable r0.c cVar) {
        com.facebook.common.internal.h.i(imageRequest.t());
        try {
            i0<com.facebook.common.references.a<PooledByteBuffer>> k4 = this.f12582a.k(imageRequest);
            if (imageRequest.p() != null) {
                imageRequest = ImageRequestBuilder.d(imageRequest).F(null).a();
            }
            return P(k4, imageRequest, ImageRequest.RequestLevel.FULL_FETCH, obj, cVar);
        } catch (Exception e4) {
            return com.facebook.datasource.d.c(e4);
        }
    }

    public com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> o(ImageRequest imageRequest, Object obj) {
        return j(imageRequest, obj, ImageRequest.RequestLevel.BITMAP_MEMORY_CACHE);
    }

    public String p() {
        return String.valueOf(this.f12592k.getAndIncrement());
    }

    public p<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> q() {
        return this.f12585d;
    }

    @Nullable
    public com.facebook.cache.common.c r(@Nullable ImageRequest imageRequest, Object obj) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ImagePipeline#getCacheKey");
        }
        com.facebook.imagepipeline.cache.f fVar = this.f12589h;
        com.facebook.cache.common.c cVar = null;
        if (fVar != null && imageRequest != null) {
            if (imageRequest.j() != null) {
                cVar = fVar.c(imageRequest, obj);
            } else {
                cVar = fVar.a(imageRequest, obj);
            }
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return cVar;
    }

    public com.facebook.imagepipeline.cache.f s() {
        return this.f12589h;
    }

    @Nullable
    public com.facebook.common.references.a<com.facebook.imagepipeline.image.c> t(@Nullable com.facebook.cache.common.c cVar) {
        p<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> pVar = this.f12585d;
        if (pVar == null || cVar == null) {
            return null;
        }
        com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar = pVar.get(cVar);
        if (aVar == null || aVar.i().b().a()) {
            return aVar;
        }
        aVar.close();
        return null;
    }

    public com.facebook.common.internal.k<com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> u(ImageRequest imageRequest, Object obj, ImageRequest.RequestLevel requestLevel) {
        return new a(imageRequest, obj, requestLevel);
    }

    public com.facebook.common.internal.k<com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> v(ImageRequest imageRequest, Object obj, ImageRequest.RequestLevel requestLevel, @Nullable r0.c cVar) {
        return new b(imageRequest, obj, requestLevel, cVar);
    }

    public com.facebook.common.internal.k<com.facebook.datasource.c<com.facebook.common.references.a<PooledByteBuffer>>> w(ImageRequest imageRequest, Object obj) {
        return new c(imageRequest, obj);
    }

    public l x() {
        return this.f12582a;
    }

    public r0.c y(ImageRequest imageRequest, @Nullable r0.c cVar) {
        if (cVar == null) {
            if (imageRequest.o() == null) {
                return this.f12583b;
            }
            return new r0.b(this.f12583b, imageRequest.o());
        } else if (imageRequest.o() == null) {
            return new r0.b(this.f12583b, cVar);
        } else {
            return new r0.b(this.f12583b, cVar, imageRequest.o());
        }
    }

    public boolean z(Uri uri) {
        if (uri == null) {
            return false;
        }
        return this.f12585d.c(J(uri));
    }
}
