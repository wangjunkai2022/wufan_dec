package com.join.mgps.pulltorefresh.library.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pulltorefresh.library.PullToRefreshBase;
/* loaded from: classes4.dex */
public class RotateLoadingLayout extends LoadingLayout {

    /* renamed from: s  reason: collision with root package name */
    static final int f51443s = 1200;

    /* renamed from: n  reason: collision with root package name */
    private final Animation f51444n;

    /* renamed from: o  reason: collision with root package name */
    private final Matrix f51445o;

    /* renamed from: p  reason: collision with root package name */
    private float f51446p;

    /* renamed from: q  reason: collision with root package name */
    private float f51447q;

    /* renamed from: r  reason: collision with root package name */
    private final boolean f51448r;

    public RotateLoadingLayout(Context context, PullToRefreshBase.Mode mode, PullToRefreshBase.Orientation orientation, TypedArray typedArray) {
        super(context, mode, orientation, typedArray);
        this.f51448r = typedArray.getBoolean(15, true);
        this.f51431b.setScaleType(ImageView.ScaleType.MATRIX);
        Matrix matrix = new Matrix();
        this.f51445o = matrix;
        this.f51431b.setImageMatrix(matrix);
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 720.0f, 1, 0.5f, 1, 0.5f);
        this.f51444n = rotateAnimation;
        rotateAnimation.setInterpolator(LoadingLayout.f51429m);
        rotateAnimation.setDuration(1200L);
        rotateAnimation.setRepeatCount(-1);
        rotateAnimation.setRepeatMode(1);
    }

    private void n() {
        Matrix matrix = this.f51445o;
        if (matrix != null) {
            matrix.reset();
            this.f51431b.setImageMatrix(this.f51445o);
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    public void b(Drawable drawable) {
        if (drawable != null) {
            this.f51446p = Math.round(drawable.getIntrinsicWidth() / 2.0f);
            this.f51447q = Math.round(drawable.getIntrinsicHeight() / 2.0f);
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected void d(float f4) {
        this.f51445o.setRotate(this.f51448r ? f4 * 90.0f : Math.max(0.0f, Math.min(180.0f, (f4 * 360.0f) - 180.0f)), this.f51446p, this.f51447q);
        this.f51431b.setImageMatrix(this.f51445o);
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected void f() {
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected int getDefaultDrawableResId() {
        return R.drawable.default_ptr_rotate;
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected void h() {
        this.f51431b.startAnimation(this.f51444n);
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected void j() {
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected void l() {
        this.f51431b.clearAnimation();
        n();
    }
}
