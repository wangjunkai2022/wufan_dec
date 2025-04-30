.class public Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;
.super Landroid/widget/HorizontalScrollView;
.source "SlidingTabLayoutScreenShort.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort$InnerPagerAdapter;
    }
.end annotation


# static fields
.field private static final STYLE_BLOCK:I = 0x2

.field private static final STYLE_NORMAL:I = 0x0

.field private static final STYLE_TRIANGLE:I = 0x1

.field private static final TEXT_BOLD_BOTH:I = 0x2

.field private static final TEXT_BOLD_NONE:I = 0x0

.field private static final TEXT_BOLD_WHEN_SELECT:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPositionOffset:F

.field private mCurrentTab:I

.field private mDividerColor:I

.field private mDividerPadding:F

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:F

.field private mHeight:I

.field private mIndicatorColor:I

.field private mIndicatorCornerRadius:F

.field private mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mIndicatorGravity:I

.field private mIndicatorHeight:F

.field private mIndicatorMarginBottom:F

.field private mIndicatorMarginLeft:F

.field private mIndicatorMarginRight:F

.field private mIndicatorMarginTop:F

.field private mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorStyle:I

.field private mIndicatorWidth:F

.field private mIndicatorWidthEqualTitle:Z

.field private mInitSetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLastScrollX:I

.field private mListener:Lw0/b;

.field private mRectPaint:Landroid/graphics/Paint;

.field private mSnapOnTabClick:Z

.field private mTabCount:I

.field private mTabPadding:F

.field private mTabRect:Landroid/graphics/Rect;

.field private mTabSpaceEqual:Z

.field private mTabWidth:F

.field private mTabsContainer:Landroid/widget/LinearLayout;

.field private mTextAllCaps:Z

.field private mTextBold:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSelectColor:I

.field private mTextUnselectColor:I

.field private mTextsize:F

.field private mTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTrianglePaint:Landroid/graphics/Paint;

.field private mTrianglePath:Landroid/graphics/Path;

.field private mUnderlineColor:I

.field private mUnderlineGravity:I

.field private mUnderlineHeight:F

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private margin:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorRect:Landroid/graphics/Rect;

    .line 5
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabRect:Landroid/graphics/Rect;

    .line 6
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 7
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mRectPaint:Landroid/graphics/Paint;

    .line 8
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerPaint:Landroid/graphics/Paint;

    .line 9
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTrianglePaint:Landroid/graphics/Paint;

    .line 10
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTrianglePath:Landroid/graphics/Path;

    const/4 p3, 0x0

    .line 11
    iput p3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    .line 12
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextPaint:Landroid/graphics/Paint;

    .line 13
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mInitSetMap:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 15
    invoke-virtual {p0, p3}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    .line 16
    invoke-virtual {p0, p3}, Landroid/widget/HorizontalScrollView;->setClipChildren(Z)V

    .line 17
    invoke-virtual {p0, p3}, Landroid/widget/HorizontalScrollView;->setClipToPadding(Z)V

    .line 18
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mContext:Landroid/content/Context;

    .line 19
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 20
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "layout_height"

    .line 22
    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "-2"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-array v0, v0, [I

    const v1, 0x10100f5

    aput v1, v0, p3

    .line 25
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x2

    .line 26
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mHeight:I

    .line 27
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mSnapOnTabClick:Z

    return p0
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;)Lw0/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mListener:Lw0/b;

    return-object p0
.end method

