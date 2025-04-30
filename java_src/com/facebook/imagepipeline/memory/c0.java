package com.facebook.imagepipeline.memory;

import javax.annotation.concurrent.Immutable;
/* compiled from: PoolConfig.java */
@Immutable
/* loaded from: classes2.dex */
public class c0 {

    /* renamed from: m  reason: collision with root package name */
    public static final int f12816m = 4194304;

    /* renamed from: a  reason: collision with root package name */
    private final e0 f12817a;

    /* renamed from: b  reason: collision with root package name */
    private final f0 f12818b;

    /* renamed from: c  reason: collision with root package name */
    private final e0 f12819c;

    /* renamed from: d  reason: collision with root package name */
    private final com.facebook.common.memory.c f12820d;

    /* renamed from: e  reason: collision with root package name */
    private final e0 f12821e;

    /* renamed from: f  reason: collision with root package name */
    private final f0 f12822f;

    /* renamed from: g  reason: collision with root package name */
    private final e0 f12823g;

    /* renamed from: h  reason: collision with root package name */
    private final f0 f12824h;

    /* renamed from: i  reason: collision with root package name */
    private final String f12825i;

    /* renamed from: j  reason: collision with root package name */
    private final int f12826j;

    /* renamed from: k  reason: collision with root package name */
    private final int f12827k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f12828l;

    /* compiled from: PoolConfig.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private e0 f12829a;

        /* renamed from: b  reason: collision with root package name */
        private f0 f12830b;

        /* renamed from: c  reason: collision with root package name */
        private e0 f12831c;

        /* renamed from: d  reason: collision with root package name */
        private com.facebook.common.memory.c f12832d;

        /* renamed from: e  reason: collision with root package name */
        private e0 f12833e;

        /* renamed from: f  reason: collision with root package name */
        private f0 f12834f;

        /* renamed from: g  reason: collision with root package name */
        private e0 f12835g;

        /* renamed from: h  reason: collision with root package name */
        private f0 f12836h;

        /* renamed from: i  reason: collision with root package name */
        private String f12837i;

        /* renamed from: j  reason: collision with root package name */
        private int f12838j;

        /* renamed from: k  reason: collision with root package name */
        private int f12839k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f12840l;

        public c0 m() {
            return new c0(this);
        }

        public b n(int i2) {
            this.f12839k = i2;
            return this;
        }

        public b o(int i2) {
            this.f12838j = i2;
            return this;
        }

        public b p(e0 e0Var) {
            this.f12829a = (e0) com.facebook.common.internal.h.i(e0Var);
            return this;
        }

        public b q(f0 f0Var) {
            this.f12830b = (f0) com.facebook.common.internal.h.i(f0Var);
            return this;
        }

        public b r(String str) {
            this.f12837i = str;
            return this;
        }

        public b s(e0 e0Var) {
            this.f12831c = e0Var;
            return this;
        }

        public b t(com.facebook.common.memory.c cVar) {
            this.f12832d = cVar;
            return this;
        }

        public b u(e0 e0Var) {
            this.f12833e = (e0) com.facebook.common.internal.h.i(e0Var);
            return this;
        }

        public b v(f0 f0Var) {
            this.f12834f = (f0) com.facebook.common.internal.h.i(f0Var);
            return this;
        }

        public void w(boolean z3) {
            this.f12840l = z3;
        }

        public b x(e0 e0Var) {
            this.f12835g = (e0) com.facebook.common.internal.h.i(e0Var);
            return this;
        }

        public b y(f0 f0Var) {
            this.f12836h = (f0) com.facebook.common.internal.h.i(f0Var);
            return this;
        }

        private b() {
        }
    }

    public static b m() {
        return new b();
    }

    public int a() {
        return this.f12827k;
    }

    public int b() {
        return this.f12826j;
    }

    public e0 c() {
        return this.f12817a;
    }

    public f0 d() {
        return this.f12818b;
    }

    public String e() {
        return this.f12825i;
    }

    public e0 f() {
        return this.f12819c;
    }

    public e0 g() {
        return this.f12821e;
    }

    public f0 h() {
        return this.f12822f;
    }

    public com.facebook.common.memory.c i() {
        return this.f12820d;
    }

    public e0 j() {
        return this.f12823g;
    }

    public f0 k() {
        return this.f12824h;
    }

    public boolean l() {
        return this.f12828l;
    }

    private c0(b bVar) {
        e0 e0Var;
        f0 f0Var;
        e0 e0Var2;
        com.facebook.common.memory.c cVar;
        e0 e0Var3;
        f0 f0Var2;
        e0 e0Var4;
        f0 f0Var3;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("PoolConfig()");
        }
        if (bVar.f12829a != null) {
            e0Var = bVar.f12829a;
        } else {
            e0Var = k.a();
        }
        this.f12817a = e0Var;
        if (bVar.f12830b != null) {
            f0Var = bVar.f12830b;
        } else {
            f0Var = z.h();
        }
        this.f12818b = f0Var;
        if (bVar.f12831c != null) {
            e0Var2 = bVar.f12831c;
        } else {
            e0Var2 = m.b();
        }
        this.f12819c = e0Var2;
        if (bVar.f12832d != null) {
            cVar = bVar.f12832d;
        } else {
            cVar = com.facebook.common.memory.d.c();
        }
        this.f12820d = cVar;
        if (bVar.f12833e != null) {
            e0Var3 = bVar.f12833e;
        } else {
            e0Var3 = n.a();
        }
        this.f12821e = e0Var3;
        if (bVar.f12834f != null) {
            f0Var2 = bVar.f12834f;
        } else {
            f0Var2 = z.h();
        }
        this.f12822f = f0Var2;
        if (bVar.f12835g != null) {
            e0Var4 = bVar.f12835g;
        } else {
            e0Var4 = l.a();
        }
        this.f12823g = e0Var4;
        if (bVar.f12836h != null) {
            f0Var3 = bVar.f12836h;
        } else {
            f0Var3 = z.h();
        }
        this.f12824h = f0Var3;
        this.f12825i = bVar.f12837i == null ? "legacy" : bVar.f12837i;
        this.f12826j = bVar.f12838j;
        this.f12827k = bVar.f12839k > 0 ? bVar.f12839k : 4194304;
        this.f12828l = bVar.f12840l;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }
}
