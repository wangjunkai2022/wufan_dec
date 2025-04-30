package androidx.constraintlayout.core.motion.utils;
/* loaded from: classes.dex */
public class StopLogicEngine implements StopEngine {

    /* renamed from: p  reason: collision with root package name */
    private static final float f2217p = 1.0E-5f;

    /* renamed from: a  reason: collision with root package name */
    private float f2218a;

    /* renamed from: b  reason: collision with root package name */
    private float f2219b;

    /* renamed from: c  reason: collision with root package name */
    private float f2220c;

    /* renamed from: d  reason: collision with root package name */
    private float f2221d;

    /* renamed from: e  reason: collision with root package name */
    private float f2222e;

    /* renamed from: f  reason: collision with root package name */
    private float f2223f;

    /* renamed from: g  reason: collision with root package name */
    private float f2224g;

    /* renamed from: h  reason: collision with root package name */
    private float f2225h;

    /* renamed from: i  reason: collision with root package name */
    private float f2226i;

    /* renamed from: j  reason: collision with root package name */
    private int f2227j;

    /* renamed from: k  reason: collision with root package name */
    private String f2228k;

    /* renamed from: m  reason: collision with root package name */
    private float f2230m;

    /* renamed from: n  reason: collision with root package name */
    private float f2231n;

    /* renamed from: l  reason: collision with root package name */
    private boolean f2229l = false;

    /* renamed from: o  reason: collision with root package name */
    private boolean f2232o = false;

    private float a(float f4) {
        this.f2232o = false;
        float f5 = this.f2221d;
        if (f4 <= f5) {
            float f6 = this.f2218a;
            return (f6 * f4) + ((((this.f2219b - f6) * f4) * f4) / (f5 * 2.0f));
        }
        int i2 = this.f2227j;
        if (i2 == 1) {
            return this.f2224g;
        }
        float f7 = f4 - f5;
        float f8 = this.f2222e;
        if (f7 < f8) {
            float f9 = this.f2224g;
            float f10 = this.f2219b;
            return f9 + (f10 * f7) + ((((this.f2220c - f10) * f7) * f7) / (f8 * 2.0f));
        } else if (i2 == 2) {
            return this.f2225h;
        } else {
            float f11 = f7 - f8;
            float f12 = this.f2223f;
            if (f11 <= f12) {
                float f13 = this.f2225h;
                float f14 = this.f2220c;
                return (f13 + (f14 * f11)) - (((f14 * f11) * f11) / (f12 * 2.0f));
            }
            this.f2232o = true;
            return this.f2226i;
        }
    }

    private void b(float f4, float f5, float f6, float f7, float f8) {
        this.f2232o = false;
        if (f4 == 0.0f) {
            f4 = 1.0E-4f;
        }
        this.f2218a = f4;
        float f9 = f4 / f6;
        float f10 = (f9 * f4) / 2.0f;
        if (f4 < 0.0f) {
            float sqrt = (float) Math.sqrt((f5 - ((((-f4) / f6) * f4) / 2.0f)) * f6);
            if (sqrt < f7) {
                this.f2228k = "backward accelerate, decelerate";
                this.f2227j = 2;
                this.f2218a = f4;
                this.f2219b = sqrt;
                this.f2220c = 0.0f;
                float f11 = (sqrt - f4) / f6;
                this.f2221d = f11;
                this.f2222e = sqrt / f6;
                this.f2224g = ((f4 + sqrt) * f11) / 2.0f;
                this.f2225h = f5;
                this.f2226i = f5;
                return;
            }
            this.f2228k = "backward accelerate cruse decelerate";
            this.f2227j = 3;
            this.f2218a = f4;
            this.f2219b = f7;
            this.f2220c = f7;
            float f12 = (f7 - f4) / f6;
            this.f2221d = f12;
            float f13 = f7 / f6;
            this.f2223f = f13;
            float f14 = ((f4 + f7) * f12) / 2.0f;
            float f15 = (f13 * f7) / 2.0f;
            this.f2222e = ((f5 - f14) - f15) / f7;
            this.f2224g = f14;
            this.f2225h = f5 - f15;
            this.f2226i = f5;
        } else if (f10 >= f5) {
            this.f2228k = "hard stop";
            this.f2227j = 1;
            this.f2218a = f4;
            this.f2219b = 0.0f;
            this.f2224g = f5;
            this.f2221d = (2.0f * f5) / f4;
        } else {
            float f16 = f5 - f10;
            float f17 = f16 / f4;
            if (f17 + f9 < f8) {
                this.f2228k = "cruse decelerate";
                this.f2227j = 2;
                this.f2218a = f4;
                this.f2219b = f4;
                this.f2220c = 0.0f;
                this.f2224g = f16;
                this.f2225h = f5;
                this.f2221d = f17;
                this.f2222e = f9;
                return;
            }
            float sqrt2 = (float) Math.sqrt((f6 * f5) + ((f4 * f4) / 2.0f));
            float f18 = (sqrt2 - f4) / f6;
            this.f2221d = f18;
            float f19 = sqrt2 / f6;
            this.f2222e = f19;
            if (sqrt2 < f7) {
                this.f2228k = "accelerate decelerate";
                this.f2227j = 2;
                this.f2218a = f4;
                this.f2219b = sqrt2;
                this.f2220c = 0.0f;
                this.f2221d = f18;
                this.f2222e = f19;
                this.f2224g = ((f4 + sqrt2) * f18) / 2.0f;
                this.f2225h = f5;
                return;
            }
            this.f2228k = "accelerate cruse decelerate";
            this.f2227j = 3;
            this.f2218a = f4;
            this.f2219b = f7;
            this.f2220c = f7;
            float f20 = (f7 - f4) / f6;
            this.f2221d = f20;
            float f21 = f7 / f6;
            this.f2223f = f21;
            float f22 = ((f4 + f7) * f20) / 2.0f;
            float f23 = (f21 * f7) / 2.0f;
            this.f2222e = ((f5 - f22) - f23) / f7;
            this.f2224g = f22;
            this.f2225h = f5 - f23;
            this.f2226i = f5;
        }
    }

