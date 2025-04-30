package com.google.android.material.color;
/* compiled from: Hct.java */
/* loaded from: classes2.dex */
final class l {

    /* renamed from: d  reason: collision with root package name */
    private static final float f14608d = 0.4f;

    /* renamed from: e  reason: collision with root package name */
    private static final float f14609e = 1.0f;

    /* renamed from: f  reason: collision with root package name */
    private static final float f14610f = 0.2f;

    /* renamed from: g  reason: collision with root package name */
    private static final float f14611g = 1.0E-9f;

    /* renamed from: h  reason: collision with root package name */
    private static final float f14612h = 0.01f;

    /* renamed from: a  reason: collision with root package name */
    private float f14613a;

    /* renamed from: b  reason: collision with root package name */
    private float f14614b;

    /* renamed from: c  reason: collision with root package name */
    private float f14615c;

    private l(float f4, float f5, float f6) {
        k(d(f4, f5, f6));
    }

    private static b a(float f4, float f5, float f6) {
        float f7 = 1000.0f;
        b bVar = null;
        float f8 = 1000.0f;
        float f9 = 100.0f;
        float f10 = 0.0f;
        while (Math.abs(f10 - f9) > f14612h) {
            float f11 = ((f9 - f10) / 2.0f) + f10;
            int l4 = b.d(f11, f5, f4).l();
            float l5 = f.l(l4);
            float abs = Math.abs(f6 - l5);
            if (abs < 0.2f) {
                b b4 = b.b(l4);
                float a4 = b4.a(b.d(b4.m(), b4.j(), f4));
                if (a4 <= 1.0f && a4 <= f7) {
                    bVar = b4;
                    f8 = abs;
                    f7 = a4;
                }
            }
            if (f8 == 0.0f && f7 < f14611g) {
                break;
            } else if (l5 < f6) {
                f10 = f11;
            } else {
                f9 = f11;
            }
        }
        return bVar;
    }

    public static l b(float f4, float f5, float f6) {
        return new l(f4, f5, f6);
    }

    public static l c(int i2) {
        b b4 = b.b(i2);
        return new l(b4.k(), b4.j(), f.l(i2));
    }

    private static int d(float f4, float f5, float f6) {
        return e(f4, f5, f6, p.f14629k);
    }

    static int e(float f4, float f5, float f6, p pVar) {
        if (f5 >= 1.0d && Math.round(f6) > 0.0d && Math.round(f6) < 100.0d) {
            float d4 = n.d(f4);
            float f7 = f5;
            b bVar = null;
            float f8 = 0.0f;
            boolean z3 = true;
            while (Math.abs(f8 - f5) >= f14608d) {
                b a4 = a(d4, f7, f6);
                if (z3) {
                    if (a4 != null) {
                        return a4.r(pVar);
                    }
                    z3 = false;
                } else if (a4 == null) {
                    f5 = f7;
                } else {
                    f8 = f7;
                    bVar = a4;
                }
                f7 = ((f5 - f8) / 2.0f) + f8;
            }
            if (bVar == null) {
                return f.f(f6);
            }
            return bVar.r(pVar);
        }
        return f.f(f6);
    }

    private void k(int i2) {
        b b4 = b.b(i2);
        float l4 = f.l(i2);
        this.f14613a = b4.k();
        this.f14614b = b4.j();
        this.f14615c = l4;
    }

    public float f() {
        return this.f14614b;
    }

    public float g() {
        return this.f14613a;
    }

    public float h() {
        return this.f14615c;
    }

    public void i(float f4) {
        k(d(this.f14613a, f4, this.f14615c));
    }

    public void j(float f4) {
        k(d(n.d(f4), this.f14614b, this.f14615c));
    }

    public void l(float f4) {
        k(d(this.f14613a, this.f14614b, f4));
    }

    public int m() {
        return d(this.f14613a, this.f14614b, this.f14615c);
    }
}
