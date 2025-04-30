package com.google.android.material.shape;

import androidx.annotation.NonNull;
/* compiled from: CutCornerTreatment.java */
/* loaded from: classes2.dex */
public class e extends d {

    /* renamed from: a  reason: collision with root package name */
    float f15620a;

    public e() {
        this.f15620a = -1.0f;
    }

    @Override // com.google.android.material.shape.d
    public void b(@NonNull o oVar, float f4, float f5, float f6) {
        oVar.q(0.0f, f6 * f5, 180.0f, 180.0f - f4);
        double sin = Math.sin(Math.toRadians(f4));
        double d4 = f6;
        Double.isNaN(d4);
        double d5 = f5;
        Double.isNaN(d5);
        double sin2 = Math.sin(Math.toRadians(90.0f - f4));
        Double.isNaN(d4);
        Double.isNaN(d5);
        oVar.n((float) (sin * d4 * d5), (float) (sin2 * d4 * d5));
    }

    @Deprecated
    public e(float f4) {
        this.f15620a = -1.0f;
        this.f15620a = f4;
    }
}
