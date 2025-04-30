package com.facebook.drawee.generic;

import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.drawee.drawable.g;
import com.facebook.drawee.drawable.h;
import com.facebook.drawee.drawable.i;
import com.facebook.drawee.drawable.q;
import com.facebook.drawee.drawable.r;
import javax.annotation.Nullable;
/* compiled from: GenericDraweeHierarchy.java */
/* loaded from: classes.dex */
public class a implements k0.c {

    /* renamed from: g  reason: collision with root package name */
    private static final int f12164g = 0;

    /* renamed from: h  reason: collision with root package name */
    private static final int f12165h = 1;

    /* renamed from: i  reason: collision with root package name */
    private static final int f12166i = 2;

    /* renamed from: j  reason: collision with root package name */
    private static final int f12167j = 3;

    /* renamed from: k  reason: collision with root package name */
    private static final int f12168k = 4;

    /* renamed from: l  reason: collision with root package name */
    private static final int f12169l = 5;

    /* renamed from: m  reason: collision with root package name */
    private static final int f12170m = 6;

    /* renamed from: a  reason: collision with root package name */
    private final Drawable f12171a;

    /* renamed from: b  reason: collision with root package name */
    private final Resources f12172b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private RoundingParams f12173c;

    /* renamed from: d  reason: collision with root package name */
    private final d f12174d;

    /* renamed from: e  reason: collision with root package name */
    private final g f12175e;

    /* renamed from: f  reason: collision with root package name */
    private final h f12176f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(b bVar) {
        int i2 = 0;
        ColorDrawable colorDrawable = new ColorDrawable(0);
        this.f12171a = colorDrawable;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("GenericDraweeHierarchy()");
        }
        this.f12172b = bVar.getResources();
        this.f12173c = bVar.r();
        h hVar = new h(colorDrawable);
        this.f12176f = hVar;
        int i4 = 1;
        int size = (bVar.j() != null ? bVar.j().size() : 1) + (bVar.m() != null ? 1 : 0);
        Drawable[] drawableArr = new Drawable[size + 6];
        drawableArr[0] = g(bVar.e(), null);
        drawableArr[1] = g(bVar.k(), bVar.l());
        drawableArr[2] = f(hVar, bVar.d(), bVar.c(), bVar.b());
        drawableArr[3] = g(bVar.n(), bVar.o());
        drawableArr[4] = g(bVar.p(), bVar.q());
        drawableArr[5] = g(bVar.h(), bVar.i());
        if (size > 0) {
            if (bVar.j() != null) {
                for (Drawable drawable : bVar.j()) {
                    drawableArr[i2 + 6] = g(drawable, null);
                    i2++;
                }
                i4 = i2;
            }
            if (bVar.m() != null) {
                drawableArr[i4 + 6] = g(bVar.m(), null);
            }
        }
        g gVar = new g(drawableArr);
        this.f12175e = gVar;
        gVar.y(bVar.g());
        d dVar = new d(e.f(gVar, this.f12173c));
        this.f12174d = dVar;
        dVar.mutate();
        u();
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    private void M(float f4) {
        Drawable b4 = this.f12175e.b(3);
        if (b4 == null) {
            return;
        }
        if (f4 >= 0.999f) {
            if (b4 instanceof Animatable) {
                ((Animatable) b4).stop();
            }
            j(3);
        } else {
            if (b4 instanceof Animatable) {
                ((Animatable) b4).start();
            }
            h(3);
        }
        b4.setLevel(Math.round(f4 * 10000.0f));
    }

    @Nullable
    private Drawable f(Drawable drawable, @Nullable r.c cVar, @Nullable PointF pointF, @Nullable ColorFilter colorFilter) {
        drawable.setColorFilter(colorFilter);
        return e.h(drawable, cVar, pointF);
    }

    @Nullable
    private Drawable g(@Nullable Drawable drawable, @Nullable r.c cVar) {
        return e.g(e.d(drawable, this.f12173c, this.f12172b), cVar);
    }

    private void h(int i2) {
        if (i2 >= 0) {
            this.f12175e.l(i2);
        }
    }

    private void i() {
        j(1);
        j(2);
        j(3);
        j(4);
        j(5);
    }

    private void j(int i2) {
        if (i2 >= 0) {
            this.f12175e.n(i2);
        }
    }

    private com.facebook.drawee.drawable.d n(int i2) {
        com.facebook.drawee.drawable.d c4 = this.f12175e.c(i2);
        if (c4.q() instanceof i) {
            c4 = (i) c4.q();
        }
        return c4.q() instanceof q ? (q) c4.q() : c4;
    }

    private q p(int i2) {
        com.facebook.drawee.drawable.d n4 = n(i2);
        if (n4 instanceof q) {
            return (q) n4;
        }
        return e.l(n4, r.c.f12138a);
    }

    private boolean s(int i2) {
        return n(i2) instanceof q;
    }

    private void t() {
        this.f12176f.f(this.f12171a);
    }

    private void u() {
        g gVar = this.f12175e;
        if (gVar != null) {
            gVar.g();
            this.f12175e.k();
            i();
            h(1);
            this.f12175e.r();
            this.f12175e.j();
        }
    }

