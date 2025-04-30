.class public Lcom/join/mgps/customview/HorizontalRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "HorizontalRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/HorizontalRecyclerView$b;
    }
.end annotation


# instance fields
.field private A1:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private B1:D

.field private C1:Z

.field private D1:F

.field private E1:F

.field private F1:I

.field private G1:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const-wide v0, 0x3ff3333333333333L    # 1.2

    .line 2
    iput-wide v0, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->B1:D

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->C1:Z

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/HorizontalRecyclerView;->R0(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide v0, 0x3ff3333333333333L    # 1.2

    .line 6
    iput-wide v0, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->B1:D

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->C1:Z

    .line 8
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/HorizontalRecyclerView;->R0(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide p2, 0x3ff3333333333333L    # 1.2

    .line 10
    iput-wide p2, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->B1:D

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->C1:Z

    .line 12
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/HorizontalRecyclerView;->R0(Landroid/content/Context;)V

    return-void
.end method

.method private R0(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/customview/HorizontalRecyclerView$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/HorizontalRecyclerView$a;-><init>(Lcom/join/mgps/customview/HorizontalRecyclerView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->A1:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->A1:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 4
    iget v2, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->F1:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->G1:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 6
    :cond_1
    iput v0, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->F1:I

    .line 7
    iput v1, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->G1:I

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->F1:I

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->G1:I

    .line 10
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public fling(II)Z
    .locals 4

    int-to-double v0, p1

    .line 1
    iget-wide v2, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->B1:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p1, v0

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 4
    iget v2, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->D1:F

    sub-float/2addr v0, v2

    .line 5
    iget v2, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->E1:F

    sub-float/2addr v1, v2

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->C1:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->D1:F

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->E1:F

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->D1:F

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->E1:F

    .line 12
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/HorizontalRecyclerView;->C1:Z

    return-void
.end method
