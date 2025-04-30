package androidx.constraintlayout.core.motion.utils;
/* loaded from: classes.dex */
public abstract class CurveFit {
    public static final int CONSTANT = 2;
    public static final int LINEAR = 1;
    public static final int SPLINE = 0;

    /* loaded from: classes.dex */
    static class Constant extends CurveFit {

        /* renamed from: a  reason: collision with root package name */
        double f2085a;

        /* renamed from: b  reason: collision with root package name */
        double[] f2086b;

        Constant(double d4, double[] dArr) {
            this.f2085a = d4;
            this.f2086b = dArr;
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public void getPos(double d4, double[] dArr) {
            double[] dArr2 = this.f2086b;
            System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public double getSlope(double d4, int i2) {
            return 0.0d;
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public void getSlope(double d4, double[] dArr) {
            for (int i2 = 0; i2 < this.f2086b.length; i2++) {
                dArr[i2] = 0.0d;
            }
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public double[] getTimePoints() {
            return new double[]{this.f2085a};
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public void getPos(double d4, float[] fArr) {
            int i2 = 0;
            while (true) {
                double[] dArr = this.f2086b;
                if (i2 >= dArr.length) {
                    return;
                }
                fArr[i2] = (float) dArr[i2];
                i2++;
            }
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public double getPos(double d4, int i2) {
            return this.f2086b[i2];
        }
    }

    public static CurveFit get(int i2, double[] dArr, double[][] dArr2) {
        if (dArr.length == 1) {
            i2 = 2;
        }
        if (i2 != 0) {
            if (i2 != 2) {
                return new LinearCurveFit(dArr, dArr2);
            }
            return new Constant(dArr[0], dArr2[0]);
        }
        return new MonotonicCurveFit(dArr, dArr2);
    }

    public static CurveFit getArc(int[] iArr, double[] dArr, double[][] dArr2) {
        return new ArcCurveFit(iArr, dArr, dArr2);
    }

    public abstract double getPos(double d4, int i2);

    public abstract void getPos(double d4, double[] dArr);

    public abstract void getPos(double d4, float[] fArr);

    public abstract double getSlope(double d4, int i2);

    public abstract void getSlope(double d4, double[] dArr);

    public abstract double[] getTimePoints();
}
