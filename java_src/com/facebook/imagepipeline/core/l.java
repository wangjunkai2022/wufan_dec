package com.facebook.imagepipeline.core;

import android.content.ContentResolver;
import android.net.Uri;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.producers.d0;
import com.facebook.imagepipeline.producers.i0;
import com.facebook.imagepipeline.producers.n;
import com.facebook.imagepipeline.producers.o;
import com.facebook.imagepipeline.producers.o0;
import com.facebook.imagepipeline.producers.u0;
import com.facebook.imagepipeline.producers.x0;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.HashMap;
import java.util.Map;
/* compiled from: ProducerSequenceFactory.java */
/* loaded from: classes2.dex */
public class l {
    @VisibleForTesting
    Map<i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>, i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> A = new HashMap();
    @VisibleForTesting
    Map<i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>, i0<Void>> B = new HashMap();
    @VisibleForTesting
    Map<i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>, i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> C = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private final ContentResolver f12693a;

    /* renamed from: b  reason: collision with root package name */
    private final k f12694b;

    /* renamed from: c  reason: collision with root package name */
    private final d0 f12695c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f12696d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f12697e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f12698f;

    /* renamed from: g  reason: collision with root package name */
    private final u0 f12699g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f12700h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f12701i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f12702j;

    /* renamed from: k  reason: collision with root package name */
    private final com.facebook.imagepipeline.transcoder.d f12703k;
    @VisibleForTesting

    /* renamed from: l  reason: collision with root package name */
    i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f12704l;
    @VisibleForTesting

    /* renamed from: m  reason: collision with root package name */
    i0<com.facebook.imagepipeline.image.e> f12705m;
    @VisibleForTesting

    /* renamed from: n  reason: collision with root package name */
    i0<com.facebook.imagepipeline.image.e> f12706n;
    @VisibleForTesting

    /* renamed from: o  reason: collision with root package name */
    i0<com.facebook.common.references.a<PooledByteBuffer>> f12707o;
    @VisibleForTesting

    /* renamed from: p  reason: collision with root package name */
    i0<com.facebook.common.references.a<PooledByteBuffer>> f12708p;
    @VisibleForTesting

    /* renamed from: q  reason: collision with root package name */
    i0<Void> f12709q;
    @VisibleForTesting

    /* renamed from: r  reason: collision with root package name */
    i0<Void> f12710r;

    /* renamed from: s  reason: collision with root package name */
    private i0<com.facebook.imagepipeline.image.e> f12711s;
    @VisibleForTesting

    /* renamed from: t  reason: collision with root package name */
    i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f12712t;
    @VisibleForTesting

    /* renamed from: u  reason: collision with root package name */
    i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f12713u;
    @VisibleForTesting

    /* renamed from: v  reason: collision with root package name */
    i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f12714v;
    @VisibleForTesting

    /* renamed from: w  reason: collision with root package name */
    i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f12715w;
    @VisibleForTesting

    /* renamed from: x  reason: collision with root package name */
    i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f12716x;
    @VisibleForTesting

    /* renamed from: y  reason: collision with root package name */
    i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f12717y;
    @VisibleForTesting

    /* renamed from: z  reason: collision with root package name */
    i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f12718z;

    public l(ContentResolver contentResolver, k kVar, d0 d0Var, boolean z3, boolean z4, u0 u0Var, boolean z5, boolean z6, boolean z7, boolean z8, com.facebook.imagepipeline.transcoder.d dVar) {
        this.f12693a = contentResolver;
        this.f12694b = kVar;
        this.f12695c = d0Var;
        this.f12696d = z3;
        this.f12697e = z4;
        this.f12699g = u0Var;
        this.f12700h = z5;
        this.f12701i = z6;
        this.f12698f = z7;
        this.f12702j = z8;
        this.f12703k = dVar;
    }

    private i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> A(i0<com.facebook.imagepipeline.image.e> i0Var) {
        return B(i0Var, new x0[]{this.f12694b.q()});
    }

    private i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> B(i0<com.facebook.imagepipeline.image.e> i0Var, x0<com.facebook.imagepipeline.image.e>[] x0VarArr) {
        return z(F(D(i0Var), x0VarArr));
    }

