.class public Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;
.super Landroid/widget/RelativeLayout;
.source "PullToRefreshView.java"


# static fields
.field private static final MIN_REF_TIME:J = 0x3e8L


# instance fields
.field private adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

.field private bodyView:Landroid/view/View;

.field private downY:F

.field private headerHeight:I

.field private headerView:Landroid/view/View;

.field private pullingLock:Z

.field private refreshTime:J

.field private requesting:Z

.field private stopAct:Ljava/lang/Runnable;

.field private top:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->init()V

    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->reversePulling()V

    return-void
.end method

.method static synthetic access$1(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->stopRequest()V

    return-void
.end method

.method private canPull()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->pullingLock:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->isPullReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    const/4 v4, 0x3

    .line 4
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    return-object p1
.end method

.method private init()V
    .locals 1

    .line 1
    new-instance v0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView$1;

    invoke-direct {v0, p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView$1;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V

    iput-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->stopAct:Ljava/lang/Runnable;

    return-void
.end method

.method private performRequest()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->refreshTime:J

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->requesting:Z

    .line 3
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->onRequest()V

    :cond_0
    return-void
.end method

.method private reversePulling()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 3
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->onReversed()V

    :cond_0
    return-void
.end method

.method private stopRequest()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->requesting:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 3
    iget-boolean v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->requesting:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->canPull()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4
    :cond_1
    iget v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    int-to-float v1, v1

    iget v4, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->downY:F

    sub-float v4, v0, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    if-lez v1, :cond_3

    neg-int v1, v1

    .line 5
    invoke-virtual {p0, v3, v1}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 6
    iget-boolean v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->requesting:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    if-eqz v1, :cond_2

    .line 7
    iget v3, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    mul-int/lit8 v3, v3, 0x64

    iget v2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerHeight:I

    div-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->onPullDown(I)V

    .line 8
    :cond_2
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_3
    iput v3, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    .line 10
    invoke-virtual {p0, v3, v3}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 11
    :cond_4
    :goto_0
    iput v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->downY:F

    goto :goto_1

    .line 12
    :cond_5
    iget-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->requesting:Z

    if-nez v0, :cond_8

    .line 13
    iget v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    iget v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerHeight:I

    if-le v0, v1, :cond_7

    .line 14
    iput v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    neg-int v0, v1

    .line 15
    invoke-virtual {p0, v3, v0}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 16
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {v0, v2}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->onPullDown(I)V

    .line 18
    :cond_6
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->performRequest()V

    .line 19
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_a

    .line 20
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->reversePulling()V

    .line 21
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    if-eqz v0, :cond_a

    .line 22
    invoke-virtual {v0, v3}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->onPullDown(I)V

    goto :goto_1

    .line 23
    :cond_8
    iget v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerHeight:I

    iput v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    neg-int v0, v0

    .line 24
    invoke-virtual {p0, v3, v0}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    goto :goto_1

    .line 25
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->downY:F

    .line 26
    :cond_a
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public lockPulling()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->pullingLock:Z

    return-void
.end method

.method public performPulling(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerHeight:I

    iput v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    neg-int v0, v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->performRequest()V

    :cond_0
    return-void
.end method

.method public releaseLock()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->pullingLock:Z

    return-void
.end method

.method public setAdapter(Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 3
    invoke-virtual {p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->getBodyView()Lm/framework/ui/widget/pulltorefresh/Scrollable;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->bodyView:Landroid/view/View;

    .line 4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    const/4 v3, -0x1

    .line 5
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xb

    .line 6
    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v5, 0xa

    .line 7
    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 8
    iget-object v6, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->bodyView:Landroid/view/View;

    invoke-virtual {p0, v6, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    invoke-virtual {p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->getHeaderView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerView:Landroid/view/View;

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 11
    iget-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerHeight:I

    .line 12
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerHeight:I

    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 13
    invoke-virtual {p1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 14
    invoke-virtual {p1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 15
    invoke-virtual {p1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16
    iget v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerHeight:I

    neg-int v0, v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 17
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerView:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public stopPulling()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->refreshTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 3
    iget-object v4, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->stopAct:Ljava/lang/Runnable;

    sub-long/2addr v2, v0

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->stopAct:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
