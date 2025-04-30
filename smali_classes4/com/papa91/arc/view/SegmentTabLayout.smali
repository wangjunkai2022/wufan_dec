.class public Lcom/papa91/arc/view/SegmentTabLayout;
.super Landroid/widget/FrameLayout;
.source "SegmentTabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/view/SegmentTabLayout$PointEvaluator;,
        Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;
    }
.end annotation


# static fields
.field private static final TEXT_BOLD_BOTH:I = 0x2

.field private static final TEXT_BOLD_NONE:I = 0x0

.field private static final TEXT_BOLD_WHEN_SELECT:I = 0x1


# instance fields
.field private mBarColor:I

.field private mBarStrokeColor:I

.field private mBarStrokeWidth:F

.field private mContext:Landroid/content/Context;

.field private mCurrentP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

.field private mCurrentTab:I

.field private mDividerColor:I

.field private mDividerPadding:F

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:F

.field private mHeight:I

.field private mIndicatorAnimDuration:J

.field private mIndicatorAnimEnable:Z

.field private mIndicatorBounceEnable:Z

.field private mIndicatorColor:I

.field private mIndicatorCornerRadius:F

.field private mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mIndicatorHeight:F

.field private mIndicatorMarginBottom:F

.field private mIndicatorMarginLeft:F

.field private mIndicatorMarginRight:F

.field private mIndicatorMarginTop:F

.field private mIndicatorRect:Landroid/graphics/Rect;

.field private mInitSetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mInterpolator:Landroid/view/animation/OvershootInterpolator;

.field private mIsFirstDraw:Z

.field private mLastP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

.field private mLastTab:I

.field private mListener:Lcom/papa91/arc/view/OnTabSelectListener;

