.class public Lcom/join/mgps/customview/InterceptEventHorizontalScrollView;
.super Lcom/join/mgps/customview/HorizontalRecyclerView;
.source "InterceptEventHorizontalScrollView.java"


# static fields
.field private static final I1:Ljava/lang/String; = "InterceptEventHorizontalScrollView"


# instance fields
.field private H1:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/HorizontalRecyclerView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/InterceptEventHorizontalScrollView;->S0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/InterceptEventHorizontalScrollView;->S0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/customview/InterceptEventHorizontalScrollView;->S0()V

    return-void
.end method

.method private S0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/customview/InterceptEventHorizontalScrollView$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/InterceptEventHorizontalScrollView$a;-><init>(Lcom/join/mgps/customview/InterceptEventHorizontalScrollView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----scrollX---: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InterceptEventHorizontalScrollView"

    invoke-static {v3, v2}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const-string v0, "----onInterceptTouchEvent ACTION_MOVE \u6700\u5de6\u8fb9\u4e0d\u62e6\u622a\u4e8b\u4ef6--- "

    .line 4
    invoke-static {v3, v0}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/customview/InterceptEventHorizontalScrollView;->H1:Z

    if-eqz v0, :cond_2

    const-string v0, "----onInterceptTouchEvent ACTION_MOVE \u6700\u53f3\u8fb9\uff0c\u4e0d\u62e6\u622a\u4e8b\u4ef6--- "

    .line 7
    invoke-static {v3, v0}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "---onInterceptTouchEvent ACTION_MOVE \u4e2d\u95f4\uff0c\u62e6\u622a\u4e8b\u4ef6--- "

    .line 9
    invoke-static {v3, v0}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "---onInterceptTouchEvent ACTION_UP | ACTION_CANCEL "

    .line 11
    invoke-static {v3, v0}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_4
    const-string v0, "----onInterceptTouchEvent ACTION_DOWN--- "

    .line 13
    invoke-static {v3, v0}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :goto_0
    invoke-super {p0, p1}, Lcom/join/mgps/customview/HorizontalRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
