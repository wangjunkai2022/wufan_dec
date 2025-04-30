.class public Lcom/join/mgps/customview/ViewPagerCompat;
.super Landroidx/viewpager/widget/ViewPager;
.source "ViewPagerCompat.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 13

    move-object v0, p1

    move/from16 v7, p3

    .line 1
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 2
    move-object v8, v0

    check-cast v8, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 5
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    move v12, v1

    :goto_0
    if-ltz v12, :cond_1

    .line 6
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int v1, p4, v9

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v1, v3, :cond_0

    add-int v3, p5, v10

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    if-ge v3, v4, :cond_0

    const/4 v4, 0x1

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v5, v1, v5

    .line 10
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v6, v3, v1

    move-object v1, p0

    move v3, v4

    move/from16 v4, p3

    .line 11
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/customview/ViewPagerCompat;->canScroll(Landroid/view/View;ZIII)Z

    move-result v1

    if-eqz v1, :cond_0

    return v11

    :cond_0
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 12
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_2

    neg-int v1, v7

    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    return v0

    :cond_2
    neg-int v1, v7

    .line 14
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
