package com.google.android.material.color;
/* compiled from: Cam16.java */
/* loaded from: classes2.dex */
final class b {

    /* renamed from: j  reason: collision with root package name */
    static final float[][] f14492j = {new float[]{0.401288f, 0.650173f, -0.051461f}, new float[]{-0.250268f, 1.204414f, 0.045854f}, new float[]{-0.002079f, 0.048952f, 0.953127f}};

    /* renamed from: k  reason: collision with root package name */
    static final float[][] f14493k = {new float[]{1.8620678f, -1.0112547f, 0.14918678f}, new float[]{0.38752654f, 0.62144744f, -0.00897398f}, new float[]{-0.0158415f, -0.03412294f, 1.0499644f}};

    /* renamed from: a  reason: collision with root package name */
    private final float f14494a;

    /* renamed from: b  reason: collision with root package name */
    private final float f14495b;

    /* renamed from: c  reason: collision with root package name */
    private final float f14496c;

    /* renamed from: d  reason: collision with root package name */
    private final float f14497d;

    /* renamed from: e  reason: collision with root package name */
    private final float f14498e;

    /* renamed from: f  reason: collision with root package name */
    private final float f14499f;

    /* renamed from: g  reason: collision with root package name */
    private final float f14500g;

    /* renamed from: h  reason: collision with root package name */
    private final float f14501h;

    /* renamed from: i  reason: collision with root package name */
    private final float f14502i;

    private b(float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12) {
        this.f14494a = f4;
        this.f14495b = f5;
        this.f14496c = f6;
        this.f14497d = f7;
        this.f14498e = f8;
        this.f14499f = f9;
        this.f14500g = f10;
        this.f14501h = f11;
        this.f14502i = f12;
    }

    public static b b(int i2) {
        return c(i2, p.f14629k);
    }

