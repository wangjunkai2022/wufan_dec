package com.facebook.rebound;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* compiled from: Spring.java */
/* loaded from: classes2.dex */
public class i {

    /* renamed from: o  reason: collision with root package name */
    private static int f13438o = 0;

    /* renamed from: p  reason: collision with root package name */
    private static final double f13439p = 0.064d;

    /* renamed from: q  reason: collision with root package name */
    private static final double f13440q = 0.001d;

    /* renamed from: a  reason: collision with root package name */
    private k f13441a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f13442b;

    /* renamed from: c  reason: collision with root package name */
    private final String f13443c;

    /* renamed from: g  reason: collision with root package name */
    private double f13447g;

    /* renamed from: h  reason: collision with root package name */
    private double f13448h;

    /* renamed from: n  reason: collision with root package name */
    private final c f13454n;

    /* renamed from: d  reason: collision with root package name */
    private final b f13444d = new b();

    /* renamed from: e  reason: collision with root package name */
    private final b f13445e = new b();

    /* renamed from: f  reason: collision with root package name */
    private final b f13446f = new b();

    /* renamed from: i  reason: collision with root package name */
    private boolean f13449i = true;

    /* renamed from: j  reason: collision with root package name */
    private double f13450j = 0.005d;

    /* renamed from: k  reason: collision with root package name */
    private double f13451k = 0.005d;

    /* renamed from: l  reason: collision with root package name */
    private CopyOnWriteArraySet<m> f13452l = new CopyOnWriteArraySet<>();

    /* renamed from: m  reason: collision with root package name */
    private double f13453m = 0.0d;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Spring.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        double f13455a;

        /* renamed from: b  reason: collision with root package name */
        double f13456b;

        private b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(c cVar) {
        if (cVar != null) {
            this.f13454n = cVar;
            StringBuilder sb = new StringBuilder();
            sb.append("spring:");
            int i2 = f13438o;
            f13438o = i2 + 1;
            sb.append(i2);
            this.f13443c = sb.toString();
            B(k.f13469c);
            return;
        }
        throw new IllegalArgumentException("Spring cannot be created outside of a BaseSpringSystem");
    }

    private double g(b bVar) {
        return Math.abs(this.f13448h - bVar.f13455a);
    }

    private void o(double d4) {
        b bVar = this.f13444d;
        b bVar2 = this.f13445e;
        double d5 = 1.0d - d4;
        bVar.f13455a = (bVar.f13455a * d4) + (bVar2.f13455a * d5);
        bVar.f13456b = (bVar.f13456b * d4) + (bVar2.f13456b * d5);
    }

    public i A(double d4) {
        this.f13450j = d4;
        return this;
    }

    public i B(k kVar) {
        if (kVar != null) {
            this.f13441a = kVar;
            return this;
        }
        throw new IllegalArgumentException("springConfig is required");
    }

    public i C(double d4) {
        b bVar = this.f13444d;
        if (d4 == bVar.f13456b) {
            return this;
        }
        bVar.f13456b = d4;
        this.f13454n.a(i());
        return this;
    }

    public boolean D() {
        return (p() && E()) ? false : true;
    }

    public boolean E() {
        return this.f13449i;
    }

