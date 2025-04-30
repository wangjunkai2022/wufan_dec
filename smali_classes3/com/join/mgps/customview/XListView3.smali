.class public Lcom/join/mgps/customview/XListView3;
.super Landroid/widget/ListView;
.source "XListView3.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/XListView3$e;
    }
.end annotation


# static fields
.field protected static final A:I = 0x0

.field protected static final B:I = 0x1

.field protected static final C:I = 0x190

.field protected static final D:I = 0x32

.field protected static final E:F = 2.0f

.field public static final z:Ljava/lang/String; = "XListView"


# instance fields
.field protected a:F

.field protected b:F

.field protected c:Landroid/widget/Scroller;

.field protected d:Landroid/widget/AbsListView$OnScrollListener;

.field protected e:Lcom/join/mgps/customview/i;

.field protected f:Lcom/join/mgps/customview/j;

.field protected g:Lcom/join/mgps/customview/XListViewHeader;

.field protected h:Landroid/widget/RelativeLayout;

.field protected i:Landroid/widget/TextView;

.field protected j:I

.field protected k:Z

.field protected l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected m:Lcom/join/mgps/customview/XListViewFooter;

.field protected n:Z

.field protected o:Z

.field protected p:Z

.field protected q:I

.field protected r:I

.field private s:I

.field private t:Z

.field private u:Landroidx/core/view/NestedScrollingChildHelper;

.field v:Landroid/database/DataSetObserver;

.field private w:Lcom/join/mgps/ptr/a;

.field private x:Lcom/join/mgps/customview/j;