.method private addTab(ILjava/lang/String;Landroid/view/View;)V
    .locals 4

    const v0, 0x7f09118b

    .line 1
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {p2, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    new-instance p2, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort$1;

    invoke-direct {p2, p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort$1;-><init>(Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-boolean p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabSpaceEqual:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 7
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 9
    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabWidth:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 10
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabWidth:F

    float-to-int v1, v1

    invoke-direct {p2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0710d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p2, v0, v0, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private calcIndicatorRect()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    .line 4
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    const v4, 0x7f09118b

    const/high16 v5, 0x40000000    # 2.0f

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorWidthEqualTitle:Z

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 6
    iget-object v6, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextsize:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 7
    iget-object v6, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float v6, v2, v1

    sub-float/2addr v6, v3

    div-float/2addr v6, v5

    .line 8
    iput v6, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->margin:F

    .line 9
    :cond_0
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    iget v6, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_1

    .line 10
    iget-object v6, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    .line 12
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    int-to-float v7, v7

    .line 13
    iget v8, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentPositionOffset:F

    sub-float v9, v6, v1

    mul-float v9, v9, v8

    add-float/2addr v1, v9

    sub-float v9, v7, v2

    mul-float v8, v8, v9

    add-float/2addr v2, v8

    .line 14
    iget v8, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    if-nez v8, :cond_1

    iget-boolean v8, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorWidthEqualTitle:Z

    if-eqz v8, :cond_1

    .line 15
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 16
    iget-object v4, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextsize:F

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 17
    iget-object v4, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v7, v6

    sub-float/2addr v7, v3

    div-float/2addr v7, v5

    .line 18
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->margin:F

    iget v4, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentPositionOffset:F

    sub-float/2addr v7, v3

    mul-float v4, v4, v7

    add-float/2addr v3, v4

    iput v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->margin:F

    .line 19
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorRect:Landroid/graphics/Rect;

    float-to-int v4, v1

    iput v4, v3, Landroid/graphics/Rect;->left:I

    float-to-int v6, v2

    .line 20
    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 21
    iget v7, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorWidthEqualTitle:Z

    if-eqz v7, :cond_2

    .line 22
    iget v7, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->margin:F

    add-float/2addr v1, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v1, v8

    float-to-int v1, v1

    iput v1, v3, Landroid/graphics/Rect;->left:I

    sub-float/2addr v2, v7

    sub-float/2addr v2, v8

    float-to-int v1, v2

    .line 23
    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabRect:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 25
    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 26
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorWidth:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    .line 28
    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_4

    .line 29
    iget-object v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 30
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentPositionOffset:F

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v3, v3, v0

    add-float/2addr v1, v3

    .line 31
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorRect:Landroid/graphics/Rect;

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 32
    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorWidth:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    return-void
.end method

.method private obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xb

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    const-string v1, "#ffffff"

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const-string p2, "#4B6A87"

    goto :goto_0

    :cond_0
    move-object p2, v1

    .line 3
    :goto_0
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/4 v3, 0x3

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorColor:I

    const/4 p2, 0x6

    .line 4
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/high16 v3, 0x40800000    # 4.0f

    goto :goto_2

    :cond_1
    if-ne v3, v2, :cond_2

    const/4 v3, -0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    :goto_1
    int-to-float v3, v3

    :goto_2
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    .line 5
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    const/16 p2, 0xc

    .line 6
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    const/high16 v5, -0x40800000    # -1.0f

    if-ne v3, v4, :cond_3

    const/high16 v3, 0x41200000    # 10.0f

    goto :goto_3

    :cond_3
    const/high16 v3, -0x40800000    # -1.0f

    :goto_3
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorWidth:F

    const/4 p2, 0x4

    .line 7
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    const/4 v6, 0x0

    if-ne v3, v2, :cond_4

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorCornerRadius:F

    const/16 p2, 0x8

    .line 8
    invoke-virtual {p0, v6}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginLeft:F

    const/16 p2, 0xa

    .line 9
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    const/high16 v7, 0x40e00000    # 7.0f

    if-ne v3, v2, :cond_5

    const/high16 v3, 0x40e00000    # 7.0f

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginTop:F

    const/16 p2, 0x9

    .line 10
    invoke-virtual {p0, v6}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginRight:F

    const/4 p2, 0x7

    .line 11
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    if-ne v3, v2, :cond_6

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {p0, v7}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginBottom:F

    const/4 p2, 0x5

    const/16 v3, 0x50

    .line 12
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorGravity:I

    const/16 p2, 0xd

    .line 13
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorWidthEqualTitle:Z

    const/16 p2, 0x16

    .line 14
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineColor:I

    const/16 p2, 0x18

    .line 15
    invoke-virtual {p0, v6}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineHeight:F

    const/16 p2, 0x17

    .line 16
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineGravity:I

    .line 17
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerColor:I

    .line 18
    invoke-virtual {p0, v6}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerWidth:F

    const/high16 p2, 0x41400000    # 12.0f

    .line 19
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerPadding:F

    const/16 p2, 0x15

    const/high16 v2, 0x41600000    # 14.0f

    .line 20
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->sp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextsize:F

    const/16 p2, 0x13

    .line 21
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextSelectColor:I

    const/16 p2, 0x14

    const-string v1, "#848484"

    .line 22
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextUnselectColor:I

    const/16 p2, 0x12

    .line 23
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextBold:I

    const/16 p2, 0x11

    .line 24
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextAllCaps:Z

    const/16 p2, 0xf

    .line 25
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabSpaceEqual:Z

    const/16 p2, 0x10

    .line 26
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabWidth:F

    const/16 v0, 0xe

    .line 27
    iget-boolean v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabSpaceEqual:Z

    if-nez v1, :cond_8

    cmpl-float p2, p2, v6

    if-lez p2, :cond_7

    goto :goto_7

    :cond_7
    const/high16 p2, 0x41a00000    # 20.0f

    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result p2

    goto :goto_8

    :cond_8
    :goto_7
    invoke-virtual {p0, v6}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result p2

    :goto_8
    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabPadding:F

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private scrollToCurrentTab()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentPositionOffset:F

    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    .line 4
    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    if-gtz v2, :cond_1

    if-lez v0, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v1, v0

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->calcIndicatorRect()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 8
    :cond_2
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mLastScrollX:I

    if-eq v1, v0, :cond_3

    .line 9
    iput v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mLastScrollX:I

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_3
    return-void
.end method

.method private updateTabSelection(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    if-ge v1, v2, :cond_5

    .line 2
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const v5, 0x7f09118b

    .line 3
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    if-eqz v4, :cond_1

    .line 4
    iget v5, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextSelectColor:I

    goto :goto_2

    :cond_1
    iget v5, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextUnselectColor:I

    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget v5, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextBold:I

    if-ne v5, v3, :cond_2

    .line 6
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_2
    if-eqz v4, :cond_3

    const v3, 0x7f080c43

    .line 7
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    :cond_3
    const v3, 0x7f080c3b

    .line 8
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private updateTabStyles()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    if-ge v1, v2, :cond_6

    .line 2
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09118b

    .line 3
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 4
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextSelectColor:I

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextUnselectColor:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextsize:F

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabPadding:F

    float-to-int v4, v3

    float-to-int v3, v3

    invoke-virtual {v2, v4, v0, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 7
    iget-boolean v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextAllCaps:Z

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
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextBold:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 10
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    .line 11
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 12
    :cond_3
    :goto_2
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    if-ne v3, v1, :cond_4

    const v3, 0x7f080c43

    .line 13
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    :cond_4
    const v3, 0x7f080c3b

    .line 14
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public addNewTab(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0397

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTitles:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTitles:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 5
    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1, v0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->addTab(ILjava/lang/String;Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTitles:Ljava/util/ArrayList;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabStyles()V

    return-void
.end method

.method protected dp2px(F)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mContext:Landroid/content/Context;

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
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    return v0
.end method

.method public getDividerColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerColor:I

    return v0
.end method

.method public getDividerPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerPadding:F

    return v0
.end method

.method public getDividerWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerWidth:F

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorColor:I

    return v0
.end method

.method public getIndicatorCornerRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorCornerRadius:F

    return v0
.end method

.method public getIndicatorHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    return v0
.end method

.method public getIndicatorMarginBottom()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginBottom:F

    return v0
.end method

.method public getIndicatorMarginLeft()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginLeft:F

    return v0
.end method

.method public getIndicatorMarginRight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginRight:F

    return v0
.end method

.method public getIndicatorMarginTop()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginTop:F

    return v0
.end method

.method public getIndicatorStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    return v0
.end method

.method public getIndicatorWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorWidth:F

    return v0
.end method

.method public getMsgView(I)Lcom/flyco/tablayout/widget/MsgView;
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090da0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/flyco/tablayout/widget/MsgView;

    return-object p1
.end method

.method public getTabCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    return v0
.end method

.method public getTabPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabPadding:F

    return v0
.end method

.method public getTabWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabWidth:F

    return v0
.end method

.method public getTextBold()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextBold:I

    return v0
.end method

.method public getTextSelectColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextSelectColor:I

    return v0
.end method

.method public getTextUnselectColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextUnselectColor:I

    return v0
.end method

.method public getTextsize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextsize:F

    return v0
.end method

.method public getTitleView(I)Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09118b

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public getUnderlineColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineColor:I

    return v0
.end method

.method public getUnderlineHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineHeight:F

    return v0
.end method

.method public hideMsg(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090da0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/flyco/tablayout/widget/MsgView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public isTabSpaceEqual()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabSpaceEqual:Z

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTitles:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    const/4 v0, 0x0

    .line 3
    :goto_1
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    if-ge v0, v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0397

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTitles:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 6
    :goto_2
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->addTab(ILjava/lang/String;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabStyles()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    if-gtz v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v6

    .line 4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v7

    .line 5
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerWidth:F

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmpl-float v1, v0, v9

    if-lez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 8
    :goto_0
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    sub-int/2addr v0, v8

    if-ge v10, v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    int-to-float v1, v1

    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerPadding:F

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v3, v0

    int-to-float v0, v6

    iget v4, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerPadding:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineHeight:F

    const/16 v10, 0x50

    cmpl-float v0, v0, v9

    if-lez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mRectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineGravity:I

    if-ne v0, v10, :cond_2

    int-to-float v1, v7

    int-to-float v4, v6

    .line 14
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineHeight:F

    sub-float v2, v4, v0

    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v3, v0

    iget-object v5, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mRectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    int-to-float v1, v7

    const/4 v2, 0x0

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v3, v0

    iget v4, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineHeight:F

    iget-object v5, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mRectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 16
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->calcIndicatorRect()V

    .line 17
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    const/4 v1, 0x2

    if-ne v0, v8, :cond_4

    .line 18
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_a

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTrianglePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTrianglePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v7

    int-to-float v2, v2

    int-to-float v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTrianglePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    div-int/2addr v4, v1

    add-int/2addr v4, v7

    iget v2, v2, Landroid/graphics/Rect;->right:I

    div-int/2addr v2, v1

    add-int/2addr v4, v2

    int-to-float v1, v4

    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    sub-float v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTrianglePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    int-to-float v1, v7

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTrianglePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTrianglePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_4
    if-ne v0, v1, :cond_8

    .line 26
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    cmpg-float v0, v0, v9

    if-gez v0, :cond_5

    int-to-float v0, v6

    .line 27
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginTop:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginBottom:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    .line 28
    :cond_5
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    cmpl-float v1, v0, v9

    if-lez v1, :cond_a

    .line 29
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorCornerRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v3, v1, v9

    if-ltz v3, :cond_6

    div-float v3, v0, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_7

    :cond_6
    div-float/2addr v0, v2

    .line 30
    iput v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorCornerRadius:F

    .line 31
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginLeft:F

    float-to-int v1, v1

    add-int/2addr v1, v7

    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginTop:F

    float-to-int v4, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v2

    int-to-float v2, v7

    iget v5, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginRight:F

    sub-float/2addr v2, v5

    float-to-int v2, v2

    iget v5, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorCornerRadius:F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 35
    :cond_8
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_a

    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 37
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorGravity:I

    if-ne v0, v10, :cond_9

    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginLeft:F

    float-to-int v1, v1

    add-int/2addr v1, v7

    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    float-to-int v3, v3

    sub-int v3, v6, v3

    iget v4, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginBottom:F

    float-to-int v5, v4

    sub-int/2addr v3, v5

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v2

    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginRight:F

    float-to-int v2, v2

    sub-int/2addr v7, v2

    float-to-int v2, v4

    sub-int/2addr v6, v2

    invoke-virtual {v0, v1, v3, v7, v6}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    goto :goto_2

    .line 39
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginLeft:F

    float-to-int v1, v1

    add-int/2addr v1, v7

    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginTop:F

    float-to-int v4, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v2

    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginRight:F

    float-to-int v2, v2

    sub-int/2addr v7, v2

    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    float-to-int v2, v2

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v7, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 40
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorCornerRadius:F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    .line 2
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentPositionOffset:F

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->scrollToCurrentTab()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabSelection(I)V

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

    iput v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    const-string v0, "instanceState"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 5
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabSelection(I)V

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->scrollToCurrentTab()V

    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "instanceState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    const-string v2, "mCurrentTab"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setCurrentTab(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setCurrentTab(IZ)V
    .locals 1

    .line 3
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerColor:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setDividerPadding(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerPadding:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setDividerWidth(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerWidth:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorColor:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorCornerRadius(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorCornerRadius:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorGravity:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorMargin(FFFF)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginLeft:F

    .line 2
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginTop:F

    .line 3
    invoke-virtual {p0, p3}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginRight:F

    .line 4
    invoke-virtual {p0, p4}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginBottom:F

    .line 5
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorWidth(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorWidth:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorWidthEqualTitle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorWidthEqualTitle:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setMsgMargin(IFF)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090da0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyco/tablayout/widget/MsgView;

    if-eqz v0, :cond_3

    const v1, 0x7f09118b

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextsize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    .line 8
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabWidth:F

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float/2addr p1, v4

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabPadding:F

    :goto_0
    add-float/2addr v3, p1

    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v3, p1

    float-to-int p1, v3

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 10
    iget p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mHeight:I

    if-lez p1, :cond_2

    int-to-float p1, p1

    sub-float/2addr p1, v1

    float-to-int p1, p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p3}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 11
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public setOnTabSelectListener(Lw0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mListener:Lw0/b;

    return-void
.end method

.method public setSnapOnTabClick(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mSnapOnTabClick:Z

    return-void
.end method

.method public setTabPadding(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabPadding:F

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabStyles()V

    return-void
.end method

.method public setTabSpaceEqual(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabSpaceEqual:Z

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabStyles()V

    return-void
.end method

.method public setTabWidth(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabWidth:F

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabStyles()V

    return-void
.end method

.method public setTextAllCaps(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextAllCaps:Z

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabStyles()V

    return-void
.end method

.method public setTextBold(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextBold:I

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabStyles()V

    return-void
.end method

.method public setTextSelectColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextSelectColor:I

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabStyles()V

    return-void
.end method

.method public setTextUnselectColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextUnselectColor:I

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabStyles()V

    return-void
.end method

.method public setTextsize(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->sp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextsize:F

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabStyles()V

    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineColor:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setUnderlineGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineGravity:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setUnderlineHeight(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineHeight:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 3
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->notifyDataSetChanged()V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager or ViewPager adapter can not be NULL !"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;[Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 8
    array-length v0, p2

    if-eqz v0, :cond_1

    .line 9
    array-length v0, p2

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 10
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTitles:Ljava/util/ArrayList;

    .line 12
    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->notifyDataSetChanged()V

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Titles length must be the same as the page count !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Titles can not be EMPTY !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ViewPager or ViewPager adapter can not be NULL !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;[Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/viewpager/widget/ViewPager;",
            "[",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 19
    array-length v0, p2

    if-eqz v0, :cond_0

    .line 20
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 21
    new-instance v0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort$InnerPagerAdapter;

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-direct {v0, p0, p3, p4, p2}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort$InnerPagerAdapter;-><init>(Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->notifyDataSetChanged()V

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Titles can not be EMPTY !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ViewPager can not be NULL !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showDot(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->showMsg(II)V

    return-void
.end method

.method public showMsg(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090da0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyco/tablayout/widget/MsgView;

    if-eqz v0, :cond_2

    .line 4
    invoke-static {v0, p2}, Lx0/b;->b(Lcom/flyco/tablayout/widget/MsgView;I)V

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mInitSetMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mInitSetMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const/high16 p2, 0x40800000    # 4.0f

    const/high16 v0, 0x40000000    # 2.0f

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->setMsgMargin(IFF)V

    .line 7
    iget-object p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mInitSetMap:Landroid/util/SparseArray;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method protected sp2px(F)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mContext:Landroid/content/Context;

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
