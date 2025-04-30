package com.facebook.imagepipeline.core;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.cache.p;
import com.facebook.imagepipeline.producers.a0;
import com.facebook.imagepipeline.producers.c0;
import com.facebook.imagepipeline.producers.d0;
import com.facebook.imagepipeline.producers.e0;
import com.facebook.imagepipeline.producers.f0;
import com.facebook.imagepipeline.producers.g0;
import com.facebook.imagepipeline.producers.h0;
import com.facebook.imagepipeline.producers.i0;
import com.facebook.imagepipeline.producers.n;
import com.facebook.imagepipeline.producers.n0;
import com.facebook.imagepipeline.producers.o;
import com.facebook.imagepipeline.producers.p0;
import com.facebook.imagepipeline.producers.q;
import com.facebook.imagepipeline.producers.s0;
import com.facebook.imagepipeline.producers.t;
import com.facebook.imagepipeline.producers.t0;
import com.facebook.imagepipeline.producers.u;
import com.facebook.imagepipeline.producers.u0;
import com.facebook.imagepipeline.producers.v;
import com.facebook.imagepipeline.producers.v0;
import com.facebook.imagepipeline.producers.w;
import com.facebook.imagepipeline.producers.w0;
import com.facebook.imagepipeline.producers.x0;
import com.facebook.imagepipeline.producers.y;
import com.facebook.imagepipeline.producers.z;
import com.facebook.imagepipeline.producers.z0;
/* compiled from: ProducerFactory.java */
/* loaded from: classes2.dex */
public class k {

    /* renamed from: v  reason: collision with root package name */
    private static final int f12671v = 5;

    /* renamed from: a  reason: collision with root package name */
    private ContentResolver f12672a;

    /* renamed from: b  reason: collision with root package name */
    private Resources f12673b;

    /* renamed from: c  reason: collision with root package name */
    private AssetManager f12674c;

    /* renamed from: d  reason: collision with root package name */
    private final com.facebook.common.memory.a f12675d;

    /* renamed from: e  reason: collision with root package name */
    private final com.facebook.imagepipeline.decoder.b f12676e;

    /* renamed from: f  reason: collision with root package name */
    private final com.facebook.imagepipeline.decoder.d f12677f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f12678g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f12679h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f12680i;

    /* renamed from: j  reason: collision with root package name */
    private final e f12681j;

    /* renamed from: k  reason: collision with root package name */
    private final com.facebook.common.memory.g f12682k;

    /* renamed from: l  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e f12683l;

    /* renamed from: m  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e f12684m;

    /* renamed from: n  reason: collision with root package name */
    private final p<com.facebook.cache.common.c, PooledByteBuffer> f12685n;

    /* renamed from: o  reason: collision with root package name */
    private final p<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f12686o;

    /* renamed from: p  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f12687p;

    /* renamed from: q  reason: collision with root package name */
    private final com.facebook.imagepipeline.bitmaps.f f12688q;

    /* renamed from: r  reason: collision with root package name */
    private final int f12689r;

    /* renamed from: s  reason: collision with root package name */
    private final int f12690s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f12691t;

    /* renamed from: u  reason: collision with root package name */
    private final int f12692u;

    public k(Context context, com.facebook.common.memory.a aVar, com.facebook.imagepipeline.decoder.b bVar, com.facebook.imagepipeline.decoder.d dVar, boolean z3, boolean z4, boolean z5, e eVar, com.facebook.common.memory.g gVar, p<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> pVar, p<com.facebook.cache.common.c, PooledByteBuffer> pVar2, com.facebook.imagepipeline.cache.e eVar2, com.facebook.imagepipeline.cache.e eVar3, com.facebook.imagepipeline.cache.f fVar, com.facebook.imagepipeline.bitmaps.f fVar2, int i2, int i4, boolean z6, int i5) {
        this.f12672a = context.getApplicationContext().getContentResolver();
        this.f12673b = context.getApplicationContext().getResources();
        this.f12674c = context.getApplicationContext().getAssets();
        this.f12675d = aVar;
        this.f12676e = bVar;
        this.f12677f = dVar;
        this.f12678g = z3;
        this.f12679h = z4;
        this.f12680i = z5;
        this.f12681j = eVar;
        this.f12682k = gVar;
        this.f12686o = pVar;
        this.f12685n = pVar2;
        this.f12683l = eVar2;
        this.f12684m = eVar3;
        this.f12687p = fVar;
        this.f12688q = fVar2;
        this.f12689r = i2;
        this.f12690s = i4;
        this.f12691t = z6;
        this.f12692u = i5;
    }

    public static <T> s0<T> B(i0<T> i0Var) {
        return new s0<>(i0Var);
    }

