package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StyleRes;
import com.google.android.material.R;
import com.google.android.material.internal.o;
/* loaded from: classes2.dex */
public final class CircularProgressIndicatorSpec extends b {
    @Px

    /* renamed from: g  reason: collision with root package name */
    public int f15373g;
    @Px

    /* renamed from: h  reason: collision with root package name */
    public int f15374h;

    /* renamed from: i  reason: collision with root package name */
    public int f15375i;

    public CircularProgressIndicatorSpec(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.circularProgressIndicatorStyle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.b
    public void e() {
    }

    public CircularProgressIndicatorSpec(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2) {
        this(context, attributeSet, i2, CircularProgressIndicator.f15371y);
    }

    public CircularProgressIndicatorSpec(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i4) {
        super(context, attributeSet, i2, i4);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_circular_size_medium);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_circular_inset_medium);
        TypedArray j4 = o.j(context, attributeSet, R.styleable.CircularProgressIndicator, i2, i4, new int[0]);
        this.f15373g = Math.max(com.google.android.material.resources.c.d(context, j4, R.styleable.CircularProgressIndicator_indicatorSize, dimensionPixelSize), this.f15382a * 2);
        this.f15374h = com.google.android.material.resources.c.d(context, j4, R.styleable.CircularProgressIndicator_indicatorInset, dimensionPixelSize2);
        this.f15375i = j4.getInt(R.styleable.CircularProgressIndicator_indicatorDirectionCircular, 0);
        j4.recycle();
        e();
    }
}