    public i a(m mVar) {
        if (mVar != null) {
            this.f13452l.add(mVar);
            return this;
        }
        throw new IllegalArgumentException("newListener is required");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(double d4) {
        double d5;
        boolean z3;
        boolean z4;
        boolean p3 = p();
        if (p3 && this.f13449i) {
            return;
        }
        double d6 = f13439p;
        if (d4 <= f13439p) {
            d6 = d4;
        }
        this.f13453m += d6;
        k kVar = this.f13441a;
        double d7 = kVar.f13471b;
        double d8 = kVar.f13470a;
        b bVar = this.f13444d;
        double d9 = bVar.f13455a;
        double d10 = bVar.f13456b;
        b bVar2 = this.f13446f;
        double d11 = bVar2.f13455a;
        double d12 = bVar2.f13456b;
        while (true) {
            d5 = this.f13453m;
            if (d5 < f13440q) {
                break;
            }
            double d13 = d5 - f13440q;
            this.f13453m = d13;
            if (d13 < f13440q) {
                b bVar3 = this.f13445e;
                bVar3.f13455a = d9;
                bVar3.f13456b = d10;
            }
            double d14 = this.f13448h;
            double d15 = ((d14 - d11) * d7) - (d8 * d10);
            double d16 = d10 + (d15 * f13440q * 0.5d);
            double d17 = ((d14 - (((d10 * f13440q) * 0.5d) + d9)) * d7) - (d8 * d16);
            double d18 = d10 + (d17 * f13440q * 0.5d);
            double d19 = ((d14 - (d9 + ((d16 * f13440q) * 0.5d))) * d7) - (d8 * d18);
            double d20 = d9 + (d18 * f13440q);
            double d21 = d10 + (d19 * f13440q);
            d9 += (d10 + ((d16 + d18) * 2.0d) + d21) * 0.16666666666666666d * f13440q;
            d10 += (d15 + ((d17 + d19) * 2.0d) + (((d14 - d20) * d7) - (d8 * d21))) * 0.16666666666666666d * f13440q;
            d11 = d20;
            d12 = d21;
        }
        b bVar4 = this.f13446f;
        bVar4.f13455a = d11;
        bVar4.f13456b = d12;
        b bVar5 = this.f13444d;
        bVar5.f13455a = d9;
        bVar5.f13456b = d10;
        if (d5 > 0.0d) {
            o(d5 / f13440q);
        }
        boolean z5 = true;
        if (p() || (this.f13442b && r())) {
            if (d7 > 0.0d) {
                double d22 = this.f13448h;
                this.f13447g = d22;
                this.f13444d.f13455a = d22;
            } else {
                double d23 = this.f13444d.f13455a;
                this.f13448h = d23;
                this.f13447g = d23;
            }
            C(0.0d);
            z3 = true;
        } else {
            z3 = p3;
        }
        if (this.f13449i) {
            this.f13449i = false;
            z4 = true;
        } else {
            z4 = false;
        }
        if (z3) {
            this.f13449i = true;
        } else {
            z5 = false;
        }
        Iterator<m> it2 = this.f13452l.iterator();
        while (it2.hasNext()) {
            m next = it2.next();
            if (z4) {
                next.c(this);
            }
            next.a(this);
            if (z5) {
                next.d(this);
            }
        }
    }

    public boolean c(double d4) {
        return Math.abs(f() - d4) <= j();
    }

    public void d() {
        this.f13452l.clear();
        this.f13454n.e(this);
    }

    public double e() {
        return g(this.f13444d);
    }

    public double f() {
        return this.f13444d.f13455a;
    }

    public double h() {
        return this.f13448h;
    }

    public String i() {
        return this.f13443c;
    }

    public double j() {
        return this.f13451k;
    }

    public double k() {
        return this.f13450j;
    }

    public k l() {
        return this.f13441a;
    }

    public double m() {
        return this.f13447g;
    }

    public double n() {
        return this.f13444d.f13456b;
    }

    public boolean p() {
        return Math.abs(this.f13444d.f13456b) <= this.f13450j && (g(this.f13444d) <= this.f13451k || this.f13441a.f13471b == 0.0d);
    }

    public boolean q() {
        return this.f13442b;
    }

    public boolean r() {
        return this.f13441a.f13471b > 0.0d && ((this.f13447g < this.f13448h && f() > this.f13448h) || (this.f13447g > this.f13448h && f() < this.f13448h));
    }

    public i s() {
        this.f13452l.clear();
        return this;
    }

    public i t(m mVar) {
        if (mVar != null) {
            this.f13452l.remove(mVar);
            return this;
        }
        throw new IllegalArgumentException("listenerToRemove is required");
    }

    public i u() {
        b bVar = this.f13444d;
        double d4 = bVar.f13455a;
        this.f13448h = d4;
        this.f13446f.f13455a = d4;
        bVar.f13456b = 0.0d;
        return this;
    }

    public i v(double d4) {
        return w(d4, true);
    }

    public i w(double d4, boolean z3) {
        this.f13447g = d4;
        this.f13444d.f13455a = d4;
        this.f13454n.a(i());
        Iterator<m> it2 = this.f13452l.iterator();
        while (it2.hasNext()) {
            it2.next().a(this);
        }
        if (z3) {
            u();
        }
        return this;
    }

    public i x(double d4) {
        if (this.f13448h == d4 && p()) {
            return this;
        }
        this.f13447g = f();
        this.f13448h = d4;
        this.f13454n.a(i());
        Iterator<m> it2 = this.f13452l.iterator();
        while (it2.hasNext()) {
            it2.next().b(this);
        }
        return this;
    }

    public i y(boolean z3) {
        this.f13442b = z3;
        return this;
    }

    public i z(double d4) {
        this.f13451k = d4;
        return this;
    }
}
