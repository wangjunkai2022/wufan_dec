package androidx.core.content.res;

import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.ColorUtils;
import kotlin.jvm.internal.DoubleCompanionObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class CamColor {

    /* renamed from: j  reason: collision with root package name */
    private static final float f4180j = 0.2f;

    /* renamed from: k  reason: collision with root package name */
    private static final float f4181k = 1.0f;

    /* renamed from: l  reason: collision with root package name */
    private static final float f4182l = 0.4f;

    /* renamed from: m  reason: collision with root package name */
    private static final float f4183m = 0.01f;

    /* renamed from: a  reason: collision with root package name */
    private final float f4184a;

    /* renamed from: b  reason: collision with root package name */
    private final float f4185b;

    /* renamed from: c  reason: collision with root package name */
    private final float f4186c;

    /* renamed from: d  reason: collision with root package name */
    private final float f4187d;

    /* renamed from: e  reason: collision with root package name */
    private final float f4188e;

    /* renamed from: f  reason: collision with root package name */
    private final float f4189f;

    /* renamed from: g  reason: collision with root package name */
    private final float f4190g;

    /* renamed from: h  reason: collision with root package name */
    private final float f4191h;

    /* renamed from: i  reason: collision with root package name */
    private final float f4192i;

    CamColor(float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12) {
        this.f4184a = f4;
        this.f4185b = f5;
        this.f4186c = f6;
        this.f4187d = f7;
        this.f4188e = f8;
        this.f4189f = f9;
        this.f4190g = f10;
        this.f4191h = f11;
        this.f4192i = f12;
    }

    @Nullable
    private static CamColor b(@FloatRange(from = 0.0d, to = 360.0d) float f4, @FloatRange(from = 0.0d, to = Double.POSITIVE_INFINITY, toInclusive = false) float f5, @FloatRange(from = 0.0d, to = 100.0d) float f6) {
        float f7 = 1000.0f;
        CamColor camColor = null;
        float f8 = 1000.0f;
        float f9 = 100.0f;
        float f10 = 0.0f;
        while (Math.abs(f10 - f9) > f4183m) {
            float f11 = ((f9 - f10) / 2.0f) + f10;
            int s3 = e(f11, f5, f4).s();
            float b4 = CamUtils.b(s3);
            float abs = Math.abs(f6 - b4);
            if (abs < 0.2f) {
                CamColor c4 = c(s3);
                float a4 = c4.a(e(c4.k(), c4.i(), f4));
                if (a4 <= 1.0f) {
                    camColor = c4;
                    f7 = abs;
                    f8 = a4;
                }
            }
            if (f7 == 0.0f && f8 == 0.0f) {
                break;
            } else if (b4 < f6) {
                f10 = f11;
            } else {
                f9 = f11;
            }
        }
        return camColor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static CamColor c(@ColorInt int i2) {
        return d(i2, ViewingConditions.f4237k);
    }

    @NonNull
    static CamColor d(@ColorInt int i2, @NonNull ViewingConditions viewingConditions) {
        float f4;
        double d4;
        float[] f5 = CamUtils.f(i2);
        float[][] fArr = CamUtils.f4193a;
        float f6 = (f5[0] * fArr[0][0]) + (f5[1] * fArr[0][1]) + (f5[2] * fArr[0][2]);
        float f7 = (f5[0] * fArr[1][0]) + (f5[1] * fArr[1][1]) + (f5[2] * fArr[1][2]);
        float f8 = (f5[0] * fArr[2][0]) + (f5[1] * fArr[2][1]) + (f5[2] * fArr[2][2]);
        float f9 = viewingConditions.i()[0] * f6;
        float f10 = viewingConditions.i()[1] * f7;
        float f11 = viewingConditions.i()[2] * f8;
        double c4 = viewingConditions.c() * Math.abs(f9);
        Double.isNaN(c4);
        float pow = (float) Math.pow(c4 / 100.0d, 0.42d);
        double c5 = viewingConditions.c() * Math.abs(f10);
        Double.isNaN(c5);
        float pow2 = (float) Math.pow(c5 / 100.0d, 0.42d);
        double c6 = viewingConditions.c() * Math.abs(f11);
        Double.isNaN(c6);
        float pow3 = (float) Math.pow(c6 / 100.0d, 0.42d);
        float signum = ((Math.signum(f9) * 400.0f) * pow) / (pow + 27.13f);
        float signum2 = ((Math.signum(f10) * 400.0f) * pow2) / (pow2 + 27.13f);
        float signum3 = ((Math.signum(f11) * 400.0f) * pow3) / (pow3 + 27.13f);
        double d5 = signum;
        Double.isNaN(d5);
        double d6 = signum2;
        Double.isNaN(d6);
        double d7 = (d5 * 11.0d) + (d6 * (-12.0d));
        double d8 = signum3;
        Double.isNaN(d8);
        double d9 = signum + signum2;
        Double.isNaN(d8);
        Double.isNaN(d9);
        float f12 = ((float) (d9 - (d8 * 2.0d))) / 9.0f;
        float f13 = signum2 * 20.0f;
        float f14 = (((signum * 20.0f) + f13) + (21.0f * signum3)) / 20.0f;
        float f15 = (((signum * 40.0f) + f13) + signum3) / 20.0f;
        float atan2 = (((float) Math.atan2(f12, ((float) (d7 + d8)) / 11.0f)) * 180.0f) / 3.1415927f;
        if (atan2 < 0.0f) {
            atan2 += 360.0f;
        } else if (atan2 >= 360.0f) {
            atan2 -= 360.0f;
        }
        float f16 = atan2;
        float f17 = (3.1415927f * f16) / 180.0f;
        float pow4 = ((float) Math.pow((f15 * viewingConditions.f()) / viewingConditions.a(), viewingConditions.b() * viewingConditions.j())) * 100.0f;
        float d10 = viewingConditions.d() * (4.0f / viewingConditions.b()) * ((float) Math.sqrt(pow4 / 100.0f)) * (viewingConditions.a() + 4.0f);
        Double.isNaN(((double) f16) < 20.14d ? 360.0f + f16 : f16);
        float pow5 = ((float) Math.pow(1.64d - Math.pow(0.29d, viewingConditions.e()), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos(((d4 * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * viewingConditions.g()) * viewingConditions.h()) * ((float) Math.sqrt((f4 * f4) + (f12 * f12)))) / (f14 + 0.305f), 0.9d));
        double d11 = pow4;
        Double.isNaN(d11);
        float sqrt = pow5 * ((float) Math.sqrt(d11 / 100.0d));
        float d12 = sqrt * viewingConditions.d();
        float sqrt2 = ((float) Math.sqrt((pow5 * viewingConditions.b()) / (viewingConditions.a() + 4.0f))) * 50.0f;
        float f18 = (1.7f * pow4) / ((0.007f * pow4) + 1.0f);
        float log = ((float) Math.log((0.0228f * d12) + 1.0f)) * 43.85965f;
        double d13 = f17;
        return new CamColor(f16, sqrt, pow4, d10, d12, sqrt2, f18, log * ((float) Math.cos(d13)), log * ((float) Math.sin(d13)));
    }

    @NonNull
    private static CamColor e(@FloatRange(from = 0.0d, to = 100.0d) float f4, @FloatRange(from = 0.0d, to = Double.POSITIVE_INFINITY, toInclusive = false) float f5, @FloatRange(from = 0.0d, to = 360.0d) float f6) {
        return f(f4, f5, f6, ViewingConditions.f4237k);
    }

    @NonNull
    private static CamColor f(@FloatRange(from = 0.0d, to = 100.0d) float f4, @FloatRange(from = 0.0d, to = Double.POSITIVE_INFINITY, toInclusive = false) float f5, @FloatRange(from = 0.0d, to = 360.0d) float f6, ViewingConditions viewingConditions) {
        double d4;
        double d5 = f4;
        Double.isNaN(d5);
        float b4 = (4.0f / viewingConditions.b()) * ((float) Math.sqrt(d5 / 100.0d)) * (viewingConditions.a() + 4.0f) * viewingConditions.d();
        float d6 = f5 * viewingConditions.d();
        float sqrt = ((float) Math.sqrt(((f5 / ((float) Math.sqrt(d4))) * viewingConditions.b()) / (viewingConditions.a() + 4.0f))) * 50.0f;
        float f7 = (1.7f * f4) / ((0.007f * f4) + 1.0f);
        double d7 = d6;
        Double.isNaN(d7);
        float log = ((float) Math.log((d7 * 0.0228d) + 1.0d)) * 43.85965f;
        double d8 = (3.1415927f * f6) / 180.0f;
        return new CamColor(f6, f5, f4, b4, d6, sqrt, f7, log * ((float) Math.cos(d8)), log * ((float) Math.sin(d8)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int p(@FloatRange(from = 0.0d, to = 360.0d) float f4, @FloatRange(from = 0.0d, to = Double.POSITIVE_INFINITY, toInclusive = false) float f5, @FloatRange(from = 0.0d, to = 100.0d) float f6) {
        return q(f4, f5, f6, ViewingConditions.f4237k);
    }

    @ColorInt
    static int q(@FloatRange(from = 0.0d, to = 360.0d) float f4, @FloatRange(from = 0.0d, to = Double.POSITIVE_INFINITY, toInclusive = false) float f5, @FloatRange(from = 0.0d, to = 100.0d) float f6, @NonNull ViewingConditions viewingConditions) {
        if (f5 >= 1.0d && Math.round(f6) > 0.0d && Math.round(f6) < 100.0d) {
            float min = f4 < 0.0f ? 0.0f : Math.min(360.0f, f4);
            float f7 = f5;
            CamColor camColor = null;
            float f8 = 0.0f;
            boolean z3 = true;
            while (Math.abs(f8 - f5) >= f4182l) {
                CamColor b4 = b(min, f7, f6);
                if (z3) {
                    if (b4 != null) {
                        return b4.r(viewingConditions);
                    }
                    z3 = false;
                } else if (b4 == null) {
                    f5 = f7;
                } else {
                    f8 = f7;
                    camColor = b4;
                }
                f7 = ((f5 - f8) / 2.0f) + f8;
            }
            if (camColor == null) {
                return CamUtils.a(f6);
            }
            return camColor.r(viewingConditions);
        }
        return CamUtils.a(f6);
    }

    float a(@NonNull CamColor camColor) {
        float l4 = l() - camColor.l();
        float g4 = g() - camColor.g();
        float h4 = h() - camColor.h();
        return (float) (Math.pow(Math.sqrt((l4 * l4) + (g4 * g4) + (h4 * h4)), 0.63d) * 1.41d);
    }

    @FloatRange(from = DoubleCompanionObject.NEGATIVE_INFINITY, fromInclusive = false, to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    float g() {
        return this.f4191h;
    }

    @FloatRange(from = DoubleCompanionObject.NEGATIVE_INFINITY, fromInclusive = false, to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    float h() {
        return this.f4192i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @FloatRange(from = 0.0d, to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    public float i() {
        return this.f4185b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @FloatRange(from = 0.0d, to = 360.0d, toInclusive = false)
    public float j() {
        return this.f4184a;
    }

    @FloatRange(from = 0.0d, to = 100.0d)
    float k() {
        return this.f4186c;
    }

    @FloatRange(from = 0.0d, to = 100.0d)
    float l() {
        return this.f4190g;
    }

    @FloatRange(from = 0.0d, to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    float m() {
        return this.f4188e;
    }

    @FloatRange(from = 0.0d, to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    float n() {
        return this.f4187d;
    }

    @FloatRange(from = 0.0d, to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    float o() {
        return this.f4189f;
    }

    @ColorInt
    int r(@NonNull ViewingConditions viewingConditions) {
        float f4;
        double d4;
        double d5;
        double d6;
        double d7;
        double d8;
        double d9;
        if (i() == 0.0d || k() == 0.0d) {
            f4 = 0.0f;
        } else {
            float i2 = i();
            double k4 = k();
            Double.isNaN(k4);
            f4 = i2 / ((float) Math.sqrt(k4 / 100.0d));
        }
        double d10 = f4;
        double pow = Math.pow(1.64d - Math.pow(0.29d, viewingConditions.e()), 0.73d);
        Double.isNaN(d10);
        float pow2 = (float) Math.pow(d10 / pow, 1.1111111111111112d);
        double j4 = (j() * 3.1415927f) / 180.0f;
        Double.isNaN(j4);
        float a4 = viewingConditions.a();
        double k5 = k();
        Double.isNaN(k5);
        double b4 = viewingConditions.b();
        Double.isNaN(b4);
        double d11 = 1.0d / b4;
        double j5 = viewingConditions.j();
        Double.isNaN(j5);
        float pow3 = a4 * ((float) Math.pow(k5 / 100.0d, d11 / j5));
        float cos = ((float) (Math.cos(2.0d + j4) + 3.8d)) * 0.25f * 3846.1538f * viewingConditions.g() * viewingConditions.h();
        float f5 = pow3 / viewingConditions.f();
        float sin = (float) Math.sin(j4);
        float cos2 = (float) Math.cos(j4);
        float f6 = (((0.305f + f5) * 23.0f) * pow2) / (((cos * 23.0f) + ((11.0f * pow2) * cos2)) + ((pow2 * 108.0f) * sin));
        float f7 = cos2 * f6;
        float f8 = f6 * sin;
        float f9 = f5 * 460.0f;
        float f10 = (((451.0f * f7) + f9) + (288.0f * f8)) / 1403.0f;
        float f11 = ((f9 - (891.0f * f7)) - (261.0f * f8)) / 1403.0f;
        float f12 = ((f9 - (f7 * 220.0f)) - (f8 * 6300.0f)) / 1403.0f;
        Double.isNaN(Math.abs(f10));
        Double.isNaN(Math.abs(f10));
        float signum = Math.signum(f10) * (100.0f / viewingConditions.c()) * ((float) Math.pow((float) Math.max(0.0d, (d4 * 27.13d) / (400.0d - d5)), 2.380952380952381d));
        Double.isNaN(Math.abs(f11));
        Double.isNaN(Math.abs(f11));
        float signum2 = Math.signum(f11) * (100.0f / viewingConditions.c()) * ((float) Math.pow((float) Math.max(0.0d, (d6 * 27.13d) / (400.0d - d7)), 2.380952380952381d));
        Double.isNaN(Math.abs(f12));
        Double.isNaN(Math.abs(f12));
        float signum3 = Math.signum(f12) * (100.0f / viewingConditions.c()) * ((float) Math.pow((float) Math.max(0.0d, (d8 * 27.13d) / (400.0d - d9)), 2.380952380952381d));
        float f13 = signum / viewingConditions.i()[0];
        float f14 = signum2 / viewingConditions.i()[1];
        float f15 = signum3 / viewingConditions.i()[2];
        float[][] fArr = CamUtils.f4194b;
        return ColorUtils.XYZToColor((fArr[0][0] * f13) + (fArr[0][1] * f14) + (fArr[0][2] * f15), (fArr[1][0] * f13) + (fArr[1][1] * f14) + (fArr[1][2] * f15), (f13 * fArr[2][0]) + (f14 * fArr[2][1]) + (f15 * fArr[2][2]));
    }

    @ColorInt
    int s() {
        return r(ViewingConditions.f4237k);
    }
}
