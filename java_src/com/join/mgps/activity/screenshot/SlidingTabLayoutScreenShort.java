package com.join.mgps.activity.screenshot;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.flyco.tablayout.widget.MsgView;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.Collections;
import w0.b;
/* loaded from: classes3.dex */
public class SlidingTabLayoutScreenShort extends HorizontalScrollView implements ViewPager.OnPageChangeListener {
    private static final int STYLE_BLOCK = 2;
    private static final int STYLE_NORMAL = 0;
    private static final int STYLE_TRIANGLE = 1;
    private static final int TEXT_BOLD_BOTH = 2;
    private static final int TEXT_BOLD_NONE = 0;
    private static final int TEXT_BOLD_WHEN_SELECT = 1;
    private Context mContext;
    private float mCurrentPositionOffset;
    private int mCurrentTab;
    private int mDividerColor;
    private float mDividerPadding;
    private Paint mDividerPaint;
    private float mDividerWidth;
    private int mHeight;
    private int mIndicatorColor;
    private float mIndicatorCornerRadius;
    private GradientDrawable mIndicatorDrawable;
    private int mIndicatorGravity;
    private float mIndicatorHeight;
    private float mIndicatorMarginBottom;
    private float mIndicatorMarginLeft;
    private float mIndicatorMarginRight;
    private float mIndicatorMarginTop;
    private Rect mIndicatorRect;
    private int mIndicatorStyle;
    private float mIndicatorWidth;
    private boolean mIndicatorWidthEqualTitle;
    private SparseArray<Boolean> mInitSetMap;
    private int mLastScrollX;
    private b mListener;
    private Paint mRectPaint;
    private boolean mSnapOnTabClick;
    private int mTabCount;
    private float mTabPadding;
    private Rect mTabRect;
    private boolean mTabSpaceEqual;
    private float mTabWidth;
    private LinearLayout mTabsContainer;
    private boolean mTextAllCaps;
    private int mTextBold;
    private Paint mTextPaint;
    private int mTextSelectColor;
    private int mTextUnselectColor;
    private float mTextsize;
    private ArrayList<String> mTitles;
    private Paint mTrianglePaint;
    private Path mTrianglePath;
    private int mUnderlineColor;
    private int mUnderlineGravity;
    private float mUnderlineHeight;
    private ViewPager mViewPager;
    private float margin;

    /* loaded from: classes3.dex */
    class InnerPagerAdapter extends FragmentPagerAdapter {
        private ArrayList<Fragment> fragments;
        private String[] titles;

        public InnerPagerAdapter(FragmentManager fragmentManager, ArrayList<Fragment> arrayList, String[] strArr) {
            super(fragmentManager);
            this.fragments = new ArrayList<>();
            this.fragments = arrayList;
            this.titles = strArr;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.fragments.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i2) {
            return this.fragments.get(i2);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getItemPosition(Object obj) {
            return -2;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int i2) {
            return this.titles[i2];
        }
    }

    public SlidingTabLayoutScreenShort(Context context) {
        this(context, null, 0);
    }

