.class public Lm/framework/ui/widget/slidingmenu/BodyContainer;
.super Landroid/widget/HorizontalScrollView;
.source "BodyContainer.java"


# static fields
.field private static final MENU_COVER_ALPHA:I = 0xe6

.field private static final MIN_FLING_VEL:I = 0x1f4


# instance fields
.field private downX:F

.field private maxVelocity:I

.field private menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

.field private tracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x4f000000

    .line 2
    iput v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    .line 3
    iput-object p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 4
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->maxVelocity:I

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->isMenuShown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getShowMenuWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 4
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1

    :cond_1
    const/high16 v0, 0x4f000000

    .line 5
    iput v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    .line 7
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->isMenuShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v2}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getMenuWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v2}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getMenuConfig()Lm/framework/ui/widget/slidingmenu/MenuConfig;

    move-result-object v2

    iget v2, v2, Lm/framework/ui/widget/slidingmenu/MenuConfig;->titleHeight:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 10
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    .line 11
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    mul-int/lit16 p1, p1, 0xe6

    .line 2
    iget-object p2, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {p2}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getMenuWidth()I

    move-result p2

    div-int/2addr p1, p2

    const/4 p2, 0x0

    .line 3
    invoke-static {p1, p2, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 4
    iget-object p2, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {p2}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getMenuCover()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->tracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->tracker:Landroid/view/VelocityTracker;

    .line 3
    :cond_0
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    .line 5
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->isMenuShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v2}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getMenuWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    return v1

    .line 6
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 7
    :cond_2
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->isMenuShown()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getMenuWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    return v1

    :cond_3
    const/high16 p1, 0x4f000000

    .line 8
    iput p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    .line 9
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->tracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    iget v1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->maxVelocity:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 10
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    .line 11
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->tracker:Landroid/view/VelocityTracker;

    .line 13
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    const/high16 v1, 0x43fa0000    # 500.0f

    sub-float v3, p1, v1

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 14
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->showMenu()V

    goto :goto_0

    :cond_4
    add-float/2addr p1, v1

    cmpg-float p1, p1, v4

    if-gez p1, :cond_5

    .line 15
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->hideMenu()V

    goto :goto_0

    .line 16
    :cond_5
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getMenuWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    if-le v0, p1, :cond_6

    .line 17
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->hideMenu()V

    goto :goto_0

    .line 18
    :cond_6
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->showMenu()V

    :goto_0
    return v2
.end method
