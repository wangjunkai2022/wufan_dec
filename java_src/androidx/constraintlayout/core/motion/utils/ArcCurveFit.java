package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;
/* loaded from: classes.dex */
public class ArcCurveFit extends CurveFit {
    public static final int ARC_START_FLIP = 3;
    public static final int ARC_START_HORIZONTAL = 2;
    public static final int ARC_START_LINEAR = 0;
    public static final int ARC_START_VERTICAL = 1;

    /* renamed from: d  reason: collision with root package name */
    private static final int f2058d = 1;

    /* renamed from: e  reason: collision with root package name */
    private static final int f2059e = 2;

    /* renamed from: f  reason: collision with root package name */
    private static final int f2060f = 3;

    /* renamed from: a  reason: collision with root package name */
    private final double[] f2061a;

    /* renamed from: b  reason: collision with root package name */
    Arc[] f2062b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f2063c = true;

    /* loaded from: classes.dex */
    private static class Arc {

        /* renamed from: s  reason: collision with root package name */
        private static final String f2064s = "Arc";

        /* renamed from: t  reason: collision with root package name */
        private static double[] f2065t = new double[91];

        /* renamed from: u  reason: collision with root package name */
        private static final double f2066u = 0.001d;

        /* renamed from: a  reason: collision with root package name */
        double[] f2067a;

        /* renamed from: b  reason: collision with root package name */
        double f2068b;

        /* renamed from: c  reason: collision with root package name */
        double f2069c;

        /* renamed from: d  reason: collision with root package name */
        double f2070d;

        /* renamed from: e  reason: collision with root package name */
        double f2071e;

        /* renamed from: f  reason: collision with root package name */
        double f2072f;

        /* renamed from: g  reason: collision with root package name */
        double f2073g;

        /* renamed from: h  reason: collision with root package name */
        double f2074h;

        /* renamed from: i  reason: collision with root package name */
        double f2075i;

        /* renamed from: j  reason: collision with root package name */
        double f2076j;

        /* renamed from: k  reason: collision with root package name */
        double f2077k;

        /* renamed from: l  reason: collision with root package name */
        double f2078l;

        /* renamed from: m  reason: collision with root package name */
        double f2079m;

        /* renamed from: n  reason: collision with root package name */
        double f2080n;

        /* renamed from: o  reason: collision with root package name */
        double f2081o;

        /* renamed from: p  reason: collision with root package name */
        double f2082p;

        /* renamed from: q  reason: collision with root package name */
        boolean f2083q;

        /* renamed from: r  reason: collision with root package name */
        boolean f2084r;

        Arc(int i2, double d4, double d5, double d6, double d7, double d8, double d9) {
            this.f2084r = false;
            this.f2083q = i2 == 1;
            this.f2069c = d4;
            this.f2070d = d5;
            this.f2075i = 1.0d / (d5 - d4);
            if (3 == i2) {
                this.f2084r = true;
            }
            double d10 = d8 - d6;
            double d11 = d9 - d7;
            if (!this.f2084r && Math.abs(d10) >= f2066u && Math.abs(d11) >= f2066u) {
                this.f2067a = new double[101];
                boolean z3 = this.f2083q;
                double d12 = z3 ? -1 : 1;
                Double.isNaN(d12);
                this.f2076j = d10 * d12;
                double d13 = z3 ? 1 : -1;
                Double.isNaN(d13);
                this.f2077k = d11 * d13;
                this.f2078l = z3 ? d8 : d6;
                this.f2079m = z3 ? d7 : d9;
                a(d6, d7, d8, d9);
                this.f2080n = this.f2068b * this.f2075i;
                return;
            }
            this.f2084r = true;
            this.f2071e = d6;
            this.f2072f = d8;
            this.f2073g = d7;
            this.f2074h = d9;
            double hypot = Math.hypot(d11, d10);
            this.f2068b = hypot;
            this.f2080n = hypot * this.f2075i;
            double d14 = this.f2070d;
            double d15 = this.f2069c;
            this.f2078l = d10 / (d14 - d15);
            this.f2079m = d11 / (d14 - d15);
        }

