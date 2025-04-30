package it.sephiroth.android.library.widget;

import android.content.Context;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
/* compiled from: OverScroller.java */
/* loaded from: classes5.dex */
public class c {

    /* renamed from: f  reason: collision with root package name */
    private static final int f70638f = 250;

    /* renamed from: g  reason: collision with root package name */
    private static final int f70639g = 0;

    /* renamed from: h  reason: collision with root package name */
    private static final int f70640h = 1;

    /* renamed from: i  reason: collision with root package name */
    private static float f70641i = 8.0f;

    /* renamed from: j  reason: collision with root package name */
    private static float f70642j = 1.0f / B(1.0f);

    /* renamed from: a  reason: collision with root package name */
    private int f70643a;

    /* renamed from: b  reason: collision with root package name */
    private final a f70644b;

    /* renamed from: c  reason: collision with root package name */
    private final a f70645c;

    /* renamed from: d  reason: collision with root package name */
    private Interpolator f70646d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f70647e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OverScroller.java */
    /* loaded from: classes5.dex */
    public static class a {
        private static final int A = 1;
        private static final int B = 2;

        /* renamed from: p  reason: collision with root package name */
        private static final float f70648p = 2000.0f;

        /* renamed from: r  reason: collision with root package name */
        private static final float f70650r = 0.35f;

        /* renamed from: s  reason: collision with root package name */
        private static final float f70651s = 0.5f;

        /* renamed from: t  reason: collision with root package name */
        private static final float f70652t = 1.0f;

        /* renamed from: u  reason: collision with root package name */
        private static final float f70653u = 0.175f;

        /* renamed from: v  reason: collision with root package name */
        private static final float f70654v = 0.35000002f;

        /* renamed from: w  reason: collision with root package name */
        private static final int f70655w = 100;

        /* renamed from: z  reason: collision with root package name */
        private static final int f70658z = 0;

        /* renamed from: a  reason: collision with root package name */
        private int f70659a;

        /* renamed from: b  reason: collision with root package name */
        private int f70660b;

        /* renamed from: c  reason: collision with root package name */
        private int f70661c;

        /* renamed from: d  reason: collision with root package name */
        private int f70662d;

        /* renamed from: e  reason: collision with root package name */
        private float f70663e;

        /* renamed from: f  reason: collision with root package name */
        private float f70664f;

        /* renamed from: g  reason: collision with root package name */
        private long f70665g;

        /* renamed from: h  reason: collision with root package name */
        private int f70666h;

        /* renamed from: i  reason: collision with root package name */
        private int f70667i;

        /* renamed from: j  reason: collision with root package name */
        private int f70668j;

        /* renamed from: l  reason: collision with root package name */
        private int f70670l;

        /* renamed from: o  reason: collision with root package name */
        private float f70673o;

        /* renamed from: q  reason: collision with root package name */
        private static float f70649q = (float) (Math.log(0.78d) / Math.log(0.9d));

        /* renamed from: x  reason: collision with root package name */
        private static final float[] f70656x = new float[101];

        /* renamed from: y  reason: collision with root package name */
        private static final float[] f70657y = new float[101];

        /* renamed from: m  reason: collision with root package name */
        private float f70671m = ViewConfiguration.getScrollFriction();

        /* renamed from: n  reason: collision with root package name */
        private int f70672n = 0;

        /* renamed from: k  reason: collision with root package name */
        private boolean f70669k = true;

