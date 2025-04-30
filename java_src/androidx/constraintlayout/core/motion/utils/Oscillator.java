package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;
/* loaded from: classes.dex */
public class Oscillator {
    public static final int BOUNCE = 6;
    public static final int COS_WAVE = 5;
    public static final int CUSTOM = 7;
    public static final int REVERSE_SAW_WAVE = 4;
    public static final int SAW_WAVE = 3;
    public static final int SIN_WAVE = 0;
    public static final int SQUARE_WAVE = 1;
    public static String TAG = "Oscillator";
    public static final int TRIANGLE_WAVE = 2;

    /* renamed from: c  reason: collision with root package name */
    double[] f2179c;

    /* renamed from: d  reason: collision with root package name */
    String f2180d;

    /* renamed from: e  reason: collision with root package name */
    MonotonicCurveFit f2181e;

    /* renamed from: f  reason: collision with root package name */
    int f2182f;

    /* renamed from: a  reason: collision with root package name */
    float[] f2177a = new float[0];

    /* renamed from: b  reason: collision with root package name */
    double[] f2178b = new double[0];

    /* renamed from: g  reason: collision with root package name */
    double f2183g = 6.283185307179586d;

    /* renamed from: h  reason: collision with root package name */
    private boolean f2184h = false;

    double a(double d4) {
        if (d4 <= 0.0d) {
            d4 = 1.0E-5d;
        } else if (d4 >= 1.0d) {
            d4 = 0.999999d;
        }
        int binarySearch = Arrays.binarySearch(this.f2178b, d4);
        if (binarySearch <= 0 && binarySearch != 0) {
            int i2 = (-binarySearch) - 1;
            float[] fArr = this.f2177a;
            int i4 = i2 - 1;
            double d5 = fArr[i2] - fArr[i4];
            double[] dArr = this.f2178b;
            Double.isNaN(d5);
            double d6 = d5 / (dArr[i2] - dArr[i4]);
            double d7 = d4 * d6;
            double d8 = fArr[i4];
            Double.isNaN(d8);
            return (d8 - (d6 * dArr[i4])) + d7;
        }
        return 0.0d;
    }

    public void addPoint(double d4, float f4) {
        int length = this.f2177a.length + 1;
        int binarySearch = Arrays.binarySearch(this.f2178b, d4);
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 1;
        }
        this.f2178b = Arrays.copyOf(this.f2178b, length);
        this.f2177a = Arrays.copyOf(this.f2177a, length);
        this.f2179c = new double[length];
        double[] dArr = this.f2178b;
        System.arraycopy(dArr, binarySearch, dArr, binarySearch + 1, (length - binarySearch) - 1);
        this.f2178b[binarySearch] = d4;
        this.f2177a[binarySearch] = f4;
        this.f2184h = false;
    }

    double b(double d4) {
        if (d4 < 0.0d) {
            d4 = 0.0d;
        } else if (d4 > 1.0d) {
            d4 = 1.0d;
        }
        int binarySearch = Arrays.binarySearch(this.f2178b, d4);
        if (binarySearch > 0) {
            return 1.0d;
        }
        if (binarySearch != 0) {
            int i2 = (-binarySearch) - 1;
            float[] fArr = this.f2177a;
            int i4 = i2 - 1;
            double d5 = fArr[i2] - fArr[i4];
            double[] dArr = this.f2178b;
            Double.isNaN(d5);
            double d6 = d5 / (dArr[i2] - dArr[i4]);
            double d7 = this.f2179c[i4];
            double d8 = fArr[i4];
            Double.isNaN(d8);
            return d7 + ((d8 - (dArr[i4] * d6)) * (d4 - dArr[i4])) + ((d6 * ((d4 * d4) - (dArr[i4] * dArr[i4]))) / 2.0d);
        }
        return 0.0d;
    }

    public double getSlope(double d4, double d5, double d6) {
        double b4 = d5 + b(d4);
        double a4 = a(d4) + d6;
        switch (this.f2182f) {
            case 1:
                return 0.0d;
            case 2:
                return a4 * 4.0d * Math.signum((((b4 * 4.0d) + 3.0d) % 4.0d) - 2.0d);
            case 3:
                return a4 * 2.0d;
            case 4:
                return (-a4) * 2.0d;
            case 5:
                double d7 = this.f2183g;
                return (-d7) * a4 * Math.sin(d7 * b4);
            case 6:
                return a4 * 4.0d * ((((b4 * 4.0d) + 2.0d) % 4.0d) - 2.0d);
            case 7:
                return this.f2181e.getSlope(b4 % 1.0d, 0);
            default:
                double d8 = this.f2183g;
                return a4 * d8 * Math.cos(d8 * b4);
        }
    }

    public double getValue(double d4, double d5) {
        double abs;
        double b4 = b(d4) + d5;
        switch (this.f2182f) {
            case 1:
                return Math.signum(0.5d - (b4 % 1.0d));
            case 2:
                abs = Math.abs((((b4 * 4.0d) + 1.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return (((b4 * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                abs = ((b4 * 2.0d) + 1.0d) % 2.0d;
                break;
            case 5:
                return Math.cos(this.f2183g * (d5 + b4));
            case 6:
                double abs2 = 1.0d - Math.abs(((b4 * 4.0d) % 4.0d) - 2.0d);
                abs = abs2 * abs2;
                break;
            case 7:
                return this.f2181e.getPos(b4 % 1.0d, 0);
            default:
                return Math.sin(this.f2183g * b4);
        }
        return 1.0d - abs;
    }

    public void normalize() {
        double d4 = 0.0d;
        int i2 = 0;
        while (true) {
            float[] fArr = this.f2177a;
            if (i2 >= fArr.length) {
                break;
            }
            double d5 = fArr[i2];
            Double.isNaN(d5);
            d4 += d5;
            i2++;
        }
        double d6 = 0.0d;
        int i4 = 1;
        while (true) {
            float[] fArr2 = this.f2177a;
            if (i4 >= fArr2.length) {
                break;
            }
            int i5 = i4 - 1;
            double[] dArr = this.f2178b;
            double d7 = (fArr2[i5] + fArr2[i4]) / 2.0f;
            Double.isNaN(d7);
            d6 += (dArr[i4] - dArr[i5]) * d7;
            i4++;
        }
        int i6 = 0;
        while (true) {
            float[] fArr3 = this.f2177a;
            if (i6 >= fArr3.length) {
                break;
            }
            double d8 = fArr3[i6];
            Double.isNaN(d8);
            fArr3[i6] = (float) (d8 * (d4 / d6));
            i6++;
        }
        this.f2179c[0] = 0.0d;
        int i7 = 1;
        while (true) {
            float[] fArr4 = this.f2177a;
            if (i7 < fArr4.length) {
                int i8 = i7 - 1;
                double[] dArr2 = this.f2178b;
                double d9 = dArr2[i7] - dArr2[i8];
                double[] dArr3 = this.f2179c;
                double d10 = dArr3[i8];
                double d11 = (fArr4[i8] + fArr4[i7]) / 2.0f;
                Double.isNaN(d11);
                dArr3[i7] = d10 + (d9 * d11);
                i7++;
            } else {
                this.f2184h = true;
                return;
            }
        }
    }

    public void setType(int i2, String str) {
        this.f2182f = i2;
        this.f2180d = str;
        if (str != null) {
            this.f2181e = MonotonicCurveFit.buildWave(str);
        }
    }

    public String toString() {
        return "pos =" + Arrays.toString(this.f2178b) + " period=" + Arrays.toString(this.f2177a);
    }
}