.field y:Lcom/join/mgps/customview/XListView3$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/XListView3;->a:F

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/XListView3;->b:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->k:Z

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/join/mgps/customview/XListView3;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/customview/XListView3;->p:Z

    .line 7
    iput v1, p0, Lcom/join/mgps/customview/XListView3;->s:I

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/customview/XListView3;->t:Z

    .line 9
    new-instance v0, Lcom/join/mgps/customview/XListView3$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XListView3$b;-><init>(Lcom/join/mgps/customview/XListView3;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XListView3;->w:Lcom/join/mgps/ptr/a;

    .line 10
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XListView3;->h(Landroid/content/Context;)V

    .line 11
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setFriction(F)V

    .line 12
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 13
    invoke-direct {p0}, Lcom/join/mgps/customview/XListView3;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 15
    iput p2, p0, Lcom/join/mgps/customview/XListView3;->a:F

    .line 16
    iput p2, p0, Lcom/join/mgps/customview/XListView3;->b:F

    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListView3;->k:Z

    .line 18
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/join/mgps/customview/XListView3;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->p:Z

    .line 20
    iput v0, p0, Lcom/join/mgps/customview/XListView3;->s:I

    .line 21
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->t:Z

    .line 22
    new-instance p2, Lcom/join/mgps/customview/XListView3$b;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/XListView3$b;-><init>(Lcom/join/mgps/customview/XListView3;)V

    iput-object p2, p0, Lcom/join/mgps/customview/XListView3;->w:Lcom/join/mgps/ptr/a;

    .line 23
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XListView3;->h(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/join/mgps/customview/XListView3;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 26
    iput p2, p0, Lcom/join/mgps/customview/XListView3;->a:F

    .line 27
    iput p2, p0, Lcom/join/mgps/customview/XListView3;->b:F

    const/4 p2, 0x1

    .line 28
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListView3;->k:Z

    .line 29
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/join/mgps/customview/XListView3;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    iput-boolean p3, p0, Lcom/join/mgps/customview/XListView3;->p:Z

    .line 31
    iput p3, p0, Lcom/join/mgps/customview/XListView3;->s:I

    .line 32
    iput-boolean p3, p0, Lcom/join/mgps/customview/XListView3;->t:Z

    .line 33
    new-instance p2, Lcom/join/mgps/customview/XListView3$b;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/XListView3$b;-><init>(Lcom/join/mgps/customview/XListView3;)V

    iput-object p2, p0, Lcom/join/mgps/customview/XListView3;->w:Lcom/join/mgps/ptr/a;

    .line 34
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XListView3;->h(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0}, Lcom/join/mgps/customview/XListView3;->g()V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/customview/XListView3;)Lcom/join/mgps/customview/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/XListView3;->x:Lcom/join/mgps/customview/j;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XListView3;->u:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/XListView3;->setNestedScrollingEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p1, p0, p3}, Lcom/join/mgps/ptr/a;->d(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/XListView3;->r:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    iget-object v1, p0, Lcom/join/mgps/customview/XListView3;->c:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->postInvalidate()V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView3;->i()V

    .line 6
    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->n:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->u:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->u:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->u:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->u:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->k:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->h:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->n:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    return-void
.end method

.method public getLastCompletelyVisiblePosition()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_2

    const/4 v1, 0x0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    return v0
.end method

.method protected h(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XListView3;->c:Landroid/widget/Scroller;

    .line 2
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 3
    new-instance v0, Lcom/join/mgps/customview/XListViewHeader;

    invoke-direct {v0, p1}, Lcom/join/mgps/customview/XListViewHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XListView3;->g:Lcom/join/mgps/customview/XListViewHeader;

    const v1, 0x7f0912f0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/XListView3;->h:Landroid/widget/RelativeLayout;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->g:Lcom/join/mgps/customview/XListViewHeader;

    const v1, 0x7f0912f4

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/XListView3;->i:Landroid/widget/TextView;

    .line 7
    new-instance v0, Lcom/join/mgps/customview/XListViewFooter;

    invoke-direct {v0, p1}, Lcom/join/mgps/customview/XListViewFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView3;->d()V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView3;->e()V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->u:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method protected i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->d:Landroid/widget/AbsListView$OnScrollListener;

    instance-of v1, v0, Lcom/join/mgps/customview/k;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/join/mgps/customview/k;

    .line 3
    invoke-interface {v0, p0}, Lcom/join/mgps/customview/k;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->u:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized k()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->n:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/join/mgps/customview/XListView3;->q:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget v2, p0, Lcom/join/mgps/customview/XListView3;->q:I

    iget v3, p0, Lcom/join/mgps/customview/XListView3;->s:I

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_0

    const-string v0, "XListView"

    const-string v2, "do-preload"

    .line 2
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 3
    iput-boolean v1, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->e:Lcom/join/mgps/customview/i;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/join/mgps/customview/i;->onLoadMore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->n:Z

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->k:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    return-void
.end method

.method protected m()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/XListView3;->r:I

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/XListView3;->c:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    neg-int v5, v3

    const/16 v6, 0x190

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected n()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->g:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/join/mgps/customview/XListView3;->j:I

    if-gt v3, v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/join/mgps/customview/XListView3;->j:I

    if-le v3, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetHeaderHeight-->"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v5, v0, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    iput v1, p0, Lcom/join/mgps/customview/XListView3;->r:I

    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/XListView3;->c:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x190

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method protected o(I)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->g:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/join/mgps/customview/XListView3;->j:I

    if-gt v2, p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/join/mgps/customview/XListView3;->j:I

    if-le v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput v0, p0, Lcom/join/mgps/customview/XListView3;->r:I

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetHeaderHeight-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->c:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x64

    const/16 v5, 0x190

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onOverScrolled(IIZZ)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->y:Lcom/join/mgps/customview/XListView3$e;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/join/mgps/customview/XListView3$e;->a(IIZZ)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 1
    iput p4, p0, Lcom/join/mgps/customview/XListView3;->q:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->d:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-eqz p2, :cond_0

    add-int/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/join/mgps/customview/XListView3;->q:I

    if-le v0, v1, :cond_1

    :cond_0
    const-string v0, "XListView"

    const-string v1, "onScrollStateChanged"

    const-string v2, "preload"

    .line 4
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView3;->k()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->d:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/XListView3;->a:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XListView3;->a:F

    .line 3
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/XListView3;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XListView3;->b:F

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 6
    iput v1, p0, Lcom/join/mgps/customview/XListView3;->a:F

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/XListView3;->q:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_6

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView3;->r()V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView3;->m()V

    goto/16 :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/XListView3;->a:F

    sub-float/2addr v0, v1

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/XListView3;->a:F

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent  LastVisiblePosition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mTotalItemCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/customview/XListView3;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";mPullLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";mEnablePullLoad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/join/mgps/customview/XListView3;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    iget v2, p0, Lcom/join/mgps/customview/XListView3;->q:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v1

    if-gtz v1, :cond_3

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    if-nez v1, :cond_4

    .line 15
    iget-boolean v1, p0, Lcom/join/mgps/customview/XListView3;->n:Z

    if-eqz v1, :cond_6

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 16
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/XListView3;->w(F)V

    goto :goto_0

    .line 17
    :cond_4
    iget v0, p0, Lcom/join/mgps/customview/XListView3;->s:I

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView3;->k()V

    goto :goto_0

    .line 19
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XListView3;->a:F

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XListView3;->b:F

    .line 21
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 0

    .line 1
    invoke-super/range {p0 .. p9}, Landroid/widget/ListView;->overScrollBy(IIIIIIIIZ)Z

    move-result p1

    return p1
.end method

.method public p()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->f()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->f()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->f()V

    :cond_2
    :goto_0
    return-void
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->n:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    return-void
.end method

.method protected r()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->e:Lcom/join/mgps/customview/i;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/join/mgps/customview/i;->onLoadMore()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->e:Lcom/join/mgps/customview/i;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/join/mgps/customview/i;->onLoadMore()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XListView3;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3
    new-instance v0, Lcom/join/mgps/customview/XListView3$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/XListView3$a;-><init>(Lcom/join/mgps/customview/XListView3;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XListView3;->v:Landroid/database/DataSetObserver;

    .line 4
    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public setCanLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->n:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->u:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setNoMore()V
    .locals 3

    const-string v0, "XListView"

    const-string v1, "setNoMore"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView3;->u()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->n:Z

    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    const v1, 0x7f0912ee

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    new-instance v1, Lcom/join/mgps/customview/XListView3$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/XListView3$d;-><init>(Lcom/join/mgps/customview/XListView3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setOnOverScrolled(Lcom/join/mgps/customview/XListView3$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XListView3;->y:Lcom/join/mgps/customview/XListView3$e;

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XListView3;->d:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setPreLoadCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/XListView3;->s:I

    return-void
.end method

.method public setPullLoadEnable(Lcom/join/mgps/customview/i;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->n:Z

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->t:Z

    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/XListView3;->e:Lcom/join/mgps/customview/i;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    new-instance v0, Lcom/join/mgps/customview/XListView3$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XListView3$c;-><init>(Lcom/join/mgps/customview/XListView3;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPullRefreshEnable(Lcom/join/mgps/customview/j;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XListView3;->x:Lcom/join/mgps/customview/j;

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    iget-object v1, p0, Lcom/join/mgps/customview/XListView3;->w:Lcom/join/mgps/ptr/a;

    invoke-virtual {p1, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    goto/16 :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    iget-object v1, p0, Lcom/join/mgps/customview/XListView3;->w:Lcom/join/mgps/ptr/a;

    invoke-virtual {p1, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    iget-object v1, p0, Lcom/join/mgps/customview/XListView3;->w:Lcom/join/mgps/ptr/a;

    invoke-virtual {p1, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->u:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->u:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method protected t()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->n:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 2

    const-string v0, "XListView"

    const-string v1, "stopLoadMore"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    iget-boolean v1, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/join/mgps/customview/XListView3;->n:Z

    if-eqz v1, :cond_0

    const-string v1, "stopLoadMore-called"

    .line 3
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->C()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->C()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->C()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected w(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v0

    float-to-int p1, p1

    add-int/2addr v0, p1

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListView3;->n:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    if-nez p1, :cond_1

    const/16 p1, 0x32

    if-le v0, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    return-void
.end method

.method protected x(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->g:Lcom/join/mgps/customview/XListViewHeader;

    float-to-int p1, p1

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v1

    add-int/2addr p1, v1

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/XListViewHeader;->setVisibleHeight(I)V

    .line 4
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListView3;->k:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->g:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result p1

    iget v1, p0, Lcom/join/mgps/customview/XListView3;->j:I

    if-le p1, v1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->g:Lcom/join/mgps/customview/XListViewHeader;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->g:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
