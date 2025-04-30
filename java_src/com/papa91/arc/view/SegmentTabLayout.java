package com.papa91.arc.view;

import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import java.util.ArrayList;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class SegmentTabLayout extends FrameLayout implements ValueAnimator.AnimatorUpdateListener {
    private static final int TEXT_BOLD_BOTH = 2;
    private static final int TEXT_BOLD_NONE = 0;
    private static final int TEXT_BOLD_WHEN_SELECT = 1;
    private int mBarColor;
    private int mBarStrokeColor;
    private float mBarStrokeWidth;
    private Context mContext;
    private IndicatorPoint mCurrentP;
    private int mCurrentTab;
    private int mDividerColor;
    private float mDividerPadding;
    private Paint mDividerPaint;
    private float mDividerWidth;
    private int mHeight;
    private long mIndicatorAnimDuration;
    private boolean mIndicatorAnimEnable;
    private boolean mIndicatorBounceEnable;
    private int mIndicatorColor;
    private float mIndicatorCornerRadius;
    private GradientDrawable mIndicatorDrawable;
    private float mIndicatorHeight;
    private float mIndicatorMarginBottom;
    private float mIndicatorMarginLeft;
    private float mIndicatorMarginRight;
    private float mIndicatorMarginTop;
    private Rect mIndicatorRect;
    private SparseArray<Boolean> mInitSetMap;
    private OvershootInterpolator mInterpolator;
    private boolean mIsFirstDraw;
    private IndicatorPoint mLastP;
    private int mLastTab;
    private OnTabSelectListener mListener;
    private float[] mRadiusArr;
    private GradientDrawable mRectDrawable;
    private float mRectMarginBottom;
    private float mRectMarginLeft;
    private float mRectMarginRight;
    private float mRectMarginTop;
    private Drawable mSliderDrawable;
    private int mTabCount;
    private float mTabPadding;
    private boolean mTabSpaceEqual;
    private float mTabWidth;
    private LinearLayout mTabsContainer;
    private boolean mTextAllCaps;
    private int mTextBold;
    private Paint mTextPaint;
    private int mTextSelectColor;
    private int mTextUnselectColor;
    private float mTextsize;
    private String[] mTitles;
    private ValueAnimator mValueAnimator;
    private LinearGradient shader;
    private int[] shaderColors;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class IndicatorPoint {
        public float left;
        public float right;

        IndicatorPoint() {
        }
    }

    /* loaded from: classes4.dex */
    class PointEvaluator implements TypeEvaluator<IndicatorPoint> {
        PointEvaluator() {
        }

        @Override // android.animation.TypeEvaluator
        public IndicatorPoint evaluate(float f4, IndicatorPoint indicatorPoint, IndicatorPoint indicatorPoint2) {
            float f5 = indicatorPoint.left;
            float f6 = indicatorPoint.right;
            float f7 = f6 + (f4 * (indicatorPoint2.right - f6));
            IndicatorPoint indicatorPoint3 = new IndicatorPoint();
            indicatorPoint3.left = f5 + ((indicatorPoint2.left - f5) * f4);
            indicatorPoint3.right = f7;
            return indicatorPoint3;
        }
    }

    public SegmentTabLayout(Context context) {
        this(context, null, 0);
    }

    private void addTab(int i2, View view) {
        LinearLayout.LayoutParams layoutParams;
        ((TextView) view.findViewById(R.id.tv_tab_title)).setText(this.mTitles[i2]);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.view.SegmentTabLayout.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                int intValue = ((Integer) view2.getTag()).intValue();
                if (SegmentTabLayout.this.mCurrentTab == intValue) {
                    if (SegmentTabLayout.this.mListener != null) {
                        SegmentTabLayout.this.mListener.onTabReselect(intValue);
                        return;
                    }
                    return;
                }
                SegmentTabLayout.this.setCurrentTab(intValue);
                if (SegmentTabLayout.this.mListener != null) {
                    SegmentTabLayout.this.mListener.onTabSelect(intValue);
                }
            }
        });
        if (this.mTabSpaceEqual) {
            layoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
        } else {
            layoutParams = new LinearLayout.LayoutParams(-2, -1);
        }
        if (this.mTabWidth > 0.0f) {
            layoutParams = new LinearLayout.LayoutParams((int) this.mTabWidth, -1);
        }
        this.mTabsContainer.addView(view, i2, layoutParams);
    }

    private void calcIndicatorRect() {
        float f4;
        float f5;
        View childAt = this.mTabsContainer.getChildAt(this.mCurrentTab);
        if (childAt != null) {
            f5 = childAt.getLeft();
            f4 = childAt.getRight();
        } else {
            f4 = 0.0f;
            f5 = 0.0f;
        }
        Rect rect = this.mIndicatorRect;
        rect.left = (int) f5;
        rect.right = (int) f4;
        if (!this.mIndicatorAnimEnable) {
            int i2 = this.mCurrentTab;
            if (i2 == 0) {
                float[] fArr = this.mRadiusArr;
                float f6 = this.mIndicatorCornerRadius;
                fArr[0] = f6;
                fArr[1] = f6;
                fArr[2] = 0.0f;
                fArr[3] = 0.0f;
                fArr[4] = 0.0f;
                fArr[5] = 0.0f;
                fArr[6] = f6;
                fArr[7] = f6;
                return;
            } else if (i2 == this.mTabCount - 1) {
                float[] fArr2 = this.mRadiusArr;
                fArr2[0] = 0.0f;
                fArr2[1] = 0.0f;
                float f7 = this.mIndicatorCornerRadius;
                fArr2[2] = f7;
                fArr2[3] = f7;
                fArr2[4] = f7;
                fArr2[5] = f7;
                fArr2[6] = 0.0f;
                fArr2[7] = 0.0f;
                return;
            } else {
                float[] fArr3 = this.mRadiusArr;
                fArr3[0] = 0.0f;
                fArr3[1] = 0.0f;
                fArr3[2] = 0.0f;
                fArr3[3] = 0.0f;
                fArr3[4] = 0.0f;
                fArr3[5] = 0.0f;
                fArr3[6] = 0.0f;
                fArr3[7] = 0.0f;
                return;
            }
        }
        float[] fArr4 = this.mRadiusArr;
        float f8 = this.mIndicatorCornerRadius;
        fArr4[0] = f8;
        fArr4[1] = f8;
        fArr4[2] = f8;
        fArr4[3] = f8;
        fArr4[4] = f8;
        fArr4[5] = f8;
        fArr4[6] = f8;
        fArr4[7] = f8;
    }

    private void calcOffset() {
        View childAt = this.mTabsContainer.getChildAt(this.mCurrentTab);
        if (childAt != null) {
            this.mCurrentP.left = childAt.getLeft();
            this.mCurrentP.right = childAt.getRight();
        } else {
            IndicatorPoint indicatorPoint = this.mCurrentP;
            indicatorPoint.right = indicatorPoint.left;
        }
        View childAt2 = this.mTabsContainer.getChildAt(this.mLastTab);
        if (childAt2 != null) {
            this.mLastP.left = childAt2.getLeft();
            this.mLastP.right = childAt2.getRight();
        } else {
            IndicatorPoint indicatorPoint2 = this.mLastP;
            indicatorPoint2.right = indicatorPoint2.left;
        }
        IndicatorPoint indicatorPoint3 = this.mLastP;
        float f4 = indicatorPoint3.left;
        IndicatorPoint indicatorPoint4 = this.mCurrentP;
        if (f4 == indicatorPoint4.left && indicatorPoint3.right == indicatorPoint4.right) {
            invalidate();
            return;
        }
        this.mValueAnimator.setObjectValues(indicatorPoint3, indicatorPoint4);
        if (this.mIndicatorBounceEnable) {
            this.mValueAnimator.setInterpolator(this.mInterpolator);
        }
        IndicatorPoint indicatorPoint5 = this.mCurrentP;
        if (indicatorPoint5.left == indicatorPoint5.right) {
            this.mIndicatorAnimDuration = 0L;
        } else if (this.mIndicatorAnimDuration <= 0) {
            this.mIndicatorAnimDuration = this.mIndicatorBounceEnable ? 500L : 250L;
        }
        this.mValueAnimator.setDuration(this.mIndicatorAnimDuration);
        this.mValueAnimator.start();
    }

    private void obtainAttributes(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SegmentTabLayout);
        this.mRectMarginLeft = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_rect_margin_left, dp2px(0.0f));
        this.mRectMarginTop = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_rect_margin_top, 0.0f);
        this.mRectMarginRight = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_rect_margin_right, dp2px(0.0f));
        this.mRectMarginBottom = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_rect_margin_bottom, 0.0f);
        this.mIndicatorColor = obtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_indicator_color, Color.parseColor("#222831"));
        this.mIndicatorHeight = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_height, -1.0f);
        this.mIndicatorCornerRadius = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_corner_radius, -1.0f);
        this.mIndicatorMarginLeft = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_margin_left, dp2px(0.0f));
        this.mIndicatorMarginTop = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_margin_top, 0.0f);
        this.mIndicatorMarginRight = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_margin_right, dp2px(0.0f));
        this.mIndicatorMarginBottom = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_margin_bottom, 0.0f);
        this.mIndicatorAnimEnable = obtainStyledAttributes.getBoolean(R.styleable.SegmentTabLayout_tl_indicator_anim_enable, false);
        this.mIndicatorBounceEnable = obtainStyledAttributes.getBoolean(R.styleable.SegmentTabLayout_tl_indicator_bounce_enable, true);
        this.mIndicatorAnimDuration = obtainStyledAttributes.getInt(R.styleable.SegmentTabLayout_tl_indicator_anim_duration, -1);
        this.mDividerColor = obtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_divider_color, this.mIndicatorColor);
        this.mDividerWidth = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_divider_width, dp2px(1.0f));
        this.mDividerPadding = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_divider_padding, 0.0f);
        this.mTextsize = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_textsize, sp2px(13.0f));
        this.mTextSelectColor = obtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_textSelectColor, Color.parseColor("#ffffff"));
        this.mTextUnselectColor = obtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_textUnselectColor, this.mIndicatorColor);
        this.mTextBold = obtainStyledAttributes.getInt(R.styleable.SegmentTabLayout_tl_textBold, 0);
        this.mTextAllCaps = obtainStyledAttributes.getBoolean(R.styleable.SegmentTabLayout_tl_textAllCaps, false);
        this.mTabSpaceEqual = obtainStyledAttributes.getBoolean(R.styleable.SegmentTabLayout_tl_tab_space_equal, true);
        float dimension = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_tab_width, dp2px(-1.0f));
        this.mTabWidth = dimension;
        this.mTabPadding = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_tab_padding, (this.mTabSpaceEqual || dimension > 0.0f) ? dp2px(0.0f) : dp2px(10.0f));
        this.mBarColor = obtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_bar_color, 0);
        this.mBarStrokeColor = obtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_bar_stroke_color, this.mIndicatorColor);
        this.mBarStrokeWidth = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_bar_stroke_width, dp2px(1.0f));
        obtainStyledAttributes.recycle();
    }

    private void updateTabSelection(int i2) {
        int i4 = 0;
        while (i4 < this.mTabCount) {
            View childAt = this.mTabsContainer.getChildAt(i4);
            boolean z3 = i4 == i2;
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            textView.setTextColor(z3 ? this.mTextSelectColor : this.mTextUnselectColor);
            if (this.mTextBold == 1) {
                textView.getPaint().setFakeBoldText(z3);
            }
            i4++;
        }
        invalidate();
    }

    private void updateTabStyles() {
        int i2 = 0;
        while (i2 < this.mTabCount) {
            View childAt = this.mTabsContainer.getChildAt(i2);
            float f4 = this.mTabPadding;
            childAt.setPadding((int) f4, 0, (int) f4, 0);
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            textView.setTextColor(i2 == this.mCurrentTab ? this.mTextSelectColor : this.mTextUnselectColor);
            textView.setTextSize(0, this.mTextsize);
            if (this.mTextAllCaps) {
                textView.setText(textView.getText().toString().toUpperCase());
            }
            int i4 = this.mTextBold;
            if (i4 == 2) {
                textView.getPaint().setFakeBoldText(true);
            } else if (i4 == 0) {
                textView.getPaint().setFakeBoldText(false);
            }
            i2++;
        }
    }

    protected int dp2px(float f4) {
        return (int) ((f4 * this.mContext.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public int getCurrentTab() {
        return this.mCurrentTab;
    }

    public int getDividerColor() {
        return this.mDividerColor;
    }

    public float getDividerPadding() {
        return this.mDividerPadding;
    }

    public float getDividerWidth() {
        return this.mDividerWidth;
    }

    public long getIndicatorAnimDuration() {
        return this.mIndicatorAnimDuration;
    }

    public int getIndicatorColor() {
        return this.mIndicatorColor;
    }

    public float getIndicatorCornerRadius() {
        return this.mIndicatorCornerRadius;
    }

    public float getIndicatorHeight() {
        return this.mIndicatorHeight;
    }

    public float getIndicatorMarginBottom() {
        return this.mIndicatorMarginBottom;
    }

    public float getIndicatorMarginLeft() {
        return this.mIndicatorMarginLeft;
    }

    public float getIndicatorMarginRight() {
        return this.mIndicatorMarginRight;
    }

    public float getIndicatorMarginTop() {
        return this.mIndicatorMarginTop;
    }

    public int getTabCount() {
        return this.mTabCount;
    }

    public float getTabPadding() {
        return this.mTabPadding;
    }

    public float getTabWidth() {
        return this.mTabWidth;
    }

    public int getTextBold() {
        return this.mTextBold;
    }

    public int getTextSelectColor() {
        return this.mTextSelectColor;
    }

    public int getTextUnselectColor() {
        return this.mTextUnselectColor;
    }

    public float getTextsize() {
        return this.mTextsize;
    }

    public TextView getTitleView(int i2) {
        return (TextView) this.mTabsContainer.getChildAt(i2).findViewById(R.id.tv_tab_title);
    }

    public boolean isIndicatorAnimEnable() {
        return this.mIndicatorAnimEnable;
    }

    public boolean isIndicatorBounceEnable() {
        return this.mIndicatorBounceEnable;
    }

    public boolean isTabSpaceEqual() {
        return this.mTabSpaceEqual;
    }

    public boolean isTextAllCaps() {
        return this.mTextAllCaps;
    }

    public void notifyDataSetChanged() {
        this.mTabsContainer.removeAllViews();
        this.mTabCount = this.mTitles.length;
        for (int i2 = 0; i2 < this.mTabCount; i2++) {
            View inflate = View.inflate(this.mContext, R.layout.layout_tab_segment, null);
            inflate.setTag(Integer.valueOf(i2));
            addTab(i2, inflate);
        }
        updateTabStyles();
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        IndicatorPoint indicatorPoint = (IndicatorPoint) valueAnimator.getAnimatedValue();
        Rect rect = this.mIndicatorRect;
        rect.left = (int) indicatorPoint.left;
        rect.right = (int) indicatorPoint.right;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Rect rect;
        Rect rect2;
        super.onDraw(canvas);
        if (isInEditMode() || this.mTabCount <= 0) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        if (this.mIndicatorHeight < 0.0f) {
            this.mIndicatorHeight = (height - this.mIndicatorMarginTop) - this.mIndicatorMarginBottom;
        }
        float f4 = this.mIndicatorCornerRadius;
        if (f4 < 0.0f || f4 > this.mIndicatorHeight / 2.0f) {
            this.mIndicatorCornerRadius = this.mIndicatorHeight / 2.0f;
        }
        this.mRectDrawable.setColor(this.mBarColor);
        this.mRectDrawable.setStroke((int) this.mBarStrokeWidth, this.mBarStrokeColor);
        this.mRectDrawable.setCornerRadius(this.mIndicatorCornerRadius);
        this.mRectDrawable.setBounds((int) (getPaddingLeft() + this.mRectMarginLeft), (int) (getPaddingTop() + this.mRectMarginTop), (int) ((getWidth() - getPaddingRight()) - this.mRectMarginRight), (int) ((getHeight() - getPaddingBottom()) - this.mRectMarginBottom));
        this.mRectDrawable.draw(canvas);
        float f5 = this.mDividerWidth;
        if (f5 > 0.0f) {
            this.mDividerPaint.setStrokeWidth(f5);
            this.mDividerPaint.setColor(this.mDividerColor);
            for (int i2 = 0; i2 < this.mTabCount - 1; i2++) {
                View childAt = this.mTabsContainer.getChildAt(i2);
                float f6 = height;
                LinearGradient linearGradient = new LinearGradient(childAt.getRight() + paddingLeft, this.mDividerPadding + this.mRectMarginTop, childAt.getRight() + paddingLeft, (f6 - this.mDividerPadding) - this.mRectMarginBottom, this.shaderColors, (float[]) null, Shader.TileMode.CLAMP);
                this.shader = linearGradient;
                this.mDividerPaint.setShader(linearGradient);
                canvas.drawLine(childAt.getRight() + paddingLeft, this.mDividerPadding, childAt.getRight() + paddingLeft, f6 - this.mDividerPadding, this.mDividerPaint);
            }
        }
        if (this.mIndicatorAnimEnable) {
            if (this.mIsFirstDraw) {
                this.mIsFirstDraw = false;
                calcIndicatorRect();
            }
        } else {
            calcIndicatorRect();
        }
        Drawable drawable = this.mSliderDrawable;
        if (drawable != null) {
            int i4 = ((int) this.mIndicatorMarginLeft) + paddingLeft + this.mIndicatorRect.left;
            float f7 = this.mIndicatorMarginTop;
            drawable.setBounds(i4, (int) f7, (int) ((paddingLeft + rect2.right) - this.mIndicatorMarginRight), (int) (f7 + this.mIndicatorHeight));
            this.mSliderDrawable.draw(canvas);
            return;
        }
        this.mIndicatorDrawable.setColor(this.mIndicatorColor);
        GradientDrawable gradientDrawable = this.mIndicatorDrawable;
        int i5 = ((int) this.mIndicatorMarginLeft) + paddingLeft + this.mIndicatorRect.left;
        float f8 = this.mIndicatorMarginTop;
        gradientDrawable.setBounds(i5, (int) f8, (int) ((paddingLeft + rect.right) - this.mIndicatorMarginRight), (int) (f8 + this.mIndicatorHeight));
        this.mIndicatorDrawable.setCornerRadii(this.mRadiusArr);
        this.mIndicatorDrawable.draw(canvas);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.mCurrentTab = bundle.getInt("mCurrentTab");
            parcelable = bundle.getParcelable("instanceState");
            if (this.mCurrentTab != 0 && this.mTabsContainer.getChildCount() > 0) {
                updateTabSelection(this.mCurrentTab);
            }
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putInt("mCurrentTab", this.mCurrentTab);
        return bundle;
    }

    public void setCurrentTab(int i2) {
        this.mLastTab = this.mCurrentTab;
        this.mCurrentTab = i2;
        updateTabSelection(i2);
        if (this.mIndicatorAnimEnable) {
            calcOffset();
        } else {
            invalidate();
        }
    }

    public void setDividerColor(int i2) {
        this.mDividerColor = i2;
        invalidate();
    }

    public void setDividerPadding(float f4) {
        this.mDividerPadding = dp2px(f4);
        invalidate();
    }

    public void setDividerWidth(float f4) {
        this.mDividerWidth = dp2px(f4);
        invalidate();
    }

    public void setIndicatorAnimDuration(long j4) {
        this.mIndicatorAnimDuration = j4;
    }

    public void setIndicatorAnimEnable(boolean z3) {
        this.mIndicatorAnimEnable = z3;
    }

    public void setIndicatorBounceEnable(boolean z3) {
        this.mIndicatorBounceEnable = z3;
    }

    public void setIndicatorColor(int i2) {
        this.mIndicatorColor = i2;
        invalidate();
    }

    public void setIndicatorCornerRadius(float f4) {
        this.mIndicatorCornerRadius = dp2px(f4);
        invalidate();
    }

    public void setIndicatorHeight(float f4) {
        this.mIndicatorHeight = dp2px(f4);
        invalidate();
    }

    public void setIndicatorMargin(float f4, float f5, float f6, float f7) {
        this.mIndicatorMarginLeft = dp2px(f4);
        this.mIndicatorMarginTop = dp2px(f5);
        this.mIndicatorMarginRight = dp2px(f6);
        this.mIndicatorMarginBottom = dp2px(f7);
        invalidate();
    }

    public void setOnTabSelectListener(OnTabSelectListener onTabSelectListener) {
        this.mListener = onTabSelectListener;
    }

    public void setTabData(String[] strArr) {
        if (strArr != null && strArr.length != 0) {
            this.mTitles = strArr;
            notifyDataSetChanged();
            return;
        }
        throw new IllegalStateException("Titles can not be NULL or EMPTY !");
    }

    public void setTabPadding(float f4) {
        this.mTabPadding = dp2px(f4);
        updateTabStyles();
    }

    public void setTabSpaceEqual(boolean z3) {
        this.mTabSpaceEqual = z3;
        updateTabStyles();
    }

    public void setTabWidth(float f4) {
        this.mTabWidth = dp2px(f4);
        updateTabStyles();
    }

    public void setTextAllCaps(boolean z3) {
        this.mTextAllCaps = z3;
        updateTabStyles();
    }

    public void setTextBold(int i2) {
        this.mTextBold = i2;
        updateTabStyles();
    }

    public void setTextSelectColor(int i2) {
        this.mTextSelectColor = i2;
        updateTabStyles();
    }

    public void setTextUnselectColor(int i2) {
        this.mTextUnselectColor = i2;
        updateTabStyles();
    }

    public void setTextsize(float f4) {
        this.mTextsize = sp2px(f4);
        updateTabStyles();
    }

    public void showDot(int i2) {
        int i4 = this.mTabCount;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        showMsg(i2, 0);
    }

    public void showMsg(int i2, int i4) {
    }

    protected int sp2px(float f4) {
        return (int) ((f4 * this.mContext.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public SegmentTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SegmentTabLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mIndicatorRect = new Rect();
        this.mIndicatorDrawable = new GradientDrawable();
        this.mRectDrawable = new GradientDrawable();
        this.mSliderDrawable = null;
        this.mDividerPaint = new Paint(1);
        this.shaderColors = new int[]{Color.parseColor("#4f4740"), Color.parseColor("#877564"), Color.parseColor("#4f4740")};
        this.mInterpolator = new OvershootInterpolator(0.8f);
        this.mRadiusArr = new float[8];
        this.mIsFirstDraw = true;
        this.mTextPaint = new Paint(1);
        this.mInitSetMap = new SparseArray<>();
        this.mCurrentP = new IndicatorPoint();
        this.mLastP = new IndicatorPoint();
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        try {
            this.mSliderDrawable = getResources().getDrawable(R.drawable.shape_slider);
        } catch (Resources.NotFoundException e4) {
            e4.printStackTrace();
        }
        this.mContext = context;
        LinearLayout linearLayout = new LinearLayout(context);
        this.mTabsContainer = linearLayout;
        addView(linearLayout);
        obtainAttributes(context, attributeSet);
        String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "layout_height");
        if (!attributeValue.equals("-1") && !attributeValue.equals("-2")) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842997});
            this.mHeight = obtainStyledAttributes.getDimensionPixelSize(0, -2);
            obtainStyledAttributes.recycle();
        }
        ValueAnimator ofObject = ValueAnimator.ofObject(new PointEvaluator(), this.mLastP, this.mCurrentP);
        this.mValueAnimator = ofObject;
        ofObject.addUpdateListener(this);
    }

    public void setTabData(String[] strArr, FragmentActivity fragmentActivity, int i2, ArrayList<Fragment> arrayList) {
        setTabData(strArr);
    }
}
