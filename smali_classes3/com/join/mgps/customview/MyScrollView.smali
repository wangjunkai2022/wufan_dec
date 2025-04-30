.class public Lcom/join/mgps/customview/MyScrollView;
.super Landroid/widget/ScrollView;
.source "MyScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/MyScrollView$c;,
        Lcom/join/mgps/customview/MyScrollView$d;,
        Lcom/join/mgps/customview/MyScrollView$b;
    }
.end annotation


# instance fields
.field private a:Lcom/join/mgps/customview/MyScrollView$b;

.field private b:Z

.field private c:Lcom/join/mgps/customview/MyScrollView$c;

.field private d:I

.field private e:Landroid/view/GestureDetector;

.field f:Landroid/view/View$OnTouchListener;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/MyScrollView;->b:Z

    .line 3
    new-instance p1, Lcom/join/mgps/customview/MyScrollView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/MyScrollView$a;-><init>(Lcom/join/mgps/customview/MyScrollView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/MyScrollView;->g:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/join/mgps/customview/MyScrollView;->b:Z

    .line 9
    new-instance p1, Lcom/join/mgps/customview/MyScrollView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/MyScrollView$a;-><init>(Lcom/join/mgps/customview/MyScrollView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/MyScrollView;->g:Landroid/os/Handler;

    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    if-lt p1, p2, :cond_0

    .line 11
    new-instance p1, Landroid/view/GestureDetector;

    new-instance p2, Lcom/join/mgps/customview/MyScrollView$d;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/MyScrollView$d;-><init>(Lcom/join/mgps/customview/MyScrollView;)V

    invoke-direct {p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/join/mgps/customview/MyScrollView;->e:Landroid/view/GestureDetector;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/customview/MyScrollView;->b:Z

    .line 6
    new-instance p1, Lcom/join/mgps/customview/MyScrollView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/MyScrollView$a;-><init>(Lcom/join/mgps/customview/MyScrollView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/MyScrollView;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/MyScrollView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/MyScrollView;->d:I

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/MyScrollView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/MyScrollView;->d:I

    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/MyScrollView;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/MyScrollView;->g:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/MyScrollView;)Lcom/join/mgps/customview/MyScrollView$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/MyScrollView;->a:Lcom/join/mgps/customview/MyScrollView$b;

    return-object p0
.end method


# virtual methods
.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/MyScrollView;->b:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xb

    if-lt v0, v3, :cond_2

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/MyScrollView;->e:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/join/mgps/customview/MyScrollView;->b:Z

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v2

    .line 4
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/join/mgps/customview/MyScrollView;->b:Z

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result p1

    add-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->computeVerticalScrollRange()I

    move-result p1

    if-lt p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/MyScrollView;->c:Lcom/join/mgps/customview/MyScrollView$c;

    invoke-interface {p1}, Lcom/join/mgps/customview/MyScrollView$c;->a()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/MyScrollView;->a:Lcom/join/mgps/customview/MyScrollView$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/join/mgps/customview/MyScrollView;->b:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    iput v2, p0, Lcom/join/mgps/customview/MyScrollView;->d:I

    invoke-interface {v0, v2}, Lcom/join/mgps/customview/MyScrollView$b;->a(I)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/MyScrollView;->g:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnScrollListener(Lcom/join/mgps/customview/MyScrollView$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyScrollView;->a:Lcom/join/mgps/customview/MyScrollView$b;

    return-void
.end method

.method public setOtherTouchEvent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/MyScrollView;->b:Z

    return-void
.end method

.method public setScrollBottomListener(Lcom/join/mgps/customview/MyScrollView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyScrollView;->c:Lcom/join/mgps/customview/MyScrollView$c;

    return-void
.end method
