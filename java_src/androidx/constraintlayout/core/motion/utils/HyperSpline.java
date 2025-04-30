package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;
/* loaded from: classes.dex */
public class HyperSpline {

    /* renamed from: a  reason: collision with root package name */
    int f2107a;

    /* renamed from: b  reason: collision with root package name */
    Cubic[][] f2108b;

    /* renamed from: c  reason: collision with root package name */
    int f2109c;

    /* renamed from: d  reason: collision with root package name */
    double[] f2110d;

    /* renamed from: e  reason: collision with root package name */
    double f2111e;

    /* renamed from: f  reason: collision with root package name */
    double[][] f2112f;

    /* loaded from: classes.dex */
    public static class Cubic {

        /* renamed from: a  reason: collision with root package name */
        double f2113a;

        /* renamed from: b  reason: collision with root package name */
        double f2114b;

        /* renamed from: c  reason: collision with root package name */
        double f2115c;

        /* renamed from: d  reason: collision with root package name */
        double f2116d;

        public Cubic(double d4, double d5, double d6, double d7) {
            this.f2113a = d4;
            this.f2114b = d5;
            this.f2115c = d6;
            this.f2116d = d7;
        }

        public double eval(double d4) {
            return (((((this.f2116d * d4) + this.f2115c) * d4) + this.f2114b) * d4) + this.f2113a;
        }

        public double vel(double d4) {
            return (((this.f2116d * 3.0d * d4) + (this.f2115c * 2.0d)) * d4) + this.f2114b;
        }
    }

    public HyperSpline(double[][] dArr) {
        setup(dArr);
    }

    static Cubic[] a(int i2, double[] dArr) {
        double[] dArr2 = new double[i2];
        double[] dArr3 = new double[i2];
        double[] dArr4 = new double[i2];
        int i4 = i2 - 1;
        int i5 = 0;
        dArr2[0] = 0.5d;
        int i6 = 1;
        for (int i7 = 1; i7 < i4; i7++) {
            dArr2[i7] = 1.0d / (4.0d - dArr2[i7 - 1]);
        }
        int i8 = i4 - 1;
        dArr2[i4] = 1.0d / (2.0d - dArr2[i8]);
        dArr3[0] = (dArr[1] - dArr[0]) * 3.0d * dArr2[0];
        while (i6 < i4) {
            int i9 = i6 + 1;
            int i10 = i6 - 1;
            dArr3[i6] = (((dArr[i9] - dArr[i10]) * 3.0d) - dArr3[i10]) * dArr2[i6];
            i6 = i9;
        }
        dArr3[i4] = (((dArr[i4] - dArr[i8]) * 3.0d) - dArr3[i8]) * dArr2[i4];
        dArr4[i4] = dArr3[i4];
        while (i8 >= 0) {
            dArr4[i8] = dArr3[i8] - (dArr2[i8] * dArr4[i8 + 1]);
            i8--;
        }
        Cubic[] cubicArr = new Cubic[i4];
        while (i5 < i4) {
            int i11 = i5 + 1;
            cubicArr[i5] = new Cubic((float) dArr[i5], dArr4[i5], (((dArr[i11] - dArr[i5]) * 3.0d) - (dArr4[i5] * 2.0d)) - dArr4[i11], ((dArr[i5] - dArr[i11]) * 2.0d) + dArr4[i5] + dArr4[i11]);
            i5 = i11;
        }
        return cubicArr;
    }

    public double approxLength(Cubic[] cubicArr) {
        int i2;
        int length = cubicArr.length;
        double[] dArr = new double[cubicArr.length];
        double d4 = 0.0d;
        double d5 = 0.0d;
        double d6 = 0.0d;
        while (true) {
            i2 = 0;
            if (d5 >= 1.0d) {
                break;
            }
            double d7 = 0.0d;
            while (i2 < cubicArr.length) {
                double d8 = dArr[i2];
                double eval = cubicArr[i2].eval(d5);
                dArr[i2] = eval;
                double d9 = d8 - eval;
                d7 += d9 * d9;
                i2++;
            }
            if (d5 > 0.0d) {
                d6 += Math.sqrt(d7);
            }
            d5 += 0.1d;
        }
        while (i2 < cubicArr.length) {
            double d10 = dArr[i2];
            double eval2 = cubicArr[i2].eval(1.0d);
            dArr[i2] = eval2;
            double d11 = d10 - eval2;
            d4 += d11 * d11;
            i2++;
        }
        return d6 + Math.sqrt(d4);
    }

