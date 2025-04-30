package androidx.dynamicanimation.animation;

import androidx.annotation.FloatRange;
import androidx.dynamicanimation.animation.DynamicAnimation;
/* loaded from: classes.dex */
public final class FlingAnimation extends DynamicAnimation<FlingAnimation> {

    /* renamed from: o  reason: collision with root package name */
    private final DragForce f5464o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class DragForce implements Force {

        /* renamed from: d  reason: collision with root package name */
        private static final float f5465d = -4.2f;

        /* renamed from: e  reason: collision with root package name */
        private static final float f5466e = 62.5f;

        /* renamed from: b  reason: collision with root package name */
        private float f5468b;

        /* renamed from: a  reason: collision with root package name */
        private float f5467a = f5465d;

        /* renamed from: c  reason: collision with root package name */
        private final DynamicAnimation.MassState f5469c = new DynamicAnimation.MassState();

        DragForce() {
        }

        float a() {
            return this.f5467a / f5465d;
        }

        void b(float f4) {
            this.f5467a = f4 * f5465d;
        }

        void c(float f4) {
            this.f5468b = f4 * f5466e;
        }

        DynamicAnimation.MassState d(float f4, float f5, long j4) {
            DynamicAnimation.MassState massState = this.f5469c;
            double d4 = f5;
            float f6 = (float) j4;
            double exp = Math.exp((f6 / 1000.0f) * this.f5467a);
            Double.isNaN(d4);
            massState.f5463b = (float) (d4 * exp);
            DynamicAnimation.MassState massState2 = this.f5469c;
            float f7 = this.f5467a;
            double d5 = f4 - (f5 / f7);
            double d6 = f5 / f7;
            double exp2 = Math.exp((f7 * f6) / 1000.0f);
            Double.isNaN(d6);
            Double.isNaN(d5);
            massState2.f5462a = (float) (d5 + (d6 * exp2));
            DynamicAnimation.MassState massState3 = this.f5469c;
            if (isAtEquilibrium(massState3.f5462a, massState3.f5463b)) {
                this.f5469c.f5463b = 0.0f;
            }
            return this.f5469c;
        }

        @Override // androidx.dynamicanimation.animation.Force
        public float getAcceleration(float f4, float f5) {
            return f5 * this.f5467a;
        }

        @Override // androidx.dynamicanimation.animation.Force
        public boolean isAtEquilibrium(float f4, float f5) {
            return Math.abs(f5) < this.f5468b;
        }
    }

    public FlingAnimation(FloatValueHolder floatValueHolder) {
        super(floatValueHolder);
        DragForce dragForce = new DragForce();
        this.f5464o = dragForce;
        dragForce.c(d());
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    float b(float f4, float f5) {
        return this.f5464o.getAcceleration(f4, f5);
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    boolean e(float f4, float f5) {
        return f4 >= this.f5454g || f4 <= this.f5455h || this.f5464o.isAtEquilibrium(f4, f5);
    }

    public float getFriction() {
        return this.f5464o.a();
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    void i(float f4) {
        this.f5464o.c(f4);
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    boolean k(long j4) {
        DynamicAnimation.MassState d4 = this.f5464o.d(this.f5449b, this.f5448a, j4);
        float f4 = d4.f5462a;
        this.f5449b = f4;
        float f5 = d4.f5463b;
        this.f5448a = f5;
        float f6 = this.f5455h;
        if (f4 < f6) {
            this.f5449b = f6;
            return true;
        }
        float f7 = this.f5454g;
        if (f4 <= f7) {
            return e(f4, f5);
        }
        this.f5449b = f7;
        return true;
    }

    public FlingAnimation setFriction(@FloatRange(from = 0.0d, fromInclusive = false) float f4) {
        if (f4 > 0.0f) {
            this.f5464o.b(f4);
            return this;
        }
        throw new IllegalArgumentException("Friction must be positive");
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public FlingAnimation setMaxValue(float f4) {
        super.setMaxValue(f4);
        return this;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public FlingAnimation setMinValue(float f4) {
        super.setMinValue(f4);
        return this;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public FlingAnimation setStartVelocity(float f4) {
        super.setStartVelocity(f4);
        return this;
    }

    public <K> FlingAnimation(K k4, FloatPropertyCompat<K> floatPropertyCompat) {
        super(k4, floatPropertyCompat);
        DragForce dragForce = new DragForce();
        this.f5464o = dragForce;
        dragForce.c(d());
    }
}