        static {
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float f9;
            float f10;
            float f11;
            float f12;
            float f13;
            float f14 = 0.0f;
            float f15 = 0.0f;
            for (int i2 = 0; i2 < 100; i2++) {
                float f16 = i2 / 100.0f;
                float f17 = 1.0f;
                while (true) {
                    f4 = 2.0f;
                    f5 = ((f17 - f14) / 2.0f) + f14;
                    f6 = 3.0f;
                    f7 = 1.0f - f5;
                    f8 = f5 * 3.0f * f7;
                    f9 = f5 * f5 * f5;
                    float f18 = (((f7 * 0.175f) + (f5 * f70654v)) * f8) + f9;
                    if (Math.abs(f18 - f16) < 1.0E-5d) {
                        break;
                    } else if (f18 > f16) {
                        f17 = f5;
                    } else {
                        f14 = f5;
                    }
                }
                f70656x[i2] = (f8 * ((f7 * 0.5f) + f5)) + f9;
                float f19 = 1.0f;
                while (true) {
                    f10 = ((f19 - f15) / f4) + f15;
                    f11 = 1.0f - f10;
                    f12 = f10 * f6 * f11;
                    f13 = f10 * f10 * f10;
                    float f20 = (((f11 * 0.5f) + f10) * f12) + f13;
                    if (Math.abs(f20 - f16) < 1.0E-5d) {
                        break;
                    }
                    if (f20 > f16) {
                        f19 = f10;
                    } else {
                        f15 = f10;
                    }
                    f4 = 2.0f;
                    f6 = 3.0f;
                }
                f70657y[i2] = (f12 * ((f11 * 0.175f) + (f10 * f70654v))) + f13;
            }
            float[] fArr = f70656x;
            f70657y[100] = 1.0f;
            fArr[100] = 1.0f;
        }

        a(Context context) {
            this.f70673o = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        }

        private void B(int i2, int i4, int i5) {
            this.f70669k = false;
            this.f70672n = 1;
            this.f70659a = i2;
            this.f70661c = i4;
            int i6 = i2 - i4;
            this.f70664f = p(i6);
            this.f70662d = -i6;
            this.f70670l = Math.abs(i6);
            double d4 = i6;
            Double.isNaN(d4);
            double d5 = this.f70664f;
            Double.isNaN(d5);
            this.f70666h = (int) (Math.sqrt((d4 * (-2.0d)) / d5) * 1000.0d);
        }

        private void j(int i2, int i4, int i5) {
            float abs = Math.abs((i5 - i2) / (i4 - i2));
            int i6 = (int) (abs * 100.0f);
            if (i6 < 100) {
                float f4 = i6 / 100.0f;
                int i7 = i6 + 1;
                float[] fArr = f70657y;
                float f5 = fArr[i6];
                this.f70666h = (int) (this.f70666h * (f5 + (((abs - f4) / ((i7 / 100.0f) - f4)) * (fArr[i7] - f5))));
            }
        }

        private void n(int i2, int i4, int i5) {
            float f4 = this.f70664f;
            float f5 = (-i5) / f4;
            double abs = (((i5 * i5) / 2.0f) / Math.abs(f4)) + Math.abs(i4 - i2);
            Double.isNaN(abs);
            double abs2 = Math.abs(this.f70664f);
            Double.isNaN(abs2);
            float sqrt = (float) Math.sqrt((abs * 2.0d) / abs2);
            this.f70665g -= (int) ((sqrt - f5) * 1000.0f);
            this.f70659a = i4;
            this.f70662d = (int) ((-this.f70664f) * sqrt);
        }

        private static float p(int i2) {
            if (i2 > 0) {
                return -2000.0f;
            }
            return f70648p;
        }

        private double q(int i2) {
            return Math.log((Math.abs(i2) * f70650r) / (this.f70671m * this.f70673o));
        }

        private double r(int i2) {
            double q3 = q(i2);
            float f4 = f70649q;
            double d4 = f4;
            Double.isNaN(d4);
            double d5 = this.f70671m * this.f70673o;
            double d6 = f4;
            Double.isNaN(d6);
            double exp = Math.exp((d6 / (d4 - 1.0d)) * q3);
            Double.isNaN(d5);
            return d5 * exp;
        }

        private int s(int i2) {
            double q3 = q(i2);
            double d4 = f70649q;
            Double.isNaN(d4);
            return (int) (Math.exp(q3 / (d4 - 1.0d)) * 1000.0d);
        }

        private void u() {
            int i2 = this.f70662d;
            float abs = (i2 * i2) / (Math.abs(this.f70664f) * 2.0f);
            float signum = Math.signum(this.f70662d);
            int i4 = this.f70670l;
            if (abs > i4) {
                float f4 = -signum;
                int i5 = this.f70662d;
                this.f70664f = ((f4 * i5) * i5) / (i4 * 2.0f);
                abs = i4;
            }
            this.f70670l = (int) abs;
            this.f70672n = 2;
            int i6 = this.f70659a;
            int i7 = this.f70662d;
            if (i7 <= 0) {
                abs = -abs;
            }
            this.f70661c = i6 + ((int) abs);
            this.f70666h = -((int) ((i7 * 1000.0f) / this.f70664f));
        }

