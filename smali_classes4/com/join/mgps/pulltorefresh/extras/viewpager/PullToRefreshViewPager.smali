.class public Lcom/join/mgps/pulltorefresh/extras/viewpager/PullToRefreshViewPager;
.super Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;
.source "PullToRefreshViewPager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase<",
        "Landroidx/viewpager/widget/ViewPager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected P(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 1
    new-instance v0, Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f091291

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setId(I)V

    return-object v0
.end method

.method public final getPullToRefreshScrollDirection()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method protected bridge synthetic q(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/pulltorefresh/extras/viewpager/PullToRefreshViewPager;->P(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    return-object p1
.end method

.method protected w()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 2
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method protected x()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 2
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
