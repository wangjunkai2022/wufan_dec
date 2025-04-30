package com.google.android.material.animation;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;
import androidx.annotation.NonNull;
/* compiled from: MatrixEvaluator.java */
/* loaded from: classes2.dex */
public class g implements TypeEvaluator<Matrix> {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f14014a = new float[9];

    /* renamed from: b  reason: collision with root package name */
    private final float[] f14015b = new float[9];

    /* renamed from: c  reason: collision with root package name */
    private final Matrix f14016c = new Matrix();

    @Override // android.animation.TypeEvaluator
    @NonNull
    /* renamed from: a */
    public Matrix evaluate(float f4, @NonNull Matrix matrix, @NonNull Matrix matrix2) {
        matrix.getValues(this.f14014a);
        matrix2.getValues(this.f14015b);
        for (int i2 = 0; i2 < 9; i2++) {
            float[] fArr = this.f14015b;
            float f5 = fArr[i2];
            float[] fArr2 = this.f14014a;
            fArr[i2] = fArr2[i2] + ((f5 - fArr2[i2]) * f4);
        }
        this.f14016c.setValues(this.f14015b);
        return this.f14016c;
    }
}