    private void addTab(int i2, String str, View view) {
        LinearLayout.LayoutParams layoutParams;
        TextView textView = (TextView) view.findViewById(R.id.tv_tab_title);
        if (textView != null && str != null) {
            textView.setText(str);
        }
        textView.setLayoutParams(new RelativeLayout.LayoutParams(-2, -1));
        view.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.screenshot.SlidingTabLayoutScreenShort.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                int indexOfChild = SlidingTabLayoutScreenShort.this.mTabsContainer.indexOfChild(view2);
                if (indexOfChild != -1) {
                    if (SlidingTabLayoutScreenShort.this.mViewPager.getCurrentItem() != indexOfChild) {
                        if (SlidingTabLayoutScreenShort.this.mSnapOnTabClick) {
                            SlidingTabLayoutScreenShort.this.mViewPager.setCurrentItem(indexOfChild, false);
                        } else {
                            SlidingTabLayoutScreenShort.this.mViewPager.setCurrentItem(indexOfChild);
                        }
                        if (SlidingTabLayoutScreenShort.this.mListener != null) {
                            SlidingTabLayoutScreenShort.this.mListener.onTabSelect(indexOfChild);
                        }
                    } else if (SlidingTabLayoutScreenShort.this.mListener != null) {
                        SlidingTabLayoutScreenShort.this.mListener.onTabReselect(indexOfChild);
                    }
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
        layoutParams.setMargins(0, 0, getResources().getDimensionPixelOffset(R.dimen.wdp15), 0);
        this.mTabsContainer.addView(view, i2, layoutParams);
    }

    private void calcIndicatorRect() {
        int i2;
        View childAt = this.mTabsContainer.getChildAt(this.mCurrentTab);
        float left = childAt.getLeft();
        float right = childAt.getRight();
        if (this.mIndicatorStyle == 0 && this.mIndicatorWidthEqualTitle) {
            this.mTextPaint.setTextSize(this.mTextsize);
            this.margin = ((right - left) - this.mTextPaint.measureText(((TextView) childAt.findViewById(R.id.tv_tab_title)).getText().toString())) / 2.0f;
        }
        int i4 = this.mCurrentTab;
        if (i4 < this.mTabCount - 1) {
            View childAt2 = this.mTabsContainer.getChildAt(i4 + 1);
            float left2 = childAt2.getLeft();
            float right2 = childAt2.getRight();
            float f4 = this.mCurrentPositionOffset;
            left += (left2 - left) * f4;
            right += f4 * (right2 - right);
            if (this.mIndicatorStyle == 0 && this.mIndicatorWidthEqualTitle) {
                this.mTextPaint.setTextSize(this.mTextsize);
                float f5 = this.margin;
                this.margin = f5 + (this.mCurrentPositionOffset * ((((right2 - left2) - this.mTextPaint.measureText(((TextView) childAt2.findViewById(R.id.tv_tab_title)).getText().toString())) / 2.0f) - f5));
            }
        }
        Rect rect = this.mIndicatorRect;
        int i5 = (int) left;
        rect.left = i5;
        int i6 = (int) right;
        rect.right = i6;
        if (this.mIndicatorStyle == 0 && this.mIndicatorWidthEqualTitle) {
            float f6 = this.margin;
            rect.left = (int) ((left + f6) - 1.0f);
            rect.right = (int) ((right - f6) - 1.0f);
        }
        Rect rect2 = this.mTabRect;
        rect2.left = i5;
        rect2.right = i6;
        if (this.mIndicatorWidth < 0.0f) {
            return;
        }
        float left3 = childAt.getLeft() + ((childAt.getWidth() - this.mIndicatorWidth) / 2.0f);
        if (this.mCurrentTab < this.mTabCount - 1) {
            left3 += this.mCurrentPositionOffset * ((childAt.getWidth() / 2) + (this.mTabsContainer.getChildAt(i2 + 1).getWidth() / 2));
        }
        Rect rect3 = this.mIndicatorRect;
        int i7 = (int) left3;
        rect3.left = i7;
        rect3.right = (int) (i7 + this.mIndicatorWidth);
    }

    private void obtainAttributes(Context context, AttributeSet attributeSet) {
        float f4;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.flyco.tablayout.R.styleable.SlidingTabLayout);
        int i2 = obtainStyledAttributes.getInt(11, 0);
        this.mIndicatorStyle = i2;
        this.mIndicatorColor = obtainStyledAttributes.getColor(3, Color.parseColor(i2 == 2 ? "#4B6A87" : "#ffffff"));
        int i4 = this.mIndicatorStyle;
        if (i4 == 1) {
            f4 = 4.0f;
        } else {
            f4 = i4 == 2 ? -1 : 2;
        }
        this.mIndicatorHeight = obtainStyledAttributes.getDimension(6, dp2px(f4));
        this.mIndicatorWidth = obtainStyledAttributes.getDimension(12, dp2px(this.mIndicatorStyle == 1 ? 10.0f : -1.0f));
        this.mIndicatorCornerRadius = obtainStyledAttributes.getDimension(4, dp2px(this.mIndicatorStyle == 2 ? -1.0f : 0.0f));
        this.mIndicatorMarginLeft = obtainStyledAttributes.getDimension(8, dp2px(0.0f));
        this.mIndicatorMarginTop = obtainStyledAttributes.getDimension(10, dp2px(this.mIndicatorStyle == 2 ? 7.0f : 0.0f));
        this.mIndicatorMarginRight = obtainStyledAttributes.getDimension(9, dp2px(0.0f));
        this.mIndicatorMarginBottom = obtainStyledAttributes.getDimension(7, dp2px(this.mIndicatorStyle != 2 ? 0.0f : 7.0f));
        this.mIndicatorGravity = obtainStyledAttributes.getInt(5, 80);
        this.mIndicatorWidthEqualTitle = obtainStyledAttributes.getBoolean(13, false);
        this.mUnderlineColor = obtainStyledAttributes.getColor(22, Color.parseColor("#ffffff"));
        this.mUnderlineHeight = obtainStyledAttributes.getDimension(24, dp2px(0.0f));
        this.mUnderlineGravity = obtainStyledAttributes.getInt(23, 80);
        this.mDividerColor = obtainStyledAttributes.getColor(0, Color.parseColor("#ffffff"));
        this.mDividerWidth = obtainStyledAttributes.getDimension(2, dp2px(0.0f));
        this.mDividerPadding = obtainStyledAttributes.getDimension(1, dp2px(12.0f));
        this.mTextsize = obtainStyledAttributes.getDimension(21, sp2px(14.0f));
        this.mTextSelectColor = obtainStyledAttributes.getColor(19, Color.parseColor("#ffffff"));
        this.mTextUnselectColor = obtainStyledAttributes.getColor(20, Color.parseColor("#848484"));
        this.mTextBold = obtainStyledAttributes.getInt(18, 0);
        this.mTextAllCaps = obtainStyledAttributes.getBoolean(17, false);
        this.mTabSpaceEqual = obtainStyledAttributes.getBoolean(15, false);
        float dimension = obtainStyledAttributes.getDimension(16, dp2px(-1.0f));
        this.mTabWidth = dimension;
        this.mTabPadding = obtainStyledAttributes.getDimension(14, (this.mTabSpaceEqual || dimension > 0.0f) ? dp2px(0.0f) : dp2px(20.0f));
        obtainStyledAttributes.recycle();
    }

