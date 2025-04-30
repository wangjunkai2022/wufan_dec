package com.google.android.material.shape;

import androidx.annotation.NonNull;
/* compiled from: RoundedCornerTreatment.java */
/* loaded from: classes2.dex */
public class l extends d {

    /* renamed from: a  reason: collision with root package name */
    float f15632a;

    public l() {
        this.f15632a = -1.0f;
    }

    @Override // com.google.android.material.shape.d
    public void b(@NonNull o oVar, float f4, float f5, float f6) {
        oVar.q(0.0f, f6 * f5, 180.0f, 180.0f - f4);
        float f7 = f6 * 2.0f * f5;
        oVar.a(0.0f, 0.0f, f7, f7, 180.0f, f4);
    }

    @Deprecated
    public l(float f4) {
        this.f15632a = -1.0f;
        this.f15632a = f4;
    }
}
