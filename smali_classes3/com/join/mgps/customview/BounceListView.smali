.class public Lcom/join/mgps/customview/BounceListView;
.super Landroid/widget/ListView;
.source "BounceListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:I

.field d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/BounceListView;->d(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/BounceListView;->d(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/BounceListView;->d(Landroid/content/Context;)V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c02c6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/BounceListView;->a:Landroid/view/View;

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/BounceListView;->b:Landroid/view/View;

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 5
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v2

    float-to-int v2, v2

    .line 3
    iget v3, p0, Lcom/join/mgps/customview/BounceListView;->d:I

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    .line 4
    iget-object v2, p0, Lcom/join/mgps/customview/BounceListView;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/join/mgps/customview/BounceListView;->b:Landroid/view/View;

    .line 5
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/join/mgps/customview/BounceListView;->b:Landroid/view/View;

    .line 6
    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 7
    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v2

    float-to-int v2, v2

    .line 3
    iget v3, p0, Lcom/join/mgps/customview/BounceListView;->d:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 4
    iget-object v3, p0, Lcom/join/mgps/customview/BounceListView;->a:Landroid/view/View;

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/join/mgps/customview/BounceListView;->a:Landroid/view/View;

    .line 6
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/join/mgps/customview/BounceListView;->a:Landroid/view/View;

    .line 7
    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 8
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, Lcom/join/mgps/customview/BounceListView;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/customview/BounceListView$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/BounceListView$b;-><init>(Lcom/join/mgps/customview/BounceListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0xc8

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected f()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, Lcom/join/mgps/customview/BounceListView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/customview/BounceListView$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/BounceListView$a;-><init>(Lcom/join/mgps/customview/BounceListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0xc8

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/join/mgps/customview/BounceListView;->c:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    const/4 p1, 0x0

    const/16 v0, 0x8

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/join/mgps/customview/BounceListView;->a:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/customview/BounceListView;->a:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/BounceListView;->f()V

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result p2

    sub-int/2addr p4, p3

    if-ne p2, p4, :cond_1

    .line 6
    iget-object p2, p0, Lcom/join/mgps/customview/BounceListView;->b:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/BounceListView;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/customview/BounceListView;->e()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/join/mgps/customview/BounceListView;->c:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/BounceListView;->c(Landroid/view/MotionEvent;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/BounceListView;->b(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/join/mgps/customview/BounceListView;->a:Landroid/view/View;

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/join/mgps/customview/BounceListView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-gtz v1, :cond_3

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/customview/BounceListView;->f()V

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 9
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne v2, v1, :cond_6

    iget-object v0, p0, Lcom/join/mgps/customview/BounceListView;->b:Landroid/view/View;

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getBottom()I

    move-result v1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/join/mgps/customview/BounceListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getBottom()I

    move-result v1

    if-gt v0, v1, :cond_6

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/customview/BounceListView;->e()V

    goto :goto_0

    .line 12
    :cond_5
    iput v0, p0, Lcom/join/mgps/customview/BounceListView;->d:I

    .line 13
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
