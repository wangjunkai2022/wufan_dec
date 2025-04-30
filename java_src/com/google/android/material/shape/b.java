package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.Arrays;
/* compiled from: AdjustedCornerSize.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class b implements c {

    /* renamed from: a  reason: collision with root package name */
    private final c f15618a;

    /* renamed from: b  reason: collision with root package name */
    private final float f15619b;

    public b(float f4, @NonNull c cVar) {
        while (cVar instanceof b) {
            cVar = ((b) cVar).f15618a;
            f4 += ((b) cVar).f15619b;
        }
        this.f15618a = cVar;
        this.f15619b = f4;
    }

    @Override // com.google.android.material.shape.c
    public float a(@NonNull RectF rectF) {
        return Math.max(0.0f, this.f15618a.a(rectF) + this.f15619b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            return this.f15618a.equals(bVar.f15618a) && this.f15619b == bVar.f15619b;
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f15618a, Float.valueOf(this.f15619b)});
    }
}
