package androidx.constraintlayout.core.motion.utils;

import java.io.PrintStream;
/* loaded from: classes.dex */
public class SpringStopEngine implements StopEngine {

    /* renamed from: l  reason: collision with root package name */
    private static final double f2203l = Double.MAX_VALUE;

    /* renamed from: c  reason: collision with root package name */
    private double f2206c;

    /* renamed from: d  reason: collision with root package name */
    private double f2207d;

    /* renamed from: e  reason: collision with root package name */
    private double f2208e;

    /* renamed from: f  reason: collision with root package name */
    private float f2209f;

    /* renamed from: g  reason: collision with root package name */
    private float f2210g;

    /* renamed from: h  reason: collision with root package name */
    private float f2211h;

    /* renamed from: i  reason: collision with root package name */
    private float f2212i;

    /* renamed from: j  reason: collision with root package name */
    private float f2213j;

    /* renamed from: a  reason: collision with root package name */
    double f2204a = 0.5d;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2205b = false;

    /* renamed from: k  reason: collision with root package name */
    private int f2214k = 0;

    private void a(double d4) {
        double d5 = this.f2206c;
        double d6 = this.f2204a;
        double d7 = this.f2212i;
        Double.isNaN(d7);
        int sqrt = (int) ((9.0d / ((Math.sqrt(d5 / d7) * d4) * 4.0d)) + 1.0d);
        double d8 = sqrt;
        Double.isNaN(d8);
        double d9 = d4 / d8;
        int i2 = 0;
        while (i2 < sqrt) {
            float f4 = this.f2210g;
            double d10 = f4;
            double d11 = this.f2207d;
            Double.isNaN(d10);
            double d12 = (-d5) * (d10 - d11);
            float f5 = this.f2211h;
            double d13 = d5;
            double d14 = f5;
            Double.isNaN(d14);
            double d15 = d12 - (d14 * d6);
            float f6 = this.f2212i;
            double d16 = d6;
            double d17 = f6;
            Double.isNaN(d17);
            double d18 = d15 / d17;
            double d19 = f5;
            Double.isNaN(d19);
            double d20 = d19 + ((d18 * d9) / 2.0d);
            double d21 = f4;
            Double.isNaN(d21);
            double d22 = f6;
            Double.isNaN(d22);
            double d23 = ((((-((d21 + ((d9 * d20) / 2.0d)) - d11)) * d13) - (d20 * d16)) / d22) * d9;
            double d24 = f5;
            Double.isNaN(d24);
            double d25 = f5;
            Double.isNaN(d25);
            float f7 = (float) (d25 + d23);
            this.f2211h = f7;
            double d26 = f4;
            Double.isNaN(d26);
            float f8 = (float) (d26 + ((d24 + (d23 / 2.0d)) * d9));
            this.f2210g = f8;
            int i4 = this.f2214k;
            if (i4 > 0) {
                if (f8 < 0.0f && (i4 & 1) == 1) {
                    this.f2210g = -f8;
                    this.f2211h = -f7;
                }
                float f9 = this.f2210g;
                if (f9 > 1.0f && (i4 & 2) == 2) {
                    this.f2210g = 2.0f - f9;
                    this.f2211h = -this.f2211h;
                }
            }
            i2++;
            d5 = d13;
            d6 = d16;
        }
    }

    void b(String str) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        PrintStream printStream = System.out;
        printStream.println((".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName() + "() ") + str);
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public String debug(String str, float f4) {
        return null;
    }

    public float getAcceleration() {
        double d4 = this.f2206c;
        double d5 = this.f2204a;
        double d6 = this.f2210g;
        double d7 = this.f2207d;
        Double.isNaN(d6);
        double d8 = (-d4) * (d6 - d7);
        double d9 = this.f2211h;
        Double.isNaN(d9);
        return ((float) (d8 - (d5 * d9))) / this.f2212i;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getInterpolation(float f4) {
        a(f4 - this.f2209f);
        this.f2209f = f4;
        return this.f2210g;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity() {
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity(float f4) {
        return this.f2211h;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public boolean isStopped() {
        double d4 = this.f2210g;
        double d5 = this.f2207d;
        Double.isNaN(d4);
        double d6 = d4 - d5;
        double d7 = this.f2206c;
        double d8 = this.f2211h;
        double d9 = this.f2212i;
        Double.isNaN(d8);
        Double.isNaN(d8);
        Double.isNaN(d9);
        return Math.sqrt((((d8 * d8) * d9) + ((d7 * d6) * d6)) / d7) <= ((double) this.f2213j);
    }

    public void springConfig(float f4, float f5, float f6, float f7, float f8, float f9, float f10, int i2) {
        this.f2207d = f5;
        this.f2204a = f9;
        this.f2205b = false;
        this.f2210g = f4;
        this.f2208e = f6;
        this.f2206c = f8;
        this.f2212i = f7;
        this.f2213j = f10;
        this.f2214k = i2;
        this.f2209f = 0.0f;
    }
}
