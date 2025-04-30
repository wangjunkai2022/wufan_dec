package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;
import java.util.Arrays;
/* loaded from: classes.dex */
public class MonotonicCurveFit extends CurveFit {

    /* renamed from: f  reason: collision with root package name */
    private static final String f2171f = "MonotonicCurveFit";

    /* renamed from: a  reason: collision with root package name */
    private double[] f2172a;

    /* renamed from: b  reason: collision with root package name */
    private double[][] f2173b;

    /* renamed from: c  reason: collision with root package name */
    private double[][] f2174c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f2175d = true;

    /* renamed from: e  reason: collision with root package name */
    double[] f2176e;

    public MonotonicCurveFit(double[] dArr, double[][] dArr2) {
        int length = dArr.length;
        int length2 = dArr2[0].length;
        this.f2176e = new double[length2];
        int i2 = length - 1;
        double[][] dArr3 = (double[][]) Array.newInstance(double.class, i2, length2);
        double[][] dArr4 = (double[][]) Array.newInstance(double.class, length, length2);
        for (int i4 = 0; i4 < length2; i4++) {
            int i5 = 0;
            while (i5 < i2) {
                int i6 = i5 + 1;
                dArr3[i5][i4] = (dArr2[i6][i4] - dArr2[i5][i4]) / (dArr[i6] - dArr[i5]);
                if (i5 == 0) {
                    dArr4[i5][i4] = dArr3[i5][i4];
                } else {
                    dArr4[i5][i4] = (dArr3[i5 - 1][i4] + dArr3[i5][i4]) * 0.5d;
                }
                i5 = i6;
            }
            dArr4[i2][i4] = dArr3[length - 2][i4];
        }
        for (int i7 = 0; i7 < i2; i7++) {
            for (int i8 = 0; i8 < length2; i8++) {
                if (dArr3[i7][i8] == 0.0d) {
                    dArr4[i7][i8] = 0.0d;
                    dArr4[i7 + 1][i8] = 0.0d;
                } else {
                    double d4 = dArr4[i7][i8] / dArr3[i7][i8];
                    int i9 = i7 + 1;
                    double d5 = dArr4[i9][i8] / dArr3[i7][i8];
                    double hypot = Math.hypot(d4, d5);
                    if (hypot > 9.0d) {
                        double d6 = 3.0d / hypot;
                        dArr4[i7][i8] = d4 * d6 * dArr3[i7][i8];
                        dArr4[i9][i8] = d6 * d5 * dArr3[i7][i8];
                    }
                }
            }
        }
        this.f2172a = dArr;
        this.f2173b = dArr2;
        this.f2174c = dArr4;
    }

    private static MonotonicCurveFit a(double[] dArr) {
        int length = (dArr.length * 3) - 2;
        int length2 = dArr.length - 1;
        double d4 = length2;
        Double.isNaN(d4);
        double d5 = 1.0d / d4;
        double[][] dArr2 = (double[][]) Array.newInstance(double.class, length, 1);
        double[] dArr3 = new double[length];
        for (int i2 = 0; i2 < dArr.length; i2++) {
            double d6 = dArr[i2];
            int i4 = i2 + length2;
            dArr2[i4][0] = d6;
            double d7 = i2;
            Double.isNaN(d7);
            double d8 = d7 * d5;
            dArr3[i4] = d8;
            if (i2 > 0) {
                int i5 = (length2 * 2) + i2;
                dArr2[i5][0] = d6 + 1.0d;
                dArr3[i5] = d8 + 1.0d;
                int i6 = i2 - 1;
                dArr2[i6][0] = (d6 - 1.0d) - d5;
                dArr3[i6] = (d8 - 1.0d) - d5;
            }
        }
        return new MonotonicCurveFit(dArr3, dArr2);
    }

    private static double b(double d4, double d5, double d6, double d7, double d8, double d9) {
        double d10 = d5 * d5;
        double d11 = d5 * 6.0d;
        double d12 = 3.0d * d4;
        return ((((((((((-6.0d) * d10) * d7) + (d11 * d7)) + ((6.0d * d10) * d6)) - (d11 * d6)) + ((d12 * d9) * d10)) + ((d12 * d8) * d10)) - (((2.0d * d4) * d9) * d5)) - (((4.0d * d4) * d8) * d5)) + (d4 * d8);
    }

