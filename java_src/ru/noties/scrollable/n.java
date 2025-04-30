package ru.noties.scrollable;

import android.content.Context;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
/* compiled from: ScrollableScroller.java */
/* loaded from: classes5.dex */
public class n {
    private static final int A = 0;
    private static final int B = 1;
    private static final float D = 0.35f;
    private static final float E = 0.5f;
    private static final float F = 1.0f;
    private static final float G = 0.175f;
    private static final float H = 0.35000002f;
    private static final int I = 100;

    /* renamed from: a  reason: collision with root package name */
    private final Interpolator f74178a;

    /* renamed from: b  reason: collision with root package name */
    private int f74179b;

    /* renamed from: c  reason: collision with root package name */
    private int f74180c;

    /* renamed from: d  reason: collision with root package name */
    private int f74181d;

    /* renamed from: e  reason: collision with root package name */
    private int f74182e;

    /* renamed from: f  reason: collision with root package name */
    private int f74183f;

    /* renamed from: g  reason: collision with root package name */
    private int f74184g;

    /* renamed from: h  reason: collision with root package name */
    private int f74185h;

    /* renamed from: i  reason: collision with root package name */
    private int f74186i;

    /* renamed from: j  reason: collision with root package name */
    private int f74187j;

    /* renamed from: k  reason: collision with root package name */
    private int f74188k;

    /* renamed from: l  reason: collision with root package name */
    private int f74189l;

    /* renamed from: m  reason: collision with root package name */
    private long f74190m;

    /* renamed from: n  reason: collision with root package name */
    private int f74191n;

    /* renamed from: o  reason: collision with root package name */
    private float f74192o;

    /* renamed from: p  reason: collision with root package name */
    private float f74193p;

    /* renamed from: q  reason: collision with root package name */
    private float f74194q;

    /* renamed from: s  reason: collision with root package name */
    private boolean f74196s;

    /* renamed from: t  reason: collision with root package name */
    private float f74197t;

    /* renamed from: u  reason: collision with root package name */
    private float f74198u;

    /* renamed from: v  reason: collision with root package name */
    private int f74199v;

    /* renamed from: x  reason: collision with root package name */
    private float f74201x;

    /* renamed from: y  reason: collision with root package name */
    private final float f74202y;

    /* renamed from: z  reason: collision with root package name */
    private float f74203z;
    private static float C = (float) (Math.log(0.78d) / Math.log(0.9d));
    private static final float[] J = new float[101];

    /* renamed from: w  reason: collision with root package name */
    private float f74200w = ViewConfiguration.getScrollFriction();

    /* renamed from: r  reason: collision with root package name */
    private boolean f74195r = true;

    /* compiled from: ScrollableScroller.java */
    /* loaded from: classes5.dex */
    static class a implements Interpolator {

        /* renamed from: a  reason: collision with root package name */
        private static final float f74204a = 8.0f;

        /* renamed from: b  reason: collision with root package name */
        private static final float f74205b;

        /* renamed from: c  reason: collision with root package name */
        private static final float f74206c;

        static {
            float a4 = 1.0f / a(1.0f);
            f74205b = a4;
            f74206c = 1.0f - (a4 * a(1.0f));
        }

        a() {
        }

        private static float a(float f4) {
            float f5 = f4 * f74204a;
            if (f5 < 1.0f) {
                return f5 - (1.0f - ((float) Math.exp(-f5)));
            }
            return ((1.0f - ((float) Math.exp(1.0f - f5))) * 0.63212055f) + 0.36787945f;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f4) {
            float a4 = f74205b * a(f4);
            return a4 > 0.0f ? a4 + f74206c : a4;
        }
    }

    static {
        float f4;
        float f5;
        float f6;
        float f7;
        float f8 = 0.0f;
        float f9 = 0.0f;
        for (int i2 = 0; i2 < 100; i2++) {
            float f10 = i2 / 100.0f;
            float f11 = 1.0f;
            while (true) {
                f4 = ((f11 - f8) / 2.0f) + f8;
                f5 = 1.0f - f4;
                f6 = f4 * 3.0f * f5;
                f7 = f4 * f4 * f4;
                float f12 = (((0.175f * f5) + (H * f4)) * f6) + f7;
                if (Math.abs(f12 - f10) < 1.0E-5d) {
                    break;
                } else if (f12 > f10) {
                    f11 = f4;
                } else {
                    f8 = f4;
                }
            }
            J[i2] = (f6 * ((f5 * 0.5f) + f4)) + f7;
            float f13 = 1.0f;
            while (true) {
                float f14 = ((f13 - f9) / 2.0f) + f9;
                float f15 = 1.0f - f14;
                float f16 = (f14 * 3.0f * f15 * ((f15 * 0.5f) + f14)) + (f14 * f14 * f14);
                if (Math.abs(f16 - f10) < 1.0E-5d) {
                    break;
                } else if (f16 > f10) {
                    f13 = f14;
                } else {
                    f9 = f14;
                }
            }
        }
        J[100] = 1.0f;
    }

    public n(Context context, Interpolator interpolator, boolean z3) {
        if (interpolator == null) {
            this.f74178a = new a();
        } else {
            this.f74178a = interpolator;
        }
        this.f74202y = context.getResources().getDisplayMetrics().density * 160.0f;
        this.f74201x = b(ViewConfiguration.getScrollFriction());
        this.f74196s = z3;
        this.f74203z = b(0.84f);
    }

    private float b(float f4) {
        return this.f74202y * 386.0878f * f4;
    }

