package com.nineoldandroids.view;

import android.view.View;
import android.view.animation.Interpolator;
import com.nineoldandroids.animation.a;
import com.nineoldandroids.animation.q;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewPropertyAnimatorPreHC.java */
/* loaded from: classes4.dex */
public class e extends com.nineoldandroids.view.b {

    /* renamed from: o  reason: collision with root package name */
    private static final int f54557o = 0;

    /* renamed from: p  reason: collision with root package name */
    private static final int f54558p = 1;

    /* renamed from: q  reason: collision with root package name */
    private static final int f54559q = 2;

    /* renamed from: r  reason: collision with root package name */
    private static final int f54560r = 4;

    /* renamed from: s  reason: collision with root package name */
    private static final int f54561s = 8;

    /* renamed from: t  reason: collision with root package name */
    private static final int f54562t = 16;

    /* renamed from: u  reason: collision with root package name */
    private static final int f54563u = 32;

    /* renamed from: v  reason: collision with root package name */
    private static final int f54564v = 64;

    /* renamed from: w  reason: collision with root package name */
    private static final int f54565w = 128;

    /* renamed from: x  reason: collision with root package name */
    private static final int f54566x = 256;

    /* renamed from: y  reason: collision with root package name */
    private static final int f54567y = 512;

    /* renamed from: z  reason: collision with root package name */
    private static final int f54568z = 511;

    /* renamed from: b  reason: collision with root package name */
    private final com.nineoldandroids.view.animation.a f54569b;

    /* renamed from: c  reason: collision with root package name */
    private final WeakReference<View> f54570c;

    /* renamed from: d  reason: collision with root package name */
    private long f54571d;

    /* renamed from: h  reason: collision with root package name */
    private Interpolator f54575h;

    /* renamed from: e  reason: collision with root package name */
    private boolean f54572e = false;

    /* renamed from: f  reason: collision with root package name */
    private long f54573f = 0;

    /* renamed from: g  reason: collision with root package name */
    private boolean f54574g = false;

    /* renamed from: i  reason: collision with root package name */
    private boolean f54576i = false;

    /* renamed from: j  reason: collision with root package name */
    private a.InterfaceC0259a f54577j = null;

    /* renamed from: k  reason: collision with root package name */
    private b f54578k = new b(this, null);

    /* renamed from: l  reason: collision with root package name */
    ArrayList<c> f54579l = new ArrayList<>();

    /* renamed from: m  reason: collision with root package name */
    private Runnable f54580m = new a();

    /* renamed from: n  reason: collision with root package name */
    private HashMap<com.nineoldandroids.animation.a, d> f54581n = new HashMap<>();

