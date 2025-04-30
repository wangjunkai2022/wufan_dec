package com.join.mgps.base;

import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
/* compiled from: LoadMoreView.java */
/* loaded from: classes3.dex */
public abstract class c {

    /* renamed from: c  reason: collision with root package name */
    public static final int f44748c = 1;

    /* renamed from: d  reason: collision with root package name */
    public static final int f44749d = 2;

    /* renamed from: e  reason: collision with root package name */
    public static final int f44750e = 3;

    /* renamed from: f  reason: collision with root package name */
    public static final int f44751f = 4;

    /* renamed from: a  reason: collision with root package name */
    private int f44752a = 1;

    /* renamed from: b  reason: collision with root package name */
    private boolean f44753b = false;

    private void k(b bVar, boolean z3) {
        int c4 = c();
        if (c4 != 0) {
            bVar.u(c4, z3);
        }
    }

    private void l(b bVar, boolean z3) {
        bVar.u(d(), z3);
    }

    private void m(b bVar, boolean z3) {
        bVar.u(f(), z3);
    }

    public void a(b bVar) {
        int i2 = this.f44752a;
        if (i2 == 1) {
            m(bVar, false);
            l(bVar, false);
            k(bVar, false);
        } else if (i2 == 2) {
            m(bVar, true);
            l(bVar, false);
            k(bVar, false);
        } else if (i2 == 3) {
            m(bVar, false);
            l(bVar, true);
            k(bVar, false);
        } else if (i2 != 4) {
        } else {
            m(bVar, false);
            l(bVar, false);
            k(bVar, true);
        }
    }

    @LayoutRes
    public abstract int b();

    @IdRes
    protected abstract int c();

    @IdRes
    protected abstract int d();

    public int e() {
        return this.f44752a;
    }

    @IdRes
    protected abstract int f();

    @Deprecated
    public boolean g() {
        return this.f44753b;
    }

    public final boolean h() {
        if (c() == 0) {
            return true;
        }
        return this.f44753b;
    }

    public final void i(boolean z3) {
        this.f44753b = z3;
    }

    public void j(int i2) {
        this.f44752a = i2;
    }
}
