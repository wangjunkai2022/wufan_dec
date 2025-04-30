package com.papa91.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.join.mgps.Util.g0;
import com.papa91.mix.R;
import com.papa91.view.indicators.PacmanIndicator;
/* loaded from: classes4.dex */
public class AVLoadingIndicatorView extends View {
    private static final PacmanIndicator DEFAULT_INDICATOR = new PacmanIndicator();
    private static final int MIN_DELAY = 500;
    private static final int MIN_SHOW_TIME = 500;
    private static final String TAG = "AVLoadingIndicatorView";
    private final Runnable mDelayedHide;
    private final Runnable mDelayedShow;
    private boolean mDismissed;
    private Indicator mIndicator;
    private int mIndicatorColor;
    int mMaxHeight;
    int mMaxWidth;
    int mMinHeight;
    int mMinWidth;
    private boolean mPostedHide;
    private boolean mPostedShow;
    private boolean mShouldStartAnimationDrawable;
    private long mStartTime;

    public AVLoadingIndicatorView(Context context) {
        super(context);
        this.mStartTime = -1L;
        this.mPostedHide = false;
        this.mPostedShow = false;
        this.mDismissed = false;
        this.mDelayedHide = new Runnable() { // from class: com.papa91.view.AVLoadingIndicatorView.1
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedHide = false;
                AVLoadingIndicatorView.this.mStartTime = -1L;
                AVLoadingIndicatorView.this.setVisibility(8);
            }
        };
        this.mDelayedShow = new Runnable() { // from class: com.papa91.view.AVLoadingIndicatorView.2
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedShow = false;
                if (AVLoadingIndicatorView.this.mDismissed) {
                    return;
                }
                AVLoadingIndicatorView.this.mStartTime = System.currentTimeMillis();
                AVLoadingIndicatorView.this.setVisibility(0);
            }
        };
        init(context, null, 0, 0);
    }

    private void init(Context context, AttributeSet attributeSet, int i2, int i4) {
        this.mMinWidth = 24;
        this.mMaxWidth = 48;
        this.mMinHeight = 24;
        this.mMaxHeight = 48;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AVLoadingIndicatorView, i2, i4);
        this.mMinWidth = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AVLoadingIndicatorView_minWidth, this.mMinWidth);
        this.mMaxWidth = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AVLoadingIndicatorView_maxWidth, this.mMaxWidth);
        this.mMinHeight = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AVLoadingIndicatorView_minHeight, this.mMinHeight);
        this.mMaxHeight = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AVLoadingIndicatorView_maxHeight, this.mMaxHeight);
        String string = obtainStyledAttributes.getString(R.styleable.AVLoadingIndicatorView_indicatorName);
        this.mIndicatorColor = obtainStyledAttributes.getColor(R.styleable.AVLoadingIndicatorView_indicatorColor, Color.parseColor("#FFFF9E08"));
        setIndicator(string);
        if (this.mIndicator == null) {
            setIndicator(DEFAULT_INDICATOR);
        }
        obtainStyledAttributes.recycle();
    }

    private void removeCallbacks() {
        removeCallbacks(this.mDelayedHide);
        removeCallbacks(this.mDelayedShow);
    }

    private void updateDrawableBounds(int i2, int i4) {
        Indicator indicator;
        int i5;
        int paddingRight = i2 - (getPaddingRight() + getPaddingLeft());
        int paddingTop = i4 - (getPaddingTop() + getPaddingBottom());
        if (this.mIndicator != null) {
            float intrinsicWidth = indicator.getIntrinsicWidth() / this.mIndicator.getIntrinsicHeight();
            float f4 = paddingRight;
            float f5 = paddingTop;
            float f6 = f4 / f5;
            int i6 = 0;
            if (intrinsicWidth != f6) {
                if (f6 > intrinsicWidth) {
                    int i7 = (int) (f5 * intrinsicWidth);
                    int i8 = (paddingRight - i7) / 2;
                    i6 = i8;
                    paddingRight = i7 + i8;
                } else {
                    int i9 = (int) (f4 * (1.0f / intrinsicWidth));
                    int i10 = (paddingTop - i9) / 2;
                    int i11 = i9 + i10;
                    i5 = i10;
                    paddingTop = i11;
                    this.mIndicator.setBounds(i6, i5, paddingRight, paddingTop);
                }
            }
            i5 = 0;
            this.mIndicator.setBounds(i6, i5, paddingRight, paddingTop);
        }
    }

    private void updateDrawableState() {
        int[] drawableState = getDrawableState();
        Indicator indicator = this.mIndicator;
        if (indicator == null || !indicator.isStateful()) {
            return;
        }
        this.mIndicator.setState(drawableState);
    }

    void drawTrack(Canvas canvas) {
        Indicator indicator = this.mIndicator;
        if (indicator != null) {
            int save = canvas.save();
            canvas.translate(getPaddingLeft(), getPaddingTop());
            indicator.draw(canvas);
            canvas.restoreToCount(save);
            if (this.mShouldStartAnimationDrawable) {
                indicator.start();
                this.mShouldStartAnimationDrawable = false;
            }
        }
    }

    @Override // android.view.View
    @TargetApi(21)
    public void drawableHotspotChanged(float f4, float f5) {
        super.drawableHotspotChanged(f4, f5);
        Indicator indicator = this.mIndicator;
        if (indicator != null) {
            indicator.setHotspot(f4, f5);
        }
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        updateDrawableState();
    }

    public Indicator getIndicator() {
        return this.mIndicator;
    }

    public void hide() {
        this.mDismissed = true;
        removeCallbacks(this.mDelayedShow);
        long currentTimeMillis = System.currentTimeMillis();
        long j4 = this.mStartTime;
        long j5 = currentTimeMillis - j4;
        if (j5 < 500 && j4 != -1) {
            if (this.mPostedHide) {
                return;
            }
            postDelayed(this.mDelayedHide, 500 - j5);
            this.mPostedHide = true;
            return;
        }
        setVisibility(8);
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        if (verifyDrawable(drawable)) {
            Rect bounds = drawable.getBounds();
            int scrollX = getScrollX() + getPaddingLeft();
            int scrollY = getScrollY() + getPaddingTop();
            invalidate(bounds.left + scrollX, bounds.top + scrollY, bounds.right + scrollX, bounds.bottom + scrollY);
            return;
        }
        super.invalidateDrawable(drawable);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        startAnimation();
        removeCallbacks();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        stopAnimation();
        super.onDetachedFromWindow();
        removeCallbacks();
    }

    @Override // android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawTrack(canvas);
    }

    @Override // android.view.View
    protected synchronized void onMeasure(int i2, int i4) {
        int i5;
        int i6;
        Indicator indicator = this.mIndicator;
        if (indicator != null) {
            i6 = Math.max(this.mMinWidth, Math.min(this.mMaxWidth, indicator.getIntrinsicWidth()));
            i5 = Math.max(this.mMinHeight, Math.min(this.mMaxHeight, indicator.getIntrinsicHeight()));
        } else {
            i5 = 0;
            i6 = 0;
        }
        updateDrawableState();
        setMeasuredDimension(View.resolveSizeAndState(i6 + getPaddingLeft() + getPaddingRight(), i2, 0), View.resolveSizeAndState(i5 + getPaddingTop() + getPaddingBottom(), i4, 0));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        updateDrawableBounds(i2, i4);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (i2 != 8 && i2 != 4) {
            startAnimation();
        } else {
            stopAnimation();
        }
    }

    public void setIndicator(Indicator indicator) {
        Indicator indicator2 = this.mIndicator;
        if (indicator2 != indicator) {
            if (indicator2 != null) {
                indicator2.setCallback(null);
                unscheduleDrawable(this.mIndicator);
            }
            this.mIndicator = indicator;
            setIndicatorColor(this.mIndicatorColor);
            if (indicator != null) {
                indicator.setCallback(this);
            }
            postInvalidate();
        }
    }

    public void setIndicatorColor(int i2) {
        this.mIndicatorColor = i2;
        this.mIndicator.setColor(i2);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        if (getVisibility() != i2) {
            super.setVisibility(i2);
            if (i2 != 8 && i2 != 4) {
                startAnimation();
            } else {
                stopAnimation();
            }
        }
    }

    public void show() {
        this.mStartTime = -1L;
        this.mDismissed = false;
        removeCallbacks(this.mDelayedHide);
        if (this.mPostedShow) {
            return;
        }
        postDelayed(this.mDelayedShow, 500L);
        this.mPostedShow = true;
    }

    public void smoothToHide() {
        startAnimation(AnimationUtils.loadAnimation(getContext(), 17432577));
        setVisibility(8);
    }

    public void smoothToShow() {
        startAnimation(AnimationUtils.loadAnimation(getContext(), 17432576));
        setVisibility(0);
    }

    void startAnimation() {
        if (getVisibility() != 0) {
            return;
        }
        if (this.mIndicator instanceof Animatable) {
            this.mShouldStartAnimationDrawable = true;
        }
        postInvalidate();
    }

    void stopAnimation() {
        Indicator indicator = this.mIndicator;
        if (indicator instanceof Animatable) {
            indicator.stop();
            this.mShouldStartAnimationDrawable = false;
        }
        postInvalidate();
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.mIndicator || super.verifyDrawable(drawable);
    }

    public void setIndicator(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        if (!str.contains(g0.f27568a)) {
            sb.append(getClass().getPackage().getName());
            sb.append(".indicators");
            sb.append(g0.f27568a);
        }
        sb.append(str);
        try {
            setIndicator((Indicator) Class.forName(sb.toString()).newInstance());
        } catch (ClassNotFoundException unused) {
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
        } catch (InstantiationException e5) {
            e5.printStackTrace();
        }
    }

    public AVLoadingIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mStartTime = -1L;
        this.mPostedHide = false;
        this.mPostedShow = false;
        this.mDismissed = false;
        this.mDelayedHide = new Runnable() { // from class: com.papa91.view.AVLoadingIndicatorView.1
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedHide = false;
                AVLoadingIndicatorView.this.mStartTime = -1L;
                AVLoadingIndicatorView.this.setVisibility(8);
            }
        };
        this.mDelayedShow = new Runnable() { // from class: com.papa91.view.AVLoadingIndicatorView.2
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedShow = false;
                if (AVLoadingIndicatorView.this.mDismissed) {
                    return;
                }
                AVLoadingIndicatorView.this.mStartTime = System.currentTimeMillis();
                AVLoadingIndicatorView.this.setVisibility(0);
            }
        };
        init(context, attributeSet, 0, R.style.AVLoadingIndicatorView);
    }

    public AVLoadingIndicatorView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mStartTime = -1L;
        this.mPostedHide = false;
        this.mPostedShow = false;
        this.mDismissed = false;
        this.mDelayedHide = new Runnable() { // from class: com.papa91.view.AVLoadingIndicatorView.1
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedHide = false;
                AVLoadingIndicatorView.this.mStartTime = -1L;
                AVLoadingIndicatorView.this.setVisibility(8);
            }
        };
        this.mDelayedShow = new Runnable() { // from class: com.papa91.view.AVLoadingIndicatorView.2
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedShow = false;
                if (AVLoadingIndicatorView.this.mDismissed) {
                    return;
                }
                AVLoadingIndicatorView.this.mStartTime = System.currentTimeMillis();
                AVLoadingIndicatorView.this.setVisibility(0);
            }
        };
        init(context, attributeSet, i2, R.style.AVLoadingIndicatorView);
    }

    @TargetApi(21)
    public AVLoadingIndicatorView(Context context, AttributeSet attributeSet, int i2, int i4) {
        super(context, attributeSet, i2, i4);
        this.mStartTime = -1L;
        this.mPostedHide = false;
        this.mPostedShow = false;
        this.mDismissed = false;
        this.mDelayedHide = new Runnable() { // from class: com.papa91.view.AVLoadingIndicatorView.1
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedHide = false;
                AVLoadingIndicatorView.this.mStartTime = -1L;
                AVLoadingIndicatorView.this.setVisibility(8);
            }
        };
        this.mDelayedShow = new Runnable() { // from class: com.papa91.view.AVLoadingIndicatorView.2
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedShow = false;
                if (AVLoadingIndicatorView.this.mDismissed) {
                    return;
                }
                AVLoadingIndicatorView.this.mStartTime = System.currentTimeMillis();
                AVLoadingIndicatorView.this.setVisibility(0);
            }
        };
        init(context, attributeSet, i2, R.style.AVLoadingIndicatorView);
    }
}
