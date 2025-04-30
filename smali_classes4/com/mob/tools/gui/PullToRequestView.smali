.class public Lcom/mob/tools/gui/PullToRequestView;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static final FAULT_TOLERANCE_RANGE:I = 0xa

.field private static final MIN_REF_TIME:J = 0x3e8L


# instance fields
.field private adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

.field private bodyView:Landroid/view/View;

.field private downY:F

.field private footerHeight:I

.field private footerView:Landroid/view/View;

.field private headerHeight:I

.field private headerView:Landroid/view/View;

.field private pullTime:J

.field private pullingDownLock:Z

.field private pullingUpLock:Z

.field private state:I

.field private stopAct:Ljava/lang/Runnable;

.field private top:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/mob/tools/gui/PullToRequestView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->reversePulling()V

    return-void
.end method

.method private canPullDown()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullingDownLock:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRequestAdatper;->isPullDownReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canPullUp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullingUpLock:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRequestAdatper;->isPullUpReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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
    new-instance v0, Lcom/mob/tools/gui/PullToRequestView$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/gui/PullToRequestView$1;-><init>(Lcom/mob/tools/gui/PullToRequestView;)V

    iput-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->stopAct:Ljava/lang/Runnable;

    return-void
.end method

.method private performRequestNext()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullTime:J

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->state:I

    .line 3
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRequestAdatper;->onRequestNext()V

    :cond_0
    return-void
.end method

.method private reversePulling()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 3
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->state:I

    .line 4
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRequestAdatper;->onReversed()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_19

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/16 v3, 0x64

    const/4 v4, 0x0

    if-eq v0, v2, :cond_f

    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_f

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 3
    iget v5, p0, Lcom/mob/tools/gui/PullToRequestView;->state:I

    const/high16 v6, 0x40000000    # 2.0f

    if-eq v5, v1, :cond_c

    if-eq v5, v2, :cond_a

    .line 4
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    if-lez v1, :cond_3

    int-to-float v1, v1

    .line 5
    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    sub-float v2, v0, v2

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    if-gez v1, :cond_1

    .line 6
    iput v4, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 7
    :cond_1
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v4, v1}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 8
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    if-eqz v2, :cond_2

    .line 9
    iget v4, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullDown(I)V

    .line 10
    :cond_2
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    if-gez v1, :cond_6

    int-to-float v1, v1

    .line 11
    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    sub-float v2, v0, v2

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    if-lez v1, :cond_4

    .line 12
    iput v4, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 13
    :cond_4
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v4, v1}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 14
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    if-eqz v1, :cond_5

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->footerHeight:I

    if-eqz v2, :cond_5

    .line 15
    iget v4, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v4, v4

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullUp(I)V

    .line 16
    :cond_5
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto/16 :goto_0

    .line 17
    :cond_6
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    sub-float v2, v0, v1

    const/high16 v5, 0x41200000    # 10.0f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_8

    .line 18
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->canPullDown()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 19
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    sub-float v2, v0, v2

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v1, v1

    .line 20
    invoke-virtual {p0, v4, v1}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 21
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    if-eqz v1, :cond_7

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    if-eqz v2, :cond_7

    .line 22
    iget v4, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v4, v4

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullUp(I)V

    .line 23
    :cond_7
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto :goto_0

    :cond_8
    sub-float/2addr v1, v0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_e

    .line 24
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->canPullUp()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 25
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    sub-float v2, v0, v2

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v1, v1

    .line 26
    invoke-virtual {p0, v4, v1}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 27
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    if-eqz v1, :cond_9

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->footerHeight:I

    if-eqz v2, :cond_9

    .line 28
    iget v4, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v4, v4

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullUp(I)V

    .line 29
    :cond_9
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto :goto_0

    .line 30
    :cond_a
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    sub-float v2, v0, v2

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    if-gez v1, :cond_b

    .line 31
    iput v4, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 32
    :cond_b
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v4, v1}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 33
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto :goto_0

    .line 34
    :cond_c
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    sub-float v2, v0, v2

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    if-lez v1, :cond_d

    .line 35
    iput v4, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    .line 36
    :cond_d
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v4, v1}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 37
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 38
    :cond_e
    :goto_0
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    goto/16 :goto_2

    .line 39
    :cond_f
    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->state:I

    if-eq v0, v1, :cond_18

    if-eqz v0, :cond_11

    if-eq v0, v2, :cond_10

    goto :goto_2

    .line 40
    :cond_10
    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v0, v0

    .line 41
    invoke-virtual {p0, v4, v0}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    goto :goto_2

    .line 42
    :cond_11
    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    if-le v0, v1, :cond_13

    .line 43
    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v0, v1

    .line 44
    invoke-virtual {p0, v4, v0}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 45
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    if-eqz v0, :cond_12

    .line 46
    invoke-virtual {v0, v3}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullDown(I)V

    .line 47
    :cond_12
    invoke-virtual {p0}, Lcom/mob/tools/gui/PullToRequestView;->performFresh()V

    .line 48
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto :goto_2

    .line 49
    :cond_13
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->footerHeight:I

    neg-int v2, v1

    if-ge v0, v2, :cond_15

    neg-int v0, v1

    .line 50
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v0, v0

    .line 51
    invoke-virtual {p0, v4, v0}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 52
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    if-eqz v0, :cond_14

    .line 53
    invoke-virtual {v0, v3}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullUp(I)V

    .line 54
    :cond_14
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->performRequestNext()V

    .line 55
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto :goto_2

    :cond_15
    if-eqz v0, :cond_1a

    .line 56
    invoke-virtual {p0, v4, v4}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 57
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    if-eqz v0, :cond_17

    .line 58
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    if-lez v1, :cond_16

    .line 59
    invoke-virtual {v0, v4}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullDown(I)V

    goto :goto_1

    .line 60
    :cond_16
    invoke-virtual {v0, v4}, Lcom/mob/tools/gui/PullToRequestAdatper;->onPullUp(I)V

    .line 61
    :cond_17
    :goto_1
    iput v4, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    goto :goto_2

    .line 62
    :cond_18
    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->footerHeight:I

    neg-int v0, v0

    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v0, v0

    .line 63
    invoke-virtual {p0, v4, v0}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    goto :goto_2

    .line 64
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->downY:F

    .line 65
    :cond_1a
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public lockPullingDown()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullingDownLock:Z

    return-void
