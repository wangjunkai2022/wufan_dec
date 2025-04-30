package androidx.constraintlayout.core.motion.utils;
/* loaded from: classes.dex */
public class VelocityMatrix {

    /* renamed from: g  reason: collision with root package name */
    private static String f2275g = "VelocityMatrix";

    /* renamed from: a  reason: collision with root package name */
    float f2276a;

    /* renamed from: b  reason: collision with root package name */
    float f2277b;

    /* renamed from: c  reason: collision with root package name */
    float f2278c;

    /* renamed from: d  reason: collision with root package name */
    float f2279d;

    /* renamed from: e  reason: collision with root package name */
    float f2280e;

    /* renamed from: f  reason: collision with root package name */
    float f2281f;

    public void applyTransform(float f4, float f5, int i2, int i4, float[] fArr) {
        float f6 = fArr[0];
        float f7 = fArr[1];
        float f8 = (f4 - 0.5f) * 2.0f;
        float f9 = (f5 - 0.5f) * 2.0f;
        float f10 = f6 + this.f2278c;
        float f11 = f7 + this.f2279d;
        float f12 = f10 + (this.f2276a * f8);
        float f13 = f11 + (this.f2277b * f9);
        float radians = (float) Math.toRadians(this.f2280e);
        double d4 = (-i2) * f8;
        double radians2 = (float) Math.toRadians(this.f2281f);
        double sin = Math.sin(radians2);
        Double.isNaN(d4);
        double d5 = d4 * sin;
        double d6 = i4 * f9;
        double cos = Math.cos(radians2);
        Double.isNaN(d6);
        float f14 = f12 + (((float) (d5 - (cos * d6))) * radians);
        double d7 = i2 * f8;
        double cos2 = Math.cos(radians2);
        Double.isNaN(d7);
        double d8 = d7 * cos2;
        double sin2 = Math.sin(radians2);
        Double.isNaN(d6);
        fArr[0] = f14;
        fArr[1] = f13 + (radians * ((float) (d8 - (d6 * sin2))));
    }

    public void clear() {
        this.f2280e = 0.0f;
        this.f2279d = 0.0f;
        this.f2278c = 0.0f;
        this.f2277b = 0.0f;
        this.f2276a = 0.0f;
    }

    public void setRotationVelocity(SplineSet splineSet, float f4) {
        if (splineSet != null) {
            this.f2280e = splineSet.getSlope(f4);
            this.f2281f = splineSet.get(f4);
        }
    }

    public void setScaleVelocity(SplineSet splineSet, SplineSet splineSet2, float f4) {
        if (splineSet != null) {
            this.f2276a = splineSet.getSlope(f4);
        }
        if (splineSet2 != null) {
            this.f2277b = splineSet2.getSlope(f4);
        }
    }

    public void setTranslationVelocity(SplineSet splineSet, SplineSet splineSet2, float f4) {
        if (splineSet != null) {
            this.f2278c = splineSet.getSlope(f4);
        }
        if (splineSet2 != null) {
            this.f2279d = splineSet2.getSlope(f4);
        }
    }

    public void setRotationVelocity(KeyCycleOscillator keyCycleOscillator, float f4) {
        if (keyCycleOscillator != null) {
            this.f2280e = keyCycleOscillator.getSlope(f4);
        }
    }

    public void setScaleVelocity(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f4) {
        if (keyCycleOscillator != null) {
            this.f2276a = keyCycleOscillator.getSlope(f4);
        }
        if (keyCycleOscillator2 != null) {
            this.f2277b = keyCycleOscillator2.getSlope(f4);
        }
    }

    public void setTranslationVelocity(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f4) {
        if (keyCycleOscillator != null) {
            this.f2278c = keyCycleOscillator.getSlope(f4);
        }
        if (keyCycleOscillator2 != null) {
            this.f2279d = keyCycleOscillator2.getSlope(f4);
        }
    }
}