        private void a(double d4, double d5, double d6, double d7) {
            double[] dArr;
            double[] dArr2;
            double d8;
            double d9 = d6 - d4;
            double d10 = d5 - d7;
            int i2 = 0;
            double d11 = 0.0d;
            double d12 = 0.0d;
            double d13 = 0.0d;
            while (true) {
                if (i2 >= f2065t.length) {
                    break;
                }
                double d14 = i2;
                Double.isNaN(d14);
                double d15 = d11;
                double length = dArr.length - 1;
                Double.isNaN(length);
                double radians = Math.toRadians((d14 * 90.0d) / length);
                double sin = Math.sin(radians) * d9;
                double cos = Math.cos(radians) * d10;
                if (i2 > 0) {
                    d8 = Math.hypot(sin - d12, cos - d13) + d15;
                    f2065t[i2] = d8;
                } else {
                    d8 = d15;
                }
                i2++;
                d13 = cos;
                d11 = d8;
                d12 = sin;
            }
            double d16 = d11;
            this.f2068b = d16;
            int i4 = 0;
            while (true) {
                double[] dArr3 = f2065t;
                if (i4 >= dArr3.length) {
                    break;
                }
                dArr3[i4] = dArr3[i4] / d16;
                i4++;
            }
            int i5 = 0;
            while (true) {
                if (i5 >= this.f2067a.length) {
                    return;
                }
                double d17 = i5;
                double length2 = dArr2.length - 1;
                Double.isNaN(d17);
                Double.isNaN(length2);
                double d18 = d17 / length2;
                int binarySearch = Arrays.binarySearch(f2065t, d18);
                if (binarySearch >= 0) {
                    double[] dArr4 = this.f2067a;
                    double d19 = binarySearch;
                    double length3 = f2065t.length - 1;
                    Double.isNaN(d19);
                    Double.isNaN(length3);
                    dArr4[i5] = d19 / length3;
                } else if (binarySearch == -1) {
                    this.f2067a[i5] = 0.0d;
                } else {
                    int i6 = -binarySearch;
                    int i7 = i6 - 2;
                    double d20 = i7;
                    double[] dArr5 = f2065t;
                    Double.isNaN(d20);
                    double length4 = dArr5.length - 1;
                    Double.isNaN(length4);
                    this.f2067a[i5] = (d20 + ((d18 - dArr5[i7]) / (dArr5[i6 - 1] - dArr5[i7]))) / length4;
                }
                i5++;
            }
        }

        double b() {
            double d4 = this.f2076j * this.f2082p;
            double hypot = this.f2080n / Math.hypot(d4, (-this.f2077k) * this.f2081o);
            if (this.f2083q) {
                d4 = -d4;
            }
            return d4 * hypot;
        }

        double c() {
            double d4 = this.f2076j * this.f2082p;
            double d5 = (-this.f2077k) * this.f2081o;
            double hypot = this.f2080n / Math.hypot(d4, d5);
            return this.f2083q ? (-d5) * hypot : d5 * hypot;
        }

        double d() {
            return this.f2078l + (this.f2076j * this.f2081o);
        }

        double e() {
            return this.f2079m + (this.f2077k * this.f2082p);
        }

        double f(double d4) {
            if (d4 <= 0.0d) {
                return 0.0d;
            }
            if (d4 >= 1.0d) {
                return 1.0d;
            }
            double[] dArr = this.f2067a;
            double length = dArr.length - 1;
            Double.isNaN(length);
            double d5 = d4 * length;
            int i2 = (int) d5;
            double d6 = i2;
            Double.isNaN(d6);
            return dArr[i2] + ((d5 - d6) * (dArr[i2 + 1] - dArr[i2]));
        }

        void g(double d4) {
            double f4 = f((this.f2083q ? this.f2070d - d4 : d4 - this.f2069c) * this.f2075i) * 1.5707963267948966d;
            this.f2081o = Math.sin(f4);
            this.f2082p = Math.cos(f4);
        }

        public double getLinearDX(double d4) {
            return this.f2078l;
        }

        public double getLinearDY(double d4) {
            return this.f2079m;
        }

        public double getLinearX(double d4) {
            double d5 = (d4 - this.f2069c) * this.f2075i;
            double d6 = this.f2071e;
            return d6 + (d5 * (this.f2072f - d6));
        }

        public double getLinearY(double d4) {
            double d5 = (d4 - this.f2069c) * this.f2075i;
            double d6 = this.f2073g;
            return d6 + (d5 * (this.f2074h - d6));
        }
    }

