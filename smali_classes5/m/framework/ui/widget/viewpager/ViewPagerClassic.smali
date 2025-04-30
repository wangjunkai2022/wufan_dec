.class public Lm/framework/ui/widget/viewpager/ViewPagerClassic;
.super Landroid/view/ViewGroup;
.source "ViewPagerClassic.java"


# static fields
.field private static final SNAP_VELOCITY:I = 0x1f4

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

.field private currentScreen:I

.field private lastMotionX:F

.field private lastMotionY:F

.field private mMaximumVelocity:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private scroller:Landroid/widget/Scroller;

.field private touchSlop:I

.field private touchState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    .line 5
    invoke-direct {p0, p1}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->init(Landroid/content/Context;)V

    return-void
.end method

.method private handleInterceptMove(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 3
    iget v1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->lastMotionX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 4
    iget v2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->lastMotionY:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 5
    iget v2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchSlop:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-le p1, v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-nez v1, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    if-eqz v1, :cond_3

    .line 6
    iput v4, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    .line 7
    iput v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->lastMotionX:F

    :cond_3
    return-void
.end method

.method private handleScrollMove(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 3
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->lastMotionX:F

    sub-float/2addr v0, p1

    float-to-int v0, v0

    .line 4
    iput p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->lastMotionX:F

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
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lm/framework/ui/widget/viewpager/ViewPagerClassic$1;

    invoke-direct {v2, p0}, Lm/framework/ui/widget/viewpager/ViewPagerClassic$1;-><init>(Lm/framework/ui/widget/viewpager/ViewPagerClassic;)V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    .line 2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchSlop:I

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mMaximumVelocity:I

    return-void
.end method

.method private scrollToScreen(IZ)V
    .locals 8

    .line 2
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v2, v0, :cond_1

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    mul-int p1, p1, v0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    sub-int v5, p1, v0

    .line 8
    iget-object v2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    div-int/lit8 v1, p1, 0x2

    move v7, v1

    :goto_1
    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 6
    iget-object v1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

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
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    if-eq v0, v1, :cond_3

    .line 11
    iget-object v2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v2, v1, v0}, Lm/framework/ui/widget/viewpager/ViewPagerAdapter;->onScreenChange(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v0

    .line 3
    iget v2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    if-lez v2, :cond_1

    add-int/lit8 v2, v2, -0x1

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 5
    :cond_1
    iget v2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 6
    iget v2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 7
    iget v2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1

    :cond_0
    const/16 v0, 0x11

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    .line 3
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    if-lez v0, :cond_2

    sub-int/2addr v0, v1

    .line 4
    invoke-virtual {p0, v0}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scrollToScreen(I)V

    return v1

    :cond_1
    const/16 v0, 0x42

    if-ne p2, v0, :cond_2

    .line 5
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_2

    .line 6
    iget p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scrollToScreen(I)V

    return v1

    .line 7
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public getCurrentScreen()I
    .locals 1

    .line 1
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

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
    iget v3, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    if-eqz v3, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v3, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_1

    .line 4
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5
    :cond_1
    iget-object v3, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

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
    invoke-direct {p0, p1}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->handleInterceptMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10
    :cond_4
    iput v3, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    goto :goto_0

    .line 11
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 13
    iput v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->lastMotionX:F

    .line 14
    iput p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->lastMotionY:F

    .line 15
    iget-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v2

    iput p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    .line 16
    :goto_0
    iget p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v3
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 1
    iget-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-lt p3, p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    add-int v2, v0, p4

    .line 5
    invoke-virtual {v1, v0, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    move v0, v2

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lm/framework/utils/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 5
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v2, p1, :cond_2

    .line 6
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 7
    invoke-super {p0, p2, v4}, Landroid/view/ViewGroup;->onMeasure(II)V

    :goto_1
    if-lt v1, p1, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p2, v4}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 11
    invoke-virtual {v4, p2, v1}, Landroid/view/View;->measure(II)V

    .line 12
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-le v4, v3, :cond_3

    move v3, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4
    :cond_1
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

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
    iput v1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    goto/16 :goto_1

    .line 8
    :cond_3
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    if-ne v0, v3, :cond_4

    .line 9
    invoke-direct {p0, p1}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->handleScrollMove(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 10
    :cond_4
    invoke-virtual {p0, p1}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 11
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    if-ne v0, v3, :cond_b

    .line 12
    invoke-direct {p0, p1}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->handleScrollMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 13
    :cond_5
    iget p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    if-ne p1, v3, :cond_8

    .line 14
    iget-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    .line 15
    iget v2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 16
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    float-to-int p1, p1

    const/16 v0, 0x1f4

    if-le p1, v0, :cond_6

    .line 17
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    if-lez v0, :cond_6

    sub-int/2addr v0, v3

    .line 18
    invoke-virtual {p0, v0}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scrollToScreen(I)V

    goto :goto_0

    :cond_6
    const/16 v0, -0x1f4

    if-ge p1, v0, :cond_7

    .line 19
    iget p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-ge p1, v0, :cond_7

    .line 20
    iget p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scrollToScreen(I)V

    goto :goto_0

    .line 21
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    div-int/lit8 v2, p1, 0x2

    add-int/2addr v0, v2

    div-int/2addr v0, p1

    .line 23
    invoke-virtual {p0, v0}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scrollToScreen(I)V

    .line 24
    :goto_0
    iget-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_8

    .line 25
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 27
    :cond_8
    iput v1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    goto :goto_1

    .line 28
    :cond_9
    iget p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    if-eqz p1, :cond_b

    .line 29
    iget-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_a

    .line 30
    iget-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 31
    :cond_a
    iput v2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->lastMotionX:F

    :cond_b
    :goto_1
    return v3
.end method

.method public scrollLeft()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scrollToScreen(I)V

    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scrollToScreen(I)V

    :cond_1
    return-void
.end method

.method public scrollToScreen(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scrollToScreen(IZ)V

    return-void
.end method

.method public setAdapter(Lm/framework/ui/widget/viewpager/ViewPagerAdapter;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 4
    iget-object v1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    if-nez v1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lm/framework/ui/widget/viewpager/ViewPagerAdapter;->getCount()I

    move-result v1

    :goto_0
    if-lt v0, v1, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1, v0, p0}, Lm/framework/ui/widget/viewpager/ViewPagerAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setCurrentScreen(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 4
    :cond_1
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 6
    iget-object v2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    invoke-virtual {v2, p1, v0}, Lm/framework/ui/widget/viewpager/ViewPagerAdapter;->onScreenChange(II)V

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lm/framework/utils/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    .line 8
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    mul-int v0, v0, p1

    .line 9
    iget-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    return-void
.end method
