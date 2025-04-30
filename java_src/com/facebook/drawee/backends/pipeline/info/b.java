package com.facebook.drawee.backends.pipeline.info;

import com.facebook.common.internal.g;
import com.facebook.imagepipeline.image.f;
import com.facebook.imagepipeline.request.ImageRequest;
import javax.annotation.Nullable;
/* compiled from: ImagePerfData.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: u  reason: collision with root package name */
    public static final int f11861u = -1;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f11862a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f11863b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final Object f11864c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final ImageRequest f11865d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final f f11866e;

    /* renamed from: f  reason: collision with root package name */
    private final long f11867f;

    /* renamed from: g  reason: collision with root package name */
    private final long f11868g;

    /* renamed from: h  reason: collision with root package name */
    private final long f11869h;

    /* renamed from: i  reason: collision with root package name */
    private final long f11870i;

    /* renamed from: j  reason: collision with root package name */
    private final long f11871j;

    /* renamed from: k  reason: collision with root package name */
    private final long f11872k;

    /* renamed from: l  reason: collision with root package name */
    private final long f11873l;

    /* renamed from: m  reason: collision with root package name */
    private final int f11874m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f11875n;

    /* renamed from: o  reason: collision with root package name */
    private final int f11876o;

    /* renamed from: p  reason: collision with root package name */
    private final int f11877p;

    /* renamed from: q  reason: collision with root package name */
    private final int f11878q;

    /* renamed from: r  reason: collision with root package name */
    private final long f11879r;

    /* renamed from: s  reason: collision with root package name */
    private final long f11880s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private final String f11881t;

    public b(@Nullable String str, @Nullable String str2, @Nullable ImageRequest imageRequest, @Nullable Object obj, @Nullable f fVar, long j4, long j5, long j6, long j7, long j8, long j9, long j10, int i2, boolean z3, int i4, int i5, int i6, long j11, long j12, @Nullable String str3) {
        this.f11862a = str;
        this.f11863b = str2;
        this.f11865d = imageRequest;
        this.f11864c = obj;
        this.f11866e = fVar;
        this.f11867f = j4;
        this.f11868g = j5;
        this.f11869h = j6;
        this.f11870i = j7;
        this.f11871j = j8;
        this.f11872k = j9;
        this.f11873l = j10;
        this.f11874m = i2;
        this.f11875n = z3;
        this.f11876o = i4;
        this.f11877p = i5;
        this.f11878q = i6;
        this.f11879r = j11;
        this.f11880s = j12;
        this.f11881t = str3;
    }

    public String a() {
        return g.f(this).f("controller ID", this.f11862a).f("request ID", this.f11863b).e("controller submit", this.f11867f).e("controller final image", this.f11869h).e("controller failure", this.f11870i).e("controller cancel", this.f11871j).e("start time", this.f11872k).e("end time", this.f11873l).f("origin", h0.c.b(this.f11874m)).g("prefetch", this.f11875n).f("caller context", this.f11864c).f("image request", this.f11865d).f("image info", this.f11866e).d("on-screen width", this.f11876o).d("on-screen height", this.f11877p).d("visibility state", this.f11878q).f("component tag", this.f11881t).toString();
    }

    @Nullable
    public Object b() {
        return this.f11864c;
    }

    @Nullable
    public String c() {
        return this.f11881t;
    }

    public long d() {
        return this.f11870i;
    }

    public long e() {
        return this.f11869h;
    }

    @Nullable
    public String f() {
        return this.f11862a;
    }

    public long g() {
        return this.f11868g;
    }

    public long h() {
        return this.f11867f;
    }

    public long i() {
        if (m() == -1 || n() == -1) {
            return -1L;
        }
        return m() - n();
    }

    @Nullable
    public f j() {
        return this.f11866e;
    }

    public int k() {
        return this.f11874m;
    }

    @Nullable
    public ImageRequest l() {
        return this.f11865d;
    }

    public long m() {
        return this.f11873l;
    }

    public long n() {
        return this.f11872k;
    }

    public long o() {
        if (g() == -1 || h() == -1) {
            return -1L;
        }
        return g() - h();
    }

    public long p() {
        return this.f11880s;
    }

    public int q() {
        return this.f11877p;
    }

    public int r() {
        return this.f11876o;
    }

    @Nullable
    public String s() {
        return this.f11863b;
    }

    public long t() {
        return this.f11879r;
    }

    public int u() {
        return this.f11878q;
    }

    public boolean v() {
        return this.f11875n;
    }
}