    public static com.facebook.imagepipeline.producers.a a(i0<com.facebook.imagepipeline.image.e> i0Var) {
        return new com.facebook.imagepipeline.producers.a(i0Var);
    }

    public static com.facebook.imagepipeline.producers.j g(i0<com.facebook.imagepipeline.image.e> i0Var, i0<com.facebook.imagepipeline.image.e> i0Var2) {
        return new com.facebook.imagepipeline.producers.j(i0Var, i0Var2);
    }

    public static <T> e0<T> v() {
        return new e0<>();
    }

    public p0 A(i0<com.facebook.imagepipeline.image.e> i0Var, boolean z3, com.facebook.imagepipeline.transcoder.d dVar) {
        return new p0(this.f12681j.d(), this.f12682k, i0Var, z3, dVar);
    }

    public <T> v0<T> C(i0<T> i0Var) {
        return new v0<>(5, this.f12681j.a(), i0Var);
    }

    public w0 D(x0<com.facebook.imagepipeline.image.e>[] x0VarArr) {
        return new w0(x0VarArr);
    }

    public z0 E(i0<com.facebook.imagepipeline.image.e> i0Var) {
        return new z0(this.f12681j.d(), this.f12682k, i0Var);
    }

    public <T> t0<T> b(i0<T> i0Var, u0 u0Var) {
        return new t0<>(i0Var, u0Var);
    }

    public com.facebook.imagepipeline.producers.f c(i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> i0Var) {
        return new com.facebook.imagepipeline.producers.f(this.f12686o, this.f12687p, i0Var);
    }

    public com.facebook.imagepipeline.producers.g d(i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> i0Var) {
        return new com.facebook.imagepipeline.producers.g(this.f12687p, i0Var);
    }

    public com.facebook.imagepipeline.producers.h e(i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> i0Var) {
        return new com.facebook.imagepipeline.producers.h(this.f12686o, this.f12687p, i0Var);
    }

    public com.facebook.imagepipeline.producers.i f(i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> i0Var) {
        return new com.facebook.imagepipeline.producers.i(i0Var, this.f12689r, this.f12690s, this.f12691t);
    }

    public com.facebook.imagepipeline.producers.k h() {
        return new com.facebook.imagepipeline.producers.k(this.f12682k);
    }

    public com.facebook.imagepipeline.producers.l i(i0<com.facebook.imagepipeline.image.e> i0Var) {
        return new com.facebook.imagepipeline.producers.l(this.f12675d, this.f12681j.c(), this.f12676e, this.f12677f, this.f12678g, this.f12679h, this.f12680i, i0Var, this.f12692u);
    }

    public n j(i0<com.facebook.imagepipeline.image.e> i0Var) {
        return new n(this.f12683l, this.f12684m, this.f12687p, i0Var);
    }

    public o k(i0<com.facebook.imagepipeline.image.e> i0Var) {
        return new o(this.f12683l, this.f12684m, this.f12687p, i0Var);
    }

    public com.facebook.imagepipeline.producers.p l(i0<com.facebook.imagepipeline.image.e> i0Var) {
        return new com.facebook.imagepipeline.producers.p(this.f12687p, i0Var);
    }

    public q m(i0<com.facebook.imagepipeline.image.e> i0Var) {
        return new q(this.f12685n, this.f12687p, i0Var);
    }

    public t n() {
        return new t(this.f12681j.e(), this.f12682k, this.f12674c);
    }

    public u o() {
        return new u(this.f12681j.e(), this.f12682k, this.f12672a);
    }

    public v p() {
        return new v(this.f12681j.e(), this.f12682k, this.f12672a);
    }

    public w q() {
        return new w(this.f12681j.e(), this.f12682k, this.f12672a);
    }

    public y r() {
        return new y(this.f12681j.e(), this.f12682k);
    }

    public z s() {
        return new z(this.f12681j.e(), this.f12682k, this.f12673b);
    }

    public a0 t() {
        return new a0(this.f12681j.e(), this.f12672a);
    }

    public c0 u(d0 d0Var) {
        return new c0(this.f12682k, this.f12675d, d0Var);
    }

    public f0 w(i0<com.facebook.imagepipeline.image.e> i0Var) {
        return new f0(this.f12683l, this.f12687p, this.f12682k, this.f12675d, i0Var);
    }

    public g0 x(i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> i0Var) {
        return new g0(this.f12686o, this.f12687p, i0Var);
    }

    public h0 y(i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> i0Var) {
        return new h0(i0Var, this.f12688q, this.f12681j.d());
    }

    public n0 z() {
        return new n0(this.f12681j.e(), this.f12682k, this.f12672a);
    }
}
