package com.join.mgps.pulltorefresh.library.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pulltorefresh.library.PullToRefreshBase;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes4.dex */
public class IndicatorLayout extends FrameLayout implements Animation.AnimationListener {

    /* renamed from: f  reason: collision with root package name */
    static final int f51421f = 150;

    /* renamed from: a  reason: collision with root package name */
    private Animation f51422a;

    /* renamed from: b  reason: collision with root package name */
    private Animation f51423b;

    /* renamed from: c  reason: collision with root package name */
    private ImageView f51424c;

    /* renamed from: d  reason: collision with root package name */
    private final Animation f51425d;

    /* renamed from: e  reason: collision with root package name */
    private final Animation f51426e;

    /* loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f51427a;

        static {
            int[] iArr = new int[PullToRefreshBase.Mode.values().length];
            f51427a = iArr;
            try {
                iArr[PullToRefreshBase.Mode.PULL_FROM_END.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f51427a[PullToRefreshBase.Mode.PULL_FROM_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public IndicatorLayout(Context context, PullToRefreshBase.Mode mode) {
        super(context);
        int i2;
        int i4;
        this.f51424c = new ImageView(context);
        Drawable drawable = getResources().getDrawable(R.drawable.indicator_arrow);
        this.f51424c.setImageDrawable(drawable);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.indicator_internal_padding);
        this.f51424c.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        addView(this.f51424c);
        if (a.f51427a[mode.ordinal()] != 1) {
            i2 = R.anim.slide_in_from_top;
            i4 = R.anim.slide_out_to_top;
            setBackgroundResource(R.drawable.indicator_bg_top);
        } else {
            i2 = R.anim.slide_in_from_bottom;
            setBackgroundResource(R.drawable.indicator_bg_bottom);
            this.f51424c.setScaleType(ImageView.ScaleType.MATRIX);
            Matrix matrix = new Matrix();
            matrix.setRotate(180.0f, drawable.getIntrinsicWidth() / 2.0f, drawable.getIntrinsicHeight() / 2.0f);
            this.f51424c.setImageMatrix(matrix);
            i4 = R.anim.slide_out_to_bottom;
        }
        Animation loadAnimation = AnimationUtils.loadAnimation(context, i2);
        this.f51422a = loadAnimation;
        loadAnimation.setAnimationListener(this);
        Animation loadAnimation2 = AnimationUtils.loadAnimation(context, i4);
        this.f51423b = loadAnimation2;
        loadAnimation2.setAnimationListener(this);
        LinearInterpolator linearInterpolator = new LinearInterpolator();
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, -180.0f, 1, 0.5f, 1, 0.5f);
        this.f51425d = rotateAnimation;
        rotateAnimation.setInterpolator(linearInterpolator);
        rotateAnimation.setDuration(150L);
        rotateAnimation.setFillAfter(true);
        RotateAnimation rotateAnimation2 = new RotateAnimation(-180.0f, 0.0f, 1, 0.5f, 1, 0.5f);
        this.f51426e = rotateAnimation2;
        rotateAnimation2.setInterpolator(linearInterpolator);
        rotateAnimation2.setDuration(150L);
        rotateAnimation2.setFillAfter(true);
    }

    public void a() {
        startAnimation(this.f51423b);
    }

    public final boolean b() {
        Animation animation = getAnimation();
        return animation != null ? this.f51422a == animation : getVisibility() == 0;
    }

    public void c() {
        this.f51424c.startAnimation(this.f51426e);
    }

    public void d() {
        this.f51424c.startAnimation(this.f51425d);
    }

    public void e() {
        this.f51424c.clearAnimation();
        startAnimation(this.f51422a);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        if (animation == this.f51423b) {
            this.f51424c.clearAnimation();
            setVisibility(8);
        } else if (animation == this.f51422a) {
            setVisibility(0);
        }
        clearAnimation();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        setVisibility(0);
    }
}