    public ArcCurveFit(int[] iArr, double[] dArr, double[][] dArr2) {
        this.f2061a = dArr;
        this.f2062b = new Arc[dArr.length - 1];
        int i2 = 0;
        int i4 = 1;
        int i5 = 1;
        while (true) {
            Arc[] arcArr = this.f2062b;
            if (i2 >= arcArr.length) {
                return;
            }
            int i6 = iArr[i2];
            if (i6 == 0) {
                i5 = 3;
            } else if (i6 == 1) {
                i4 = 1;
                i5 = 1;
            } else if (i6 == 2) {
                i4 = 2;
                i5 = 2;
            } else if (i6 == 3) {
                i4 = i4 == 1 ? 2 : 1;
                i5 = i4;
            }
            int i7 = i2 + 1;
            arcArr[i2] = new Arc(i5, dArr[i2], dArr[i7], dArr2[i2][0], dArr2[i2][1], dArr2[i7][0], dArr2[i7][1]);
            i2 = i7;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d4, double[] dArr) {
        if (this.f2063c) {
            Arc[] arcArr = this.f2062b;
            if (d4 < arcArr[0].f2069c) {
                double d5 = arcArr[0].f2069c;
                double d6 = d4 - arcArr[0].f2069c;
                if (arcArr[0].f2084r) {
                    dArr[0] = arcArr[0].getLinearX(d5) + (this.f2062b[0].getLinearDX(d5) * d6);
                    dArr[1] = this.f2062b[0].getLinearY(d5) + (d6 * this.f2062b[0].getLinearDY(d5));
                    return;
                }
                arcArr[0].g(d5);
                dArr[0] = this.f2062b[0].d() + (this.f2062b[0].b() * d6);
                dArr[1] = this.f2062b[0].e() + (d6 * this.f2062b[0].c());
                return;
            } else if (d4 > arcArr[arcArr.length - 1].f2070d) {
                double d7 = arcArr[arcArr.length - 1].f2070d;
                double d8 = d4 - d7;
                int length = arcArr.length - 1;
                if (arcArr[length].f2084r) {
                    dArr[0] = arcArr[length].getLinearX(d7) + (this.f2062b[length].getLinearDX(d7) * d8);
                    dArr[1] = this.f2062b[length].getLinearY(d7) + (d8 * this.f2062b[length].getLinearDY(d7));
                    return;
                }
                arcArr[length].g(d4);
                dArr[0] = this.f2062b[length].d() + (this.f2062b[length].b() * d8);
                dArr[1] = this.f2062b[length].e() + (d8 * this.f2062b[length].c());
                return;
            }
        } else {
            Arc[] arcArr2 = this.f2062b;
            if (d4 < arcArr2[0].f2069c) {
                d4 = arcArr2[0].f2069c;
            }
            if (d4 > arcArr2[arcArr2.length - 1].f2070d) {
                d4 = arcArr2[arcArr2.length - 1].f2070d;
            }
        }
        int i2 = 0;
        while (true) {
            Arc[] arcArr3 = this.f2062b;
            if (i2 >= arcArr3.length) {
                return;
            }
            if (d4 <= arcArr3[i2].f2070d) {
                if (arcArr3[i2].f2084r) {
                    dArr[0] = arcArr3[i2].getLinearX(d4);
                    dArr[1] = this.f2062b[i2].getLinearY(d4);
                    return;
                }
                arcArr3[i2].g(d4);
                dArr[0] = this.f2062b[i2].d();
                dArr[1] = this.f2062b[i2].e();
                return;
            }
            i2++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getSlope(double d4, double[] dArr) {
        Arc[] arcArr = this.f2062b;
        if (d4 < arcArr[0].f2069c) {
            d4 = arcArr[0].f2069c;
        } else if (d4 > arcArr[arcArr.length - 1].f2070d) {
            d4 = arcArr[arcArr.length - 1].f2070d;
        }
        int i2 = 0;
        while (true) {
            Arc[] arcArr2 = this.f2062b;
            if (i2 >= arcArr2.length) {
                return;
            }
            if (d4 <= arcArr2[i2].f2070d) {
                if (arcArr2[i2].f2084r) {
                    dArr[0] = arcArr2[i2].getLinearDX(d4);
                    dArr[1] = this.f2062b[i2].getLinearDY(d4);
                    return;
                }
                arcArr2[i2].g(d4);
                dArr[0] = this.f2062b[i2].b();
                dArr[1] = this.f2062b[i2].c();
                return;
            }
            i2++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.f2061a;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getSlope(double d4, int i2) {
        Arc[] arcArr = this.f2062b;
        int i4 = 0;
        if (d4 < arcArr[0].f2069c) {
            d4 = arcArr[0].f2069c;
        }
        if (d4 > arcArr[arcArr.length - 1].f2070d) {
            d4 = arcArr[arcArr.length - 1].f2070d;
        }
        while (true) {
            Arc[] arcArr2 = this.f2062b;
            if (i4 >= arcArr2.length) {
                return Double.NaN;
            }
            if (d4 <= arcArr2[i4].f2070d) {
                if (arcArr2[i4].f2084r) {
                    if (i2 == 0) {
                        return arcArr2[i4].getLinearDX(d4);
                    }
                    return arcArr2[i4].getLinearDY(d4);
                }
                arcArr2[i4].g(d4);
                if (i2 == 0) {
                    return this.f2062b[i4].b();
                }
                return this.f2062b[i4].c();
            }
            i4++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d4, float[] fArr) {
        if (this.f2063c) {
            Arc[] arcArr = this.f2062b;
            if (d4 < arcArr[0].f2069c) {
                double d5 = arcArr[0].f2069c;
                double d6 = d4 - arcArr[0].f2069c;
                if (arcArr[0].f2084r) {
                    fArr[0] = (float) (arcArr[0].getLinearX(d5) + (this.f2062b[0].getLinearDX(d5) * d6));
                    fArr[1] = (float) (this.f2062b[0].getLinearY(d5) + (d6 * this.f2062b[0].getLinearDY(d5)));
                    return;
                }
                arcArr[0].g(d5);
                fArr[0] = (float) (this.f2062b[0].d() + (this.f2062b[0].b() * d6));
                fArr[1] = (float) (this.f2062b[0].e() + (d6 * this.f2062b[0].c()));
                return;
            } else if (d4 > arcArr[arcArr.length - 1].f2070d) {
                double d7 = arcArr[arcArr.length - 1].f2070d;
                double d8 = d4 - d7;
                int length = arcArr.length - 1;
                if (arcArr[length].f2084r) {
                    fArr[0] = (float) (arcArr[length].getLinearX(d7) + (this.f2062b[length].getLinearDX(d7) * d8));
                    fArr[1] = (float) (this.f2062b[length].getLinearY(d7) + (d8 * this.f2062b[length].getLinearDY(d7)));
                    return;
                }
                arcArr[length].g(d4);
                fArr[0] = (float) this.f2062b[length].d();
                fArr[1] = (float) this.f2062b[length].e();
                return;
            }
        } else {
            Arc[] arcArr2 = this.f2062b;
            if (d4 < arcArr2[0].f2069c) {
                d4 = arcArr2[0].f2069c;
            } else if (d4 > arcArr2[arcArr2.length - 1].f2070d) {
                d4 = arcArr2[arcArr2.length - 1].f2070d;
            }
        }
        int i2 = 0;
        while (true) {
            Arc[] arcArr3 = this.f2062b;
            if (i2 >= arcArr3.length) {
                return;
            }
            if (d4 <= arcArr3[i2].f2070d) {
                if (arcArr3[i2].f2084r) {
                    fArr[0] = (float) arcArr3[i2].getLinearX(d4);
                    fArr[1] = (float) this.f2062b[i2].getLinearY(d4);
                    return;
                }
                arcArr3[i2].g(d4);
                fArr[0] = (float) this.f2062b[i2].d();
                fArr[1] = (float) this.f2062b[i2].e();
                return;
            }
            i2++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d4, int i2) {
        double d5;
        double linearY;
        double linearDY;
        double e4;
        double c4;
        int i4 = 0;
        if (this.f2063c) {
            Arc[] arcArr = this.f2062b;
            if (d4 < arcArr[0].f2069c) {
                double d6 = arcArr[0].f2069c;
                d5 = d4 - arcArr[0].f2069c;
                if (!arcArr[0].f2084r) {
                    arcArr[0].g(d6);
                    if (i2 == 0) {
                        e4 = this.f2062b[0].d();
                        c4 = this.f2062b[0].b();
                    } else {
                        e4 = this.f2062b[0].e();
                        c4 = this.f2062b[0].c();
                    }
                    return e4 + (d5 * c4);
                } else if (i2 == 0) {
                    linearY = arcArr[0].getLinearX(d6);
                    linearDY = this.f2062b[0].getLinearDX(d6);
                } else {
                    linearY = arcArr[0].getLinearY(d6);
                    linearDY = this.f2062b[0].getLinearDY(d6);
                }
            } else if (d4 > arcArr[arcArr.length - 1].f2070d) {
                double d7 = arcArr[arcArr.length - 1].f2070d;
                d5 = d4 - d7;
                int length = arcArr.length - 1;
                if (i2 == 0) {
                    linearY = arcArr[length].getLinearX(d7);
                    linearDY = this.f2062b[length].getLinearDX(d7);
                } else {
                    linearY = arcArr[length].getLinearY(d7);
                    linearDY = this.f2062b[length].getLinearDY(d7);
                }
            }
            return linearY + (d5 * linearDY);
        }
        Arc[] arcArr2 = this.f2062b;
        if (d4 < arcArr2[0].f2069c) {
            d4 = arcArr2[0].f2069c;
        } else if (d4 > arcArr2[arcArr2.length - 1].f2070d) {
            d4 = arcArr2[arcArr2.length - 1].f2070d;
        }
        while (true) {
            Arc[] arcArr3 = this.f2062b;
            if (i4 >= arcArr3.length) {
                return Double.NaN;
            }
            if (d4 <= arcArr3[i4].f2070d) {
                if (arcArr3[i4].f2084r) {
                    if (i2 == 0) {
                        return arcArr3[i4].getLinearX(d4);
                    }
                    return arcArr3[i4].getLinearY(d4);
                }
                arcArr3[i4].g(d4);
                if (i2 == 0) {
                    return this.f2062b[i4].d();
                }
                return this.f2062b[i4].e();
            }
            i4++;
        }
    }
}
