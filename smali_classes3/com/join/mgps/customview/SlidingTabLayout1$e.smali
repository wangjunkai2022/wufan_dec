.class public Lcom/join/mgps/customview/SlidingTabLayout1$e;
.super Ljava/lang/Object;
.source "SlidingTabLayout1.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabLayout1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/SlidingTabLayout1;


# direct methods
.method protected constructor <init>(Lcom/join/mgps/customview/SlidingTabLayout1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1$e;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1$e;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    iget-object v1, v0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/SlidingTabLayout1;->h(II)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1$e;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    iget-object v0, v0, Lcom/join/mgps/customview/SlidingTabLayout1;->d:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1$e;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    iput p1, v0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    .line 2
    iput p2, v0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:F

    .line 3
    iget-object v0, v0, Lcom/join/mgps/customview/SlidingTabLayout1;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1$e;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    iget-object v1, v0, Lcom/join/mgps/customview/SlidingTabLayout1;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->h(II)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1$e;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1$e;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    iget-object v0, v0, Lcom/join/mgps/customview/SlidingTabLayout1;->d:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1$e;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    invoke-virtual {v0}, Lcom/join/mgps/customview/SlidingTabLayout1;->i()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1$e;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    iget-object v0, v0, Lcom/join/mgps/customview/SlidingTabLayout1;->d:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method
