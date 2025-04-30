package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes2.dex */
public final class LinearProgressIndicator extends BaseProgressIndicator<LinearProgressIndicatorSpec> {
    public static final int A = 1;
    public static final int B = 0;
    public static final int C = 1;
    public static final int D = 2;
    public static final int E = 3;

    /* renamed from: y  reason: collision with root package name */
    public static final int f15376y = R.style.Widget_MaterialComponents_LinearProgressIndicator;

    /* renamed from: z  reason: collision with root package name */
    public static final int f15377z = 0;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface IndeterminateAnimationType {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface IndicatorDirection {
    }

    public LinearProgressIndicator(@NonNull Context context) {
        this(context, null);
    }

    private void t() {
        setIndeterminateDrawable(i.v(getContext(), (LinearProgressIndicatorSpec) this.f15353a));
        setProgressDrawable(e.y(getContext(), (LinearProgressIndicatorSpec) this.f15353a));
    }

    public int getIndeterminateAnimationType() {
        return ((LinearProgressIndicatorSpec) this.f15353a).f15378g;
    }

    public int getIndicatorDirection() {
        return ((LinearProgressIndicatorSpec) this.f15353a).f15379h;
    }

    @Override // android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        S s3 = this.f15353a;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) s3;
        boolean z4 = true;
        if (((LinearProgressIndicatorSpec) s3).f15379h != 1 && ((ViewCompat.getLayoutDirection(this) != 1 || ((LinearProgressIndicatorSpec) this.f15353a).f15379h != 2) && (ViewCompat.getLayoutDirection(this) != 0 || ((LinearProgressIndicatorSpec) this.f15353a).f15379h != 3))) {
            z4 = false;
        }
        linearProgressIndicatorSpec.f15380i = z4;
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        int paddingLeft = i2 - (getPaddingLeft() + getPaddingRight());
        int paddingTop = i4 - (getPaddingTop() + getPaddingBottom());
        i<LinearProgressIndicatorSpec> indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable != null) {
            indeterminateDrawable.setBounds(0, 0, paddingLeft, paddingTop);
        }
        e<LinearProgressIndicatorSpec> progressDrawable = getProgressDrawable();
        if (progressDrawable != null) {
            progressDrawable.setBounds(0, 0, paddingLeft, paddingTop);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    /* renamed from: s */
    public LinearProgressIndicatorSpec i(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        return new LinearProgressIndicatorSpec(context, attributeSet);
    }

    public void setIndeterminateAnimationType(int i2) {
        if (((LinearProgressIndicatorSpec) this.f15353a).f15378g == i2) {
            return;
        }
        if (r() && isIndeterminate()) {
            throw new IllegalStateException("Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode.");
        }
        S s3 = this.f15353a;
        ((LinearProgressIndicatorSpec) s3).f15378g = i2;
        ((LinearProgressIndicatorSpec) s3).e();
        if (i2 == 0) {
            getIndeterminateDrawable().y(new k((LinearProgressIndicatorSpec) this.f15353a));
        } else {
            getIndeterminateDrawable().y(new l(getContext(), (LinearProgressIndicatorSpec) this.f15353a));
        }
        invalidate();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setIndicatorColor(@NonNull int... iArr) {
        super.setIndicatorColor(iArr);
        ((LinearProgressIndicatorSpec) this.f15353a).e();
    }

    public void setIndicatorDirection(int i2) {
        S s3 = this.f15353a;
        ((LinearProgressIndicatorSpec) s3).f15379h = i2;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) s3;
        boolean z3 = true;
        if (i2 != 1 && ((ViewCompat.getLayoutDirection(this) != 1 || ((LinearProgressIndicatorSpec) this.f15353a).f15379h != 2) && (ViewCompat.getLayoutDirection(this) != 0 || i2 != 3))) {
            z3 = false;
        }
        linearProgressIndicatorSpec.f15380i = z3;
        invalidate();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setProgressCompat(int i2, boolean z3) {
        S s3 = this.f15353a;
        if (s3 != 0 && ((LinearProgressIndicatorSpec) s3).f15378g == 0 && isIndeterminate()) {
            return;
        }
        super.setProgressCompat(i2, z3);
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackCornerRadius(int i2) {
        super.setTrackCornerRadius(i2);
        ((LinearProgressIndicatorSpec) this.f15353a).e();
        invalidate();
    }

    public LinearProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.linearProgressIndicatorStyle);
    }

    public LinearProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2) {
        super(context, attributeSet, i2, f15376y);
        t();
    }
}
