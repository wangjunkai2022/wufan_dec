package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.CustomAttribute;
import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.utils.KeyFrameArray;
import java.lang.reflect.Array;
import java.text.DecimalFormat;
/* loaded from: classes.dex */
public abstract class TimeCycleSplineSet {

    /* renamed from: k  reason: collision with root package name */
    private static final String f2233k = "SplineSet";

    /* renamed from: l  reason: collision with root package name */
    protected static final int f2234l = 0;

    /* renamed from: m  reason: collision with root package name */
    protected static final int f2235m = 1;

    /* renamed from: n  reason: collision with root package name */
    protected static final int f2236n = 2;

    /* renamed from: o  reason: collision with root package name */
    protected static float f2237o = 6.2831855f;

    /* renamed from: a  reason: collision with root package name */
    protected CurveFit f2238a;

    /* renamed from: e  reason: collision with root package name */
    protected int f2242e;

    /* renamed from: f  reason: collision with root package name */
    protected String f2243f;

    /* renamed from: i  reason: collision with root package name */
    protected long f2246i;

    /* renamed from: b  reason: collision with root package name */
    protected int f2239b = 0;

    /* renamed from: c  reason: collision with root package name */
    protected int[] f2240c = new int[10];

    /* renamed from: d  reason: collision with root package name */
    protected float[][] f2241d = (float[][]) Array.newInstance(float.class, 10, 3);

    /* renamed from: g  reason: collision with root package name */
    protected float[] f2244g = new float[3];

    /* renamed from: h  reason: collision with root package name */
    protected boolean f2245h = false;

    /* renamed from: j  reason: collision with root package name */
    protected float f2247j = Float.NaN;

    /* loaded from: classes.dex */
    public static class CustomSet extends TimeCycleSplineSet {

        /* renamed from: p  reason: collision with root package name */
        String f2248p;

        /* renamed from: q  reason: collision with root package name */
        KeyFrameArray.CustomArray f2249q;

        /* renamed from: r  reason: collision with root package name */
        KeyFrameArray.FloatArray f2250r = new KeyFrameArray.FloatArray();

        /* renamed from: s  reason: collision with root package name */
        float[] f2251s;

        /* renamed from: t  reason: collision with root package name */
        float[] f2252t;