        private void y(int i2, int i4, int i5, int i6) {
            if (i2 > i4 && i2 < i5) {
                this.f70669k = true;
                return;
            }
            boolean z3 = i2 > i5;
            int i7 = z3 ? i5 : i4;
            int i8 = i2 - i7;
            if (i8 * i6 >= 0) {
                z(i2, i7, i6);
            } else if (r(i6) > Math.abs(i8)) {
                o(i2, i6, z3 ? i4 : i2, z3 ? i2 : i5, this.f70670l);
            } else {
                B(i2, i7, i6);
            }
        }

        private void z(int i2, int i4, int i5) {
            this.f70664f = p(i5 == 0 ? i2 - i4 : i5);
            n(i2, i4, i5);
            u();
        }

        void A(int i2, int i4, int i5) {
            this.f70669k = false;
            this.f70659a = i2;
            this.f70661c = i2 + i4;
            this.f70665g = AnimationUtils.currentAnimationTimeMillis();
            this.f70666h = i5;
            this.f70664f = 0.0f;
            this.f70662d = 0;
        }

        void C(float f4) {
            int i2 = this.f70659a;
            this.f70660b = i2 + Math.round(f4 * (this.f70661c - i2));
        }

        boolean k() {
            int i2 = this.f70672n;
            if (i2 != 0) {
                if (i2 == 1) {
                    return false;
                }
                if (i2 == 2) {
                    this.f70665g += this.f70666h;
                    B(this.f70661c, this.f70659a, 0);
                }
            } else if (this.f70666h >= this.f70667i) {
                return false;
            } else {
                this.f70659a = this.f70661c;
                int i4 = (int) this.f70663e;
                this.f70662d = i4;
                this.f70664f = p(i4);
                this.f70665g += this.f70666h;
                u();
            }
            update();
            return true;
        }

        void l(int i2) {
            this.f70666h = ((int) (AnimationUtils.currentAnimationTimeMillis() - this.f70665g)) + i2;
            this.f70669k = false;
        }

        void m() {
            this.f70660b = this.f70661c;
            this.f70669k = true;
        }

        void o(int i2, int i4, int i5, int i6, int i7) {
            this.f70670l = i7;
            this.f70669k = false;
            this.f70662d = i4;
            float f4 = i4;
            this.f70663e = f4;
            this.f70667i = 0;
            this.f70666h = 0;
            this.f70665g = AnimationUtils.currentAnimationTimeMillis();
            this.f70659a = i2;
            this.f70660b = i2;
            if (i2 <= i6 && i2 >= i5) {
                this.f70672n = 0;
                double d4 = 0.0d;
                if (i4 != 0) {
                    int s3 = s(i4);
                    this.f70667i = s3;
                    this.f70666h = s3;
                    d4 = r(i4);
                }
                double signum = Math.signum(f4);
                Double.isNaN(signum);
                int i8 = (int) (d4 * signum);
                this.f70668j = i8;
                int i9 = i2 + i8;
                this.f70661c = i9;
                if (i9 < i5) {
                    j(this.f70659a, i9, i5);
                    this.f70661c = i5;
                }
                int i10 = this.f70661c;
                if (i10 > i6) {
                    j(this.f70659a, i10, i6);
                    this.f70661c = i6;
                    return;
                }
                return;
            }
            y(i2, i5, i6, i4);
        }

        void t(int i2, int i4, int i5) {
            if (this.f70672n == 0) {
                this.f70670l = i5;
                this.f70665g = AnimationUtils.currentAnimationTimeMillis();
                y(i2, i4, i4, (int) this.f70663e);
            }
        }

