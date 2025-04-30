package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;
import java.util.Arrays;
/* loaded from: classes.dex */
public class StepCurve extends Easing {

    /* renamed from: p  reason: collision with root package name */
    private static final boolean f2215p = false;

    /* renamed from: o  reason: collision with root package name */
    MonotonicCurveFit f2216o;

    /* JADX INFO: Access modifiers changed from: package-private */
    public StepCurve(String str) {
        this.f2100a = str;
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
        this.f2216o = b(Arrays.copyOf(dArr, i2 + 1));
    }

    private static MonotonicCurveFit a(String str) {
        String[] split = str.split("\\s+");
        int length = split.length;
        double[] dArr = new double[length];
        for (int i2 = 0; i2 < length; i2++) {
            dArr[i2] = Double.parseDouble(split[i2]);
        }
        return b(dArr);
    }

    private static MonotonicCurveFit b(double[] dArr) {
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
        MonotonicCurveFit monotonicCurveFit = new MonotonicCurveFit(dArr3, dArr2);
        System.out.println(" 0 " + monotonicCurveFit.getPos(0.0d, 0));
        System.out.println(" 1 " + monotonicCurveFit.getPos(1.0d, 0));
        return monotonicCurveFit;
    }

    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double get(double d4) {
        return this.f2216o.getPos(d4, 0);
    }

    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double getDiff(double d4) {
        return this.f2216o.getSlope(d4, 0);
    }
}