    private i0<com.facebook.imagepipeline.image.e> C(i0<com.facebook.imagepipeline.image.e> i0Var) {
        o k4;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#newDiskCacheSequence");
        }
        if (this.f12698f) {
            k4 = this.f12694b.k(this.f12694b.w(i0Var));
        } else {
            k4 = this.f12694b.k(i0Var);
        }
        n j4 = this.f12694b.j(k4);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return j4;
    }

    private i0<com.facebook.imagepipeline.image.e> D(i0<com.facebook.imagepipeline.image.e> i0Var) {
        if (com.facebook.common.webp.c.f11774a && (!this.f12697e || com.facebook.common.webp.c.f11777d == null)) {
            i0Var = this.f12694b.E(i0Var);
        }
        if (this.f12702j) {
            i0Var = C(i0Var);
        }
        return this.f12694b.l(this.f12694b.m(i0Var));
    }

    private i0<com.facebook.imagepipeline.image.e> E(x0<com.facebook.imagepipeline.image.e>[] x0VarArr) {
        return this.f12694b.A(this.f12694b.D(x0VarArr), true, this.f12703k);
    }

    private i0<com.facebook.imagepipeline.image.e> F(i0<com.facebook.imagepipeline.image.e> i0Var, x0<com.facebook.imagepipeline.image.e>[] x0VarArr) {
        return k.g(E(x0VarArr), this.f12694b.C(this.f12694b.A(k.a(i0Var), true, this.f12703k)));
    }

    private static void G(ImageRequest imageRequest) {
        com.facebook.common.internal.h.i(imageRequest);
        com.facebook.common.internal.h.d(imageRequest.i().getValue() <= ImageRequest.RequestLevel.ENCODED_MEMORY_CACHE.getValue());
    }

    private synchronized i0<com.facebook.imagepipeline.image.e> a() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getBackgroundLocalFileFetchToEncodeMemorySequence");
        }
        if (this.f12705m == null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getBackgroundLocalFileFetchToEncodeMemorySequence:init");
            }
            this.f12705m = this.f12694b.b(D(this.f12694b.r()), this.f12699g);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return this.f12705m;
    }

    private synchronized i0<com.facebook.imagepipeline.image.e> b() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getBackgroundNetworkFetchToEncodedMemorySequence");
        }
        if (this.f12706n == null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getBackgroundNetworkFetchToEncodedMemorySequence:init");
            }
            this.f12706n = this.f12694b.b(e(), this.f12699g);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return this.f12706n;
    }

    private i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> c(ImageRequest imageRequest) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getBasicDecodedImageSequence");
            }
            com.facebook.common.internal.h.i(imageRequest);
            Uri t3 = imageRequest.t();
            com.facebook.common.internal.h.j(t3, "Uri is null.");
            int u3 = imageRequest.u();
            if (u3 != 0) {
                switch (u3) {
                    case 2:
                        i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> r3 = r();
                        if (com.facebook.imagepipeline.systrace.b.e()) {
                            com.facebook.imagepipeline.systrace.b.c();
                        }
                        return r3;
                    case 3:
                        i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> p3 = p();
                        if (com.facebook.imagepipeline.systrace.b.e()) {
                            com.facebook.imagepipeline.systrace.b.c();
                        }
                        return p3;
                    case 4:
                        if (com.facebook.common.media.a.f(this.f12693a.getType(t3))) {
                            i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> r4 = r();
                            if (com.facebook.imagepipeline.systrace.b.e()) {
                                com.facebook.imagepipeline.systrace.b.c();
                            }
                            return r4;
                        }
                        i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> m4 = m();
                        if (com.facebook.imagepipeline.systrace.b.e()) {
                            com.facebook.imagepipeline.systrace.b.c();
                        }
                        return m4;
                    case 5:
                        i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> l4 = l();
                        if (com.facebook.imagepipeline.systrace.b.e()) {
                            com.facebook.imagepipeline.systrace.b.c();
                        }
                        return l4;
                    case 6:
                        i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> q3 = q();
                        if (com.facebook.imagepipeline.systrace.b.e()) {
                            com.facebook.imagepipeline.systrace.b.c();
                        }
                        return q3;
                    case 7:
                        i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f4 = f();
                        if (com.facebook.imagepipeline.systrace.b.e()) {
                            com.facebook.imagepipeline.systrace.b.c();
                        }
                        return f4;
                    case 8:
                        return w();
                    default:
                        throw new IllegalArgumentException("Unsupported uri scheme! Uri is: " + x(t3));
                }
            }
            i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> t4 = t();
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            return t4;
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    private synchronized i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> d(i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> i0Var) {
        i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> i0Var2;
        i0Var2 = this.C.get(i0Var);
        if (i0Var2 == null) {
            i0Var2 = this.f12694b.f(i0Var);
            this.C.put(i0Var, i0Var2);
        }
        return i0Var2;
    }

    private synchronized i0<com.facebook.imagepipeline.image.e> e() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getCommonNetworkFetchToEncodedMemorySequence");
        }
        if (this.f12711s == null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getCommonNetworkFetchToEncodedMemorySequence:init");
            }
            com.facebook.imagepipeline.producers.a a4 = k.a(D(this.f12694b.u(this.f12695c)));
            this.f12711s = a4;
            this.f12711s = this.f12694b.A(a4, this.f12696d && !this.f12700h, this.f12703k);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return this.f12711s;
    }

    private synchronized i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f() {
        if (this.f12717y == null) {
            i0<com.facebook.imagepipeline.image.e> h4 = this.f12694b.h();
            if (com.facebook.common.webp.c.f11774a && (!this.f12697e || com.facebook.common.webp.c.f11777d == null)) {
                h4 = this.f12694b.E(h4);
            }
            this.f12717y = z(this.f12694b.A(k.a(h4), true, this.f12703k));
        }
        return this.f12717y;
    }

    private synchronized i0<Void> h(i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> i0Var) {
        if (!this.B.containsKey(i0Var)) {
            this.B.put(i0Var, k.B(i0Var));
        }
        return this.B.get(i0Var);
    }

    private synchronized i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> l() {
        if (this.f12716x == null) {
            this.f12716x = A(this.f12694b.n());
        }
        return this.f12716x;
    }

    private synchronized i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> m() {
        if (this.f12714v == null) {
            this.f12714v = B(this.f12694b.o(), new x0[]{this.f12694b.p(), this.f12694b.q()});
        }
        return this.f12714v;
    }

    private synchronized i0<Void> o() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getLocalFileFetchToEncodedMemoryPrefetchSequence");
        }
        if (this.f12709q == null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getLocalFileFetchToEncodedMemoryPrefetchSequence:init");
            }
            this.f12709q = k.B(a());
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return this.f12709q;
    }

    private synchronized i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> p() {
        if (this.f12712t == null) {
            this.f12712t = A(this.f12694b.r());
        }
        return this.f12712t;
    }

    private synchronized i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> q() {
        if (this.f12715w == null) {
            this.f12715w = A(this.f12694b.s());
        }
        return this.f12715w;
    }

    private synchronized i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> r() {
        if (this.f12713u == null) {
            this.f12713u = y(this.f12694b.t());
        }
        return this.f12713u;
    }

    private synchronized i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> t() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getNetworkFetchSequence");
        }
        if (this.f12704l == null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getNetworkFetchSequence:init");
            }
            this.f12704l = z(e());
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return this.f12704l;
    }

    private synchronized i0<Void> u() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getNetworkFetchToEncodedMemoryPrefetchSequence");
        }
        if (this.f12710r == null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getNetworkFetchToEncodedMemoryPrefetchSequence:init");
            }
            this.f12710r = k.B(b());
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return this.f12710r;
    }

    private synchronized i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> v(i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> i0Var) {
        if (!this.A.containsKey(i0Var)) {
            this.A.put(i0Var, this.f12694b.x(this.f12694b.y(i0Var)));
        }
        return this.A.get(i0Var);
    }

    private synchronized i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> w() {
        if (this.f12718z == null) {
            this.f12718z = A(this.f12694b.z());
        }
        return this.f12718z;
    }

    private static String x(Uri uri) {
        String valueOf = String.valueOf(uri);
        if (valueOf.length() > 30) {
            return valueOf.substring(0, 30) + "...";
        }
        return valueOf;
    }

    private i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> y(i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> i0Var) {
        return this.f12694b.c(this.f12694b.b(this.f12694b.d(this.f12694b.e(i0Var)), this.f12699g));
    }

    private i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> z(i0<com.facebook.imagepipeline.image.e> i0Var) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#newBitmapCacheGetToDecodeSequence");
        }
        i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> y3 = y(this.f12694b.i(i0Var));
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return y3;
    }

    public i0<Void> g(ImageRequest imageRequest) {
        i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> c4 = c(imageRequest);
        if (this.f12701i) {
            c4 = d(c4);
        }
        return h(c4);
    }

    public i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> i(ImageRequest imageRequest) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getDecodedImageProducerSequence");
        }
        i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> c4 = c(imageRequest);
        if (imageRequest.j() != null) {
            c4 = v(c4);
        }
        if (this.f12701i) {
            c4 = d(c4);
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return c4;
    }

    public i0<Void> j(ImageRequest imageRequest) {
        G(imageRequest);
        int u3 = imageRequest.u();
        if (u3 != 0) {
            if (u3 != 2 && u3 != 3) {
                Uri t3 = imageRequest.t();
                throw new IllegalArgumentException("Unsupported uri scheme for encoded image fetch! Uri is: " + x(t3));
            }
            return o();
        }
        return u();
    }

    public i0<com.facebook.common.references.a<PooledByteBuffer>> k(ImageRequest imageRequest) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getEncodedImageProducerSequence");
            }
            G(imageRequest);
            Uri t3 = imageRequest.t();
            int u3 = imageRequest.u();
            if (u3 != 0) {
                if (u3 != 2 && u3 != 3) {
                    throw new IllegalArgumentException("Unsupported uri scheme for encoded image fetch! Uri is: " + x(t3));
                }
                return n();
            }
            i0<com.facebook.common.references.a<PooledByteBuffer>> s3 = s();
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            return s3;
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    public i0<com.facebook.common.references.a<PooledByteBuffer>> n() {
        synchronized (this) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getLocalFileFetchEncodedImageProducerSequence");
            }
            if (this.f12707o == null) {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getLocalFileFetchEncodedImageProducerSequence:init");
                }
                this.f12707o = new o0(a());
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        return this.f12707o;
    }

    public i0<com.facebook.common.references.a<PooledByteBuffer>> s() {
        synchronized (this) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getNetworkFetchEncodedImageProducerSequence");
            }
            if (this.f12708p == null) {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getNetworkFetchEncodedImageProducerSequence:init");
                }
                this.f12708p = new o0(b());
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        return this.f12708p;
    }
}
