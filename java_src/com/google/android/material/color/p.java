package com.google.android.material.color;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewingConditions.java */
/* loaded from: classes2.dex */
public final class p {

    /* renamed from: k  reason: collision with root package name */
    public static final p f14629k;

    /* renamed from: a  reason: collision with root package name */
    private final float f14630a;

    /* renamed from: b  reason: collision with root package name */
    private final float f14631b;

    /* renamed from: c  reason: collision with root package name */
    private final float f14632c;

    /* renamed from: d  reason: collision with root package name */
    private final float f14633d;

    /* renamed from: e  reason: collision with root package name */
    private final float f14634e;

    /* renamed from: f  reason: collision with root package name */
    private final float f14635f;

    /* renamed from: g  reason: collision with root package name */
    private final float[] f14636g;

    /* renamed from: h  reason: collision with root package name */
    private final float f14637h;

    /* renamed from: i  reason: collision with root package name */
    private final float f14638i;

    /* renamed from: j  reason: collision with root package name */
    private final float f14639j;

    static {
        float[] n4 = f.n();
        double p3 = f.p(50.0f);
        Double.isNaN(p3);
        f14629k = k(n4, (float) ((p3 * 63.66197723675813d) / 100.0d), 50.0f, 2.0f, false);
    }

    private p(float f4, float f5, float f6, float f7, float f8, float f9, float[] fArr, float f10, float f11, float f12) {
        this.f14635f = f4;
        this.f14630a = f5;
        this.f14631b = f6;
        this.f14632c = f7;
        this.f14633d = f8;
        this.f14634e = f9;
        this.f14636g = fArr;
        this.f14637h = f10;
        this.f14638i = f11;
        this.f14639j = f12;
    }

    static p k(float[] fArr, float f4, float f5, float f6, boolean z3) {
        float c4;
        float[][] fArr2 = b.f14492j;
        float f7 = (fArr[0] * fArr2[0][0]) + (fArr[1] * fArr2[0][1]) + (fArr[2] * fArr2[0][2]);
        float f8 = (fArr[0] * fArr2[1][0]) + (fArr[1] * fArr2[1][1]) + (fArr[2] * fArr2[1][2]);
        float f9 = (fArr[0] * fArr2[2][0]) + (fArr[1] * fArr2[2][1]) + (fArr[2] * fArr2[2][2]);
        float f10 = (f6 / 10.0f) + 0.8f;
        if (f10 >= 0.9d) {
            c4 = n.c(0.59f, 0.69f, (f10 - 0.9f) * 10.0f);
        } else {
            c4 = n.c(0.525f, 0.59f, (f10 - 0.8f) * 10.0f);
        }
        float f11 = c4;
        float exp = z3 ? 1.0f : (1.0f - (((float) Math.exp(((-f4) - 42.0f) / 92.0f)) * 0.2777778f)) * f10;
        double d4 = exp;
        if (d4 > 1.0d) {
            exp = 1.0f;
        } else if (d4 < 0.0d) {
            exp = 0.0f;
        }
        float[] fArr3 = {(((100.0f / f7) * exp) + 1.0f) - exp, (((100.0f / f8) * exp) + 1.0f) - exp, (((100.0f / f9) * exp) + 1.0f) - exp};
        float f12 = 1.0f / ((5.0f * f4) + 1.0f);
        float f13 = f12 * f12 * f12 * f12;
        float f14 = 1.0f - f13;
        double d5 = f4;
        Double.isNaN(d5);
        float cbrt = (f13 * f4) + (0.1f * f14 * f14 * ((float) Math.cbrt(d5 * 5.0d)));
        float p3 = f.p(f5) / fArr[1];
        double d6 = p3;
        float sqrt = ((float) Math.sqrt(d6)) + 1.48f;
        float pow = 0.725f / ((float) Math.pow(d6, 0.2d));
        double d7 = fArr3[0] * cbrt * f7;
        Double.isNaN(d7);
        double d8 = fArr3[1] * cbrt * f8;
        Double.isNaN(d8);
        double d9 = fArr3[2] * cbrt * f9;
        Double.isNaN(d9);
        float[] fArr4 = {(float) Math.pow(d7 / 100.0d, 0.42d), (float) Math.pow(d8 / 100.0d, 0.42d), (float) Math.pow(d9 / 100.0d, 0.42d)};
        float[] fArr5 = {(fArr4[0] * 400.0f) / (fArr4[0] + 27.13f), (fArr4[1] * 400.0f) / (fArr4[1] + 27.13f), (fArr4[2] * 400.0f) / (fArr4[2] + 27.13f)};
        return new p(p3, ((fArr5[0] * 2.0f) + fArr5[1] + (fArr5[2] * 0.05f)) * pow, pow, pow, f11, f10, fArr3, cbrt, (float) Math.pow(cbrt, 0.25d), sqrt);
    }

    public float a() {
        return this.f14630a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float b() {
        return this.f14633d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float c() {
        return this.f14637h;
    }

    public float d() {
        return this.f14638i;
    }

    public float e() {
        return this.f14635f;
    }

    public float f() {
        return this.f14631b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float g() {
        return this.f14634e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float h() {
        return this.f14632c;
    }

    public float[] i() {
        return this.f14636g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float j() {
        return this.f14639j;
    }
}