    static b c(int i2, p pVar) {
        double d4;
        double d5;
        float k4 = f.k(((16711680 & i2) >> 16) / 255.0f) * 100.0f;
        float k5 = f.k(((65280 & i2) >> 8) / 255.0f) * 100.0f;
        float k6 = f.k((i2 & 255) / 255.0f) * 100.0f;
        float f4 = (0.41233894f * k4) + (0.35762063f * k5) + (0.18051042f * k6);
        float f5 = (0.2126f * k4) + (0.7152f * k5) + (0.0722f * k6);
        float f6 = (k4 * 0.01932141f) + (k5 * 0.11916382f) + (k6 * 0.9503448f);
        float[][] fArr = f14492j;
        float f7 = (fArr[0][0] * f4) + (fArr[0][1] * f5) + (fArr[0][2] * f6);
        float f8 = (fArr[1][0] * f4) + (fArr[1][1] * f5) + (fArr[1][2] * f6);
        float f9 = (f4 * fArr[2][0]) + (f5 * fArr[2][1]) + (f6 * fArr[2][2]);
        float f10 = pVar.i()[0] * f7;
        float f11 = pVar.i()[1] * f8;
        float f12 = pVar.i()[2] * f9;
        double c4 = pVar.c() * Math.abs(f10);
        Double.isNaN(c4);
        float pow = (float) Math.pow(c4 / 100.0d, 0.42d);
        double c5 = pVar.c() * Math.abs(f11);
        Double.isNaN(c5);
        float pow2 = (float) Math.pow(c5 / 100.0d, 0.42d);
        double c6 = pVar.c() * Math.abs(f12);
        Double.isNaN(c6);
        float pow3 = (float) Math.pow(c6 / 100.0d, 0.42d);
        float signum = ((Math.signum(f10) * 400.0f) * pow) / (pow + 27.13f);
        float signum2 = ((Math.signum(f11) * 400.0f) * pow2) / (pow2 + 27.13f);
        float signum3 = ((Math.signum(f12) * 400.0f) * pow3) / (pow3 + 27.13f);
        double d6 = signum;
        Double.isNaN(d6);
        double d7 = signum2;
        Double.isNaN(d7);
        double d8 = (d6 * 11.0d) + (d7 * (-12.0d));
        double d9 = signum3;
        Double.isNaN(d9);
        double d10 = signum + signum2;
        Double.isNaN(d9);
        Double.isNaN(d10);
        float f13 = signum2 * 20.0f;
        float f14 = (((signum * 20.0f) + f13) + (21.0f * signum3)) / 20.0f;
        float f15 = (((signum * 40.0f) + f13) + signum3) / 20.0f;
        float atan2 = (((float) Math.atan2(((float) (d10 - (d9 * 2.0d))) / 9.0f, ((float) (d8 + d9)) / 11.0f)) * 180.0f) / 3.1415927f;
        if (atan2 < 0.0f) {
            atan2 += 360.0f;
        } else if (atan2 >= 360.0f) {
            atan2 -= 360.0f;
        }
        float f16 = (3.1415927f * atan2) / 180.0f;
        float pow4 = ((float) Math.pow((f15 * pVar.f()) / pVar.a(), pVar.b() * pVar.j())) * 100.0f;
        float b4 = (4.0f / pVar.b()) * ((float) Math.sqrt(pow4 / 100.0f)) * (pVar.a() + 4.0f) * pVar.d();
        float pow5 = ((float) Math.pow(1.64d - Math.pow(0.29d, pVar.e()), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos(Math.toRadians(((double) atan2) < 20.14d ? 360.0f + atan2 : atan2) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * pVar.g()) * pVar.h()) * ((float) Math.hypot(d5, d4))) / (f14 + 0.305f), 0.9d));
        double d11 = pow4;
        Double.isNaN(d11);
        float sqrt = pow5 * ((float) Math.sqrt(d11 / 100.0d));
        float d12 = sqrt * pVar.d();
        float sqrt2 = ((float) Math.sqrt((pow5 * pVar.b()) / (pVar.a() + 4.0f))) * 50.0f;
        float f17 = (1.7f * pow4) / ((0.007f * pow4) + 1.0f);
        float log1p = ((float) Math.log1p(0.0228f * d12)) * 43.85965f;
        double d13 = f16;
        return new b(atan2, sqrt, pow4, b4, d12, sqrt2, f17, log1p * ((float) Math.cos(d13)), log1p * ((float) Math.sin(d13)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b d(float f4, float f5, float f6) {
        return e(f4, f5, f6, p.f14629k);
    }

    private static b e(float f4, float f5, float f6, p pVar) {
        double d4;
        double d5 = f4;
        Double.isNaN(d5);
        float b4 = (4.0f / pVar.b()) * ((float) Math.sqrt(d5 / 100.0d)) * (pVar.a() + 4.0f) * pVar.d();
        float d6 = f5 * pVar.d();
        float sqrt = ((float) Math.sqrt(((f5 / ((float) Math.sqrt(d4))) * pVar.b()) / (pVar.a() + 4.0f))) * 50.0f;
        float f7 = (1.7f * f4) / ((0.007f * f4) + 1.0f);
        double d7 = d6;
        Double.isNaN(d7);
        float log1p = ((float) Math.log1p(d7 * 0.0228d)) * 43.85965f;
        double d8 = (3.1415927f * f6) / 180.0f;
        return new b(f6, f5, f4, b4, d6, sqrt, f7, log1p * ((float) Math.cos(d8)), log1p * ((float) Math.sin(d8)));
    }

    public static b f(float f4, float f5, float f6) {
        return g(f4, f5, f6, p.f14629k);
    }

    public static b g(float f4, float f5, float f6, p pVar) {
        double d4 = f5;
        double d5 = f6;
        double d6 = pVar.d();
        Double.isNaN(d6);
        double expm1 = (Math.expm1(Math.hypot(d4, d5) * 0.02280000038444996d) / 0.02280000038444996d) / d6;
        double atan2 = Math.atan2(d5, d4) * 57.29577951308232d;
        if (atan2 < 0.0d) {
            atan2 += 360.0d;
        }
        return e(f4 / (1.0f - ((f4 - 100.0f) * 0.007f)), (float) expm1, (float) atan2, pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float a(b bVar) {
        float n4 = n() - bVar.n();
        float h4 = h() - bVar.h();
        float i2 = i() - bVar.i();
        return (float) (Math.pow(Math.sqrt((n4 * n4) + (h4 * h4) + (i2 * i2)), 0.63d) * 1.41d);
    }

    public float h() {
        return this.f14501h;
    }

    public float i() {
        return this.f14502i;
    }

    public float j() {
        return this.f14495b;
    }

    public float k() {
        return this.f14494a;
    }

    public int l() {
        return r(p.f14629k);
    }

    public float m() {
        return this.f14496c;
    }

    public float n() {
        return this.f14500g;
    }

    public float o() {
        return this.f14498e;
    }

    public float p() {
        return this.f14497d;
    }

    public float q() {
        return this.f14499f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int r(p pVar) {
        float f4;
        double d4;
        double d5;
        double d6;
        double d7;
        double d8;
        double d9;
        if (j() == 0.0d || m() == 0.0d) {
            f4 = 0.0f;
        } else {
            float j4 = j();
            double m4 = m();
            Double.isNaN(m4);
            f4 = j4 / ((float) Math.sqrt(m4 / 100.0d));
        }
        double d10 = f4;
        double pow = Math.pow(1.64d - Math.pow(0.29d, pVar.e()), 0.73d);
        Double.isNaN(d10);
        float pow2 = (float) Math.pow(d10 / pow, 1.1111111111111112d);
        double k4 = (k() * 3.1415927f) / 180.0f;
        Double.isNaN(k4);
        float a4 = pVar.a();
        double m5 = m();
        Double.isNaN(m5);
        double b4 = pVar.b();
        Double.isNaN(b4);
        double d11 = 1.0d / b4;
        double j5 = pVar.j();
        Double.isNaN(j5);
        float pow3 = a4 * ((float) Math.pow(m5 / 100.0d, d11 / j5));
        float cos = ((float) (Math.cos(2.0d + k4) + 3.8d)) * 0.25f * 3846.1538f * pVar.g() * pVar.h();
        float f5 = pow3 / pVar.f();
        float sin = (float) Math.sin(k4);
        float cos2 = (float) Math.cos(k4);
        float f6 = (((0.305f + f5) * 23.0f) * pow2) / (((cos * 23.0f) + ((11.0f * pow2) * cos2)) + ((pow2 * 108.0f) * sin));
        float f7 = cos2 * f6;
        float f8 = f6 * sin;
        float f9 = f5 * 460.0f;
        float f10 = (((451.0f * f7) + f9) + (288.0f * f8)) / 1403.0f;
        float f11 = ((f9 - (891.0f * f7)) - (261.0f * f8)) / 1403.0f;
        float f12 = ((f9 - (f7 * 220.0f)) - (f8 * 6300.0f)) / 1403.0f;
        Double.isNaN(Math.abs(f10));
        Double.isNaN(Math.abs(f10));
        float signum = Math.signum(f10) * (100.0f / pVar.c()) * ((float) Math.pow((float) Math.max(0.0d, (d4 * 27.13d) / (400.0d - d5)), 2.380952380952381d));
        Double.isNaN(Math.abs(f11));
        Double.isNaN(Math.abs(f11));
        float signum2 = Math.signum(f11) * (100.0f / pVar.c()) * ((float) Math.pow((float) Math.max(0.0d, (d6 * 27.13d) / (400.0d - d7)), 2.380952380952381d));
        Double.isNaN(Math.abs(f12));
        Double.isNaN(Math.abs(f12));
        float signum3 = Math.signum(f12) * (100.0f / pVar.c()) * ((float) Math.pow((float) Math.max(0.0d, (d8 * 27.13d) / (400.0d - d9)), 2.380952380952381d));
        float f13 = signum / pVar.i()[0];
        float f14 = signum2 / pVar.i()[1];
        float f15 = signum3 / pVar.i()[2];
        float[][] fArr = f14493k;
        return f.i((fArr[0][0] * f13) + (fArr[0][1] * f14) + (fArr[0][2] * f15), (fArr[1][0] * f13) + (fArr[1][1] * f14) + (fArr[1][2] * f15), (f13 * fArr[2][0]) + (f14 * fArr[2][1]) + (f15 * fArr[2][2]));
    }
}
