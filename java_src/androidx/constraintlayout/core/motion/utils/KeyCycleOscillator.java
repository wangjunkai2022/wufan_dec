package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.MotionWidget;
import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
/* loaded from: classes.dex */
public abstract class KeyCycleOscillator {

    /* renamed from: g  reason: collision with root package name */
    private static final String f2118g = "KeyCycleOscillator";

    /* renamed from: a  reason: collision with root package name */
    private CurveFit f2119a;

    /* renamed from: b  reason: collision with root package name */
    private CycleOscillator f2120b;

    /* renamed from: c  reason: collision with root package name */
    private String f2121c;

    /* renamed from: d  reason: collision with root package name */
    private int f2122d = 0;

    /* renamed from: e  reason: collision with root package name */
    private String f2123e = null;
    public int mVariesBy = 0;

    /* renamed from: f  reason: collision with root package name */
    ArrayList<WavePoint> f2124f = new ArrayList<>();

    /* loaded from: classes.dex */
    private static class CoreSpline extends KeyCycleOscillator {

        /* renamed from: h  reason: collision with root package name */
        String f2126h;

        /* renamed from: i  reason: collision with root package name */
        int f2127i;

        public CoreSpline(String str) {
            this.f2126h = str;
            this.f2127i = c.a(str);
        }

