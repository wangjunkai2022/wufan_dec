package com.facebook.drawee.backends.pipeline.info;

import com.facebook.imagepipeline.image.f;
import com.facebook.imagepipeline.request.ImageRequest;
import javax.annotation.Nullable;
/* compiled from: ImagePerfState.java */
/* loaded from: classes.dex */
public class d {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String f11892a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private String f11893b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private ImageRequest f11894c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Object f11895d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private f f11896e;

    /* renamed from: n  reason: collision with root package name */
    private boolean f11905n;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private String f11912u;

    /* renamed from: f  reason: collision with root package name */
    private long f11897f = -1;

    /* renamed from: g  reason: collision with root package name */
    private long f11898g = -1;

    /* renamed from: h  reason: collision with root package name */
    private long f11899h = -1;

    /* renamed from: i  reason: collision with root package name */
    private long f11900i = -1;

    /* renamed from: j  reason: collision with root package name */
    private long f11901j = -1;

    /* renamed from: k  reason: collision with root package name */
    private long f11902k = -1;

    /* renamed from: l  reason: collision with root package name */
    private long f11903l = -1;

    /* renamed from: m  reason: collision with root package name */
    private int f11904m = -1;

    /* renamed from: o  reason: collision with root package name */
    private int f11906o = -1;

    /* renamed from: p  reason: collision with root package name */
    private int f11907p = -1;

    /* renamed from: q  reason: collision with root package name */
    private int f11908q = -1;

    /* renamed from: r  reason: collision with root package name */
    private int f11909r = -1;

    /* renamed from: s  reason: collision with root package name */
    private long f11910s = -1;

    /* renamed from: t  reason: collision with root package name */
    private long f11911t = -1;

    public int a() {
        return this.f11908q;
    }

    public void b() {
        this.f11893b = null;
        this.f11894c = null;
        this.f11895d = null;
        this.f11896e = null;
        this.f11897f = -1L;
        this.f11899h = -1L;
        this.f11900i = -1L;
        this.f11901j = -1L;
        this.f11902k = -1L;
        this.f11903l = -1L;
        this.f11904m = 1;
        this.f11905n = false;
        this.f11906o = -1;
        this.f11907p = -1;
        this.f11908q = -1;
        this.f11909r = -1;
        this.f11910s = -1L;
        this.f11911t = -1L;
        this.f11912u = null;
    }

    public void c(@Nullable Object obj) {
        this.f11895d = obj;
    }

    public void d(@Nullable String str) {
        this.f11912u = str;
    }

    public void e(long j4) {
        this.f11901j = j4;
    }

    public void f(long j4) {
        this.f11900i = j4;
    }

    public void g(long j4) {
        this.f11899h = j4;
    }

    public void h(@Nullable String str) {
        this.f11892a = str;
    }

    public void i(long j4) {
        this.f11898g = j4;
    }

    public void j(long j4) {
        this.f11897f = j4;
    }

    public void k(@Nullable f fVar) {
        this.f11896e = fVar;
    }

    public void l(int i2) {
        this.f11908q = i2;
    }

    public void m(int i2) {
        this.f11904m = i2;
    }

    public void n(@Nullable ImageRequest imageRequest) {
        this.f11894c = imageRequest;
    }

    public void o(long j4) {
        this.f11903l = j4;
    }

    public void p(long j4) {
        this.f11902k = j4;
    }

    public void q(long j4) {
        this.f11911t = j4;
    }

    public void r(int i2) {
        this.f11907p = i2;
    }

    public void s(int i2) {
        this.f11906o = i2;
    }

    public void t(boolean z3) {
        this.f11905n = z3;
    }

    public void u(@Nullable String str) {
        this.f11893b = str;
    }

    public void v(long j4) {
        this.f11910s = j4;
    }

    public void w(boolean z3) {
        this.f11909r = z3 ? 1 : 2;
    }

    public b x() {
        return new b(this.f11892a, this.f11893b, this.f11894c, this.f11895d, this.f11896e, this.f11897f, this.f11898g, this.f11899h, this.f11900i, this.f11901j, this.f11902k, this.f11903l, this.f11904m, this.f11905n, this.f11906o, this.f11907p, this.f11909r, this.f11910s, this.f11911t, this.f11912u);
    }
}