.end method

.method public lockPullingUp()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullingUpLock:Z

    return-void
.end method

.method protected performFresh()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullTime:J

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->state:I

    .line 3
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRequestAdatper;->onRefresh()V

    :cond_0
    return-void
.end method

.method public performPullingDown(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v0, v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/mob/tools/gui/PullToRequestView;->performFresh()V

    :cond_0
    return-void
.end method

.method public performPullingUp(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->footerHeight:I

    neg-int v0, v0

    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->top:I

    neg-int v0, v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->performRequestNext()V

    :cond_0
    return-void
.end method

.method public releasePullingDownLock()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullingDownLock:Z

    return-void
.end method

.method public releasePullingUpLock()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->pullingUpLock:Z

    return-void
.end method

.method public setAdapter(Lcom/mob/tools/gui/PullToRequestAdatper;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/mob/tools/gui/PullToRequestView;->adapter:Lcom/mob/tools/gui/PullToRequestAdatper;

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 3
    invoke-virtual {p1}, Lcom/mob/tools/gui/PullToRequestAdatper;->getBodyView()Lcom/mob/tools/gui/Scrollable;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->bodyView:Landroid/view/View;

    .line 4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xa

    .line 7
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 8
    iget-object v4, p0, Lcom/mob/tools/gui/PullToRequestView;->bodyView:Landroid/view/View;

    invoke-virtual {p0, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    invoke-virtual {p1}, Lcom/mob/tools/gui/PullToRequestAdatper;->getHeaderView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->headerView:Landroid/view/View;

    .line 10
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->headerView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4}, Landroid/view/View;->measure(II)V

    .line 12
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->headerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    .line 13
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    invoke-direct {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 15
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17
    iget v3, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    neg-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 18
    iget-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->headerView:Landroid/view/View;

    invoke-virtual {p0, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    invoke-virtual {p1}, Lcom/mob/tools/gui/PullToRequestAdatper;->getFooterView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/gui/PullToRequestView;->footerView:Landroid/view/View;

    .line 20
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object p1, p0, Lcom/mob/tools/gui/PullToRequestView;->footerView:Landroid/view/View;

    invoke-virtual {p1, v4, v4}, Landroid/view/View;->measure(II)V

    .line 22
    iget-object p1, p0, Lcom/mob/tools/gui/PullToRequestView;->footerView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/mob/tools/gui/PullToRequestView;->footerHeight:I

    .line 23
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    invoke-direct {p1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 24
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 25
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xc

    .line 26
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 27
    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->headerHeight:I

    neg-int v0, v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 28
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->footerView:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public stopPulling()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/mob/tools/gui/PullToRequestView;->pullTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 3
    iget-object v4, p0, Lcom/mob/tools/gui/PullToRequestView;->stopAct:Ljava/lang/Runnable;

    sub-long/2addr v2, v0

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->stopAct:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
