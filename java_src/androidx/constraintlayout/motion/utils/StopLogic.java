package androidx.constraintlayout.motion.utils;

import androidx.constraintlayout.core.motion.utils.SpringStopEngine;
import androidx.constraintlayout.core.motion.utils.StopEngine;
import androidx.constraintlayout.core.motion.utils.StopLogicEngine;
import androidx.constraintlayout.motion.widget.MotionInterpolator;
/* loaded from: classes.dex */
public class StopLogic extends MotionInterpolator {

    /* renamed from: a  reason: collision with root package name */
    private StopLogicEngine f2690a;

    /* renamed from: b  reason: collision with root package name */
    private SpringStopEngine f2691b;

    /* renamed from: c  reason: collision with root package name */
    private StopEngine f2692c;

    public StopLogic() {
        StopLogicEngine stopLogicEngine = new StopLogicEngine();
        this.f2690a = stopLogicEngine;
        this.f2692c = stopLogicEngine;
    }

    public void config(float currentPos, float destination, float currentVelocity, float maxTime, float maxAcceleration, float maxVelocity) {
        StopLogicEngine stopLogicEngine = this.f2690a;
        this.f2692c = stopLogicEngine;
        stopLogicEngine.config(currentPos, destination, currentVelocity, maxTime, maxAcceleration, maxVelocity);
    }

    public String debug(String desc, float time) {
        return this.f2692c.debug(desc, time);
    }

    @Override // androidx.constraintlayout.motion.widget.MotionInterpolator, android.animation.TimeInterpolator
    public float getInterpolation(float v3) {
        return this.f2692c.getInterpolation(v3);
    }

    public float getVelocity(float x3) {
        return this.f2692c.getVelocity(x3);
    }

    public boolean isStopped() {
        return this.f2692c.isStopped();
    }

    public void springConfig(float currentPos, float destination, float currentVelocity, float mass, float stiffness, float damping, float stopThreshold, int boundaryMode) {
        if (this.f2691b == null) {
            this.f2691b = new SpringStopEngine();
        }
        SpringStopEngine springStopEngine = this.f2691b;
        this.f2692c = springStopEngine;
        springStopEngine.springConfig(currentPos, destination, currentVelocity, mass, stiffness, damping, stopThreshold, boundaryMode);
    }

    @Override // androidx.constraintlayout.motion.widget.MotionInterpolator
    public float getVelocity() {
        return this.f2692c.getVelocity();
    }
}