        public CustomSet(String str, KeyFrameArray.CustomArray customArray) {
            this.f2248p = str.split(",")[1];
            this.f2249q = customArray;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setPoint(int i2, float f4, float f5, int i4, float f6) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        public boolean setProperty(MotionWidget motionWidget, float f4, long j4, KeyCache keyCache) {
            this.f2238a.getPos(f4, this.f2251s);
            float[] fArr = this.f2251s;
            float f5 = fArr[fArr.length - 2];
            float f6 = fArr[fArr.length - 1];
            long j5 = j4 - this.f2246i;
            if (Float.isNaN(this.f2247j)) {
                float floatValue = keyCache.getFloatValue(motionWidget, this.f2248p, 0);
                this.f2247j = floatValue;
                if (Float.isNaN(floatValue)) {
                    this.f2247j = 0.0f;
                }
            }
            double d4 = this.f2247j;
            double d5 = j5;
            Double.isNaN(d5);
            double d6 = f5;
            Double.isNaN(d6);
            Double.isNaN(d4);
            float f7 = (float) ((d4 + ((d5 * 1.0E-9d) * d6)) % 1.0d);
            this.f2247j = f7;
            this.f2246i = j4;
            float a4 = a(f7);
            this.f2245h = false;
            int i2 = 0;
            while (true) {
                float[] fArr2 = this.f2252t;
                if (i2 >= fArr2.length) {
                    break;
                }
                boolean z3 = this.f2245h;
                float[] fArr3 = this.f2251s;
                this.f2245h = z3 | (((double) fArr3[i2]) != 0.0d);
                fArr2[i2] = (fArr3[i2] * a4) + f6;
                i2++;
            }
            motionWidget.setInterpolatedValue(this.f2249q.valueAt(0), this.f2252t);
            if (f5 != 0.0f) {
                this.f2245h = true;
            }
            return this.f2245h;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setup(int i2) {
            float[] fArr;
            int size = this.f2249q.size();
            int numberOfInterpolatedValues = this.f2249q.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            int i4 = numberOfInterpolatedValues + 2;
            this.f2251s = new float[i4];
            this.f2252t = new float[numberOfInterpolatedValues];
            double[][] dArr2 = (double[][]) Array.newInstance(double.class, size, i4);
            for (int i5 = 0; i5 < size; i5++) {
                int keyAt = this.f2249q.keyAt(i5);
                CustomAttribute valueAt = this.f2249q.valueAt(i5);
                float[] valueAt2 = this.f2250r.valueAt(i5);
                double d4 = keyAt;
                Double.isNaN(d4);
                dArr[i5] = d4 * 0.01d;
                valueAt.getValuesToInterpolate(this.f2251s);
                int i6 = 0;
                while (true) {
                    if (i6 < this.f2251s.length) {
                        dArr2[i5][i6] = fArr[i6];
                        i6++;
                    }
                }
                dArr2[i5][numberOfInterpolatedValues] = valueAt2[0];
                dArr2[i5][numberOfInterpolatedValues + 1] = valueAt2[1];
            }
            this.f2238a = CurveFit.get(i2, dArr, dArr2);
        }

        public void setPoint(int i2, CustomAttribute customAttribute, float f4, int i4, float f5) {
            this.f2249q.append(i2, customAttribute);
            this.f2250r.append(i2, new float[]{f4, f5});
            this.f2239b = Math.max(this.f2239b, i4);
        }
    }

    /* loaded from: classes.dex */
    public static class CustomVarSet extends TimeCycleSplineSet {

        /* renamed from: p  reason: collision with root package name */
        String f2253p;

        /* renamed from: q  reason: collision with root package name */
        KeyFrameArray.CustomVar f2254q;

        /* renamed from: r  reason: collision with root package name */
        KeyFrameArray.FloatArray f2255r = new KeyFrameArray.FloatArray();

        /* renamed from: s  reason: collision with root package name */
        float[] f2256s;

        /* renamed from: t  reason: collision with root package name */
        float[] f2257t;

        public CustomVarSet(String str, KeyFrameArray.CustomVar customVar) {
            this.f2253p = str.split(",")[1];
            this.f2254q = customVar;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setPoint(int i2, float f4, float f5, int i4, float f6) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        public boolean setProperty(MotionWidget motionWidget, float f4, long j4, KeyCache keyCache) {
            this.f2238a.getPos(f4, this.f2256s);
            float[] fArr = this.f2256s;
            float f5 = fArr[fArr.length - 2];
            float f6 = fArr[fArr.length - 1];
            long j5 = j4 - this.f2246i;
            if (Float.isNaN(this.f2247j)) {
                float floatValue = keyCache.getFloatValue(motionWidget, this.f2253p, 0);
                this.f2247j = floatValue;
                if (Float.isNaN(floatValue)) {
                    this.f2247j = 0.0f;
                }
            }
            double d4 = this.f2247j;
            double d5 = j5;
            Double.isNaN(d5);
            double d6 = f5;
            Double.isNaN(d6);
            Double.isNaN(d4);
            float f7 = (float) ((d4 + ((d5 * 1.0E-9d) * d6)) % 1.0d);
            this.f2247j = f7;
            this.f2246i = j4;
            float a4 = a(f7);
            this.f2245h = false;
            int i2 = 0;
            while (true) {
                float[] fArr2 = this.f2257t;
                if (i2 >= fArr2.length) {
                    break;
                }
                boolean z3 = this.f2245h;
                float[] fArr3 = this.f2256s;
                this.f2245h = z3 | (((double) fArr3[i2]) != 0.0d);
                fArr2[i2] = (fArr3[i2] * a4) + f6;
                i2++;
            }
            this.f2254q.valueAt(0).setInterpolatedValue(motionWidget, this.f2257t);
            if (f5 != 0.0f) {
                this.f2245h = true;
            }
            return this.f2245h;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setup(int i2) {
            float[] fArr;
            int size = this.f2254q.size();
            int numberOfInterpolatedValues = this.f2254q.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            int i4 = numberOfInterpolatedValues + 2;
            this.f2256s = new float[i4];
            this.f2257t = new float[numberOfInterpolatedValues];
            double[][] dArr2 = (double[][]) Array.newInstance(double.class, size, i4);
            for (int i5 = 0; i5 < size; i5++) {
                int keyAt = this.f2254q.keyAt(i5);
                CustomVariable valueAt = this.f2254q.valueAt(i5);
                float[] valueAt2 = this.f2255r.valueAt(i5);
                double d4 = keyAt;
                Double.isNaN(d4);
                dArr[i5] = d4 * 0.01d;
                valueAt.getValuesToInterpolate(this.f2256s);
                int i6 = 0;
                while (true) {
                    if (i6 < this.f2256s.length) {
                        dArr2[i5][i6] = fArr[i6];
                        i6++;
                    }
                }
                dArr2[i5][numberOfInterpolatedValues] = valueAt2[0];
                dArr2[i5][numberOfInterpolatedValues + 1] = valueAt2[1];
            }
            this.f2238a = CurveFit.get(i2, dArr, dArr2);
        }

        public void setPoint(int i2, CustomVariable customVariable, float f4, int i4, float f5) {
            this.f2254q.append(i2, customVariable);
            this.f2255r.append(i2, new float[]{f4, f5});
            this.f2239b = Math.max(this.f2239b, i4);
        }
    }

    /* loaded from: classes.dex */
    protected static class Sort {
        protected Sort() {
        }

        static void a(int[] iArr, float[][] fArr, int i2, int i4) {
            int[] iArr2 = new int[iArr.length + 10];
            iArr2[0] = i4;
            iArr2[1] = i2;
            int i5 = 2;
            while (i5 > 0) {
                int i6 = i5 - 1;
                int i7 = iArr2[i6];
                i5 = i6 - 1;
                int i8 = iArr2[i5];
                if (i7 < i8) {
                    int b4 = b(iArr, fArr, i7, i8);
                    int i9 = i5 + 1;
                    iArr2[i5] = b4 - 1;
                    int i10 = i9 + 1;
                    iArr2[i9] = i7;
                    int i11 = i10 + 1;
                    iArr2[i10] = i8;
                    i5 = i11 + 1;
                    iArr2[i11] = b4 + 1;
                }
            }
        }

        private static int b(int[] iArr, float[][] fArr, int i2, int i4) {
            int i5 = iArr[i4];
            int i6 = i2;
            while (i2 < i4) {
                if (iArr[i2] <= i5) {
                    c(iArr, fArr, i6, i2);
                    i6++;
                }
                i2++;
            }
            c(iArr, fArr, i6, i4);
            return i6;
        }

        private static void c(int[] iArr, float[][] fArr, int i2, int i4) {
            int i5 = iArr[i2];
            iArr[i2] = iArr[i4];
            iArr[i4] = i5;
            float[] fArr2 = fArr[i2];
            fArr[i2] = fArr[i4];
            fArr[i4] = fArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float a(float f4) {
        float abs;
        switch (this.f2239b) {
            case 1:
                return Math.signum(f4 * f2237o);
            case 2:
                abs = Math.abs(f4);
                break;
            case 3:
                return (((f4 * 2.0f) + 1.0f) % 2.0f) - 1.0f;
            case 4:
                abs = ((f4 * 2.0f) + 1.0f) % 2.0f;
                break;
            case 5:
                return (float) Math.cos(f4 * f2237o);
            case 6:
                float abs2 = 1.0f - Math.abs(((f4 * 4.0f) % 4.0f) - 2.0f);
                abs = abs2 * abs2;
                break;
            default:
                return (float) Math.sin(f4 * f2237o);
        }
        return 1.0f - abs;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(long j4) {
        this.f2246i = j4;
    }

    public CurveFit getCurveFit() {
        return this.f2238a;
    }

    public void setPoint(int i2, float f4, float f5, int i4, float f6) {
        int[] iArr = this.f2240c;
        int i5 = this.f2242e;
        iArr[i5] = i2;
        float[][] fArr = this.f2241d;
        fArr[i5][0] = f4;
        fArr[i5][1] = f5;
        fArr[i5][2] = f6;
        this.f2239b = Math.max(this.f2239b, i4);
        this.f2242e++;
    }

    public void setType(String str) {
        this.f2243f = str;
    }

    public void setup(int i2) {
        int i4;
        int i5 = this.f2242e;
        if (i5 == 0) {
            System.err.println("Error no points added to " + this.f2243f);
            return;
        }
        Sort.a(this.f2240c, this.f2241d, 0, i5 - 1);
        int i6 = 1;
        int i7 = 0;
        while (true) {
            int[] iArr = this.f2240c;
            if (i6 >= iArr.length) {
                break;
            }
            if (iArr[i6] != iArr[i6 - 1]) {
                i7++;
            }
            i6++;
        }
        if (i7 == 0) {
            i7 = 1;
        }
        double[] dArr = new double[i7];
        double[][] dArr2 = (double[][]) Array.newInstance(double.class, i7, 3);
        int i8 = 0;
        while (i4 < this.f2242e) {
            if (i4 > 0) {
                int[] iArr2 = this.f2240c;
                i4 = iArr2[i4] == iArr2[i4 + (-1)] ? i4 + 1 : 0;
            }
            double d4 = this.f2240c[i4];
            Double.isNaN(d4);
            dArr[i8] = d4 * 0.01d;
            double[] dArr3 = dArr2[i8];
            float[][] fArr = this.f2241d;
            dArr3[0] = fArr[i4][0];
            dArr2[i8][1] = fArr[i4][1];
            dArr2[i8][2] = fArr[i4][2];
            i8++;
        }
        this.f2238a = CurveFit.get(i2, dArr, dArr2);
    }

    public String toString() {
        String str = this.f2243f;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i2 = 0; i2 < this.f2242e; i2++) {
            str = str + "[" + this.f2240c[i2] + " , " + decimalFormat.format(this.f2241d[i2]) + "] ";
        }
        return str;
    }
}