    /* compiled from: ViewPropertyAnimatorPreHC.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.O();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ViewPropertyAnimatorPreHC.java */
    /* loaded from: classes4.dex */
    public class b implements a.InterfaceC0259a, q.g {
        private b() {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void a(com.nineoldandroids.animation.a aVar) {
            if (e.this.f54577j != null) {
                e.this.f54577j.a(aVar);
            }
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void b(com.nineoldandroids.animation.a aVar) {
            if (e.this.f54577j != null) {
                e.this.f54577j.b(aVar);
            }
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void c(com.nineoldandroids.animation.a aVar) {
            if (e.this.f54577j != null) {
                e.this.f54577j.c(aVar);
            }
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void d(com.nineoldandroids.animation.a aVar) {
            if (e.this.f54577j != null) {
                e.this.f54577j.d(aVar);
            }
            e.this.f54581n.remove(aVar);
            if (e.this.f54581n.isEmpty()) {
                e.this.f54577j = null;
            }
        }

        @Override // com.nineoldandroids.animation.q.g
        public void e(q qVar) {
            View view;
            float J = qVar.J();
            d dVar = (d) e.this.f54581n.get(qVar);
            if ((dVar.f54587a & 511) != 0 && (view = (View) e.this.f54570c.get()) != null) {
                view.invalidate();
            }
            ArrayList<c> arrayList = dVar.f54588b;
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    c cVar = arrayList.get(i2);
                    e.this.N(cVar.f54584a, cVar.f54585b + (cVar.f54586c * J));
                }
            }
            View view2 = (View) e.this.f54570c.get();
            if (view2 != null) {
                view2.invalidate();
            }
        }

        /* synthetic */ b(e eVar, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ViewPropertyAnimatorPreHC.java */
    /* loaded from: classes4.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        int f54584a;

        /* renamed from: b  reason: collision with root package name */
        float f54585b;

        /* renamed from: c  reason: collision with root package name */
        float f54586c;

        c(int i2, float f4, float f5) {
            this.f54584a = i2;
            this.f54585b = f4;
            this.f54586c = f5;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ViewPropertyAnimatorPreHC.java */
    /* loaded from: classes4.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        int f54587a;

        /* renamed from: b  reason: collision with root package name */
        ArrayList<c> f54588b;

        d(int i2, ArrayList<c> arrayList) {
            this.f54587a = i2;
            this.f54588b = arrayList;
        }

        boolean a(int i2) {
            ArrayList<c> arrayList;
            if ((this.f54587a & i2) != 0 && (arrayList = this.f54588b) != null) {
                int size = arrayList.size();
                for (int i4 = 0; i4 < size; i4++) {
                    if (this.f54588b.get(i4).f54584a == i2) {
                        this.f54588b.remove(i4);
                        this.f54587a = (i2 ^ (-1)) & this.f54587a;
                        return true;
                    }
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(View view) {
        this.f54570c = new WeakReference<>(view);
        this.f54569b = com.nineoldandroids.view.animation.a.G(view);
    }

    private void J(int i2, float f4) {
        float M = M(i2);
        L(i2, M, f4 - M);
    }

    private void K(int i2, float f4) {
        L(i2, M(i2), f4);
    }

    private void L(int i2, float f4, float f5) {
        if (this.f54581n.size() > 0) {
            com.nineoldandroids.animation.a aVar = null;
            Iterator<com.nineoldandroids.animation.a> it2 = this.f54581n.keySet().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                com.nineoldandroids.animation.a next = it2.next();
                d dVar = this.f54581n.get(next);
                if (dVar.a(i2) && dVar.f54587a == 0) {
                    aVar = next;
                    break;
                }
            }
            if (aVar != null) {
                aVar.cancel();
            }
        }
        this.f54579l.add(new c(i2, f4, f5));
        View view = this.f54570c.get();
        if (view != null) {
            view.removeCallbacks(this.f54580m);
            view.post(this.f54580m);
        }
    }

    private float M(int i2) {
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 4) {
                    if (i2 != 8) {
                        if (i2 != 16) {
                            if (i2 != 32) {
                                if (i2 != 64) {
                                    if (i2 != 128) {
                                        if (i2 != 256) {
                                            if (i2 != 512) {
                                                return 0.0f;
                                            }
                                            return this.f54569b.b();
                                        }
                                        return this.f54569b.o();
                                    }
                                    return this.f54569b.n();
                                }
                                return this.f54569b.g();
                            }
                            return this.f54569b.f();
                        }
                        return this.f54569b.e();
                    }
                    return this.f54569b.i();
                }
                return this.f54569b.h();
            }
            return this.f54569b.m();
        }
        return this.f54569b.l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(int i2, float f4) {
        if (i2 == 1) {
            this.f54569b.B(f4);
        } else if (i2 == 2) {
            this.f54569b.C(f4);
        } else if (i2 == 4) {
            this.f54569b.x(f4);
        } else if (i2 == 8) {
            this.f54569b.y(f4);
        } else if (i2 == 16) {
            this.f54569b.u(f4);
        } else if (i2 == 32) {
            this.f54569b.v(f4);
        } else if (i2 == 64) {
            this.f54569b.w(f4);
        } else if (i2 == 128) {
            this.f54569b.D(f4);
        } else if (i2 == 256) {
            this.f54569b.E(f4);
        } else if (i2 != 512) {
        } else {
            this.f54569b.r(f4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        q U = q.U(1.0f);
        ArrayList arrayList = (ArrayList) this.f54579l.clone();
        this.f54579l.clear();
        int size = arrayList.size();
        int i2 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            i2 |= ((c) arrayList.get(i4)).f54584a;
        }
        this.f54581n.put(U, new d(i2, arrayList));
        U.C(this.f54578k);
        U.a(this.f54578k);
        if (this.f54574g) {
            U.m(this.f54573f);
        }
        if (this.f54572e) {
            U.k(this.f54571d);
        }
        if (this.f54576i) {
            U.l(this.f54575h);
        }
        U.q();
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b A(float f4) {
        K(128, f4);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b B(float f4) {
        J(256, f4);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b C(float f4) {
        K(256, f4);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b a(float f4) {
        J(512, f4);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b b(float f4) {
        K(512, f4);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public void d() {
        if (this.f54581n.size() > 0) {
            for (com.nineoldandroids.animation.a aVar : ((HashMap) this.f54581n.clone()).keySet()) {
                aVar.cancel();
            }
        }
        this.f54579l.clear();
        View view = this.f54570c.get();
        if (view != null) {
            view.removeCallbacks(this.f54580m);
        }
    }

    @Override // com.nineoldandroids.view.b
    public long e() {
        if (this.f54572e) {
            return this.f54571d;
        }
        return new q().d();
    }

    @Override // com.nineoldandroids.view.b
    public long f() {
        if (this.f54574g) {
            return this.f54573f;
        }
        return 0L;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b g(float f4) {
        J(16, f4);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b h(float f4) {
        K(16, f4);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b i(float f4) {
        J(32, f4);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b j(float f4) {
        K(32, f4);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b k(float f4) {
        J(64, f4);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b l(float f4) {
        K(64, f4);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b m(float f4) {
        J(4, f4);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b n(float f4) {
        K(4, f4);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b o(float f4) {
        J(8, f4);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b p(float f4) {
        K(8, f4);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b q(long j4) {
        if (j4 >= 0) {
            this.f54572e = true;
            this.f54571d = j4;
            return this;
        }
        throw new IllegalArgumentException("Animators cannot have negative duration: " + j4);
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b r(Interpolator interpolator) {
        this.f54576i = true;
        this.f54575h = interpolator;
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b s(a.InterfaceC0259a interfaceC0259a) {
        this.f54577j = interfaceC0259a;
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b t(long j4) {
        if (j4 >= 0) {
            this.f54574g = true;
            this.f54573f = j4;
            return this;
        }
        throw new IllegalArgumentException("Animators cannot have negative duration: " + j4);
    }

    @Override // com.nineoldandroids.view.b
    public void u() {
        O();
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b v(float f4) {
        J(1, f4);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b w(float f4) {
        K(1, f4);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b x(float f4) {
        J(2, f4);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b y(float f4) {
        K(2, f4);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b z(float f4) {
        J(128, f4);
        return this;
    }
}