    private void scrollToCurrentTab() {
        if (this.mTabCount <= 0) {
            return;
        }
        int width = (int) (this.mCurrentPositionOffset * this.mTabsContainer.getChildAt(this.mCurrentTab).getWidth());
        int left = this.mTabsContainer.getChildAt(this.mCurrentTab).getLeft() + width;
        if (this.mCurrentTab > 0 || width > 0) {
            int width2 = left - ((getWidth() / 2) - getPaddingLeft());
            calcIndicatorRect();
            Rect rect = this.mTabRect;
            left = width2 + ((rect.right - rect.left) / 2);
        }
        if (left != this.mLastScrollX) {
            this.mLastScrollX = left;
            scrollTo(left, 0);
        }
    }

    private void updateTabSelection(int i2) {
        int i4 = 0;
        while (i4 < this.mTabCount) {
            View childAt = this.mTabsContainer.getChildAt(i4);
            boolean z3 = i4 == i2;
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            if (textView != null) {
                textView.setTextColor(z3 ? this.mTextSelectColor : this.mTextUnselectColor);
                if (this.mTextBold == 1) {
                    textView.getPaint().setFakeBoldText(z3);
                }
                if (z3) {
                    textView.setBackgroundResource(R.drawable.stroke_mainyellow_butn);
                } else {
                    textView.setBackgroundResource(R.drawable.stroke_grey_butn);
                }
            }
            i4++;
        }
    }

    private void updateTabStyles() {
        int i2 = 0;
        while (i2 < this.mTabCount) {
            TextView textView = (TextView) this.mTabsContainer.getChildAt(i2).findViewById(R.id.tv_tab_title);
            if (textView != null) {
                textView.setTextColor(i2 == this.mCurrentTab ? this.mTextSelectColor : this.mTextUnselectColor);
                textView.setTextSize(0, this.mTextsize);
                float f4 = this.mTabPadding;
                textView.setPadding((int) f4, 0, (int) f4, 0);
                if (this.mTextAllCaps) {
                    textView.setText(textView.getText().toString().toUpperCase());
                }
                int i4 = this.mTextBold;
                if (i4 == 2) {
                    textView.getPaint().setFakeBoldText(true);
                } else if (i4 == 0) {
                    textView.getPaint().setFakeBoldText(false);
                }
                if (this.mCurrentTab == i2) {
                    textView.setBackgroundResource(R.drawable.stroke_mainyellow_butn);
                } else {
                    textView.setBackgroundResource(R.drawable.stroke_grey_butn);
                }
            }
            i2++;
        }
    }

