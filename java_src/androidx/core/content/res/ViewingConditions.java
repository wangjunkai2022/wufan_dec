package androidx.core.content.res;

import androidx.annotation.NonNull;
/* loaded from: classes.dex */
final class ViewingConditions {

    /* renamed from: k  reason: collision with root package name */
    static final ViewingConditions f4237k;

    /* renamed from: a  reason: collision with root package name */
    private final float f4238a;

    /* renamed from: b  reason: collision with root package name */
    private final float f4239b;

    /* renamed from: c  reason: collision with root package name */
    private final float f4240c;

    /* renamed from: d  reason: collision with root package name */
    private final float f4241d;

    /* renamed from: e  reason: collision with root package name */
    private final float f4242e;

    /* renamed from: f  reason: collision with root package name */
    private final float f4243f;

    /* renamed from: g  reason: collision with root package name */
    private final float[] f4244g;

    /* renamed from: h  reason: collision with root package name */
    private final float f4245h;

    /* renamed from: i  reason: collision with root package name */
    private final float f4246i;

    /* renamed from: j  reason: collision with root package name */
    private final float f4247j;

    static {
        float[] fArr = CamUtils.f4195c;
        double h4 = CamUtils.h(50.0f);
        Double.isNaN(h4);
        f4237k = k(fArr, (float) ((h4 * 63.66197723675813d) / 100.0d), 50.0f, 2.0f, false);
    }

    private ViewingConditions(float f4, float f5, float f6, float f7, float f8, float f9, float[] fArr, float f10, float f11, float f12) {
        this.f4243f = f4;
        this.f4238a = f5;
        this.f4239b = f6;
        this.f4240c = f7;
        this.f4241d = f8;
        this.f4242e = f9;
        this.f4244g = fArr;
        this.f4245h = f10;
        this.f4246i = f11;
        this.f4247j = f12;
    }

    @NonNull
    static ViewingConditions k(@NonNull float[] fArr, float f4, float f5, float f6, boolean z3) {
        float[][] fArr2 = CamUtils.f4193a;
        float f7 = (fArr[0] * fArr2[0][0]) + (fArr[1] * fArr2[0][1]) + (fArr[2] * fArr2[0][2]);
        float f8 = (fArr[0] * fArr2[1][0]) + (fArr[1] * fArr2[1][1]) + (fArr[2] * fArr2[1][2]);
        float f9 = (fArr[0] * fArr2[2][0]) + (fArr[1] * fArr2[2][1]) + (fArr[2] * fArr2[2][2]);
        float f10 = (f6 / 10.0f) + 0.8f;
        float d4 = ((double) f10) >= 0.9d ? CamUtils.d(0.59f, 0.69f, (f10 - 0.9f) * 10.0f) : CamUtils.d(0.525f, 0.59f, (f10 - 0.8f) * 10.0f);
        float exp = z3 ? 1.0f : (1.0f - (((float) Math.exp(((-f4) - 42.0f) / 92.0f)) * 0.2777778f)) * f10;
        double d5 = exp;
        if (d5 > 1.0d) {
            exp = 1.0f;
        } else if (d5 < 0.0d) {
            exp = 0.0f;
        }
        float[] fArr3 = {(((100.0f / f7) * exp) + 1.0f) - exp, (((100.0f / f8) * exp) + 1.0f) - exp, (((100.0f / f9) * exp) + 1.0f) - exp};
        float f11 = 1.0f / ((5.0f * f4) + 1.0f);
        float f12 = f11 * f11 * f11 * f11;
        float f13 = 1.0f - f12;
        double d6 = f4;
        Double.isNaN(d6);
        float cbrt = (f12 * f4) + (0.1f * f13 * f13 * ((float) Math.cbrt(d6 * 5.0d)));
        float h4 = CamUtils.h(f5) / fArr[1];
        double d7 = h4;
        float sqrt = ((float) Math.sqrt(d7)) + 1.48f;
        float pow = 0.725f / ((float) Math.pow(d7, 0.2d));
        double d8 = fArr3[0] * cbrt * f7;
        Double.isNaN(d8);
        double d9 = fArr3[1] * cbrt * f8;
        Double.isNaN(d9);
        double d10 = fArr3[2] * cbrt * f9;
        Double.isNaN(d10);
        float[] fArr4 = {(float) Math.pow(d8 / 100.0d, 0.42d), (float) Math.pow(d9 / 100.0d, 0.42d), (float) Math.pow(d10 / 100.0d, 0.42d)};
        float[] fArr5 = {(fArr4[0] * 400.0f) / (fArr4[0] + 27.13f), (fArr4[1] * 400.0f) / (fArr4[1] + 27.13f), (fArr4[2] * 400.0f) / (fArr4[2] + 27.13f)};
        return new ViewingConditions(h4, ((fArr5[0] * 2.0f) + fArr5[1] + (fArr5[2] * 0.05f)) * pow, pow, pow, d4, f10, fArr3, cbrt, (float) Math.pow(cbrt, 0.25d), sqrt);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float a() {
        return this.f4238a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float b() {
        return this.f4241d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float c() {
        return this.f4245h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float d() {
        return this.f4246i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float e() {
        return this.f4243f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float f() {
        return this.f4239b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float g() {
        return this.f4242e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float h() {
        return this.f4240c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public float[] i() {
        return this.f4244g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float j() {
        return this.f4247j;
    }
}
