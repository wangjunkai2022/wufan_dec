package androidx.constraintlayout.core.motion.utils;
/* loaded from: classes.dex */
public class LinearCurveFit extends CurveFit {

    /* renamed from: f  reason: collision with root package name */
    private static final String f2165f = "LinearCurveFit";

    /* renamed from: a  reason: collision with root package name */
    private double[] f2166a;

    /* renamed from: b  reason: collision with root package name */
    private double[][] f2167b;

    /* renamed from: c  reason: collision with root package name */
    private double f2168c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f2169d = true;

    /* renamed from: e  reason: collision with root package name */
    double[] f2170e;

    public LinearCurveFit(double[] dArr, double[][] dArr2) {
        this.f2168c = Double.NaN;
        int length = dArr.length;
        int length2 = dArr2[0].length;
        this.f2170e = new double[length2];
        this.f2166a = dArr;
        this.f2167b = dArr2;
        if (length2 > 2) {
            double d4 = 0.0d;
            double d5 = 0.0d;
            int i2 = 0;
            while (i2 < dArr.length) {
                double d6 = dArr2[i2][0];
                double d7 = dArr2[i2][0];
                if (i2 > 0) {
                    Math.hypot(d6 - d4, d7 - d5);
                }
                i2++;
                d4 = d6;
                d5 = d7;
            }
            this.f2168c = 0.0d;
        }
    }

