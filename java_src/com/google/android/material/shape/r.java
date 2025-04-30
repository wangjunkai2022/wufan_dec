package com.google.android.material.shape;

import androidx.annotation.NonNull;
/* compiled from: TriangleEdgeTreatment.java */
/* loaded from: classes2.dex */
public class r extends f {

    /* renamed from: a  reason: collision with root package name */
    private final float f15715a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f15716b;

    public r(float f4, boolean z3) {
        this.f15715a = f4;
        this.f15716b = z3;
    }

    @Override // com.google.android.material.shape.f
    public void b(float f4, float f5, float f6, @NonNull o oVar) {
        oVar.n(f5 - (this.f15715a * f6), 0.0f);
        oVar.n(f5, (this.f15716b ? this.f15715a : -this.f15715a) * f6);
        oVar.n(f5 + (this.f15715a * f6), 0.0f);
        oVar.n(f4, 0.0f);
    }
}