        @Override // androidx.constraintlayout.core.motion.utils.KeyCycleOscillator
        public void setProperty(MotionWidget motionWidget, float f4) {
            motionWidget.setValue(this.f2127i, get(f4));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class CycleOscillator {

        /* renamed from: q  reason: collision with root package name */
        static final int f2128q = -1;

        /* renamed from: r  reason: collision with root package name */
        private static final String f2129r = "CycleOscillator";

        /* renamed from: a  reason: collision with root package name */
        private final int f2130a;

        /* renamed from: b  reason: collision with root package name */
        Oscillator f2131b;

        /* renamed from: c  reason: collision with root package name */
        private final int f2132c;

        /* renamed from: d  reason: collision with root package name */
        private final int f2133d;

        /* renamed from: e  reason: collision with root package name */
        private final int f2134e;

        /* renamed from: f  reason: collision with root package name */
        float[] f2135f;

        /* renamed from: g  reason: collision with root package name */
        double[] f2136g;

        /* renamed from: h  reason: collision with root package name */
        float[] f2137h;

        /* renamed from: i  reason: collision with root package name */
        float[] f2138i;

        /* renamed from: j  reason: collision with root package name */
        float[] f2139j;

        /* renamed from: k  reason: collision with root package name */
        float[] f2140k;

        /* renamed from: l  reason: collision with root package name */
        int f2141l;

        /* renamed from: m  reason: collision with root package name */
        CurveFit f2142m;

        /* renamed from: n  reason: collision with root package name */
        double[] f2143n;

        /* renamed from: o  reason: collision with root package name */
        double[] f2144o;

        /* renamed from: p  reason: collision with root package name */
        float f2145p;

        CycleOscillator(int i2, String str, int i4, int i5) {
            Oscillator oscillator = new Oscillator();
            this.f2131b = oscillator;
            this.f2132c = 0;
            this.f2133d = 1;
            this.f2134e = 2;
            this.f2141l = i2;
            this.f2130a = i4;
            oscillator.setType(i2, str);
            this.f2135f = new float[i5];
            this.f2136g = new double[i5];
            this.f2137h = new float[i5];
            this.f2138i = new float[i5];
            this.f2139j = new float[i5];
            this.f2140k = new float[i5];
        }

        public double getLastPhase() {
            return this.f2143n[1];
        }

        public double getSlope(float f4) {
            CurveFit curveFit = this.f2142m;
            if (curveFit != null) {
                double d4 = f4;
                curveFit.getSlope(d4, this.f2144o);
                this.f2142m.getPos(d4, this.f2143n);
            } else {
                double[] dArr = this.f2144o;
                dArr[0] = 0.0d;
                dArr[1] = 0.0d;
                dArr[2] = 0.0d;
            }
            double d5 = f4;
            double value = this.f2131b.getValue(d5, this.f2143n[1]);
            double slope = this.f2131b.getSlope(d5, this.f2143n[1], this.f2144o[1]);
            double[] dArr2 = this.f2144o;
            return dArr2[0] + (value * dArr2[2]) + (slope * this.f2143n[2]);
        }

        public double getValues(float f4) {
            CurveFit curveFit = this.f2142m;
            if (curveFit != null) {
                curveFit.getPos(f4, this.f2143n);
            } else {
                double[] dArr = this.f2143n;
                dArr[0] = this.f2138i[0];
                dArr[1] = this.f2139j[0];
                dArr[2] = this.f2135f[0];
            }
            double[] dArr2 = this.f2143n;
            return dArr2[0] + (this.f2131b.getValue(f4, dArr2[1]) * this.f2143n[2]);
        }

        public void setPoint(int i2, int i4, float f4, float f5, float f6, float f7) {
            double[] dArr = this.f2136g;
            double d4 = i4;
            Double.isNaN(d4);
            dArr[i2] = d4 / 100.0d;
            this.f2137h[i2] = f4;
            this.f2138i[i2] = f5;
            this.f2139j[i2] = f6;
            this.f2135f[i2] = f7;
        }

        public void setup(float f4) {
            this.f2145p = f4;
            double[][] dArr = (double[][]) Array.newInstance(double.class, this.f2136g.length, 3);
            float[] fArr = this.f2135f;
            this.f2143n = new double[fArr.length + 2];
            this.f2144o = new double[fArr.length + 2];
            if (this.f2136g[0] > 0.0d) {
                this.f2131b.addPoint(0.0d, this.f2137h[0]);
            }
            double[] dArr2 = this.f2136g;
            int length = dArr2.length - 1;
            if (dArr2[length] < 1.0d) {
                this.f2131b.addPoint(1.0d, this.f2137h[length]);
            }
            for (int i2 = 0; i2 < dArr.length; i2++) {
                dArr[i2][0] = this.f2138i[i2];
                dArr[i2][1] = this.f2139j[i2];
                dArr[i2][2] = this.f2135f[i2];
                this.f2131b.addPoint(this.f2136g[i2], this.f2137h[i2]);
            }
            this.f2131b.normalize();
            double[] dArr3 = this.f2136g;
            if (dArr3.length > 1) {
                this.f2142m = CurveFit.get(0, dArr3, dArr);
            } else {
                this.f2142m = null;
            }
        }
    }

    /* loaded from: classes.dex */
    private static class IntDoubleSort {
        private IntDoubleSort() {
        }

        private static int a(int[] iArr, float[] fArr, int i2, int i4) {
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

        static void b(int[] iArr, float[] fArr, int i2, int i4) {
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
                    int a4 = a(iArr, fArr, i7, i8);
                    int i9 = i5 + 1;
                    iArr2[i5] = a4 - 1;
                    int i10 = i9 + 1;
                    iArr2[i9] = i7;
                    int i11 = i10 + 1;
                    iArr2[i10] = i8;
                    i5 = i11 + 1;
                    iArr2[i11] = a4 + 1;
                }
            }
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

    /* loaded from: classes.dex */
    private static class IntFloatFloatSort {
        private IntFloatFloatSort() {
        }

        private static int a(int[] iArr, float[] fArr, float[] fArr2, int i2, int i4) {
            int i5 = iArr[i4];
            int i6 = i2;
            while (i2 < i4) {
                if (iArr[i2] <= i5) {
                    c(iArr, fArr, fArr2, i6, i2);
                    i6++;
                }
                i2++;
            }
            c(iArr, fArr, fArr2, i6, i4);
            return i6;
        }

        static void b(int[] iArr, float[] fArr, float[] fArr2, int i2, int i4) {
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
                    int a4 = a(iArr, fArr, fArr2, i7, i8);
                    int i9 = i5 + 1;
                    iArr2[i5] = a4 - 1;
                    int i10 = i9 + 1;
                    iArr2[i9] = i7;
                    int i11 = i10 + 1;
                    iArr2[i10] = i8;
                    i5 = i11 + 1;
                    iArr2[i11] = a4 + 1;
                }
            }
        }

        private static void c(int[] iArr, float[] fArr, float[] fArr2, int i2, int i4) {
            int i5 = iArr[i2];
            iArr[i2] = iArr[i4];
            iArr[i4] = i5;
            float f4 = fArr[i2];
            fArr[i2] = fArr[i4];
            fArr[i4] = f4;
            float f5 = fArr2[i2];
            fArr2[i2] = fArr2[i4];
            fArr2[i4] = f5;
        }
    }

    /* loaded from: classes.dex */
    public static class PathRotateSet extends KeyCycleOscillator {

        /* renamed from: h  reason: collision with root package name */
        String f2146h;

        /* renamed from: i  reason: collision with root package name */
        int f2147i;

