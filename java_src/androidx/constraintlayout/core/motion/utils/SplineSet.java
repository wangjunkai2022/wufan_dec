package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.CustomAttribute;
import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.utils.KeyFrameArray;
import androidx.constraintlayout.core.state.WidgetFrame;
import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.Arrays;
/* loaded from: classes.dex */
public abstract class SplineSet {

    /* renamed from: f  reason: collision with root package name */
    private static final String f2189f = "SplineSet";

    /* renamed from: a  reason: collision with root package name */
    protected CurveFit f2190a;

    /* renamed from: b  reason: collision with root package name */
    protected int[] f2191b = new int[10];

    /* renamed from: c  reason: collision with root package name */
    protected float[] f2192c = new float[10];

    /* renamed from: d  reason: collision with root package name */
    private int f2193d;

    /* renamed from: e  reason: collision with root package name */
    private String f2194e;

    /* loaded from: classes.dex */
    private static class CoreSpline extends SplineSet {

        /* renamed from: g  reason: collision with root package name */
        String f2195g;

        /* renamed from: h  reason: collision with root package name */
        long f2196h;

        public CoreSpline(String str, long j4) {
            this.f2195g = str;
            this.f2196h = j4;
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setProperty(TypedValues typedValues, float f4) {
            typedValues.setValue(typedValues.getId(this.f2195g), get(f4));
        }
    }

    /* loaded from: classes.dex */
    public static class CustomSet extends SplineSet {

        /* renamed from: g  reason: collision with root package name */
        String f2197g;

        /* renamed from: h  reason: collision with root package name */
        KeyFrameArray.CustomArray f2198h;

        /* renamed from: i  reason: collision with root package name */
        float[] f2199i;