.field private mRadiusArr:[F

.field private mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mRectMarginBottom:F

.field private mRectMarginLeft:F

.field private mRectMarginRight:F

.field private mRectMarginTop:F

.field private mSliderDrawable:Landroid/graphics/drawable/Drawable;

.field private mTabCount:I

.field private mTabPadding:F

.field private mTabSpaceEqual:Z

.field private mTabWidth:F

.field private mTabsContainer:Landroid/widget/LinearLayout;

.field private mTextAllCaps:Z

.field private mTextBold:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSelectColor:I

.field private mTextUnselectColor:I

.field private mTextsize:F

.field private mTitles:[Ljava/lang/String;

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private shader:Landroid/graphics/LinearGradient;

.field private shaderColors:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/papa91/arc/view/SegmentTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/papa91/arc/view/SegmentTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    .line 5
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 6
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 p3, 0x0

    .line 7
    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mSliderDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    const/4 p3, 0x3

    new-array p3, p3, [I

    const-string v1, "#4f4740"

    .line 9
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, p3, v3

    const-string v2, "#877564"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, p3, v0

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, p3, v2

    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->shaderColors:[I

    .line 10
    new-instance p3, Landroid/view/animation/OvershootInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p3, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mInterpolator:Landroid/view/animation/OvershootInterpolator;

    const/16 p3, 0x8

    new-array p3, p3, [F

    .line 11
    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mRadiusArr:[F

    .line 12
    iput-boolean v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIsFirstDraw:Z

    .line 13
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextPaint:Landroid/graphics/Paint;

    .line 14
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mInitSetMap:Landroid/util/SparseArray;

    .line 15
    new-instance p3, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    invoke-direct {p3, p0}, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;-><init>(Lcom/papa91/arc/view/SegmentTabLayout;)V

    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    .line 16
    new-instance p3, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    invoke-direct {p3, p0}, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;-><init>(Lcom/papa91/arc/view/SegmentTabLayout;)V

    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mLastP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    .line 17
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 18
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 19
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 20
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->shape_slider:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mSliderDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 21
    invoke-virtual {p3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 22
    :goto_0
    iput-object p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mContext:Landroid/content/Context;

    .line 23
    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 24
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/view/SegmentTabLayout;->obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p3, "http://schemas.android.com/apk/res/android"

    const-string v1, "layout_height"

    .line 26
    invoke-interface {p2, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "-1"

    .line 27
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "-2"

    .line 28
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    new-array p3, v0, [I

    const v1, 0x10100f5

    aput v1, p3, v3

    .line 29
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x2

    .line 30
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mHeight:I

    .line 31
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    :goto_1
    new-instance p1, Lcom/papa91/arc/view/SegmentTabLayout$PointEvaluator;

    invoke-direct {p1, p0}, Lcom/papa91/arc/view/SegmentTabLayout$PointEvaluator;-><init>(Lcom/papa91/arc/view/SegmentTabLayout;)V

    new-array p2, v2, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mLastP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    aput-object p3, p2, v3

    iget-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 33
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/view/SegmentTabLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

    return p0
.end method

.method static synthetic access$100(Lcom/papa91/arc/view/SegmentTabLayout;)Lcom/papa91/arc/view/OnTabSelectListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mListener:Lcom/papa91/arc/view/OnTabSelectListener;

    return-object p0
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 4

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_tab_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    iget-object v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTitles:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    new-instance v0, Lcom/papa91/arc/view/SegmentTabLayout$1;

    invoke-direct {v0, p0}, Lcom/papa91/arc/view/SegmentTabLayout$1;-><init>(Lcom/papa91/arc/view/SegmentTabLayout;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-boolean v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabSpaceEqual:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7
    :goto_0
    iget v2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabWidth:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 8
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabWidth:F

    float-to-int v2, v2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private calcIndicatorRect()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->left:I

    float-to-int v0, v0

    .line 5
    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 6
    iget-boolean v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimEnable:Z

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v0, :cond_3

    .line 7
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mRadiusArr:[F

    iget v10, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v10, v0, v8

    .line 9
    aput v10, v0, v9

    .line 10
    aput v1, v0, v7

    .line 11
    aput v1, v0, v6

    .line 12
    aput v1, v0, v5

    .line 13
    aput v1, v0, v4

    .line 14
    aput v10, v0, v3

    .line 15
    aput v10, v0, v2

    goto :goto_1

    .line 16
    :cond_1
    iget v10, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabCount:I

    sub-int/2addr v10, v9

    if-ne v0, v10, :cond_2

    .line 17
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mRadiusArr:[F

    aput v1, v0, v8

    .line 18
    aput v1, v0, v9

    .line 19
    iget v8, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v8, v0, v7

    .line 20
    aput v8, v0, v6

    .line 21
    aput v8, v0, v5

    .line 22
    aput v8, v0, v4

    .line 23
    aput v1, v0, v3

    .line 24
    aput v1, v0, v2

    goto :goto_1

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mRadiusArr:[F

    aput v1, v0, v8

    .line 26
    aput v1, v0, v9

    .line 27
    aput v1, v0, v7

    .line 28
    aput v1, v0, v6

    .line 29
    aput v1, v0, v5

    .line 30
    aput v1, v0, v4

    .line 31
    aput v1, v0, v3

    .line 32
    aput v1, v0, v2

    goto :goto_1

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mRadiusArr:[F

    iget v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v1, v0, v8

    .line 34
    aput v1, v0, v9

    .line 35
    aput v1, v0, v7

    .line 36
    aput v1, v0, v6

    .line 37
    aput v1, v0, v5

    .line 38
    aput v1, v0, v4

    .line 39
    aput v1, v0, v3

    .line 40
    aput v1, v0, v2

    :goto_1
    return-void
.end method

.method private calcOffset()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->left:F

    .line 3
    iget-object v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->right:F

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->left:F

    iput v1, v0, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->right:F

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mLastTab:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mLastP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->left:F

    .line 7
    iget-object v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mLastP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->right:F

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mLastP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->left:F

    iput v1, v0, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->right:F

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mLastP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->left:F

    iget-object v2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    iget v3, v2, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->left:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->right:F

    iget v3, v2, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->right:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_4

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 12
    iget-boolean v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorBounceEnable:Z

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->left:F

    iget v0, v0, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->right:F

    const-wide/16 v2, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_4

    iput-wide v2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimDuration:J

    goto :goto_3

    .line 15
    :cond_4
    iget-wide v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimDuration:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_6

    .line 16
    iget-boolean v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorBounceEnable:Z

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x1f4

    goto :goto_2

    :cond_5
    const-wide/16 v0, 0xfa

    :goto_2
    iput-wide v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimDuration:J

    .line 17
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 18
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_4
    return-void
.end method

.method private obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_rect_margin_left:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectMarginLeft:F

    .line 3
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_rect_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectMarginTop:F

    .line 4
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_rect_margin_right:I

    invoke-virtual {p0, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectMarginRight:F

    .line 5
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_rect_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectMarginBottom:F

    .line 6
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_indicator_color:I

    const-string v1, "#222831"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorColor:I

    .line 7
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_indicator_height:I

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorHeight:F

    .line 8
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_indicator_corner_radius:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    .line 9
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_indicator_margin_left:I

    invoke-virtual {p0, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginLeft:F

    .line 10
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_indicator_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginTop:F

    .line 11
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_indicator_margin_right:I

    invoke-virtual {p0, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginRight:F

    .line 12
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_indicator_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginBottom:F

    .line 13
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_indicator_anim_enable:I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimEnable:Z

    .line 14
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_indicator_bounce_enable:I

    const/4 v3, 0x1

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorBounceEnable:Z

    .line 15
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_indicator_anim_duration:I

    const/4 v4, -0x1

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long v4, p2

    iput-wide v4, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimDuration:J

    .line 16
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_divider_color:I

    iget v4, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorColor:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerColor:I

    .line 17
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_divider_width:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerWidth:F

    .line 18
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_divider_padding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPadding:F

    .line 19
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_textsize:I

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {p0, v5}, Lcom/papa91/arc/view/SegmentTabLayout;->sp2px(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextsize:F

    .line 20
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_textSelectColor:I

    const-string v5, "#ffffff"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextSelectColor:I

    .line 21
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_textUnselectColor:I

    iget v5, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorColor:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextUnselectColor:I

    .line 22
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_textBold:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextBold:I

    .line 23
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_textAllCaps:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextAllCaps:Z

    .line 24
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_tab_space_equal:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabSpaceEqual:Z

    .line 25
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_tab_width:I

    invoke-virtual {p0, v1}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabWidth:F

    .line 26
    sget v1, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_tab_padding:I

    iget-boolean v3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabSpaceEqual:Z

    if-nez v3, :cond_1

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x41200000    # 10.0f

    invoke-virtual {p0, p2}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    move-result p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    move-result p2

    :goto_1
    int-to-float p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabPadding:F

    .line 27
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_bar_color:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mBarColor:I

    .line 28
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_bar_stroke_color:I

    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mBarStrokeColor:I

    .line 29
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_bar_stroke_width:I

    invoke-virtual {p0, v4}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mBarStrokeWidth:F

    .line 30
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updateTabSelection(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabCount:I

    if-ge v1, v2, :cond_3

    .line 2
    iget-object v2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 3
    :goto_1
    sget v5, Lorg/ppsspp/ppsspp/R$id;->tv_tab_title:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 4
    iget v5, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextSelectColor:I

    goto :goto_2

    :cond_1
    iget v5, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextUnselectColor:I

    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget v5, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextBold:I

    if-ne v5, v3, :cond_2

    .line 6
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private updateTabStyles()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabCount:I

    if-ge v1, v2, :cond_4

    .line 2
    iget-object v2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    iget v3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabPadding:F

    float-to-int v4, v3

    float-to-int v3, v3

    invoke-virtual {v2, v4, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 4
    sget v3, Lorg/ppsspp/ppsspp/R$id;->tv_tab_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 5
    iget v3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextSelectColor:I

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextUnselectColor:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget v3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextsize:F

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7
    iget-boolean v3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextAllCaps:Z

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_1
    iget v3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextBold:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 10
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    .line 11
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method protected dp2px(F)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getCurrentTab()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

    return v0
.end method

.method public getDividerColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerColor:I

    return v0
.end method

.method public getDividerPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPadding:F

    return v0
.end method

.method public getDividerWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerWidth:F

    return v0
.end method

.method public getIndicatorAnimDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimDuration:J

    return-wide v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorColor:I

    return v0
.end method

.method public getIndicatorCornerRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    return v0
.end method

.method public getIndicatorHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorHeight:F

    return v0
.end method

.method public getIndicatorMarginBottom()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginBottom:F

    return v0
.end method

.method public getIndicatorMarginLeft()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginLeft:F

    return v0
.end method

.method public getIndicatorMarginRight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginRight:F

    return v0
.end method

.method public getIndicatorMarginTop()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginTop:F

    return v0
.end method

.method public getTabCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabCount:I

    return v0
.end method

.method public getTabPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabPadding:F

    return v0
.end method

.method public getTabWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabWidth:F

    return v0
.end method

.method public getTextBold()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextBold:I

    return v0
.end method

.method public getTextSelectColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextSelectColor:I

    return v0
.end method

.method public getTextUnselectColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextUnselectColor:I

    return v0
.end method

.method public getTextsize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextsize:F

    return v0
.end method

.method public getTitleView(I)Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_tab_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public isIndicatorAnimEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimEnable:Z

    return v0
.end method

.method public isIndicatorBounceEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorBounceEnable:Z

    return v0
.end method

.method public isTabSpaceEqual()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabSpaceEqual:Z

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTitles:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabCount:I

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabCount:I

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mContext:Landroid/content/Context;

    sget v2, Lorg/ppsspp/ppsspp/R$layout;->layout_tab_segment:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/papa91/arc/view/SegmentTabLayout;->addTab(ILandroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/papa91/arc/view/SegmentTabLayout;->updateTabStyles()V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v1, p1, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->left:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 3
    iget p1, p1, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->right:F

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabCount:I

    if-gtz v1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v9

    .line 5
    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorHeight:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    int-to-float v1, v8

    .line 6
    iget v3, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginTop:F

    sub-float/2addr v1, v3

    iget v3, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginBottom:F

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorHeight:F

    .line 7
    :cond_1
    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v4, v1, v2

    if-ltz v4, :cond_2

    iget v4, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorHeight:F

    div-float/2addr v4, v3

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    .line 8
    :cond_2
    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorHeight:F

    div-float/2addr v1, v3

    iput v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    .line 9
    :cond_3
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v3, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mBarColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 10
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v3, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mBarStrokeWidth:F

    float-to-int v3, v3

    iget v4, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mBarStrokeColor:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 11
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v3, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 12
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectMarginLeft:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectMarginTop:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectMarginRight:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v6, v10

    int-to-float v6, v6

    iget v10, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectMarginBottom:F

    sub-float/2addr v6, v10

    float-to-int v6, v6

    .line 14
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 15
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 16
    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerWidth:F

    const/4 v10, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_4

    .line 17
    iget-object v2, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v11, 0x0

    .line 19
    :goto_0
    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v11, v1, :cond_4

    .line 20
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 21
    new-instance v2, Landroid/graphics/LinearGradient;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v9

    int-to-float v13, v3

    iget v3, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPadding:F

    iget v4, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectMarginTop:F

    add-float v14, v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v9

    int-to-float v15, v3

    int-to-float v3, v8

    iget v4, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPadding:F

    sub-float v4, v3, v4

    iget v5, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectMarginBottom:F

    sub-float v16, v4, v5

    iget-object v4, v0, Lcom/papa91/arc/view/SegmentTabLayout;->shaderColors:[I

    const/16 v18, 0x0

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v12, v2

    move-object/from16 v17, v4

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lcom/papa91/arc/view/SegmentTabLayout;->shader:Landroid/graphics/LinearGradient;

    .line 22
    iget-object v4, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v9

    int-to-float v2, v2

    iget v4, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPadding:F

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v9

    int-to-float v5, v1

    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPadding:F

    sub-float v6, v3, v1

    iget-object v12, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 24
    :cond_4
    iget-boolean v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimEnable:Z

    if-eqz v1, :cond_5

    .line 25
    iget-boolean v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIsFirstDraw:Z

    if-eqz v1, :cond_6

    .line 26
    iput-boolean v10, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIsFirstDraw:Z

    .line 27
    invoke-direct/range {p0 .. p0}, Lcom/papa91/arc/view/SegmentTabLayout;->calcIndicatorRect()V

    goto :goto_1

    .line 28
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/papa91/arc/view/SegmentTabLayout;->calcIndicatorRect()V

    .line 29
    :cond_6
    :goto_1
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mSliderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    .line 30
    iget v2, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginLeft:F

    float-to-int v2, v2

    add-int/2addr v2, v9

    iget-object v3, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iget v4, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginTop:F

    float-to-int v5, v4

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v3

    int-to-float v3, v9

    iget v6, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginRight:F

    sub-float/2addr v3, v6

    float-to-int v3, v3

    iget v6, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorHeight:F

    add-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 31
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mSliderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 32
    :cond_7
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v2, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 33
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v2, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginLeft:F

    float-to-int v2, v2

    add-int/2addr v2, v9

    iget-object v3, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iget v4, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginTop:F

    float-to-int v5, v4

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v3

    int-to-float v3, v9

    iget v6, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginRight:F

    sub-float/2addr v3, v6

    float-to-int v3, v3

    iget v6, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorHeight:F

    add-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 34
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRadiusArr:[F

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 35
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    :goto_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "mCurrentTab"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

    const-string v0, "instanceState"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 5
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

    invoke-direct {p0, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->updateTabSelection(I)V

    .line 7
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "instanceState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    iget v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

    const-string v2, "mCurrentTab"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setCurrentTab(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

    iput v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mLastTab:I

    .line 2
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

    .line 3
    invoke-direct {p0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->updateTabSelection(I)V

    .line 4
    iget-boolean p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimEnable:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/papa91/arc/view/SegmentTabLayout;->calcOffset()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerColor:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setDividerPadding(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPadding:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setDividerWidth(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerWidth:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorAnimDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimDuration:J

    return-void
.end method

.method public setIndicatorAnimEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimEnable:Z

    return-void
.end method

.method public setIndicatorBounceEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorBounceEnable:Z

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorColor:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorCornerRadius(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorHeight:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorMargin(FFFF)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginLeft:F

    .line 2
    invoke-virtual {p0, p2}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginTop:F

    .line 3
    invoke-virtual {p0, p3}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginRight:F

    .line 4
    invoke-virtual {p0, p4}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginBottom:F

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setOnTabSelectListener(Lcom/papa91/arc/view/OnTabSelectListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mListener:Lcom/papa91/arc/view/OnTabSelectListener;

    return-void
.end method

.method public setTabData([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTitles:[Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/view/SegmentTabLayout;->notifyDataSetChanged()V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Titles can not be NULL or EMPTY !"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTabData([Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentActivity;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->setTabData([Ljava/lang/String;)V

    return-void
.end method

.method public setTabPadding(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabPadding:F

    .line 2
    invoke-direct {p0}, Lcom/papa91/arc/view/SegmentTabLayout;->updateTabStyles()V

    return-void
.end method

.method public setTabSpaceEqual(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabSpaceEqual:Z

    .line 2
    invoke-direct {p0}, Lcom/papa91/arc/view/SegmentTabLayout;->updateTabStyles()V

    return-void
.end method

.method public setTabWidth(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabWidth:F

    .line 2
    invoke-direct {p0}, Lcom/papa91/arc/view/SegmentTabLayout;->updateTabStyles()V

    return-void
.end method

.method public setTextAllCaps(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextAllCaps:Z

    .line 2
    invoke-direct {p0}, Lcom/papa91/arc/view/SegmentTabLayout;->updateTabStyles()V

    return-void
.end method

.method public setTextBold(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextBold:I

    .line 2
    invoke-direct {p0}, Lcom/papa91/arc/view/SegmentTabLayout;->updateTabStyles()V

    return-void
.end method

.method public setTextSelectColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextSelectColor:I

    .line 2
    invoke-direct {p0}, Lcom/papa91/arc/view/SegmentTabLayout;->updateTabStyles()V

    return-void
.end method

.method public setTextUnselectColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextUnselectColor:I

    .line 2
    invoke-direct {p0}, Lcom/papa91/arc/view/SegmentTabLayout;->updateTabStyles()V

    return-void
.end method

.method public setTextsize(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->sp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextsize:F

    .line 2
    invoke-direct {p0}, Lcom/papa91/arc/view/SegmentTabLayout;->updateTabStyles()V

    return-void
.end method

.method public showDot(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabCount:I

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->showMsg(II)V

    return-void
.end method

.method public showMsg(II)V
    .locals 0

    return-void
.end method

.method protected sp2px(F)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method
