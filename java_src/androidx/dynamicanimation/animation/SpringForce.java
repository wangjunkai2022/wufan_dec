package androidx.dynamicanimation.animation;

import androidx.annotation.FloatRange;
import androidx.annotation.RestrictTo;
import androidx.dynamicanimation.animation.DynamicAnimation;
/* loaded from: classes.dex */
public final class SpringForce implements Force {
    public static final float DAMPING_RATIO_HIGH_BOUNCY = 0.2f;
    public static final float DAMPING_RATIO_LOW_BOUNCY = 0.75f;
    public static final float DAMPING_RATIO_MEDIUM_BOUNCY = 0.5f;
    public static final float DAMPING_RATIO_NO_BOUNCY = 1.0f;
    public static final float STIFFNESS_HIGH = 10000.0f;
    public static final float STIFFNESS_LOW = 200.0f;
    public static final float STIFFNESS_MEDIUM = 1500.0f;
    public static final float STIFFNESS_VERY_LOW = 50.0f;

    /* renamed from: k  reason: collision with root package name */
    private static final double f5477k = 62.5d;

    /* renamed from: l  reason: collision with root package name */
    private static final double f5478l = Double.MAX_VALUE;

    /* renamed from: a  reason: collision with root package name */
    double f5479a;

    /* renamed from: b  reason: collision with root package name */
    double f5480b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f5481c;

    /* renamed from: d  reason: collision with root package name */
    private double f5482d;

    /* renamed from: e  reason: collision with root package name */
    private double f5483e;

    /* renamed from: f  reason: collision with root package name */
    private double f5484f;

    /* renamed from: g  reason: collision with root package name */
    private double f5485g;

    /* renamed from: h  reason: collision with root package name */
    private double f5486h;

    /* renamed from: i  reason: collision with root package name */
    private double f5487i;

    /* renamed from: j  reason: collision with root package name */
    private final DynamicAnimation.MassState f5488j;

    public SpringForce() {
        this.f5479a = Math.sqrt(1500.0d);
        this.f5480b = 0.5d;
        this.f5481c = false;
        this.f5487i = Double.MAX_VALUE;
        this.f5488j = new DynamicAnimation.MassState();
    }

    private void a() {
        if (this.f5481c) {
            return;
        }
        if (this.f5487i != Double.MAX_VALUE) {
            double d4 = this.f5480b;
            if (d4 > 1.0d) {
                double d5 = this.f5479a;
                this.f5484f = ((-d4) * d5) + (d5 * Math.sqrt((d4 * d4) - 1.0d));
                double d6 = this.f5480b;
                double d7 = this.f5479a;
                this.f5485g = ((-d6) * d7) - (d7 * Math.sqrt((d6 * d6) - 1.0d));
            } else if (d4 >= 0.0d && d4 < 1.0d) {
                this.f5486h = this.f5479a * Math.sqrt(1.0d - (d4 * d4));
            }
            this.f5481c = true;
            return;
        }
        throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(double d4) {
        double abs = Math.abs(d4);
        this.f5482d = abs;
        this.f5483e = abs * f5477k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DynamicAnimation.MassState c(double d4, double d5, long j4) {
        double cos;
        double d6;
        a();
        double d7 = j4;
        Double.isNaN(d7);
        double d8 = d7 / 1000.0d;
        double d9 = d4 - this.f5487i;
        double d10 = this.f5480b;
        if (d10 > 1.0d) {
            double d11 = this.f5485g;
            double d12 = this.f5484f;
            double d13 = d9 - (((d11 * d9) - d5) / (d11 - d12));
            double d14 = ((d9 * d11) - d5) / (d11 - d12);
            d6 = (Math.pow(2.718281828459045d, d11 * d8) * d13) + (Math.pow(2.718281828459045d, this.f5484f * d8) * d14);
            double d15 = this.f5485g;
            double pow = d13 * d15 * Math.pow(2.718281828459045d, d15 * d8);
            double d16 = this.f5484f;
            cos = pow + (d14 * d16 * Math.pow(2.718281828459045d, d16 * d8));
        } else if (d10 == 1.0d) {
            double d17 = this.f5479a;
            double d18 = d5 + (d17 * d9);
            double d19 = d9 + (d18 * d8);
            d6 = Math.pow(2.718281828459045d, (-d17) * d8) * d19;
            double pow2 = d19 * Math.pow(2.718281828459045d, (-this.f5479a) * d8);
            double d20 = this.f5479a;
            cos = (d18 * Math.pow(2.718281828459045d, (-d20) * d8)) + (pow2 * (-d20));
        } else {
            double d21 = 1.0d / this.f5486h;
            double d22 = this.f5479a;
            double d23 = d21 * ((d10 * d22 * d9) + d5);
            double pow3 = Math.pow(2.718281828459045d, (-d10) * d22 * d8) * ((Math.cos(this.f5486h * d8) * d9) + (Math.sin(this.f5486h * d8) * d23));
            double d24 = this.f5479a;
            double d25 = this.f5480b;
            double d26 = (-d24) * pow3 * d25;
            double pow4 = Math.pow(2.718281828459045d, (-d25) * d24 * d8);
            double d27 = this.f5486h;
            double sin = (-d27) * d9 * Math.sin(d27 * d8);
            double d28 = this.f5486h;
            cos = d26 + (pow4 * (sin + (d23 * d28 * Math.cos(d28 * d8))));
            d6 = pow3;
        }
        DynamicAnimation.MassState massState = this.f5488j;
        massState.f5462a = (float) (d6 + this.f5487i);
        massState.f5463b = (float) cos;
        return massState;
    }

    @Override // androidx.dynamicanimation.animation.Force
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public float getAcceleration(float f4, float f5) {
        float finalPosition = f4 - getFinalPosition();
        double d4 = this.f5479a;
        double d5 = d4 * d4;
        double d6 = d4 * 2.0d * this.f5480b;
        double d7 = finalPosition;
        Double.isNaN(d7);
        double d8 = f5;
        Double.isNaN(d8);
        return (float) (((-d5) * d7) - (d6 * d8));
    }

    public float getDampingRatio() {
        return (float) this.f5480b;
    }

    public float getFinalPosition() {
        return (float) this.f5487i;
    }

    public float getStiffness() {
        double d4 = this.f5479a;
        return (float) (d4 * d4);
    }

    @Override // androidx.dynamicanimation.animation.Force
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean isAtEquilibrium(float f4, float f5) {
        return ((double) Math.abs(f5)) < this.f5483e && ((double) Math.abs(f4 - getFinalPosition())) < this.f5482d;
    }

    public SpringForce setDampingRatio(@FloatRange(from = 0.0d) float f4) {
        if (f4 >= 0.0f) {
            this.f5480b = f4;
            this.f5481c = false;
            return this;
        }
        throw new IllegalArgumentException("Damping ratio must be non-negative");
    }

    public SpringForce setFinalPosition(float f4) {
        this.f5487i = f4;
        return this;
    }

    public SpringForce setStiffness(@FloatRange(from = 0.0d, fromInclusive = false) float f4) {
        if (f4 > 0.0f) {
            this.f5479a = Math.sqrt(f4);
            this.f5481c = false;
            return this;
        }
        throw new IllegalArgumentException("Spring stiffness constant must be positive.");
    }

    public SpringForce(float f4) {
        this.f5479a = Math.sqrt(1500.0d);
        this.f5480b = 0.5d;
        this.f5481c = false;
        this.f5487i = Double.MAX_VALUE;
        this.f5488j = new DynamicAnimation.MassState();
        this.f5487i = f4;
    }
}