        public CustomSet(String str, KeyFrameArray.CustomArray customArray) {
            this.f2197g = str.split(",")[1];
            this.f2198h = customArray;
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setPoint(int i2, float f4) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        public void setProperty(WidgetFrame widgetFrame, float f4) {
            this.f2190a.getPos(f4, this.f2199i);
            widgetFrame.setCustomValue(this.f2198h.valueAt(0), this.f2199i);
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setup(int i2) {
            float[] fArr;
            int size = this.f2198h.size();
            int numberOfInterpolatedValues = this.f2198h.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            this.f2199i = new float[numberOfInterpolatedValues];
            double[][] dArr2 = (double[][]) Array.newInstance(double.class, size, numberOfInterpolatedValues);
            for (int i4 = 0; i4 < size; i4++) {
                int keyAt = this.f2198h.keyAt(i4);
                CustomAttribute valueAt = this.f2198h.valueAt(i4);
                double d4 = keyAt;
                Double.isNaN(d4);
                dArr[i4] = d4 * 0.01d;
                valueAt.getValuesToInterpolate(this.f2199i);
                int i5 = 0;
                while (true) {
                    if (i5 < this.f2199i.length) {
                        dArr2[i4][i5] = fArr[i5];
                        i5++;
                    }
                }
            }
            this.f2190a = CurveFit.get(i2, dArr, dArr2);
        }

        public void setPoint(int i2, CustomAttribute customAttribute) {
            this.f2198h.append(i2, customAttribute);
        }
    }

    /* loaded from: classes.dex */
    public static class CustomSpline extends SplineSet {

        /* renamed from: g  reason: collision with root package name */
        String f2200g;

        /* renamed from: h  reason: collision with root package name */
        KeyFrameArray.CustomVar f2201h;

        /* renamed from: i  reason: collision with root package name */
        float[] f2202i;

        public CustomSpline(String str, KeyFrameArray.CustomVar customVar) {
            this.f2200g = str.split(",")[1];
            this.f2201h = customVar;
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setPoint(int i2, float f4) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setProperty(TypedValues typedValues, float f4) {
            setProperty((MotionWidget) typedValues, f4);
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setup(int i2) {
            float[] fArr;
            int size = this.f2201h.size();
            int numberOfInterpolatedValues = this.f2201h.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            this.f2202i = new float[numberOfInterpolatedValues];
            double[][] dArr2 = (double[][]) Array.newInstance(double.class, size, numberOfInterpolatedValues);
            for (int i4 = 0; i4 < size; i4++) {
                int keyAt = this.f2201h.keyAt(i4);
                CustomVariable valueAt = this.f2201h.valueAt(i4);
                double d4 = keyAt;
                Double.isNaN(d4);
                dArr[i4] = d4 * 0.01d;
                valueAt.getValuesToInterpolate(this.f2202i);
                int i5 = 0;
                while (true) {
                    if (i5 < this.f2202i.length) {
                        dArr2[i4][i5] = fArr[i5];
                        i5++;
                    }
                }
            }
            this.f2190a = CurveFit.get(i2, dArr, dArr2);
        }

        public void setPoint(int i2, CustomVariable customVariable) {
            this.f2201h.append(i2, customVariable);
        }

        public void setProperty(MotionWidget motionWidget, float f4) {
            this.f2190a.getPos(f4, this.f2202i);
            this.f2201h.valueAt(0).setInterpolatedValue(motionWidget, this.f2202i);
        }
    }

    /* loaded from: classes.dex */
    private static class Sort {
        private Sort() {
        }

        static void a(int[] iArr, float[] fArr, int i2, int i4) {
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

        private static int b(int[] iArr, float[] fArr, int i2, int i4) {
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

        private static void c(int[] iArr, float[] fArr, int i2, int i4) {
            int i5 = iArr[i2];
            iArr[i2] = iArr[i4];
            iArr[i4] = i5;
            float f4 = fArr[i2];
            fArr[i2] = fArr[i4];
            fArr[i4] = f4;
        }
    }

    public static SplineSet makeCustomSpline(String str, KeyFrameArray.CustomArray customArray) {
        return new CustomSet(str, customArray);
    }

    public static SplineSet makeCustomSplineSet(String str, KeyFrameArray.CustomVar customVar) {
        return new CustomSpline(str, customVar);
    }

    public static SplineSet makeSpline(String str, long j4) {
        return new CoreSpline(str, j4);
    }

    public float get(float f4) {
        return (float) this.f2190a.getPos(f4, 0);
    }

    public CurveFit getCurveFit() {
        return this.f2190a;
    }

    public float getSlope(float f4) {
        return (float) this.f2190a.getSlope(f4, 0);
    }

    public void setPoint(int i2, float f4) {
        int[] iArr = this.f2191b;
        if (iArr.length < this.f2193d + 1) {
            this.f2191b = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f2192c;
            this.f2192c = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.f2191b;
        int i4 = this.f2193d;
        iArr2[i4] = i2;
        this.f2192c[i4] = f4;
        this.f2193d = i4 + 1;
    }

    public void setProperty(TypedValues typedValues, float f4) {
        typedValues.setValue(a.a(this.f2194e), get(f4));
    }

    public void setType(String str) {
        this.f2194e = str;
    }

    public void setup(int i2) {
        int i4;
        int i5 = this.f2193d;
        if (i5 == 0) {
            return;
        }
        Sort.a(this.f2191b, this.f2192c, 0, i5 - 1);
        int i6 = 1;
        for (int i7 = 1; i7 < this.f2193d; i7++) {
            int[] iArr = this.f2191b;
            if (iArr[i7 - 1] != iArr[i7]) {
                i6++;
            }
        }
        double[] dArr = new double[i6];
        double[][] dArr2 = (double[][]) Array.newInstance(double.class, i6, 1);
        int i8 = 0;
        while (i4 < this.f2193d) {
            if (i4 > 0) {
                int[] iArr2 = this.f2191b;
                i4 = iArr2[i4] == iArr2[i4 + (-1)] ? i4 + 1 : 0;
            }
            double d4 = this.f2191b[i4];
            Double.isNaN(d4);
            dArr[i8] = d4 * 0.01d;
            dArr2[i8][0] = this.f2192c[i4];
            i8++;
        }
        this.f2190a = CurveFit.get(i2, dArr, dArr2);
    }

    public String toString() {
        String str = this.f2194e;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i2 = 0; i2 < this.f2193d; i2++) {
            str = str + "[" + this.f2191b[i2] + " , " + decimalFormat.format(this.f2192c[i2]) + "] ";
        }
        return str;
    }
}
