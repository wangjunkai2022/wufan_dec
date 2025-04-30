package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import java.util.Arrays;
/* compiled from: RelativeCornerSize.java */
/* loaded from: classes2.dex */
public final class k implements c {

    /* renamed from: a  reason: collision with root package name */
    private final float f15631a;

    public k(@FloatRange(from = 0.0d, to = 1.0d) float f4) {
        this.f15631a = f4;
    }

    @Override // com.google.android.material.shape.c
    public float a(@NonNull RectF rectF) {
        return this.f15631a * rectF.height();
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float b() {
        return this.f15631a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof k) && this.f15631a == ((k) obj).f15631a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f15631a)});
    }
}
