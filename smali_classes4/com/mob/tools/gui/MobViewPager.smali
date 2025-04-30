.class public Lcom/mob/tools/gui/MobViewPager;
.super Landroid/view/ViewGroup;


# static fields
.field private static final DECELERATION:I = 0xa

.field private static final SNAP_VELOCITY:I = 0x1f4

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

.field private currentPage:Landroid/view/View;

.field private currentScreen:I

.field private flingVelocity:I

.field private lastMotionX:F

.field private lastMotionY:F

.field private maximumVelocity:I

.field private nextPage:Landroid/view/View;

.field private pageWidth:I

.field private previousPage:Landroid/view/View;

.field private screenCount:I

.field private scroller:Landroid/widget/Scroller;

.field private skipScreen:Z

.field private touchSlop:I

.field private touchState:I

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/mob/tools/gui/MobViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/mob/tools/gui/MobViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mob/tools/gui/MobViewPager;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreenOnUIThread(IZ)V

    return-void
.end method

.method private adjustScroller()V
    .locals 8

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mob/tools/gui/MobViewPager;->skipScreen:Z

    .line 2
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 4
    :cond_0
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    mul-int v0, v0, v1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    sub-int v5, v0, v1

    .line 6
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    if-eqz v5, :cond_1

    .line 7
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private handleInterceptMove(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 3
    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 4
    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionY:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    if-ge p1, v1, :cond_0

    .line 5
    iget p1, p0, Lcom/mob/tools/gui/MobViewPager;->touchSlop:I

    if-le v1, p1, :cond_0

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    .line 7
    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    :cond_0
    return-void
.end method

.method private handleScrollMove(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 3
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    sub-float/2addr v0, p1

    float-to-int v0, v0

    .line 4
    iput p1, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    const/4 p1, 0x0

    if-gez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    if-lez v1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->scrollBy(II)V

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_2

    .line 10
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->scrollBy(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Lcom/mob/tools/gui/MobViewPager$1;

    invoke-direct {v1, p0}, Lcom/mob/tools/gui/MobViewPager$1;-><init>(Lcom/mob/tools/gui/MobViewPager;)V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    .line 3
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->touchSlop:I

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/mob/tools/gui/MobViewPager;->maximumVelocity:I

    return-void
.end method

.method private onScreenChange(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v0, :cond_8

    .line 2
    iget-boolean v0, p0, Lcom/mob/tools/gui/MobViewPager;->skipScreen:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    invoke-virtual {v1, v0, v2, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_7

    .line 10
    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    invoke-virtual {v1, v0, v2, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 12
    :cond_1
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-le v0, p1, :cond_4

    const/4 v0, 0x0

    .line 13
    :goto_0
    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_7

    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    .line 14
    iget-object v4, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    .line 15
    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    iput-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    .line 16
    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    iput-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lt v5, v2, :cond_2

    .line 18
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 19
    :cond_2
    iget v5, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 20
    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v1, v4, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    .line 21
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 22
    :cond_3
    iput-object v4, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 23
    :goto_2
    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    sub-int v4, p1, v4

    if-ge v0, v4, :cond_7

    sub-int v4, p1, v0

    add-int/lit8 v4, v4, -0x1

    .line 24
    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    .line 25
    iget-object v6, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    iput-object v6, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    .line 26
    iget-object v6, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    iput-object v6, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lt v6, v2, :cond_5

    .line 28
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_5
    if-lez v4, :cond_6

    .line 29
    iget-object v6, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v6, v4, v5, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    .line 30
    invoke-virtual {p0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_3

    .line 31
    :cond_6
    iput-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 32
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/gui/ViewPagerAdapter;->onScreenChange(II)V

    :cond_8
    return-void
.end method

.method private scrollToScreenOnUIThread(IZ)V
    .locals 9

    .line 1
    iput-boolean p2, p0, Lcom/mob/tools/gui/MobViewPager;->skipScreen:Z

    .line 2
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    mul-int p1, p1, v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    sub-int v4, p1, v0

    .line 6
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    if-eqz v4, :cond_5

    const/4 p1, 0x0

    if-nez p2, :cond_4

    .line 7
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    .line 8
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->flingVelocity:I

    if-eqz v0, :cond_1

    .line 9
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 10
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const-wide v1, 0x408f400000000000L    # 1000.0

    int-to-double v5, p1

    mul-int p1, p1, p1

    mul-int/lit8 v0, v0, 0x14

    sub-int/2addr p1, v0

    int-to-double v7, p1

    .line 11
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v7

    mul-double v5, v5, v1

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    div-double/2addr v5, v0

    double-to-int p1, v5

    :cond_1
    if-eqz p1, :cond_3

    if-le p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v6, p1

    goto :goto_1

    :cond_3
    :goto_0
    move v6, p2

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    .line 12
    :goto_1
    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 13
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    if-gtz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    .line 6
    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 8
    div-int v3, v1, v2

    .line 9
    rem-int/2addr v1, v2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    const/4 v1, 0x0

    .line 10
    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-eq v0, v1, :cond_3

    .line 11
    invoke-direct {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->onScreenChange(I)V

    .line 12
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 14
    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/mob/tools/gui/ViewPagerAdapter;->onScreenChanging(F)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v0

    .line 3
    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 6
    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 7
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1

    :cond_0
    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    .line 3
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v0, :cond_2

    sub-int/2addr v0, v2

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreenOnUIThread(IZ)V

    return v2

    :cond_1
    const/16 v0, 0x42

    if-ne p2, v0, :cond_2

    .line 5
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_2

    add-int/2addr v0, v2

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreenOnUIThread(IZ)V

    return v2

    .line 7
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public getCurrentScreen()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-eqz v3, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_1

    .line 4
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->handleInterceptMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    .line 10
    :cond_4
    iput v3, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    goto :goto_0

    .line 11
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 13
    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    .line 14
    iput p1, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionY:F

    .line 15
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v2

    iput p1, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    .line 16
    :goto_0
    iget p1, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 2
    iget p1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    mul-int p2, p1, p4

    const/4 p3, 0x0

    if-lez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    sub-int v0, p2, p4

    invoke-virtual {p1, v0, p3, p2, p5}, Landroid/view/View;->layout(IIII)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    add-int v0, p2, p4

    invoke-virtual {p1, p2, p3, v0, p5}, Landroid/view/View;->layout(IIII)V

    .line 5
    iget p1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget p2, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_2

    .line 6
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    add-int/2addr p4, v0

    invoke-virtual {p1, v0, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 7
    :cond_2
    iget p1, p0, Lcom/mob/tools/gui/MobViewPager;->pageWidth:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    if-eq p1, p2, :cond_3

    .line 8
    iget p1, p0, Lcom/mob/tools/gui/MobViewPager;->pageWidth:I

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/mob/tools/gui/MobViewPager;->pageWidth:I

    if-eqz p1, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/mob/tools/gui/MobViewPager;->adjustScroller()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    if-gtz p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 5
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 6
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 9
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v3, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto/16 :goto_1

    .line 7
    :cond_2
    iput v1, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    goto/16 :goto_1

    .line 8
    :cond_3
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-ne v0, v3, :cond_4

    .line 9
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->handleScrollMove(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 10
    :cond_4
    invoke-virtual {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-ne v0, v3, :cond_b

    .line 11
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->handleScrollMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 12
    :cond_5
    iget p1, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-ne p1, v3, :cond_8

    .line 13
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->maximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 14
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/mob/tools/gui/MobViewPager;->flingVelocity:I

    const/16 v0, 0x1f4

    if-le p1, v0, :cond_6

    .line 15
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v0, :cond_6

    sub-int/2addr v0, v3

    .line 16
    invoke-direct {p0, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreenOnUIThread(IZ)V

    goto :goto_0

    :cond_6
    const/16 v0, -0x1f4

    if-ge p1, v0, :cond_7

    .line 17
    iget p1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    sub-int/2addr v0, v3

    if-ge p1, v0, :cond_7

    add-int/2addr p1, v3

    .line 18
    invoke-direct {p0, p1, v1}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreenOnUIThread(IZ)V

    goto :goto_0

    .line 19
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    div-int/lit8 v2, p1, 0x2

    add-int/2addr v0, v2

    div-int/2addr v0, p1

    .line 21
    invoke-direct {p0, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreenOnUIThread(IZ)V

    .line 22
    :goto_0
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_8

    .line 23
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    .line 25
    :cond_8
    iput v1, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    goto :goto_1

    .line 26
    :cond_9
    iget p1, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-eqz p1, :cond_b

    .line 27
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_a

    .line 28
    iget-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 29
    :cond_a
    iput v2, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    :cond_b
    :goto_1
    return v3
.end method

.method public scrollLeft(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V

    :cond_0
    return-void
.end method

.method public scrollRight(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V

    :cond_0
    return-void
.end method

.method public scrollToScreen(IZ)V
    .locals 1

    .line 1
    new-instance v0, Lcom/mob/tools/gui/MobViewPager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/mob/tools/gui/MobViewPager$2;-><init>(Lcom/mob/tools/gui/MobViewPager;IZ)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scrollToScreen(IZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V

    return-void
.end method

.method public setAdapter(Lcom/mob/tools/gui/ViewPagerAdapter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/ViewPagerAdapter;->setMobViewPager(Lcom/mob/tools/gui/MobViewPager;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->setMobViewPager(Lcom/mob/tools/gui/MobViewPager;)V

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 5
    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/mob/tools/gui/ViewPagerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    if-gtz v1, :cond_3

    .line 8
    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void

    .line 10
    :cond_3
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    const/4 v2, 0x1

    if-gt v1, v0, :cond_4

    sub-int/2addr v1, v2

    .line 11
    invoke-direct {p0, v1, v2}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreenOnUIThread(IZ)V

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 13
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v0, :cond_5

    sub-int/2addr v0, v2

    .line 14
    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    invoke-virtual {p1, v0, v1, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16
    :cond_5
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    invoke-virtual {p1, v0, v1, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_6

    add-int/2addr v0, v2

    .line 19
    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    invoke-virtual {p1, v0, v1, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    .line 20
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    :goto_0
    return-void
.end method
