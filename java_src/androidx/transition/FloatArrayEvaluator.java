package androidx.transition;

import android.animation.TypeEvaluator;
/* loaded from: classes2.dex */
class FloatArrayEvaluator implements TypeEvaluator<float[]> {

    /* renamed from: a  reason: collision with root package name */
    private float[] f7629a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FloatArrayEvaluator(float[] fArr) {
        this.f7629a = fArr;
    }

    @Override // android.animation.TypeEvaluator
    public float[] evaluate(float f4, float[] fArr, float[] fArr2) {
        float[] fArr3 = this.f7629a;
        if (fArr3 == null) {
            fArr3 = new float[fArr.length];
        }
        for (int i2 = 0; i2 < fArr3.length; i2++) {
            float f5 = fArr[i2];
            fArr3[i2] = f5 + ((fArr2[i2] - f5) * f4);
        }
        return fArr3;
    }
}