    public static MonotonicCurveFit buildWave(String str) {
        double[] dArr = new double[str.length() / 2];
        int indexOf = str.indexOf(40) + 1;
        int indexOf2 = str.indexOf(44, indexOf);
        int i2 = 0;
        while (indexOf2 != -1) {
            dArr[i2] = Double.parseDouble(str.substring(indexOf, indexOf2).trim());
            indexOf = indexOf2 + 1;
            indexOf2 = str.indexOf(44, indexOf);
            i2++;
        }
        dArr[i2] = Double.parseDouble(str.substring(indexOf, str.indexOf(41, indexOf)).trim());
        return a(Arrays.copyOf(dArr, i2 + 1));
    }

    private static double c(double d4, double d5, double d6, double d7, double d8, double d9) {
        double d10 = d5 * d5;
        double d11 = d10 * d5;
        double d12 = 3.0d * d10;
        double d13 = d4 * d9;
        double d14 = d4 * d8;
        return (((((((((((-2.0d) * d11) * d7) + (d12 * d7)) + ((d11 * 2.0d) * d6)) - (d12 * d6)) + d6) + (d13 * d11)) + (d11 * d14)) - (d13 * d10)) - (((d4 * 2.0d) * d8) * d10)) + (d14 * d5);
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d4, double[] dArr) {
        double[] dArr2 = this.f2172a;
        int length = dArr2.length;
        int i2 = 0;
        int length2 = this.f2173b[0].length;
        if (this.f2175d) {
            if (d4 <= dArr2[0]) {
                getSlope(dArr2[0], this.f2176e);
                for (int i4 = 0; i4 < length2; i4++) {
                    dArr[i4] = this.f2173b[0][i4] + ((d4 - this.f2172a[0]) * this.f2176e[i4]);
                }
                return;
            }
            int i5 = length - 1;
            if (d4 >= dArr2[i5]) {
                getSlope(dArr2[i5], this.f2176e);
                while (i2 < length2) {
                    dArr[i2] = this.f2173b[i5][i2] + ((d4 - this.f2172a[i5]) * this.f2176e[i2]);
                    i2++;
                }
                return;
            }
        } else if (d4 <= dArr2[0]) {
            for (int i6 = 0; i6 < length2; i6++) {
                dArr[i6] = this.f2173b[0][i6];
            }
            return;
        } else {
            int i7 = length - 1;
            if (d4 >= dArr2[i7]) {
                while (i2 < length2) {
                    dArr[i2] = this.f2173b[i7][i2];
                    i2++;
                }
                return;
            }
        }
        int i8 = 0;
        while (i8 < length - 1) {
            if (d4 == this.f2172a[i8]) {
                for (int i9 = 0; i9 < length2; i9++) {
                    dArr[i9] = this.f2173b[i8][i9];
                }
            }
            double[] dArr3 = this.f2172a;
            int i10 = i8 + 1;
            if (d4 < dArr3[i10]) {
                double d5 = dArr3[i10] - dArr3[i8];
                double d6 = (d4 - dArr3[i8]) / d5;
                while (i2 < length2) {
                    double[][] dArr4 = this.f2173b;
                    double d7 = dArr4[i8][i2];
                    double d8 = dArr4[i10][i2];
                    double[][] dArr5 = this.f2174c;
                    dArr[i2] = c(d5, d6, d7, d8, dArr5[i8][i2], dArr5[i10][i2]);
                    i2++;
                }
                return;
            }
            i8 = i10;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getSlope(double d4, double[] dArr) {
        double d5;
        double[] dArr2 = this.f2172a;
        int length = dArr2.length;
        int length2 = this.f2173b[0].length;
        if (d4 <= dArr2[0]) {
            d5 = dArr2[0];
        } else {
            int i2 = length - 1;
            d5 = d4 >= dArr2[i2] ? dArr2[i2] : d4;
        }
        int i4 = 0;
        while (i4 < length - 1) {
            double[] dArr3 = this.f2172a;
            int i5 = i4 + 1;
            if (d5 <= dArr3[i5]) {
                double d6 = dArr3[i5] - dArr3[i4];
                double d7 = (d5 - dArr3[i4]) / d6;
                for (int i6 = 0; i6 < length2; i6++) {
                    double[][] dArr4 = this.f2173b;
                    double d8 = dArr4[i4][i6];
                    double d9 = dArr4[i5][i6];
                    double[][] dArr5 = this.f2174c;
                    dArr[i6] = b(d6, d7, d8, d9, dArr5[i4][i6], dArr5[i5][i6]) / d6;
                }
                return;
            }
            i4 = i5;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.f2172a;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getSlope(double d4, int i2) {
        double d5;
        double[] dArr = this.f2172a;
        int length = dArr.length;
        int i4 = 0;
        if (d4 < dArr[0]) {
            d5 = dArr[0];
        } else {
            int i5 = length - 1;
            d5 = d4 >= dArr[i5] ? dArr[i5] : d4;
        }
        while (i4 < length - 1) {
            double[] dArr2 = this.f2172a;
            int i6 = i4 + 1;
            if (d5 <= dArr2[i6]) {
                double d6 = dArr2[i6] - dArr2[i4];
                double[][] dArr3 = this.f2173b;
                double d7 = dArr3[i4][i2];
                double d8 = dArr3[i6][i2];
                double[][] dArr4 = this.f2174c;
                return b(d6, (d5 - dArr2[i4]) / d6, d7, d8, dArr4[i4][i2], dArr4[i6][i2]) / d6;
            }
            i4 = i6;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d4, float[] fArr) {
        double[] dArr = this.f2172a;
        int length = dArr.length;
        int i2 = 0;
        int length2 = this.f2173b[0].length;
        if (this.f2175d) {
            if (d4 <= dArr[0]) {
                getSlope(dArr[0], this.f2176e);
                for (int i4 = 0; i4 < length2; i4++) {
                    fArr[i4] = (float) (this.f2173b[0][i4] + ((d4 - this.f2172a[0]) * this.f2176e[i4]));
                }
                return;
            }
            int i5 = length - 1;
            if (d4 >= dArr[i5]) {
                getSlope(dArr[i5], this.f2176e);
                while (i2 < length2) {
                    fArr[i2] = (float) (this.f2173b[i5][i2] + ((d4 - this.f2172a[i5]) * this.f2176e[i2]));
                    i2++;
                }
                return;
            }
        } else if (d4 <= dArr[0]) {
            for (int i6 = 0; i6 < length2; i6++) {
                fArr[i6] = (float) this.f2173b[0][i6];
            }
            return;
        } else {
            int i7 = length - 1;
            if (d4 >= dArr[i7]) {
                while (i2 < length2) {
                    fArr[i2] = (float) this.f2173b[i7][i2];
                    i2++;
                }
                return;
            }
        }
        int i8 = 0;
        while (i8 < length - 1) {
            if (d4 == this.f2172a[i8]) {
                for (int i9 = 0; i9 < length2; i9++) {
                    fArr[i9] = (float) this.f2173b[i8][i9];
                }
            }
            double[] dArr2 = this.f2172a;
            int i10 = i8 + 1;
            if (d4 < dArr2[i10]) {
                double d5 = dArr2[i10] - dArr2[i8];
                double d6 = (d4 - dArr2[i8]) / d5;
                while (i2 < length2) {
                    double[][] dArr3 = this.f2173b;
                    double d7 = dArr3[i8][i2];
                    double d8 = dArr3[i10][i2];
                    double[][] dArr4 = this.f2174c;
                    fArr[i2] = (float) c(d5, d6, d7, d8, dArr4[i8][i2], dArr4[i10][i2]);
                    i2++;
                }
                return;
            }
            i8 = i10;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d4, int i2) {
        double[] dArr = this.f2172a;
        int length = dArr.length;
        int i4 = 0;
        if (this.f2175d) {
            if (d4 <= dArr[0]) {
                return this.f2173b[0][i2] + ((d4 - dArr[0]) * getSlope(dArr[0], i2));
            }
            int i5 = length - 1;
            if (d4 >= dArr[i5]) {
                return this.f2173b[i5][i2] + ((d4 - dArr[i5]) * getSlope(dArr[i5], i2));
            }
        } else if (d4 <= dArr[0]) {
            return this.f2173b[0][i2];
        } else {
            int i6 = length - 1;
            if (d4 >= dArr[i6]) {
                return this.f2173b[i6][i2];
            }
        }
        while (i4 < length - 1) {
            double[] dArr2 = this.f2172a;
            if (d4 == dArr2[i4]) {
                return this.f2173b[i4][i2];
            }
            int i7 = i4 + 1;
            if (d4 < dArr2[i7]) {
                double d5 = dArr2[i7] - dArr2[i4];
                double d6 = (d4 - dArr2[i4]) / d5;
                double[][] dArr3 = this.f2173b;
                double d7 = dArr3[i4][i2];
                double d8 = dArr3[i7][i2];
                double[][] dArr4 = this.f2174c;
                return c(d5, d6, d7, d8, dArr4[i4][i2], dArr4[i7][i2]);
            }
            i4 = i7;
        }
        return 0.0d;
    }
}
