package com.google.android.material.shape;

import androidx.annotation.NonNull;
/* compiled from: OffsetEdgeTreatment.java */
/* loaded from: classes2.dex */
public final class j extends f {

    /* renamed from: a  reason: collision with root package name */
    private final f f15629a;

    /* renamed from: b  reason: collision with root package name */
    private final float f15630b;

    public j(@NonNull f fVar, float f4) {
        this.f15629a = fVar;
        this.f15630b = f4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.shape.f
    public boolean a() {
        return this.f15629a.a();
    }

    @Override // com.google.android.material.shape.f
    public void b(float f4, float f5, float f6, @NonNull o oVar) {
        this.f15629a.b(f4, f5 - this.f15630b, f6, oVar);
    }
}