    private double i(float f4) {
        return Math.log((Math.abs(f4) * D) / (this.f74200w * this.f74203z));
    }

    private double j(float f4) {
        double i2 = i(f4);
        float f5 = C;
        double d4 = f5;
        Double.isNaN(d4);
        double d5 = this.f74200w * this.f74203z;
        double d6 = f5;
        Double.isNaN(d6);
        double exp = Math.exp((d6 / (d4 - 1.0d)) * i2);
        Double.isNaN(d5);
        return d5 * exp;
    }

    public void a() {
        this.f74188k = this.f74182e;
        this.f74189l = this.f74183f;
        this.f74195r = true;
    }

    public boolean c() {
        if (this.f74195r) {
            return false;
        }
        int currentAnimationTimeMillis = (int) (AnimationUtils.currentAnimationTimeMillis() - this.f74190m);
        int i2 = this.f74191n;
        if (currentAnimationTimeMillis < i2) {
            int i4 = this.f74179b;
            if (i4 == 0) {
                float interpolation = this.f74178a.getInterpolation(currentAnimationTimeMillis * this.f74192o);
                this.f74188k = this.f74180c + Math.round(this.f74193p * interpolation);
                this.f74189l = this.f74181d + Math.round(interpolation * this.f74194q);
            } else if (i4 == 1) {
                float f4 = currentAnimationTimeMillis / i2;
                int i5 = (int) (f4 * 100.0f);
                float f5 = 1.0f;
                float f6 = 0.0f;
                if (i5 < 100) {
                    float f7 = i5 / 100.0f;
                    int i6 = i5 + 1;
                    float[] fArr = J;
                    float f8 = fArr[i5];
                    f6 = (fArr[i6] - f8) / ((i6 / 100.0f) - f7);
                    f5 = f8 + ((f4 - f7) * f6);
                }
                this.f74198u = ((f6 * this.f74199v) / i2) * 1000.0f;
                int i7 = this.f74180c;
                int round = i7 + Math.round((this.f74182e - i7) * f5);
                this.f74188k = round;
                int min = Math.min(round, this.f74185h);
                this.f74188k = min;
                this.f74188k = Math.max(min, this.f74184g);
                int i8 = this.f74181d;
                int round2 = i8 + Math.round(f5 * (this.f74183f - i8));
                this.f74189l = round2;
                int min2 = Math.min(round2, this.f74187j);
                this.f74189l = min2;
                int max = Math.max(min2, this.f74186i);
                this.f74189l = max;
                if (this.f74188k == this.f74182e && max == this.f74183f) {
                    this.f74195r = true;
                }
            }
        } else {
            this.f74188k = this.f74182e;
            this.f74189l = this.f74183f;
            this.f74195r = true;
        }
        return true;
    }

    public void d(int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        if (this.f74196s && !this.f74195r) {
            float e4 = e();
            float f4 = this.f74182e - this.f74180c;
            float f5 = this.f74183f - this.f74181d;
            float hypot = (float) Math.hypot(f4, f5);
            float f6 = (f4 / hypot) * e4;
            float f7 = (f5 / hypot) * e4;
            float f8 = i5;
            if (Math.signum(f8) == Math.signum(f6)) {
                float f9 = i6;
                if (Math.signum(f9) == Math.signum(f7)) {
                    i5 = (int) (f8 + f6);
                    i6 = (int) (f9 + f7);
                }
            }
        }
        this.f74179b = 1;
        this.f74195r = false;
        float hypot2 = (float) Math.hypot(i5, i6);
        this.f74197t = hypot2;
        this.f74191n = k(hypot2);
        this.f74190m = AnimationUtils.currentAnimationTimeMillis();
        this.f74180c = i2;
        this.f74181d = i4;
        float f10 = hypot2 == 0.0f ? 1.0f : i5 / hypot2;
        float f11 = hypot2 != 0.0f ? i6 / hypot2 : 1.0f;
        double j4 = j(hypot2);
        double signum = Math.signum(hypot2);
        Double.isNaN(signum);
        this.f74199v = (int) (signum * j4);
        this.f74184g = i7;
        this.f74185h = i8;
        this.f74186i = i9;
        this.f74187j = i10;
        double d4 = f10;
        Double.isNaN(d4);
        int round = i2 + ((int) Math.round(d4 * j4));
        this.f74182e = round;
        int min = Math.min(round, this.f74185h);
        this.f74182e = min;
        this.f74182e = Math.max(min, this.f74184g);
        double d5 = f11;
        Double.isNaN(d5);
        int round2 = i4 + ((int) Math.round(j4 * d5));
        this.f74183f = round2;
        int min2 = Math.min(round2, this.f74187j);
        this.f74183f = min2;
        this.f74183f = Math.max(min2, this.f74186i);
    }

    public float e() {
        return this.f74179b == 1 ? this.f74198u : this.f74197t - ((this.f74201x * n()) / 2000.0f);
    }

    public final int f() {
        return this.f74189l;
    }

    public final int g() {
        return this.f74191n;
    }

    public final int h() {
        return this.f74183f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int k(float f4) {
        double i2 = i(f4);
        double d4 = C;
        Double.isNaN(d4);
        return (int) (Math.exp(i2 / (d4 - 1.0d)) * 1000.0d);
    }

    public void l(int i2) {
        this.f74183f = i2;
        this.f74194q = i2 - this.f74181d;
        this.f74195r = false;
    }

    public final void m(float f4) {
        this.f74201x = b(f4);
        this.f74200w = f4;
    }

    public int n() {
        return (int) (AnimationUtils.currentAnimationTimeMillis() - this.f74190m);
    }
}