        public PathRotateSet(String str) {
            this.f2146h = str;
            this.f2147i = c.a(str);
        }

        public void setPathRotate(MotionWidget motionWidget, float f4, double d4, double d5) {
            motionWidget.setRotationZ(get(f4) + ((float) Math.toDegrees(Math.atan2(d5, d4))));
        }

        @Override // androidx.constraintlayout.core.motion.utils.KeyCycleOscillator
        public void setProperty(MotionWidget motionWidget, float f4) {
            motionWidget.setValue(this.f2147i, get(f4));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class WavePoint {

        /* renamed from: a  reason: collision with root package name */
        int f2148a;

        /* renamed from: b  reason: collision with root package name */
        float f2149b;

        /* renamed from: c  reason: collision with root package name */
        float f2150c;

        /* renamed from: d  reason: collision with root package name */
        float f2151d;

        /* renamed from: e  reason: collision with root package name */
        float f2152e;

        public WavePoint(int i2, float f4, float f5, float f6, float f7) {
            this.f2148a = i2;
            this.f2149b = f7;
            this.f2150c = f5;
            this.f2151d = f4;
            this.f2152e = f6;
        }
    }

    public static KeyCycleOscillator makeWidgetCycle(String str) {
        if (str.equals("pathRotate")) {
            return new PathRotateSet(str);
        }
        return new CoreSpline(str);
    }

    protected void a(Object obj) {
    }

    public float get(float f4) {
        return (float) this.f2120b.getValues(f4);
    }

    public CurveFit getCurveFit() {
        return this.f2119a;
    }

    public float getSlope(float f4) {
        return (float) this.f2120b.getSlope(f4);
    }

    public void setPoint(int i2, int i4, String str, int i5, float f4, float f5, float f6, float f7, Object obj) {
        this.f2124f.add(new WavePoint(i2, f4, f5, f6, f7));
        if (i5 != -1) {
            this.mVariesBy = i5;
        }
        this.f2122d = i4;
        a(obj);
        this.f2123e = str;
    }

    public void setProperty(MotionWidget motionWidget, float f4) {
    }

    public void setType(String str) {
        this.f2121c = str;
    }

    public void setup(float f4) {
        int size = this.f2124f.size();
        if (size == 0) {
            return;
        }
        Collections.sort(this.f2124f, new Comparator<WavePoint>() { // from class: androidx.constraintlayout.core.motion.utils.KeyCycleOscillator.1
            @Override // java.util.Comparator
            public int compare(WavePoint wavePoint, WavePoint wavePoint2) {
                return Integer.compare(wavePoint.f2148a, wavePoint2.f2148a);
            }
        });
        double[] dArr = new double[size];
        char c4 = 0;
        double[][] dArr2 = (double[][]) Array.newInstance(double.class, size, 3);
        this.f2120b = new CycleOscillator(this.f2122d, this.f2123e, this.mVariesBy, size);
        Iterator<WavePoint> it2 = this.f2124f.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            WavePoint next = it2.next();
            float f5 = next.f2151d;
            double d4 = f5;
            Double.isNaN(d4);
            dArr[i2] = d4 * 0.01d;
            double[] dArr3 = dArr2[i2];
            float f6 = next.f2149b;
            dArr3[c4] = f6;
            double[] dArr4 = dArr2[i2];
            float f7 = next.f2150c;
            dArr4[1] = f7;
            double[] dArr5 = dArr2[i2];
            float f8 = next.f2152e;
            dArr5[2] = f8;
            this.f2120b.setPoint(i2, next.f2148a, f5, f7, f8, f6);
            i2++;
            c4 = 0;
        }
        this.f2120b.setup(f4);
        this.f2119a = CurveFit.get(0, dArr, dArr2);
    }

    public String toString() {
        String str = this.f2121c;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        Iterator<WavePoint> it2 = this.f2124f.iterator();
        while (it2.hasNext()) {
            WavePoint next = it2.next();
            str = str + "[" + next.f2148a + " , " + decimalFormat.format(next.f2149b) + "] ";
        }
        return str;
    }

    public boolean variesByPath() {
        return this.mVariesBy == 1;
    }

    public void setPoint(int i2, int i4, String str, int i5, float f4, float f5, float f6, float f7) {
        this.f2124f.add(new WavePoint(i2, f4, f5, f6, f7));
        if (i5 != -1) {
            this.mVariesBy = i5;
        }
        this.f2122d = i4;
        this.f2123e = str;
    }
}
