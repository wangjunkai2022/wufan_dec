package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import com.google.android.material.R;
import com.google.android.material.internal.o;
/* loaded from: classes2.dex */
public final class LinearProgressIndicatorSpec extends b {

    /* renamed from: g  reason: collision with root package name */
    public int f15378g;

    /* renamed from: h  reason: collision with root package name */
    public int f15379h;

    /* renamed from: i  reason: collision with root package name */
    boolean f15380i;

    public LinearProgressIndicatorSpec(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.linearProgressIndicatorStyle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.b
    public void e() {
        if (this.f15378g == 0) {
            if (this.f15383b <= 0) {
                if (this.f15384c.length < 3) {
                    throw new IllegalArgumentException("Contiguous indeterminate animation must be used with 3 or more indicator colors.");
                }
                return;
            }
            throw new IllegalArgumentException("Rounded corners are not supported in contiguous indeterminate animation.");
        }
    }

    public LinearProgressIndicatorSpec(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2) {
        this(context, attributeSet, i2, LinearProgressIndicator.f15376y);
    }

    public LinearProgressIndicatorSpec(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i4) {
        super(context, attributeSet, i2, i4);
        TypedArray j4 = o.j(context, attributeSet, R.styleable.LinearProgressIndicator, R.attr.linearProgressIndicatorStyle, LinearProgressIndicator.f15376y, new int[0]);
        this.f15378g = j4.getInt(R.styleable.LinearProgressIndicator_indeterminateAnimationType, 1);
        this.f15379h = j4.getInt(R.styleable.LinearProgressIndicator_indicatorDirectionLinear, 0);
        j4.recycle();
        e();
        this.f15380i = this.f15379h == 1;
    }
}
