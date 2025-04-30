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
/* compiled from: ViewPropertyAnimatorHC.java */
/* loaded from: classes4.dex */
public class c extends com.nineoldandroids.view.b {

    /* renamed from: n  reason: collision with root package name */
    private static final int f54522n = 0;

    /* renamed from: o  reason: collision with root package name */
    private static final int f54523o = 1;

    /* renamed from: p  reason: collision with root package name */
    private static final int f54524p = 2;

    /* renamed from: q  reason: collision with root package name */
    private static final int f54525q = 4;

    /* renamed from: r  reason: collision with root package name */
    private static final int f54526r = 8;

    /* renamed from: s  reason: collision with root package name */
    private static final int f54527s = 16;

    /* renamed from: t  reason: collision with root package name */
    private static final int f54528t = 32;

    /* renamed from: u  reason: collision with root package name */
    private static final int f54529u = 64;

    /* renamed from: v  reason: collision with root package name */
    private static final int f54530v = 128;

    /* renamed from: w  reason: collision with root package name */
    private static final int f54531w = 256;

    /* renamed from: x  reason: collision with root package name */
    private static final int f54532x = 512;

    /* renamed from: y  reason: collision with root package name */
    private static final int f54533y = 511;

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<View> f54534b;

    /* renamed from: c  reason: collision with root package name */
    private long f54535c;

    /* renamed from: g  reason: collision with root package name */
    private Interpolator f54539g;

    /* renamed from: d  reason: collision with root package name */
    private boolean f54536d = false;

    /* renamed from: e  reason: collision with root package name */
    private long f54537e = 0;

    /* renamed from: f  reason: collision with root package name */
    private boolean f54538f = false;

    /* renamed from: h  reason: collision with root package name */
    private boolean f54540h = false;

    /* renamed from: i  reason: collision with root package name */
    private a.InterfaceC0259a f54541i = null;

    /* renamed from: j  reason: collision with root package name */
    private b f54542j = new b(this, null);

    /* renamed from: k  reason: collision with root package name */
    ArrayList<C0263c> f54543k = new ArrayList<>();

    /* renamed from: l  reason: collision with root package name */
    private Runnable f54544l = new a();

    /* renamed from: m  reason: collision with root package name */
    private HashMap<com.nineoldandroids.animation.a, d> f54545m = new HashMap<>();