    private void z(int i2, @Nullable Drawable drawable) {
        if (drawable == null) {
            this.f12175e.f(i2, null);
            return;
        }
        n(i2).f(e.d(drawable, this.f12173c, this.f12172b));
    }

    public void A(int i2) {
        this.f12175e.y(i2);
    }

    public void B(int i2) {
        D(this.f12172b.getDrawable(i2));
    }

    public void C(int i2, r.c cVar) {
        E(this.f12172b.getDrawable(i2), cVar);
    }

    public void D(@Nullable Drawable drawable) {
        z(5, drawable);
    }

    public void E(Drawable drawable, r.c cVar) {
        z(5, drawable);
        p(5).D(cVar);
    }

    public void F(int i2, @Nullable Drawable drawable) {
        com.facebook.common.internal.h.e(i2 >= 0 && i2 + 6 < this.f12175e.d(), "The given index does not correspond to an overlay image.");
        z(i2 + 6, drawable);
    }

    public void G(@Nullable Drawable drawable) {
        F(0, drawable);
    }

    public void H(int i2) {
        J(this.f12172b.getDrawable(i2));
    }

    public void I(int i2, r.c cVar) {
        K(this.f12172b.getDrawable(i2), cVar);
    }

    public void J(@Nullable Drawable drawable) {
        z(1, drawable);
    }

    public void K(Drawable drawable, r.c cVar) {
        z(1, drawable);
        p(1).D(cVar);
    }

    public void L(PointF pointF) {
        com.facebook.common.internal.h.i(pointF);
        p(1).C(pointF);
    }

    public void N(int i2) {
        P(this.f12172b.getDrawable(i2));
    }

    public void O(int i2, r.c cVar) {
        Q(this.f12172b.getDrawable(i2), cVar);
    }

    public void P(@Nullable Drawable drawable) {
        z(3, drawable);
    }

    public void Q(Drawable drawable, r.c cVar) {
        z(3, drawable);
        p(3).D(cVar);
    }

    public void R(int i2) {
        T(this.f12172b.getDrawable(i2));
    }

    public void S(int i2, r.c cVar) {
        U(this.f12172b.getDrawable(i2), cVar);
    }

    public void T(@Nullable Drawable drawable) {
        z(4, drawable);
    }

    public void U(Drawable drawable, r.c cVar) {
        z(4, drawable);
        p(4).D(cVar);
    }

    public void V(@Nullable RoundingParams roundingParams) {
        this.f12173c = roundingParams;
        e.k(this.f12174d, roundingParams);
        for (int i2 = 0; i2 < this.f12175e.d(); i2++) {
            e.j(n(i2), this.f12173c, this.f12172b);
        }
    }

    @Override // k0.c
    public void a(Throwable th) {
        this.f12175e.g();
        i();
        if (this.f12175e.b(4) != null) {
            h(4);
        } else {
            h(1);
        }
        this.f12175e.j();
    }

    @Override // k0.c
    public void b(float f4, boolean z3) {
        if (this.f12175e.b(3) == null) {
            return;
        }
        this.f12175e.g();
        M(f4);
        if (z3) {
            this.f12175e.r();
        }
        this.f12175e.j();
    }

    @Override // k0.b
    public Drawable c() {
        return this.f12174d;
    }

    @Override // k0.c
    public void d(Drawable drawable, float f4, boolean z3) {
        Drawable d4 = e.d(drawable, this.f12173c, this.f12172b);
        d4.mutate();
        this.f12176f.f(d4);
        this.f12175e.g();
        i();
        h(2);
        M(f4);
        if (z3) {
            this.f12175e.r();
        }
        this.f12175e.j();
    }

    @Override // k0.c
    public void e(@Nullable Drawable drawable) {
        this.f12174d.y(drawable);
    }

    public void k(RectF rectF) {
        this.f12176f.v(rectF);
    }

    @Nullable
    public r.c l() {
        if (s(2)) {
            return p(2).B();
        }
        return null;
    }

    public int m() {
        return this.f12175e.t();
    }

    @Nullable
    public RoundingParams o() {
        return this.f12173c;
    }

    @VisibleForTesting
    public boolean q() {
        return this.f12176f.q() != this.f12171a;
    }

    public boolean r() {
        return this.f12175e.b(1) != null;
    }

    @Override // k0.c
    public void reset() {
        t();
        u();
    }

    @Override // k0.c
    public void setFailure(Throwable th) {
        this.f12175e.g();
        i();
        if (this.f12175e.b(5) != null) {
            h(5);
        } else {
            h(1);
        }
        this.f12175e.j();
    }

    public void v(ColorFilter colorFilter) {
        this.f12176f.setColorFilter(colorFilter);
    }

    public void w(PointF pointF) {
        com.facebook.common.internal.h.i(pointF);
        p(2).C(pointF);
    }

    public void x(r.c cVar) {
        com.facebook.common.internal.h.i(cVar);
        p(2).D(cVar);
    }

    public void y(@Nullable Drawable drawable) {
        z(0, drawable);
    }
}