    public void getPos(double d4, double[] dArr) {
        double d5 = d4 * this.f2111e;
        int i2 = 0;
        while (true) {
            double[] dArr2 = this.f2110d;
            if (i2 >= dArr2.length - 1 || dArr2[i2] >= d5) {
                break;
            }
            d5 -= dArr2[i2];
            i2++;
        }
        for (int i4 = 0; i4 < dArr.length; i4++) {
            dArr[i4] = this.f2108b[i4][i2].eval(d5 / this.f2110d[i2]);
        }
    }

    public void getVelocity(double d4, double[] dArr) {
        double d5 = d4 * this.f2111e;
        int i2 = 0;
        while (true) {
            double[] dArr2 = this.f2110d;
            if (i2 >= dArr2.length - 1 || dArr2[i2] >= d5) {
                break;
            }
            d5 -= dArr2[i2];
            i2++;
        }
        for (int i4 = 0; i4 < dArr.length; i4++) {
            dArr[i4] = this.f2108b[i4][i2].vel(d5 / this.f2110d[i2]);
        }
    }

    public void setup(double[][] dArr) {
        int i2;
        int length = dArr[0].length;
        this.f2109c = length;
        int length2 = dArr.length;
        this.f2107a = length2;
        this.f2112f = (double[][]) Array.newInstance(double.class, length, length2);
        this.f2108b = new Cubic[this.f2109c];
        for (int i4 = 0; i4 < this.f2109c; i4++) {
            for (int i5 = 0; i5 < this.f2107a; i5++) {
                this.f2112f[i4][i5] = dArr[i5][i4];
            }
        }
        int i6 = 0;
        while (true) {
            i2 = this.f2109c;
            if (i6 >= i2) {
                break;
            }
            Cubic[][] cubicArr = this.f2108b;
            double[][] dArr2 = this.f2112f;
            cubicArr[i6] = a(dArr2[i6].length, dArr2[i6]);
            i6++;
        }
        this.f2110d = new double[this.f2107a - 1];
        this.f2111e = 0.0d;
        Cubic[] cubicArr2 = new Cubic[i2];
        for (int i7 = 0; i7 < this.f2110d.length; i7++) {
            for (int i8 = 0; i8 < this.f2109c; i8++) {
                cubicArr2[i8] = this.f2108b[i8][i7];
            }
            double d4 = this.f2111e;
            double[] dArr3 = this.f2110d;
            double approxLength = approxLength(cubicArr2);
            dArr3[i7] = approxLength;
            this.f2111e = d4 + approxLength;
        }
    }

    public HyperSpline() {
    }

    public void getPos(double d4, float[] fArr) {
        double d5 = d4 * this.f2111e;
        int i2 = 0;
        while (true) {
            double[] dArr = this.f2110d;
            if (i2 >= dArr.length - 1 || dArr[i2] >= d5) {
                break;
            }
            d5 -= dArr[i2];
            i2++;
        }
        for (int i4 = 0; i4 < fArr.length; i4++) {
            fArr[i4] = (float) this.f2108b[i4][i2].eval(d5 / this.f2110d[i2]);
        }
    }

    public double getPos(double d4, int i2) {
        double[] dArr;
        double d5 = d4 * this.f2111e;
        int i4 = 0;
        while (true) {
            dArr = this.f2110d;
            if (i4 >= dArr.length - 1 || dArr[i4] >= d5) {
                break;
            }
            d5 -= dArr[i4];
            i4++;
        }
        return this.f2108b[i2][i4].eval(d5 / dArr[i4]);
    }
}
