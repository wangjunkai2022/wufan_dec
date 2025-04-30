package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StyleRes;
import com.google.android.material.R;
import com.google.android.material.color.m;
import com.google.android.material.internal.o;
/* compiled from: BaseProgressIndicatorSpec.java */
/* loaded from: classes2.dex */
public abstract class b {
    @Px

    /* renamed from: a  reason: collision with root package name */
    public int f15382a;
    @Px

    /* renamed from: b  reason: collision with root package name */
    public int f15383b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public int[] f15384c = new int[0];
    @ColorInt

    /* renamed from: d  reason: collision with root package name */
    public int f15385d;

    /* renamed from: e  reason: collision with root package name */
    public int f15386e;

    /* renamed from: f  reason: collision with root package name */
    public int f15387f;

    /* JADX INFO: Access modifiers changed from: protected */
    public b(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i4) {
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_track_thickness);
        TypedArray j4 = o.j(context, attributeSet, R.styleable.BaseProgressIndicator, i2, i4, new int[0]);
        this.f15382a = com.google.android.material.resources.c.d(context, j4, R.styleable.BaseProgressIndicator_trackThickness, dimensionPixelSize);
        this.f15383b = Math.min(com.google.android.material.resources.c.d(context, j4, R.styleable.BaseProgressIndicator_trackCornerRadius, 0), this.f15382a / 2);
        this.f15386e = j4.getInt(R.styleable.BaseProgressIndicator_showAnimationBehavior, 0);
        this.f15387f = j4.getInt(R.styleable.BaseProgressIndicator_hideAnimationBehavior, 0);
        c(context, j4);
        d(context, j4);
        j4.recycle();
    }

    private void c(@NonNull Context context, @NonNull TypedArray typedArray) {
        int i2 = R.styleable.BaseProgressIndicator_indicatorColor;
        if (!typedArray.hasValue(i2)) {
            this.f15384c = new int[]{m.b(context, R.attr.colorPrimary, -1)};
        } else if (typedArray.peekValue(i2).type != 1) {
            this.f15384c = new int[]{typedArray.getColor(i2, -1)};
        } else {
            int[] intArray = context.getResources().getIntArray(typedArray.getResourceId(i2, -1));
            this.f15384c = intArray;
            if (intArray.length == 0) {
                throw new IllegalArgumentException("indicatorColors cannot be empty when indicatorColor is not used.");
            }
        }
    }

    private void d(@NonNull Context context, @NonNull TypedArray typedArray) {
        int i2 = R.styleable.BaseProgressIndicator_trackColor;
        if (typedArray.hasValue(i2)) {
            this.f15385d = typedArray.getColor(i2, -1);
            return;
        }
        this.f15385d = this.f15384c[0];
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{16842803});
        float f4 = obtainStyledAttributes.getFloat(0, 0.2f);
        obtainStyledAttributes.recycle();
        this.f15385d = m.a(this.f15385d, (int) (f4 * 255.0f));
    }

    public boolean a() {
        return this.f15387f != 0;
    }

    public boolean b() {
        return this.f15386e != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void e();
}
