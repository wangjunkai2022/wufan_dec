.class public Lcom/join/mgps/customview/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field protected b:Landroid/widget/ListAdapter;

.field private c:I

.field private d:I

.field protected e:I

.field protected f:I

.field private g:I

.field private h:I

.field protected i:Landroid/widget/Scroller;

.field private j:Landroid/view/GestureDetector;

.field private k:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private m:Landroid/widget/AdapterView$OnItemClickListener;

.field private n:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private o:Z

.field private p:Landroid/database/DataSetObserver;

.field private q:Landroid/view/GestureDetector$OnGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/HorizontalListView;->a:Z

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/HorizontalListView;->c:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/join/mgps/customview/HorizontalListView;->d:I

    const p2, 0x7fffffff

    .line 5
    iput p2, p0, Lcom/join/mgps/customview/HorizontalListView;->g:I

    .line 6
    iput p1, p0, Lcom/join/mgps/customview/HorizontalListView;->h:I

    .line 7
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/HorizontalListView;->k:Ljava/util/Queue;

    .line 8
    iput-boolean p1, p0, Lcom/join/mgps/customview/HorizontalListView;->o:Z

    .line 9
    new-instance p1, Lcom/join/mgps/customview/HorizontalListView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/HorizontalListView$a;-><init>(Lcom/join/mgps/customview/HorizontalListView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->p:Landroid/database/DataSetObserver;

    .line 10
    new-instance p1, Lcom/join/mgps/customview/HorizontalListView$c;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/HorizontalListView$c;-><init>(Lcom/join/mgps/customview/HorizontalListView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->q:Landroid/view/GestureDetector$OnGestureListener;

    .line 11
    invoke-direct {p0}, Lcom/join/mgps/customview/HorizontalListView;->k()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/HorizontalListView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/HorizontalListView;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/join/mgps/customview/HorizontalListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/HorizontalListView;->p()V

    return-void
.end method

.method static synthetic c(Lcom/join/mgps/customview/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/HorizontalListView;->m:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/HorizontalListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/HorizontalListView;->c:I

    return p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/HorizontalListView;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/customview/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/HorizontalListView;->n:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object p0
.end method

.method private g(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/AdapterView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 4
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result p2

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private h(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/customview/HorizontalListView;->j(II)V

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 6
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/join/mgps/customview/HorizontalListView;->i(II)V

    return-void
.end method

.method private i(II)V
    .locals 3

    :goto_0
    add-int v0, p1, p2

    if-lez v0, :cond_0

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/HorizontalListView;->c:I

    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/HorizontalListView;->b:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/join/mgps/customview/HorizontalListView;->k:Ljava/util/Queue;

    .line 3
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 4
    invoke-interface {v1, v0, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/customview/HorizontalListView;->g(Landroid/view/View;I)V

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 7
    iget v1, p0, Lcom/join/mgps/customview/HorizontalListView;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/join/mgps/customview/HorizontalListView;->c:I

    .line 8
    iget v1, p0, Lcom/join/mgps/customview/HorizontalListView;->h:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/join/mgps/customview/HorizontalListView;->h:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j(II)V
    .locals 3

    :goto_0
    add-int v0, p1, p2

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/join/mgps/customview/HorizontalListView;->d:I

    iget-object v1, p0, Lcom/join/mgps/customview/HorizontalListView;->b:Landroid/widget/ListAdapter;

    .line 2
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView;->b:Landroid/widget/ListAdapter;

    iget v1, p0, Lcom/join/mgps/customview/HorizontalListView;->d:I

    iget-object v2, p0, Lcom/join/mgps/customview/HorizontalListView;->k:Ljava/util/Queue;

    .line 4
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 5
    invoke-interface {v0, v1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/customview/HorizontalListView;->g(Landroid/view/View;I)V

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p1, v0

    .line 8
    iget v0, p0, Lcom/join/mgps/customview/HorizontalListView;->d:I

    iget-object v1, p0, Lcom/join/mgps/customview/HorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 9
    iget v0, p0, Lcom/join/mgps/customview/HorizontalListView;->e:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/customview/HorizontalListView;->g:I

    .line 10
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/HorizontalListView;->g:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/join/mgps/customview/HorizontalListView;->g:I

    .line 12
    :cond_1
    iget v0, p0, Lcom/join/mgps/customview/HorizontalListView;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/join/mgps/customview/HorizontalListView;->d:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private declared-synchronized k()V
    .locals 3

    monitor-enter p0

    const/4 v0, -0x1

    .line 1
    :try_start_0
    iput v0, p0, Lcom/join/mgps/customview/HorizontalListView;->c:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/HorizontalListView;->d:I

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/HorizontalListView;->h:I

    .line 4
    iput v0, p0, Lcom/join/mgps/customview/HorizontalListView;->e:I

    .line 5
    iput v0, p0, Lcom/join/mgps/customview/HorizontalListView;->f:I

    const v0, 0x7fffffff

    .line 6
    iput v0, p0, Lcom/join/mgps/customview/HorizontalListView;->g:I

    .line 7
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/HorizontalListView;->i:Landroid/widget/Scroller;

    .line 8
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/customview/HorizontalListView;->q:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/join/mgps/customview/HorizontalListView;->j:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private n(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/HorizontalListView;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/join/mgps/customview/HorizontalListView;->h:I

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v4, v0, v3

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 7
    invoke-virtual {v2, v0, p1, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private o(I)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, p1

    if-gtz v2, :cond_0

    .line 3
    iget v2, p0, Lcom/join/mgps/customview/HorizontalListView;->h:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/join/mgps/customview/HorizontalListView;->h:I

    .line 4
    iget-object v2, p0, Lcom/join/mgps/customview/HorizontalListView;->k:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->removeViewInLayout(Landroid/view/View;)V

    .line 6
    iget v1, p0, Lcom/join/mgps/customview/HorizontalListView;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/join/mgps/customview/HorizontalListView;->c:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 10
    iget-object v1, p0, Lcom/join/mgps/customview/HorizontalListView;->k:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->removeViewInLayout(Landroid/view/View;)V

    .line 12
    iget v0, p0, Lcom/join/mgps/customview/HorizontalListView;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/join/mgps/customview/HorizontalListView;->d:I

    .line 13
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private declared-synchronized p()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/customview/HorizontalListView;->k()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/HorizontalListView;->j:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView;->b:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected l(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->i:Landroid/widget/Scroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    return v0
.end method

.method protected m(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView;->i:Landroid/widget/Scroller;

    iget v1, p0, Lcom/join/mgps/customview/HorizontalListView;->f:I

    const/4 v2, 0x0

    neg-float p1, p3

    float-to-int v3, p1

    const/high16 p1, 0x40800000    # 4.0f

    div-float/2addr p4, p1

    float-to-int v4, p4

    const/4 v5, 0x0

    iget v6, p0, Lcom/join/mgps/customview/HorizontalListView;->g:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->b:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lcom/join/mgps/customview/HorizontalListView;->o:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 5
    iget p1, p0, Lcom/join/mgps/customview/HorizontalListView;->e:I

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/customview/HorizontalListView;->k()V

    .line 7
    invoke-virtual {p0}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/HorizontalListView;->f:I

    .line 9
    iput-boolean p2, p0, Lcom/join/mgps/customview/HorizontalListView;->o:Z

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->i:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->i:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrX()I

    move-result p1

    .line 12
    iput p1, p0, Lcom/join/mgps/customview/HorizontalListView;->f:I

    .line 13
    :cond_2
    iget p1, p0, Lcom/join/mgps/customview/HorizontalListView;->f:I

    const/4 p3, 0x1

    if-gtz p1, :cond_3

    .line 14
    iput p2, p0, Lcom/join/mgps/customview/HorizontalListView;->f:I

    .line 15
    iget-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->i:Landroid/widget/Scroller;

    invoke-virtual {p1, p3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 16
    :cond_3
    iget p1, p0, Lcom/join/mgps/customview/HorizontalListView;->f:I

    iget p2, p0, Lcom/join/mgps/customview/HorizontalListView;->g:I

    if-lt p1, p2, :cond_4

    .line 17
    iput p2, p0, Lcom/join/mgps/customview/HorizontalListView;->f:I

    .line 18
    iget-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->i:Landroid/widget/Scroller;

    invoke-virtual {p1, p3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 19
    :cond_4
    iget p1, p0, Lcom/join/mgps/customview/HorizontalListView;->e:I

    iget p2, p0, Lcom/join/mgps/customview/HorizontalListView;->f:I

    sub-int/2addr p1, p2

    .line 20
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/HorizontalListView;->o(I)V

    .line 21
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/HorizontalListView;->h(I)V

    .line 22
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/HorizontalListView;->n(I)V

    .line 23
    iget p1, p0, Lcom/join/mgps/customview/HorizontalListView;->f:I

    iput p1, p0, Lcom/join/mgps/customview/HorizontalListView;->e:I

    .line 24
    iget-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->i:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_5

    .line 25
    new-instance p1, Lcom/join/mgps/customview/HorizontalListView$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/HorizontalListView$b;-><init>(Lcom/join/mgps/customview/HorizontalListView;)V

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized q(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView;->i:Landroid/widget/Scroller;

    iget v1, p0, Lcom/join/mgps/customview/HorizontalListView;->f:I

    mul-int/lit8 v2, v1, 0x2

    sub-int/2addr p1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView;->b:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/HorizontalListView;->p:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->b:Landroid/widget/ListAdapter;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView;->p:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/customview/HorizontalListView;->p()V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->m:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->n:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    return-void
.end method