        boolean update() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis() - this.f70665g;
            int i2 = this.f70666h;
            if (currentAnimationTimeMillis > i2) {
                return false;
            }
            double d4 = 0.0d;
            int i4 = this.f70672n;
            if (i4 == 0) {
                int i5 = this.f70667i;
                float f4 = ((float) currentAnimationTimeMillis) / i5;
                int i6 = (int) (f4 * 100.0f);
                float f5 = 1.0f;
                float f6 = 0.0f;
                if (i6 < 100) {
                    float f7 = i6 / 100.0f;
                    int i7 = i6 + 1;
                    float[] fArr = f70656x;
                    float f8 = fArr[i6];
                    f6 = (fArr[i7] - f8) / ((i7 / 100.0f) - f7);
                    f5 = f8 + ((f4 - f7) * f6);
                }
                int i8 = this.f70668j;
                d4 = f5 * i8;
                this.f70663e = ((f6 * i8) / i5) * 1000.0f;
            } else if (i4 == 1) {
                float f9 = ((float) currentAnimationTimeMillis) / i2;
                float f10 = f9 * f9;
                float signum = Math.signum(this.f70662d);
                int i9 = this.f70670l;
                this.f70663e = signum * i9 * 6.0f * ((-f9) + f10);
                d4 = i9 * signum * ((3.0f * f10) - ((2.0f * f9) * f10));
            } else if (i4 == 2) {
                float f11 = ((float) currentAnimationTimeMillis) / 1000.0f;
                int i10 = this.f70662d;
                float f12 = this.f70664f;
                this.f70663e = i10 + (f12 * f11);
                d4 = (i10 * f11) + (((f12 * f11) * f11) / 2.0f);
            }
            this.f70660b = this.f70659a + ((int) Math.round(d4));
            return true;
        }

        void v(int i2) {
            this.f70661c = i2;
            this.f70669k = false;
        }

        void w(float f4) {
            this.f70671m = f4;
        }