    public void addNewTab(String str) {
        View inflate = View.inflate(this.mContext, R.layout.layout_tab, null);
        ArrayList<String> arrayList = this.mTitles;
        if (arrayList != null) {
            arrayList.add(str);
        }
        ArrayList<String> arrayList2 = this.mTitles;
        addTab(this.mTabCount, (arrayList2 == null ? this.mViewPager.getAdapter().getPageTitle(this.mTabCount) : arrayList2.get(this.mTabCount)).toString(), inflate);
        ArrayList<String> arrayList3 = this.mTitles;
        this.mTabCount = arrayList3 == null ? this.mViewPager.getAdapter().getCount() : arrayList3.size();
        updateTabStyles();
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

    public int getIndicatorStyle() {
        return this.mIndicatorStyle;
    }

    public float getIndicatorWidth() {
        return this.mIndicatorWidth;
    }

    public MsgView getMsgView(int i2) {
        int i4 = this.mTabCount;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        return (MsgView) this.mTabsContainer.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
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

    public int getUnderlineColor() {
        return this.mUnderlineColor;
    }

    public float getUnderlineHeight() {
        return this.mUnderlineHeight;
    }

    public void hideMsg(int i2) {
        int i4 = this.mTabCount;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        MsgView msgView = (MsgView) this.mTabsContainer.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            msgView.setVisibility(8);
        }
    }

    public boolean isTabSpaceEqual() {
        return this.mTabSpaceEqual;
    }

    public boolean isTextAllCaps() {
        return this.mTextAllCaps;
    }

    public void notifyDataSetChanged() {
        this.mTabsContainer.removeAllViews();
        ArrayList<String> arrayList = this.mTitles;
        this.mTabCount = arrayList == null ? this.mViewPager.getAdapter().getCount() : arrayList.size();
        for (int i2 = 0; i2 < this.mTabCount; i2++) {
            View inflate = View.inflate(this.mContext, R.layout.layout_tab, null);
            ArrayList<String> arrayList2 = this.mTitles;
            addTab(i2, (arrayList2 == null ? this.mViewPager.getAdapter().getPageTitle(i2) : arrayList2.get(i2)).toString(), inflate);
        }
        updateTabStyles();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Rect rect;
        super.onDraw(canvas);
        if (isInEditMode() || this.mTabCount <= 0) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        float f4 = this.mDividerWidth;
        if (f4 > 0.0f) {
            this.mDividerPaint.setStrokeWidth(f4);
            this.mDividerPaint.setColor(this.mDividerColor);
            for (int i2 = 0; i2 < this.mTabCount - 1; i2++) {
                View childAt = this.mTabsContainer.getChildAt(i2);
                canvas.drawLine(childAt.getRight() + paddingLeft, this.mDividerPadding, childAt.getRight() + paddingLeft, height - this.mDividerPadding, this.mDividerPaint);
            }
        }
        if (this.mUnderlineHeight > 0.0f) {
            this.mRectPaint.setColor(this.mUnderlineColor);
            if (this.mUnderlineGravity == 80) {
                float f5 = height;
                canvas.drawRect(paddingLeft, f5 - this.mUnderlineHeight, this.mTabsContainer.getWidth() + paddingLeft, f5, this.mRectPaint);
            } else {
                canvas.drawRect(paddingLeft, 0.0f, this.mTabsContainer.getWidth() + paddingLeft, this.mUnderlineHeight, this.mRectPaint);
            }
        }
        calcIndicatorRect();
        int i4 = this.mIndicatorStyle;
        if (i4 == 1) {
            if (this.mIndicatorHeight > 0.0f) {
                this.mTrianglePaint.setColor(this.mIndicatorColor);
                this.mTrianglePath.reset();
                float f6 = height;
                this.mTrianglePath.moveTo(this.mIndicatorRect.left + paddingLeft, f6);
                Path path = this.mTrianglePath;
                Rect rect2 = this.mIndicatorRect;
                path.lineTo((rect2.left / 2) + paddingLeft + (rect2.right / 2), f6 - this.mIndicatorHeight);
                this.mTrianglePath.lineTo(paddingLeft + this.mIndicatorRect.right, f6);
                this.mTrianglePath.close();
                canvas.drawPath(this.mTrianglePath, this.mTrianglePaint);
            }
        } else if (i4 == 2) {
            if (this.mIndicatorHeight < 0.0f) {
                this.mIndicatorHeight = (height - this.mIndicatorMarginTop) - this.mIndicatorMarginBottom;
            }
            float f7 = this.mIndicatorHeight;
            if (f7 > 0.0f) {
                float f8 = this.mIndicatorCornerRadius;
                if (f8 < 0.0f || f8 > f7 / 2.0f) {
                    this.mIndicatorCornerRadius = f7 / 2.0f;
                }
                this.mIndicatorDrawable.setColor(this.mIndicatorColor);
                GradientDrawable gradientDrawable = this.mIndicatorDrawable;
                int i5 = ((int) this.mIndicatorMarginLeft) + paddingLeft + this.mIndicatorRect.left;
                float f9 = this.mIndicatorMarginTop;
                gradientDrawable.setBounds(i5, (int) f9, (int) ((paddingLeft + rect.right) - this.mIndicatorMarginRight), (int) (f9 + this.mIndicatorHeight));
                this.mIndicatorDrawable.setCornerRadius(this.mIndicatorCornerRadius);
                this.mIndicatorDrawable.draw(canvas);
            }
        } else if (this.mIndicatorHeight > 0.0f) {
            this.mIndicatorDrawable.setColor(this.mIndicatorColor);
            if (this.mIndicatorGravity == 80) {
                GradientDrawable gradientDrawable2 = this.mIndicatorDrawable;
                Rect rect3 = this.mIndicatorRect;
                float f10 = this.mIndicatorMarginBottom;
                gradientDrawable2.setBounds(((int) this.mIndicatorMarginLeft) + paddingLeft + rect3.left, (height - ((int) this.mIndicatorHeight)) - ((int) f10), (paddingLeft + rect3.right) - ((int) this.mIndicatorMarginRight), height - ((int) f10));
            } else {
                GradientDrawable gradientDrawable3 = this.mIndicatorDrawable;
                Rect rect4 = this.mIndicatorRect;
                int i6 = ((int) this.mIndicatorMarginLeft) + paddingLeft + rect4.left;
                float f11 = this.mIndicatorMarginTop;
                gradientDrawable3.setBounds(i6, (int) f11, (paddingLeft + rect4.right) - ((int) this.mIndicatorMarginRight), ((int) this.mIndicatorHeight) + ((int) f11));
            }
            this.mIndicatorDrawable.setCornerRadius(this.mIndicatorCornerRadius);
            this.mIndicatorDrawable.draw(canvas);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i2) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i2, float f4, int i4) {
        this.mCurrentTab = i2;
        this.mCurrentPositionOffset = f4;
        scrollToCurrentTab();
        invalidate();
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i2) {
        updateTabSelection(i2);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.mCurrentTab = bundle.getInt("mCurrentTab");
            parcelable = bundle.getParcelable("instanceState");
            if (this.mCurrentTab != 0 && this.mTabsContainer.getChildCount() > 0) {
                updateTabSelection(this.mCurrentTab);
                scrollToCurrentTab();
            }
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putInt("mCurrentTab", this.mCurrentTab);
        return bundle;
    }

    public void setCurrentTab(int i2) {
        this.mCurrentTab = i2;
        this.mViewPager.setCurrentItem(i2);
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

    public void setIndicatorColor(int i2) {
        this.mIndicatorColor = i2;
        invalidate();
    }

    public void setIndicatorCornerRadius(float f4) {
        this.mIndicatorCornerRadius = dp2px(f4);
        invalidate();
    }

    public void setIndicatorGravity(int i2) {
        this.mIndicatorGravity = i2;
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

    public void setIndicatorStyle(int i2) {
        this.mIndicatorStyle = i2;
        invalidate();
    }

    public void setIndicatorWidth(float f4) {
        this.mIndicatorWidth = dp2px(f4);
        invalidate();
    }

    public void setIndicatorWidthEqualTitle(boolean z3) {
        this.mIndicatorWidthEqualTitle = z3;
        invalidate();
    }

    public void setMsgMargin(int i2, float f4, float f5) {
        float f6;
        int i4 = this.mTabCount;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        View childAt = this.mTabsContainer.getChildAt(i2);
        MsgView msgView = (MsgView) childAt.findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            this.mTextPaint.setTextSize(this.mTextsize);
            float measureText = this.mTextPaint.measureText(((TextView) childAt.findViewById(R.id.tv_tab_title)).getText().toString());
            float descent = this.mTextPaint.descent() - this.mTextPaint.ascent();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) msgView.getLayoutParams();
            float f7 = this.mTabWidth;
            if (f7 >= 0.0f) {
                f6 = f7 / 2.0f;
                measureText /= 2.0f;
            } else {
                f6 = this.mTabPadding;
            }
            marginLayoutParams.leftMargin = (int) (f6 + measureText + dp2px(f4));
            int i5 = this.mHeight;
            marginLayoutParams.topMargin = i5 > 0 ? (((int) (i5 - descent)) / 2) - dp2px(f5) : 0;
            msgView.setLayoutParams(marginLayoutParams);
        }
    }

    public void setOnTabSelectListener(b bVar) {
        this.mListener = bVar;
    }

    public void setSnapOnTabClick(boolean z3) {
        this.mSnapOnTabClick = z3;
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

    public void setUnderlineColor(int i2) {
        this.mUnderlineColor = i2;
        invalidate();
    }

    public void setUnderlineGravity(int i2) {
        this.mUnderlineGravity = i2;
        invalidate();
    }

    public void setUnderlineHeight(float f4) {
        this.mUnderlineHeight = dp2px(f4);
        invalidate();
    }

    public void setViewPager(ViewPager viewPager) {
        if (viewPager != null && viewPager.getAdapter() != null) {
            this.mViewPager = viewPager;
            viewPager.removeOnPageChangeListener(this);
            this.mViewPager.addOnPageChangeListener(this);
            notifyDataSetChanged();
            return;
        }
        throw new IllegalStateException("ViewPager or ViewPager adapter can not be NULL !");
    }

    public void showDot(int i2) {
        int i4 = this.mTabCount;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        showMsg(i2, 0);
    }

    public void showMsg(int i2, int i4) {
        int i5 = this.mTabCount;
        if (i2 >= i5) {
            i2 = i5 - 1;
        }
        MsgView msgView = (MsgView) this.mTabsContainer.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            x0.b.b(msgView, i4);
            if (this.mInitSetMap.get(i2) == null || !this.mInitSetMap.get(i2).booleanValue()) {
                setMsgMargin(i2, 4.0f, 2.0f);
                this.mInitSetMap.put(i2, Boolean.TRUE);
            }
        }
    }

    protected int sp2px(float f4) {
        return (int) ((f4 * this.mContext.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public SlidingTabLayoutScreenShort(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabLayoutScreenShort(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mIndicatorRect = new Rect();
        this.mTabRect = new Rect();
        this.mIndicatorDrawable = new GradientDrawable();
        this.mRectPaint = new Paint(1);
        this.mDividerPaint = new Paint(1);
        this.mTrianglePaint = new Paint(1);
        this.mTrianglePath = new Path();
        this.mIndicatorStyle = 0;
        this.mTextPaint = new Paint(1);
        this.mInitSetMap = new SparseArray<>();
        setFillViewport(true);
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        this.mContext = context;
        LinearLayout linearLayout = new LinearLayout(context);
        this.mTabsContainer = linearLayout;
        addView(linearLayout);
        obtainAttributes(context, attributeSet);
        String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "layout_height");
        if (attributeValue.equals("-1") || attributeValue.equals("-2")) {
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842997});
        this.mHeight = obtainStyledAttributes.getDimensionPixelSize(0, -2);
        obtainStyledAttributes.recycle();
    }

    public void setCurrentTab(int i2, boolean z3) {
        this.mCurrentTab = i2;
        this.mViewPager.setCurrentItem(i2, z3);
    }

    public void setViewPager(ViewPager viewPager, String[] strArr) {
        if (viewPager != null && viewPager.getAdapter() != null) {
            if (strArr != null && strArr.length != 0) {
                if (strArr.length == viewPager.getAdapter().getCount()) {
                    this.mViewPager = viewPager;
                    ArrayList<String> arrayList = new ArrayList<>();
                    this.mTitles = arrayList;
                    Collections.addAll(arrayList, strArr);
                    this.mViewPager.removeOnPageChangeListener(this);
                    this.mViewPager.addOnPageChangeListener(this);
                    notifyDataSetChanged();
                    return;
                }
                throw new IllegalStateException("Titles length must be the same as the page count !");
            }
            throw new IllegalStateException("Titles can not be EMPTY !");
        }
        throw new IllegalStateException("ViewPager or ViewPager adapter can not be NULL !");
    }

    public void setViewPager(ViewPager viewPager, String[] strArr, FragmentActivity fragmentActivity, ArrayList<Fragment> arrayList) {
        if (viewPager != null) {
            if (strArr != null && strArr.length != 0) {
                this.mViewPager = viewPager;
                viewPager.setAdapter(new InnerPagerAdapter(fragmentActivity.getSupportFragmentManager(), arrayList, strArr));
                this.mViewPager.removeOnPageChangeListener(this);
                this.mViewPager.addOnPageChangeListener(this);
                notifyDataSetChanged();
                return;
            }
            throw new IllegalStateException("Titles can not be EMPTY !");
        }
        throw new IllegalStateException("ViewPager can not be NULL !");
    }
}
