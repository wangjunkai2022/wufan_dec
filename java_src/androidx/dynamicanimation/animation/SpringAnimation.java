package androidx.dynamicanimation.animation;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import androidx.dynamicanimation.animation.DynamicAnimation;
/* loaded from: classes.dex */
public final class SpringAnimation extends DynamicAnimation<SpringAnimation> {

    /* renamed from: r  reason: collision with root package name */
    private static final float f5473r = Float.MAX_VALUE;

    /* renamed from: o  reason: collision with root package name */
    private SpringForce f5474o;

    /* renamed from: p  reason: collision with root package name */
    private float f5475p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f5476q;

    public SpringAnimation(FloatValueHolder floatValueHolder) {
        super(floatValueHolder);
        this.f5474o = null;
        this.f5475p = Float.MAX_VALUE;
        this.f5476q = false;
    }

    private void l() {
        SpringForce springForce = this.f5474o;
        if (springForce != null) {
            double finalPosition = springForce.getFinalPosition();
            if (finalPosition <= this.f5454g) {
                if (finalPosition < this.f5455h) {
                    throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
                }
                return;
            }
            throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
        }
        throw new UnsupportedOperationException("Incomplete SpringAnimation: Either final position or a spring force needs to be set.");
    }

    public void animateToFinalPosition(float f4) {
        if (isRunning()) {
            this.f5475p = f4;
            return;
        }
        if (this.f5474o == null) {
            this.f5474o = new SpringForce(f4);
        }
        this.f5474o.setFinalPosition(f4);
        start();
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    float b(float f4, float f5) {
        return this.f5474o.getAcceleration(f4, f5);
    }

    public boolean canSkipToEnd() {
        return this.f5474o.f5480b > 0.0d;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    boolean e(float f4, float f5) {
        return this.f5474o.isAtEquilibrium(f4, f5);
    }

    public SpringForce getSpring() {
        return this.f5474o;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    void i(float f4) {
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    boolean k(long j4) {
        if (this.f5476q) {
            float f4 = this.f5475p;
            if (f4 != Float.MAX_VALUE) {
                this.f5474o.setFinalPosition(f4);
                this.f5475p = Float.MAX_VALUE;
            }
            this.f5449b = this.f5474o.getFinalPosition();
            this.f5448a = 0.0f;
            this.f5476q = false;
            return true;
        }
        if (this.f5475p != Float.MAX_VALUE) {
            this.f5474o.getFinalPosition();
            long j5 = j4 / 2;
            DynamicAnimation.MassState c4 = this.f5474o.c(this.f5449b, this.f5448a, j5);
            this.f5474o.setFinalPosition(this.f5475p);
            this.f5475p = Float.MAX_VALUE;
            DynamicAnimation.MassState c5 = this.f5474o.c(c4.f5462a, c4.f5463b, j5);
            this.f5449b = c5.f5462a;
            this.f5448a = c5.f5463b;
        } else {
            DynamicAnimation.MassState c6 = this.f5474o.c(this.f5449b, this.f5448a, j4);
            this.f5449b = c6.f5462a;
            this.f5448a = c6.f5463b;
        }
        float max = Math.max(this.f5449b, this.f5455h);
        this.f5449b = max;
        float min = Math.min(max, this.f5454g);
        this.f5449b = min;
        if (e(min, this.f5448a)) {
            this.f5449b = this.f5474o.getFinalPosition();
            this.f5448a = 0.0f;
            return true;
        }
        return false;
    }

    public SpringAnimation setSpring(SpringForce springForce) {
        this.f5474o = springForce;
        return this;
    }

    public void skipToEnd() {
        if (canSkipToEnd()) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                if (this.f5453f) {
                    this.f5476q = true;
                    return;
                }
                return;
            }
            throw new AndroidRuntimeException("Animations may only be started on the main thread");
        }
        throw new UnsupportedOperationException("Spring animations can only come to an end when there is damping");
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public void start() {
        l();
        this.f5474o.b(d());
        super.start();
    }

    public <K> SpringAnimation(K k4, FloatPropertyCompat<K> floatPropertyCompat) {
        super(k4, floatPropertyCompat);
        this.f5474o = null;
        this.f5475p = Float.MAX_VALUE;
        this.f5476q = false;
    }

    public <K> SpringAnimation(K k4, FloatPropertyCompat<K> floatPropertyCompat, float f4) {
        super(k4, floatPropertyCompat);
        this.f5474o = null;
        this.f5475p = Float.MAX_VALUE;
        this.f5476q = false;
        this.f5474o = new SpringForce(f4);
    }
}
