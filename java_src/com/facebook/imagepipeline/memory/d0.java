package com.facebook.imagepipeline.memory;

import javax.annotation.concurrent.NotThreadSafe;
/* compiled from: PoolFactory.java */
@NotThreadSafe
/* loaded from: classes2.dex */
public class d0 {

    /* renamed from: a  reason: collision with root package name */
    private final c0 f12841a;

    /* renamed from: b  reason: collision with root package name */
    private d f12842b;

    /* renamed from: c  reason: collision with root package name */
    private j f12843c;

    /* renamed from: d  reason: collision with root package name */
    private p f12844d;

    /* renamed from: e  reason: collision with root package name */
    private y f12845e;

    /* renamed from: f  reason: collision with root package name */
    private com.facebook.common.memory.g f12846f;

    /* renamed from: g  reason: collision with root package name */
    private com.facebook.common.memory.j f12847g;

    /* renamed from: h  reason: collision with root package name */
    private g0 f12848h;

    /* renamed from: i  reason: collision with root package name */
    private com.facebook.common.memory.a f12849i;

    public d0(c0 c0Var) {
        this.f12841a = (c0) com.facebook.common.internal.h.i(c0Var);
    }

    private u e(int i2) {
        if (i2 != 0) {
            if (i2 == 1) {
                return b();
            }
            throw new IllegalArgumentException("Invalid MemoryChunkType");
        }
        return f();
    }

    public d a() {
        if (this.f12842b == null) {
            String e4 = this.f12841a.e();
            char c4 = 65535;
            switch (e4.hashCode()) {
                case -1868884870:
                    if (e4.equals(BitmapPoolType.LEGACY_DEFAULT_PARAMS)) {
                        c4 = 2;
                        break;
                    }
                    break;
                case -1106578487:
                    if (e4.equals("legacy")) {
                        c4 = 3;
                        break;
                    }
                    break;
                case -404562712:
                    if (e4.equals(BitmapPoolType.EXPERIMENTAL)) {
                        c4 = 1;
                        break;
                    }
                    break;
                case 95945896:
                    if (e4.equals(BitmapPoolType.DUMMY)) {
                        c4 = 0;
                        break;
                    }
                    break;
            }
            if (c4 == 0) {
                this.f12842b = new o();
            } else if (c4 == 1) {
                this.f12842b = new r(this.f12841a.b(), this.f12841a.a(), z.h(), this.f12841a.l() ? this.f12841a.i() : null);
            } else if (c4 != 2) {
                this.f12842b = new h(this.f12841a.i(), this.f12841a.c(), this.f12841a.d());
            } else {
                this.f12842b = new h(this.f12841a.i(), k.a(), this.f12841a.d());
            }
        }
        return this.f12842b;
    }

    public j b() {
        if (this.f12843c == null) {
            this.f12843c = new j(this.f12841a.i(), this.f12841a.g(), this.f12841a.h());
        }
        return this.f12843c;
    }

    public p c() {
        if (this.f12844d == null) {
            this.f12844d = new p(this.f12841a.i(), this.f12841a.f());
        }
        return this.f12844d;
    }

    public int d() {
        return this.f12841a.f().f12859h;
    }

    public y f() {
        if (this.f12845e == null) {
            this.f12845e = new y(this.f12841a.i(), this.f12841a.g(), this.f12841a.h());
        }
        return this.f12845e;
    }

    public com.facebook.common.memory.g g() {
        return h(0);
    }

    public com.facebook.common.memory.g h(int i2) {
        if (this.f12846f == null) {
            this.f12846f = new x(e(i2), i());
        }
        return this.f12846f;
    }

    public com.facebook.common.memory.j i() {
        if (this.f12847g == null) {
            this.f12847g = new com.facebook.common.memory.j(k());
        }
        return this.f12847g;
    }

    public g0 j() {
        if (this.f12848h == null) {
            this.f12848h = new g0(this.f12841a.i(), this.f12841a.f());
        }
        return this.f12848h;
    }

    public com.facebook.common.memory.a k() {
        if (this.f12849i == null) {
            this.f12849i = new q(this.f12841a.i(), this.f12841a.j(), this.f12841a.k());
        }
        return this.f12849i;
    }
}
