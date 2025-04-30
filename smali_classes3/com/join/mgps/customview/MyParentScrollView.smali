.class public Lcom/join/mgps/customview/MyParentScrollView;
.super Landroid/widget/ScrollView;
.source "MyParentScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/MyParentScrollView$b;
    }
.end annotation


# instance fields
.field private a:Lcom/join/mgps/customview/MyParentScrollView$b;

.field private b:I

.field public c:Z

.field private d:Landroid/os/Handler;

.field private e:F

.field private f:F

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/join/mgps/customview/MyParentScrollView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/MyParentScrollView$a;-><init>(Lcom/join/mgps/customview/MyParentScrollView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/MyParentScrollView;->d:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p1, Lcom/join/mgps/customview/MyParentScrollView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/MyParentScrollView$a;-><init>(Lcom/join/mgps/customview/MyParentScrollView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/MyParentScrollView;->d:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lcom/join/mgps/customview/MyParentScrollView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/MyParentScrollView$a;-><init>(Lcom/join/mgps/customview/MyParentScrollView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/MyParentScrollView;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/MyParentScrollView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/MyParentScrollView;->b:I

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/MyParentScrollView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/MyParentScrollView;->b:I

    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/MyParentScrollView;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/MyParentScrollView;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/MyParentScrollView;)Lcom/join/mgps/customview/MyParentScrollView$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/MyParentScrollView;->a:Lcom/join/mgps/customview/MyParentScrollView$b;

    return-object p0
.end method


# virtual methods
.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/MyParentScrollView;->c:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 4
    iget v2, p0, Lcom/join/mgps/customview/MyParentScrollView;->e:F

    iget v3, p0, Lcom/join/mgps/customview/MyParentScrollView;->g:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/join/mgps/customview/MyParentScrollView;->e:F

    .line 5
    iget v2, p0, Lcom/join/mgps/customview/MyParentScrollView;->f:F

    iget v3, p0, Lcom/join/mgps/customview/MyParentScrollView;->h:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/join/mgps/customview/MyParentScrollView;->f:F

    .line 6
    iput v0, p0, Lcom/join/mgps/customview/MyParentScrollView;->g:F

    .line 7
    iput v1, p0, Lcom/join/mgps/customview/MyParentScrollView;->h:F

    .line 8
    iget v0, p0, Lcom/join/mgps/customview/MyParentScrollView;->e:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/join/mgps/customview/MyParentScrollView;->f:F

    iput v0, p0, Lcom/join/mgps/customview/MyParentScrollView;->e:F

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/MyParentScrollView;->g:F

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/MyParentScrollView;->h:F

    .line 12
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/MyParentScrollView;->a:Lcom/join/mgps/customview/MyParentScrollView$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/MyParentScrollView;->b:I

    invoke-interface {v0, v1}, Lcom/join/mgps/customview/MyParentScrollView$b;->a(I)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/MyParentScrollView;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setIsInnerScroll(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/MyParentScrollView;->c:Z

    return-void
.end method

.method public setOnScrollListener(Lcom/join/mgps/customview/MyParentScrollView$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyParentScrollView;->a:Lcom/join/mgps/customview/MyParentScrollView$b;

    return-void
.end method