        boolean x(int i2, int i4, int i5) {
            this.f70669k = true;
            this.f70661c = i2;
            this.f70659a = i2;
            this.f70662d = 0;
            this.f70665g = AnimationUtils.currentAnimationTimeMillis();
            this.f70666h = 0;
            if (i2 < i4) {
                B(i2, i4, 0);
            } else if (i2 > i5) {
                B(i2, i5, 0);
            }
            return !this.f70669k;
        }
    }

    public c(Context context) {
        this(context, null);
    }

    public static float B(float f4) {
        float exp;
        float f5 = f4 * f70641i;
        if (f5 < 1.0f) {
            exp = f5 - (1.0f - ((float) Math.exp(-f5)));
        } else {
            exp = ((1.0f - ((float) Math.exp(1.0f - f5))) * 0.63212055f) + 0.36787945f;
        }
        return exp * f70642j;
    }

    public int A() {
        return (int) (AnimationUtils.currentAnimationTimeMillis() - Math.min(this.f70644b.f70665g, this.f70645c.f70665g));
    }

    public void a() {
        this.f70644b.m();
        this.f70645c.m();
    }

    public boolean b() {
        float interpolation;
        if (o()) {
            return false;
        }
        int i2 = this.f70643a;
        if (i2 == 0) {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis() - this.f70644b.f70665g;
            int i4 = this.f70644b.f70666h;
            if (currentAnimationTimeMillis < i4) {
                float f4 = ((float) currentAnimationTimeMillis) / i4;
                Interpolator interpolator = this.f70646d;
                if (interpolator == null) {
                    interpolation = B(f4);
                } else {
                    interpolation = interpolator.getInterpolation(f4);
                }
                this.f70644b.C(interpolation);
                this.f70645c.C(interpolation);
            } else {
                a();
            }
        } else if (i2 == 1) {
            if (!this.f70644b.f70669k && !this.f70644b.update() && !this.f70644b.k()) {
                this.f70644b.m();
            }
            if (!this.f70645c.f70669k && !this.f70645c.update() && !this.f70645c.k()) {
                this.f70645c.m();
            }
        }
        return true;
    }

    @Deprecated
    public void c(int i2) {
        this.f70644b.l(i2);
        this.f70645c.l(i2);
    }

    public void d(int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        e(i2, i4, i5, i6, i7, i8, i9, i10, 0, 0);
    }

    public void e(int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12) {
        int i13;
        int i14;
        int i15;
        int i16;
        if (!this.f70647e || o()) {
            i13 = i5;
        } else {
            float f4 = this.f70644b.f70663e;
            float f5 = this.f70645c.f70663e;
            i13 = i5;
            float f6 = i13;
            if (Math.signum(f6) == Math.signum(f4)) {
                i14 = i6;
                float f7 = i14;
                if (Math.signum(f7) == Math.signum(f5)) {
                    i15 = (int) (f7 + f5);
                    i16 = (int) (f6 + f4);
                    this.f70643a = 1;
                    this.f70644b.o(i2, i16, i7, i8, i11);
                    this.f70645c.o(i4, i15, i9, i10, i12);
                }
                i15 = i14;
                i16 = i13;
                this.f70643a = 1;
                this.f70644b.o(i2, i16, i7, i8, i11);
                this.f70645c.o(i4, i15, i9, i10, i12);
            }
        }
        i14 = i6;
        i15 = i14;
        i16 = i13;
        this.f70643a = 1;
        this.f70644b.o(i2, i16, i7, i8, i11);
        this.f70645c.o(i4, i15, i9, i10, i12);
    }

    public final void f(boolean z3) {
        this.f70644b.f70669k = this.f70645c.f70669k = z3;
    }

    public float g() {
        return (float) Math.sqrt((this.f70644b.f70663e * this.f70644b.f70663e) + (this.f70645c.f70663e * this.f70645c.f70663e));
    }

    public final int h() {
        return this.f70644b.f70660b;
    }

    public final int i() {
        return this.f70645c.f70660b;
    }

    @Deprecated
    public final int j() {
        return Math.max(this.f70644b.f70666h, this.f70645c.f70666h);
    }

    public final int k() {
        return this.f70644b.f70661c;
    }

    public final int l() {
        return this.f70645c.f70661c;
    }

    public final int m() {
        return this.f70644b.f70659a;
    }

    public final int n() {
        return this.f70645c.f70659a;
    }

    public final boolean o() {
        return this.f70644b.f70669k && this.f70645c.f70669k;
    }

    public boolean p() {
        return ((this.f70644b.f70669k || this.f70644b.f70672n == 0) && (this.f70645c.f70669k || this.f70645c.f70672n == 0)) ? false : true;
    }

    public boolean q(float f4, float f5) {
        return !o() && Math.signum(f4) == Math.signum((float) (this.f70644b.f70661c - this.f70644b.f70659a)) && Math.signum(f5) == Math.signum((float) (this.f70645c.f70661c - this.f70645c.f70659a));
    }

    public void r(int i2, int i4, int i5) {
        this.f70644b.t(i2, i4, i5);
    }

    public void s(int i2, int i4, int i5) {
        this.f70645c.t(i2, i4, i5);
    }

    @Deprecated
    public void t(int i2) {
        this.f70644b.v(i2);
    }

    @Deprecated
    public void u(int i2) {
        this.f70645c.v(i2);
    }

    public final void v(float f4) {
        this.f70644b.w(f4);
        this.f70645c.w(f4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w(Interpolator interpolator) {
        this.f70646d = interpolator;
    }

    public boolean x(int i2, int i4, int i5, int i6, int i7, int i8) {
        this.f70643a = 1;
        return this.f70644b.x(i2, i5, i6) || this.f70645c.x(i4, i7, i8);
    }

    public void y(int i2, int i4, int i5, int i6) {
        z(i2, i4, i5, i6, 250);
    }

    public void z(int i2, int i4, int i5, int i6, int i7) {
        this.f70643a = 0;
        this.f70644b.A(i2, i5, i7);
        this.f70645c.A(i4, i6, i7);
    }

    public c(Context context, Interpolator interpolator) {
        this(context, interpolator, true);
    }

    public c(Context context, Interpolator interpolator, boolean z3) {
        this.f70646d = interpolator;
        this.f70647e = z3;
        this.f70644b = new a(context);
        this.f70645c = new a(context);
    }

    public c(Context context, Interpolator interpolator, float f4, float f5) {
        this(context, interpolator, true);
    }

    public c(Context context, Interpolator interpolator, float f4, float f5, boolean z3) {
        this(context, interpolator, z3);
    }
}
