package com.join.mgps.joystick;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Interpolator;
/* loaded from: classes4.dex */
public class EaseBreathInterpolator implements Interpolator {
    public EaseBreathInterpolator() {
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f4) {
        double pow;
        double d4 = f4;
        if (d4 < 0.333d) {
            double d5 = f4 * 3.0f;
            Double.isNaN(d5);
            pow = (Math.sin((d5 * 3.141592653589793d) - 1.5707963267948966d) * 0.5d) + 0.5d;
        } else {
            Double.isNaN(d4);
            pow = Math.pow((Math.sin((d4 * (-9.42477796076938d) * 0.5d) + 3.141592653589793d) * 0.5d) + 0.5d, 2.0d);
        }
        return (float) pow;
    }

    public EaseBreathInterpolator(Context context, AttributeSet attributeSet) {
    }
}
