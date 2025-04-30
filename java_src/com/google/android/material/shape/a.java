package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import java.util.Arrays;
/* compiled from: AbsoluteCornerSize.java */
/* loaded from: classes2.dex */
public final class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private final float f15617a;

    public a(float f4) {
        this.f15617a = f4;
    }

    @Override // com.google.android.material.shape.c
    public float a(@NonNull RectF rectF) {
        return this.f15617a;
    }

    public float b() {
        return this.f15617a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && this.f15617a == ((a) obj).f15617a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f15617a)});
    }
}
