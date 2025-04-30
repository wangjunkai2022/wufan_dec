package com.join.mgps.pulltorefresh.library.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pulltorefresh.library.PullToRefreshBase;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes4.dex */
public class FlipLoadingLayout extends LoadingLayout {

    /* renamed from: p  reason: collision with root package name */
    static final int f51417p = 150;

    /* renamed from: n  reason: collision with root package name */
    private final Animation f51418n;

    /* renamed from: o  reason: collision with root package name */
    private final Animation f51419o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f51420a;

        static {
            int[] iArr = new int[PullToRefreshBase.Mode.values().length];
            f51420a = iArr;
            try {
                iArr[PullToRefreshBase.Mode.PULL_FROM_END.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f51420a[PullToRefreshBase.Mode.PULL_FROM_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public FlipLoadingLayout(Context context, PullToRefreshBase.Mode mode, PullToRefreshBase.Orientation orientation, TypedArray typedArray) {
        super(context, mode, orientation, typedArray);
        float f4 = mode == PullToRefreshBase.Mode.PULL_FROM_START ? -180 : 180;
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, f4, 1, 0.5f, 1, 0.5f);
        this.f51418n = rotateAnimation;
        Interpolator interpolator = LoadingLayout.f51429m;
        rotateAnimation.setInterpolator(interpolator);
        rotateAnimation.setDuration(150L);
        rotateAnimation.setFillAfter(true);
        RotateAnimation rotateAnimation2 = new RotateAnimation(f4, 0.0f, 1, 0.5f, 1, 0.5f);
        this.f51419o = rotateAnimation2;
        rotateAnimation2.setInterpolator(interpolator);
        rotateAnimation2.setDuration(150L);
        rotateAnimation2.setFillAfter(true);
    }

    private float getDrawableRotationAngle() {
        int i2 = a.f51420a[this.f51436g.ordinal()];
        return i2 != 1 ? (i2 == 2 && this.f51437h == PullToRefreshBase.Orientation.HORIZONTAL) ? 270.0f : 0.0f : this.f51437h == PullToRefreshBase.Orientation.HORIZONTAL ? 90.0f : 180.0f;
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected void b(Drawable drawable) {
        if (drawable != null) {
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int intrinsicWidth = drawable.getIntrinsicWidth();
            ViewGroup.LayoutParams layoutParams = this.f51431b.getLayoutParams();
            int max = Math.max(intrinsicHeight, intrinsicWidth);
            layoutParams.height = max;
            layoutParams.width = max;
            this.f51431b.requestLayout();
            this.f51431b.setScaleType(ImageView.ScaleType.MATRIX);
            Matrix matrix = new Matrix();
            matrix.postTranslate((layoutParams.width - intrinsicWidth) / 2.0f, (layoutParams.height - intrinsicHeight) / 2.0f);
            matrix.postRotate(getDrawableRotationAngle(), layoutParams.width / 2.0f, layoutParams.height / 2.0f);
            this.f51431b.setImageMatrix(matrix);
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected void d(float f4) {
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected void f() {
        if (this.f51418n == this.f51431b.getAnimation()) {
            this.f51431b.startAnimation(this.f51419o);
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected int getDefaultDrawableResId() {
        return R.drawable.default_ptr_flip;
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected void h() {
        this.f51431b.clearAnimation();
        this.f51431b.setVisibility(4);
        this.f51432c.setVisibility(0);
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected void j() {
        this.f51431b.startAnimation(this.f51418n);
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected void l() {
        this.f51431b.clearAnimation();
        this.f51432c.setVisibility(8);
        this.f51431b.setVisibility(0);
    }
}