    public void config(float f4, float f5, float f6, float f7, float f8, float f9) {
        this.f2232o = false;
        this.f2230m = f4;
        boolean z3 = f4 > f5;
        this.f2229l = z3;
        if (z3) {
            b(-f6, f4 - f5, f8, f9, f7);
        } else {
            b(f6, f5 - f4, f8, f9, f7);
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public String debug(String str, float f4) {
        StringBuilder sb = new StringBuilder();
        sb.append(str + " ===== " + this.f2228k + "\n");
        sb.append(str);
        sb.append(this.f2229l ? "backwards" : "forward ");
        sb.append(" time = ");
        sb.append(f4);
        sb.append("  stages ");
        sb.append(this.f2227j);
        sb.append("\n");
        String str2 = sb.toString() + str + " dur " + this.f2221d + " vel " + this.f2218a + " pos " + this.f2224g + "\n";
        if (this.f2227j > 1) {
            str2 = str2 + str + " dur " + this.f2222e + " vel " + this.f2219b + " pos " + this.f2225h + "\n";
        }
        if (this.f2227j > 2) {
            str2 = str2 + str + " dur " + this.f2223f + " vel " + this.f2220c + " pos " + this.f2226i + "\n";
        }
        float f5 = this.f2221d;
        if (f4 <= f5) {
            return str2 + str + "stage 0\n";
        }
        int i2 = this.f2227j;
        if (i2 == 1) {
            return str2 + str + "end stage 0\n";
        }
        float f6 = f4 - f5;
        float f7 = this.f2222e;
        if (f6 < f7) {
            return str2 + str + " stage 1\n";
        } else if (i2 == 2) {
            return str2 + str + "end stage 1\n";
        } else if (f6 - f7 < this.f2223f) {
            return str2 + str + " stage 2\n";
        } else {
            return str2 + str + " end stage 2\n";
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getInterpolation(float f4) {
        float a4 = a(f4);
        this.f2231n = f4;
        return this.f2229l ? this.f2230m - a4 : this.f2230m + a4;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity(float f4) {
        float f5 = this.f2221d;
        if (f4 <= f5) {
            float f6 = this.f2218a;
            return f6 + (((this.f2219b - f6) * f4) / f5);
        }
        int i2 = this.f2227j;
        if (i2 == 1) {
            return 0.0f;
        }
        float f7 = f4 - f5;
        float f8 = this.f2222e;
        if (f7 < f8) {
            float f9 = this.f2219b;
            return f9 + (((this.f2220c - f9) * f7) / f8);
        } else if (i2 == 2) {
            return this.f2225h;
        } else {
            float f10 = f7 - f8;
            float f11 = this.f2223f;
            if (f10 < f11) {
                float f12 = this.f2220c;
                return f12 - ((f10 * f12) / f11);
            }
            return this.f2226i;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public boolean isStopped() {
        return getVelocity() < f2217p && Math.abs(this.f2226i - this.f2231n) < f2217p;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity() {
        return this.f2229l ? -getVelocity(this.f2231n) : getVelocity(this.f2231n);
    }
}
