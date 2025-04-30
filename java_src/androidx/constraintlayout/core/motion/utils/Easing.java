package androidx.constraintlayout.core.motion.utils;

import java.io.PrintStream;
import java.util.Arrays;
/* loaded from: classes.dex */
public class Easing {

    /* renamed from: c  reason: collision with root package name */
    private static final String f2088c = "cubic(0.4, 0.0, 0.2, 1)";

    /* renamed from: d  reason: collision with root package name */
    private static final String f2089d = "cubic(0.4, 0.05, 0.8, 0.7)";

    /* renamed from: e  reason: collision with root package name */
    private static final String f2090e = "cubic(0.0, 0.0, 0.2, 0.95)";

    /* renamed from: f  reason: collision with root package name */
    private static final String f2091f = "cubic(1, 1, 0, 0)";

    /* renamed from: g  reason: collision with root package name */
    private static final String f2092g = "cubic(0.36, 0, 0.66, -0.56)";

    /* renamed from: h  reason: collision with root package name */
    private static final String f2093h = "cubic(0.34, 1.56, 0.64, 1)";

    /* renamed from: k  reason: collision with root package name */
    private static final String f2096k = "standard";

    /* renamed from: m  reason: collision with root package name */
    private static final String f2098m = "anticipate";

    /* renamed from: n  reason: collision with root package name */
    private static final String f2099n = "overshoot";

    /* renamed from: a  reason: collision with root package name */
    String f2100a = "identity";

    /* renamed from: b  reason: collision with root package name */
    static Easing f2087b = new Easing();

    /* renamed from: j  reason: collision with root package name */
    private static final String f2095j = "accelerate";

    /* renamed from: i  reason: collision with root package name */
    private static final String f2094i = "decelerate";

    /* renamed from: l  reason: collision with root package name */
    private static final String f2097l = "linear";
    public static String[] NAMED_EASING = {"standard", f2095j, f2094i, f2097l};

    public static Easing getInterpolator(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("cubic")) {
            return new CubicEasing(str);
        }
        if (str.startsWith("spline")) {
            return new StepCurve(str);
        }
        if (str.startsWith("Schlick")) {
            return new Schlick(str);
        }
        char c4 = 65535;
        switch (str.hashCode()) {
            case -1354466595:
                if (str.equals(f2095j)) {
                    c4 = 0;
                    break;
                }
                break;
            case -1263948740:
                if (str.equals(f2094i)) {
                    c4 = 1;
                    break;
                }
                break;
            case -1197605014:
                if (str.equals(f2098m)) {
                    c4 = 2;
                    break;
                }
                break;
            case -1102672091:
                if (str.equals(f2097l)) {
                    c4 = 3;
                    break;
                }
                break;
            case -749065269:
                if (str.equals(f2099n)) {
                    c4 = 4;
                    break;
                }
                break;
            case 1312628413:
                if (str.equals("standard")) {
                    c4 = 5;
                    break;
                }
                break;
        }
        switch (c4) {
            case 0:
                return new CubicEasing(f2089d);
            case 1:
                return new CubicEasing(f2090e);
            case 2:
                return new CubicEasing(f2092g);
            case 3:
                return new CubicEasing(f2091f);
            case 4:
                return new CubicEasing(f2093h);
            case 5:
                return new CubicEasing(f2088c);
            default:
                PrintStream printStream = System.err;
                printStream.println("transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or " + Arrays.toString(NAMED_EASING));
                return f2087b;
        }
    }

    public double get(double d4) {
        return d4;
    }

    public double getDiff(double d4) {
        return 1.0d;
    }

    public String toString() {
        return this.f2100a;
    }

    /* loaded from: classes.dex */
    static class CubicEasing extends Easing {

        /* renamed from: s  reason: collision with root package name */
        private static double f2101s = 0.01d;

        /* renamed from: t  reason: collision with root package name */
        private static double f2102t = 1.0E-4d;

        /* renamed from: o  reason: collision with root package name */
        double f2103o;

        /* renamed from: p  reason: collision with root package name */
        double f2104p;

        /* renamed from: q  reason: collision with root package name */
        double f2105q;

        /* renamed from: r  reason: collision with root package name */
        double f2106r;

        CubicEasing(String str) {
            this.f2100a = str;
            int indexOf = str.indexOf(40);
            int indexOf2 = str.indexOf(44, indexOf);
            this.f2103o = Double.parseDouble(str.substring(indexOf + 1, indexOf2).trim());
            int i2 = indexOf2 + 1;
            int indexOf3 = str.indexOf(44, i2);
            this.f2104p = Double.parseDouble(str.substring(i2, indexOf3).trim());
            int i4 = indexOf3 + 1;
            int indexOf4 = str.indexOf(44, i4);
            this.f2105q = Double.parseDouble(str.substring(i4, indexOf4).trim());
            int i5 = indexOf4 + 1;
            this.f2106r = Double.parseDouble(str.substring(i5, str.indexOf(41, i5)).trim());
        }

        private double a(double d4) {
            double d5 = 1.0d - d4;
            double d6 = this.f2103o;
            double d7 = this.f2105q;
            return (d5 * 3.0d * d5 * d6) + (d5 * 6.0d * d4 * (d7 - d6)) + (3.0d * d4 * d4 * (1.0d - d7));
        }

        private double b(double d4) {
            double d5 = 1.0d - d4;
            double d6 = this.f2104p;
            double d7 = this.f2106r;
            return (d5 * 3.0d * d5 * d6) + (d5 * 6.0d * d4 * (d7 - d6)) + (3.0d * d4 * d4 * (1.0d - d7));
        }

        private double c(double d4) {
            double d5 = 1.0d - d4;
            double d6 = 3.0d * d5;
            return (this.f2103o * d5 * d6 * d4) + (this.f2105q * d6 * d4 * d4) + (d4 * d4 * d4);
        }

        private double d(double d4) {
            double d5 = 1.0d - d4;
            double d6 = 3.0d * d5;
            return (this.f2104p * d5 * d6 * d4) + (this.f2106r * d6 * d4 * d4) + (d4 * d4 * d4);
        }

        void e(double d4, double d5, double d6, double d7) {
            this.f2103o = d4;
            this.f2104p = d5;
            this.f2105q = d6;
            this.f2106r = d7;
        }

        @Override // androidx.constraintlayout.core.motion.utils.Easing
        public double get(double d4) {
            if (d4 <= 0.0d) {
                return 0.0d;
            }
            if (d4 >= 1.0d) {
                return 1.0d;
            }
            double d5 = 0.5d;
            double d6 = 0.5d;
            while (d5 > f2101s) {
                d5 *= 0.5d;
                d6 = c(d6) < d4 ? d6 + d5 : d6 - d5;
            }
            double d7 = d6 - d5;
            double c4 = c(d7);
            double d8 = d6 + d5;
            double c5 = c(d8);
            double d9 = d(d7);
            return (((d(d8) - d9) * (d4 - c4)) / (c5 - c4)) + d9;
        }

        @Override // androidx.constraintlayout.core.motion.utils.Easing
        public double getDiff(double d4) {
            double d5 = 0.5d;
            double d6 = 0.5d;
            while (d5 > f2102t) {
                d5 *= 0.5d;
                d6 = c(d6) < d4 ? d6 + d5 : d6 - d5;
            }
            double d7 = d6 - d5;
            double d8 = d6 + d5;
            return (d(d8) - d(d7)) / (c(d8) - c(d7));
        }

        public CubicEasing(double d4, double d5, double d6, double d7) {
            e(d4, d5, d6, d7);
        }
    }
}
