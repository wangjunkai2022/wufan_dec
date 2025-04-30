package com.google.android.material.shape;

import androidx.annotation.NonNull;
/* compiled from: MarkerEdgeTreatment.java */
/* loaded from: classes2.dex */
public final class h extends f {

    /* renamed from: a  reason: collision with root package name */
    private final float f15628a;

    public h(float f4) {
        this.f15628a = f4 - 0.001f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.shape.f
    public boolean a() {
        return true;
    }

    @Override // com.google.android.material.shape.f
    public void b(float f4, float f5, float f6, @NonNull o oVar) {
        double d4 = this.f15628a;
        double sqrt = Math.sqrt(2.0d);
        Double.isNaN(d4);
        float f7 = (float) ((d4 * sqrt) / 2.0d);
        float sqrt2 = (float) Math.sqrt(Math.pow(this.f15628a, 2.0d) - Math.pow(f7, 2.0d));
        double d5 = this.f15628a;
        double sqrt3 = Math.sqrt(2.0d);
        Double.isNaN(d5);
        double d6 = d5 * sqrt3;
        double d7 = this.f15628a;
        Double.isNaN(d7);
        oVar.p(f5 - f7, ((float) (-(d6 - d7))) + sqrt2);
        double d8 = this.f15628a;
        double sqrt4 = Math.sqrt(2.0d);
        Double.isNaN(d8);
        double d9 = d8 * sqrt4;
        double d10 = this.f15628a;
        Double.isNaN(d10);
        oVar.n(f5, (float) (-(d9 - d10)));
        double d11 = this.f15628a;
        double sqrt5 = Math.sqrt(2.0d);
        Double.isNaN(d11);
        double d12 = d11 * sqrt5;
        double d13 = this.f15628a;
        Double.isNaN(d13);
        oVar.n(f5 + f7, ((float) (-(d12 - d13))) + sqrt2);
    }
}
