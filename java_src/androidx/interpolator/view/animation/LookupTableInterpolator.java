package androidx.interpolator.view.animation;

import android.view.animation.Interpolator;
/* loaded from: classes.dex */
abstract class LookupTableInterpolator implements Interpolator {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f6148a;

    /* renamed from: b  reason: collision with root package name */
    private final float f6149b;

    /* JADX INFO: Access modifiers changed from: protected */
    public LookupTableInterpolator(float[] fArr) {
        this.f6148a = fArr;
        this.f6149b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f4) {
        if (f4 >= 1.0f) {
            return 1.0f;
        }
        if (f4 <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.f6148a;
        int min = Math.min((int) ((fArr.length - 1) * f4), fArr.length - 2);
        float f5 = this.f6149b;
        float f6 = (f4 - (min * f5)) / f5;
        float[] fArr2 = this.f6148a;
        return fArr2[min] + (f6 * (fArr2[min + 1] - fArr2[min]));
    }
}
