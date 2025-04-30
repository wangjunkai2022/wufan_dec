package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes2.dex */
public final class CircularProgressIndicator extends BaseProgressIndicator<CircularProgressIndicatorSpec> {
    public static final int A = 1;

    /* renamed from: y  reason: collision with root package name */
    public static final int f15371y = R.style.Widget_MaterialComponents_CircularProgressIndicator;

    /* renamed from: z  reason: collision with root package name */
    public static final int f15372z = 0;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface IndicatorDirection {
    }

    public CircularProgressIndicator(@NonNull Context context) {
        this(context, null);
    }

    private void t() {
        setIndeterminateDrawable(i.u(getContext(), (CircularProgressIndicatorSpec) this.f15353a));
        setProgressDrawable(e.x(getContext(), (CircularProgressIndicatorSpec) this.f15353a));
    }

    public int getIndicatorDirection() {
        return ((CircularProgressIndicatorSpec) this.f15353a).f15375i;
    }

    @Px
    public int getIndicatorInset() {
        return ((CircularProgressIndicatorSpec) this.f15353a).f15374h;
    }

    @Px
    public int getIndicatorSize() {
        return ((CircularProgressIndicatorSpec) this.f15353a).f15373g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    /* renamed from: s */
    public CircularProgressIndicatorSpec i(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        return new CircularProgressIndicatorSpec(context, attributeSet);
    }

    public void setIndicatorDirection(int i2) {
        ((CircularProgressIndicatorSpec) this.f15353a).f15375i = i2;
        invalidate();
    }

    public void setIndicatorInset(@Px int i2) {
        S s3 = this.f15353a;
        if (((CircularProgressIndicatorSpec) s3).f15374h != i2) {
            ((CircularProgressIndicatorSpec) s3).f15374h = i2;
            invalidate();
        }
    }

    public void setIndicatorSize(@Px int i2) {
        int max = Math.max(i2, getTrackThickness() * 2);
        S s3 = this.f15353a;
        if (((CircularProgressIndicatorSpec) s3).f15373g != max) {
            ((CircularProgressIndicatorSpec) s3).f15373g = max;
            ((CircularProgressIndicatorSpec) s3).e();
            invalidate();
        }
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackThickness(int i2) {
        super.setTrackThickness(i2);
        ((CircularProgressIndicatorSpec) this.f15353a).e();
    }

    public CircularProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.circularProgressIndicatorStyle);
    }

    public CircularProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2) {
        super(context, attributeSet, i2, f15371y);
        t();
    }
}