    private double a(double d4) {
        if (Double.isNaN(this.f2168c)) {
            return 0.0d;
        }
        double[] dArr = this.f2166a;
        int length = dArr.length;
        if (d4 <= dArr[0]) {
            return 0.0d;
        }
        int i2 = length - 1;
        if (d4 >= dArr[i2]) {
            return this.f2168c;
        }
        double d5 = 0.0d;
        double d6 = 0.0d;
        double d7 = 0.0d;
        int i4 = 0;
        while (i4 < i2) {
            double[][] dArr2 = this.f2167b;
            double d8 = dArr2[i4][0];
            double d9 = dArr2[i4][1];
            if (i4 > 0) {
                d5 += Math.hypot(d8 - d6, d9 - d7);
            }
            double[] dArr3 = this.f2166a;
            if (d4 == dArr3[i4]) {
                return d5;
            }
            int i5 = i4 + 1;
            if (d4 < dArr3[i5]) {
                double d10 = (d4 - dArr3[i4]) / (dArr3[i5] - dArr3[i4]);
                double[][] dArr4 = this.f2167b;
                double d11 = 1.0d - d10;
                return d5 + Math.hypot(d9 - ((dArr4[i4][1] * d11) + (dArr4[i5][1] * d10)), d8 - ((dArr4[i4][0] * d11) + (dArr4[i5][0] * d10)));
            }
            i4 = i5;
            d6 = d8;
            d7 = d9;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d4, double[] dArr) {
        double[] dArr2 = this.f2166a;
        int length = dArr2.length;
        int i2 = 0;
        int length2 = this.f2167b[0].length;
        if (this.f2169d) {
            if (d4 <= dArr2[0]) {
                getSlope(dArr2[0], this.f2170e);
                for (int i4 = 0; i4 < length2; i4++) {
                    dArr[i4] = this.f2167b[0][i4] + ((d4 - this.f2166a[0]) * this.f2170e[i4]);
                }
                return;
            }
            int i5 = length - 1;
            if (d4 >= dArr2[i5]) {
                getSlope(dArr2[i5], this.f2170e);
                while (i2 < length2) {
                    dArr[i2] = this.f2167b[i5][i2] + ((d4 - this.f2166a[i5]) * this.f2170e[i2]);
                    i2++;
                }
                return;
            }
        } else if (d4 <= dArr2[0]) {
            for (int i6 = 0; i6 < length2; i6++) {
                dArr[i6] = this.f2167b[0][i6];
            }
            return;
        } else {
            int i7 = length - 1;
            if (d4 >= dArr2[i7]) {
                while (i2 < length2) {
                    dArr[i2] = this.f2167b[i7][i2];
                    i2++;
                }
                return;
            }
        }
        int i8 = 0;
        while (i8 < length - 1) {
            if (d4 == this.f2166a[i8]) {
                for (int i9 = 0; i9 < length2; i9++) {
                    dArr[i9] = this.f2167b[i8][i9];
                }
            }
            double[] dArr3 = this.f2166a;
            int i10 = i8 + 1;
            if (d4 < dArr3[i10]) {
                double d5 = (d4 - dArr3[i8]) / (dArr3[i10] - dArr3[i8]);
                while (i2 < length2) {
                    double[][] dArr4 = this.f2167b;
                    dArr[i2] = (dArr4[i8][i2] * (1.0d - d5)) + (dArr4[i10][i2] * d5);
                    i2++;
                }
                return;
            }
            i8 = i10;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getSlope(double d4, double[] dArr) {
        double[] dArr2 = this.f2166a;
        int length = dArr2.length;
        int length2 = this.f2167b[0].length;
        if (d4 <= dArr2[0]) {
            d4 = dArr2[0];
        } else {
            int i2 = length - 1;
            if (d4 >= dArr2[i2]) {
                d4 = dArr2[i2];
            }
        }
        int i4 = 0;
        while (i4 < length - 1) {
            double[] dArr3 = this.f2166a;
            int i5 = i4 + 1;
            if (d4 <= dArr3[i5]) {
                double d5 = dArr3[i5] - dArr3[i4];
                double d6 = dArr3[i4];
                for (int i6 = 0; i6 < length2; i6++) {
                    double[][] dArr4 = this.f2167b;
                    dArr[i6] = (dArr4[i5][i6] - dArr4[i4][i6]) / d5;
                }
                return;
            }
            i4 = i5;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.f2166a;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getSlope(double d4, int i2) {
        double[] dArr = this.f2166a;
        int length = dArr.length;
        int i4 = 0;
        if (d4 < dArr[0]) {
            d4 = dArr[0];
        } else {
            int i5 = length - 1;
            if (d4 >= dArr[i5]) {
                d4 = dArr[i5];
            }
        }
        while (i4 < length - 1) {
            double[] dArr2 = this.f2166a;
            int i6 = i4 + 1;
            if (d4 <= dArr2[i6]) {
                double d5 = dArr2[i6] - dArr2[i4];
                double d6 = dArr2[i4];
                double[][] dArr3 = this.f2167b;
                return (dArr3[i6][i2] - dArr3[i4][i2]) / d5;
            }
            i4 = i6;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d4, float[] fArr) {
        double[] dArr = this.f2166a;
        int length = dArr.length;
        int i2 = 0;
        int length2 = this.f2167b[0].length;
        if (this.f2169d) {
            if (d4 <= dArr[0]) {
                getSlope(dArr[0], this.f2170e);
                for (int i4 = 0; i4 < length2; i4++) {
                    fArr[i4] = (float) (this.f2167b[0][i4] + ((d4 - this.f2166a[0]) * this.f2170e[i4]));
                }
                return;
            }
            int i5 = length - 1;
            if (d4 >= dArr[i5]) {
                getSlope(dArr[i5], this.f2170e);
                while (i2 < length2) {
                    fArr[i2] = (float) (this.f2167b[i5][i2] + ((d4 - this.f2166a[i5]) * this.f2170e[i2]));
                    i2++;
                }
                return;
            }
        } else if (d4 <= dArr[0]) {
            for (int i6 = 0; i6 < length2; i6++) {
                fArr[i6] = (float) this.f2167b[0][i6];
            }
            return;
        } else {
            int i7 = length - 1;
            if (d4 >= dArr[i7]) {
                while (i2 < length2) {
                    fArr[i2] = (float) this.f2167b[i7][i2];
                    i2++;
                }
                return;
            }
        }
        int i8 = 0;
        while (i8 < length - 1) {
            if (d4 == this.f2166a[i8]) {
                for (int i9 = 0; i9 < length2; i9++) {
                    fArr[i9] = (float) this.f2167b[i8][i9];
                }
            }
            double[] dArr2 = this.f2166a;
            int i10 = i8 + 1;
            if (d4 < dArr2[i10]) {
                double d5 = (d4 - dArr2[i8]) / (dArr2[i10] - dArr2[i8]);
                while (i2 < length2) {
                    double[][] dArr3 = this.f2167b;
                    fArr[i2] = (float) ((dArr3[i8][i2] * (1.0d - d5)) + (dArr3[i10][i2] * d5));
                    i2++;
                }
                return;
            }
            i8 = i10;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d4, int i2) {
        double[] dArr = this.f2166a;
        int length = dArr.length;
        int i4 = 0;
        if (this.f2169d) {
            if (d4 <= dArr[0]) {
                return this.f2167b[0][i2] + ((d4 - dArr[0]) * getSlope(dArr[0], i2));
            }
            int i5 = length - 1;
            if (d4 >= dArr[i5]) {
                return this.f2167b[i5][i2] + ((d4 - dArr[i5]) * getSlope(dArr[i5], i2));
            }
        } else if (d4 <= dArr[0]) {
            return this.f2167b[0][i2];
        } else {
            int i6 = length - 1;
            if (d4 >= dArr[i6]) {
                return this.f2167b[i6][i2];
            }
        }
        while (i4 < length - 1) {
            double[] dArr2 = this.f2166a;
            if (d4 == dArr2[i4]) {
                return this.f2167b[i4][i2];
            }
            int i7 = i4 + 1;
            if (d4 < dArr2[i7]) {
                double d5 = (d4 - dArr2[i4]) / (dArr2[i7] - dArr2[i4]);
                double[][] dArr3 = this.f2167b;
                return (dArr3[i4][i2] * (1.0d - d5)) + (dArr3[i7][i2] * d5);
            }
            i4 = i7;
        }
        return 0.0d;
    }
}