    /* compiled from: ViewPropertyAnimatorHC.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.O();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ViewPropertyAnimatorHC.java */
    /* loaded from: classes4.dex */
    public class b implements a.InterfaceC0259a, q.g {
        private b() {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void a(com.nineoldandroids.animation.a aVar) {
            if (c.this.f54541i != null) {
                c.this.f54541i.a(aVar);
            }
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void b(com.nineoldandroids.animation.a aVar) {
            if (c.this.f54541i != null) {
                c.this.f54541i.b(aVar);
            }
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void c(com.nineoldandroids.animation.a aVar) {
            if (c.this.f54541i != null) {
                c.this.f54541i.c(aVar);
            }
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void d(com.nineoldandroids.animation.a aVar) {
            if (c.this.f54541i != null) {
                c.this.f54541i.d(aVar);
            }
            c.this.f54545m.remove(aVar);
            if (c.this.f54545m.isEmpty()) {
                c.this.f54541i = null;
            }
        }

        @Override // com.nineoldandroids.animation.q.g
        public void e(q qVar) {
            View view;
            float J = qVar.J();
            d dVar = (d) c.this.f54545m.get(qVar);
            if ((dVar.f54551a & 511) != 0 && (view = (View) c.this.f54534b.get()) != null) {
                view.invalidate();
            }
            ArrayList<C0263c> arrayList = dVar.f54552b;
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    C0263c c0263c = arrayList.get(i2);
                    c.this.N(c0263c.f54548a, c0263c.f54549b + (c0263c.f54550c * J));
                }
            }
            View view2 = (View) c.this.f54534b.get();
            if (view2 != null) {
                view2.invalidate();
            }
        }

        /* synthetic */ b(c cVar, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ViewPropertyAnimatorHC.java */
    /* renamed from: com.nineoldandroids.view.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0263c {

        /* renamed from: a  reason: collision with root package name */
        int f54548a;

        /* renamed from: b  reason: collision with root package name */
        float f54549b;

        /* renamed from: c  reason: collision with root package name */
        float f54550c;

        C0263c(int i2, float f4, float f5) {
            this.f54548a = i2;
            this.f54549b = f4;
            this.f54550c = f5;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ViewPropertyAnimatorHC.java */
    /* loaded from: classes4.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        int f54551a;

        /* renamed from: b  reason: collision with root package name */
        ArrayList<C0263c> f54552b;

        d(int i2, ArrayList<C0263c> arrayList) {
            this.f54551a = i2;
            this.f54552b = arrayList;
        }

        boolean a(int i2) {
            ArrayList<C0263c> arrayList;
            if ((this.f54551a & i2) != 0 && (arrayList = this.f54552b) != null) {
                int size = arrayList.size();
                for (int i4 = 0; i4 < size; i4++) {
                    if (this.f54552b.get(i4).f54548a == i2) {
                        this.f54552b.remove(i4);
                        this.f54551a = (i2 ^ (-1)) & this.f54551a;
                        return true;
                    }
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(View view) {
        this.f54534b = new WeakReference<>(view);
    }

    private void J(int i2, float f4) {
        float M = M(i2);
        L(i2, M, f4 - M);
    }

    private void K(int i2, float f4) {
        L(i2, M(i2), f4);
    }

    private void L(int i2, float f4, float f5) {
        if (this.f54545m.size() > 0) {
            com.nineoldandroids.animation.a aVar = null;
            Iterator<com.nineoldandroids.animation.a> it2 = this.f54545m.keySet().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                com.nineoldandroids.animation.a next = it2.next();
                d dVar = this.f54545m.get(next);
                if (dVar.a(i2) && dVar.f54551a == 0) {
                    aVar = next;
                    break;
                }
            }
            if (aVar != null) {
                aVar.cancel();
            }
        }
        this.f54543k.add(new C0263c(i2, f4, f5));
        View view = this.f54534b.get();
        if (view != null) {
            view.removeCallbacks(this.f54544l);
            view.post(this.f54544l);
        }
    }

    private float M(int i2) {
        View view = this.f54534b.get();
        if (view != null) {
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
                                                return view.getAlpha();
                                            }
                                            return view.getY();
                                        }
                                        return view.getX();
                                    }
                                    return view.getRotationY();
                                }
                                return view.getRotationX();
                            }
                            return view.getRotation();
                        }
                        return view.getScaleY();
                    }
                    return view.getScaleX();
                }
                return view.getTranslationY();
            }
            return view.getTranslationX();
        }
        return 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(int i2, float f4) {
        View view = this.f54534b.get();
        if (view != null) {
            if (i2 == 1) {
                view.setTranslationX(f4);
            } else if (i2 == 2) {
                view.setTranslationY(f4);
            } else if (i2 == 4) {
                view.setScaleX(f4);
            } else if (i2 == 8) {
                view.setScaleY(f4);
            } else if (i2 == 16) {
                view.setRotation(f4);
            } else if (i2 == 32) {
                view.setRotationX(f4);
            } else if (i2 == 64) {
                view.setRotationY(f4);
            } else if (i2 == 128) {
                view.setX(f4);
            } else if (i2 == 256) {
                view.setY(f4);
            } else if (i2 != 512) {
            } else {
                view.setAlpha(f4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        q U = q.U(1.0f);
        ArrayList arrayList = (ArrayList) this.f54543k.clone();
        this.f54543k.clear();
        int size = arrayList.size();
        int i2 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            i2 |= ((C0263c) arrayList.get(i4)).f54548a;
        }
        this.f54545m.put(U, new d(i2, arrayList));
        U.C(this.f54542j);
        U.a(this.f54542j);
        if (this.f54538f) {
            U.m(this.f54537e);
        }
        if (this.f54536d) {
            U.k(this.f54535c);
        }
        if (this.f54540h) {
            U.l(this.f54539g);
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
        if (this.f54545m.size() > 0) {
            for (com.nineoldandroids.animation.a aVar : ((HashMap) this.f54545m.clone()).keySet()) {
                aVar.cancel();
            }
        }
        this.f54543k.clear();
        View view = this.f54534b.get();
        if (view != null) {
            view.removeCallbacks(this.f54544l);
        }
    }

    @Override // com.nineoldandroids.view.b
    public long e() {
        if (this.f54536d) {
            return this.f54535c;
        }
        return new q().d();
    }

    @Override // com.nineoldandroids.view.b
    public long f() {
        if (this.f54538f) {
            return this.f54537e;
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
            this.f54536d = true;
            this.f54535c = j4;
            return this;
        }
        throw new IllegalArgumentException("Animators cannot have negative duration: " + j4);
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b r(Interpolator interpolator) {
        this.f54540h = true;
        this.f54539g = interpolator;
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b s(a.InterfaceC0259a interfaceC0259a) {
        this.f54541i = interfaceC0259a;
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b t(long j4) {
        if (j4 >= 0) {
            this.f54538f = true;
            this.f54537e = j4;
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
