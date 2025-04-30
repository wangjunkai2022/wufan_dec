.class public Lcom/join/mgps/customview/ObservableListView;
.super Landroid/widget/ListView;
.source "ObservableListView.java"


# static fields
.field private static final t:Ljava/lang/String;


# instance fields
.field private a:Ll1/j;

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/util/SparseIntArray;

.field private f:I

.field private g:I

.field private h:Lcom/join/mgps/enums/ScrollState;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Landroid/widget/AbsListView$OnScrollListener;

.field private m:Landroid/widget/AbsListView$OnScrollListener;

.field private n:F

.field private o:F

.field p:F

.field q:F

.field r:Z

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/customview/ObservableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/customview/ObservableListView;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/ObservableListView;->c:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/customview/ObservableListView;->k:Z

    .line 4
    new-instance v0, Lcom/join/mgps/customview/ObservableListView$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ObservableListView$a;-><init>(Lcom/join/mgps/customview/ObservableListView;)V

    iput-object v0, p0, Lcom/join/mgps/customview/ObservableListView;->m:Landroid/widget/AbsListView$OnScrollListener;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/customview/ObservableListView;->n:F

    .line 6
    iput v0, p0, Lcom/join/mgps/customview/ObservableListView;->o:F

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/customview/ObservableListView;->r:Z

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/ObservableListView;->s:I

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/customview/ObservableListView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/join/mgps/customview/ObservableListView;->c:I

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/join/mgps/customview/ObservableListView;->k:Z

    .line 13
    new-instance p2, Lcom/join/mgps/customview/ObservableListView$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/ObservableListView$a;-><init>(Lcom/join/mgps/customview/ObservableListView;)V

    iput-object p2, p0, Lcom/join/mgps/customview/ObservableListView;->m:Landroid/widget/AbsListView$OnScrollListener;

    const/4 p2, 0x0

    .line 14
    iput p2, p0, Lcom/join/mgps/customview/ObservableListView;->n:F

    .line 15
    iput p2, p0, Lcom/join/mgps/customview/ObservableListView;->o:F

    .line 16
    iput-boolean p1, p0, Lcom/join/mgps/customview/ObservableListView;->r:Z

    .line 17
    iput p1, p0, Lcom/join/mgps/customview/ObservableListView;->s:I

    .line 18
    invoke-direct {p0}, Lcom/join/mgps/customview/ObservableListView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/join/mgps/customview/ObservableListView;->c:I

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/join/mgps/customview/ObservableListView;->k:Z

    .line 22
    new-instance p2, Lcom/join/mgps/customview/ObservableListView$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/ObservableListView$a;-><init>(Lcom/join/mgps/customview/ObservableListView;)V

    iput-object p2, p0, Lcom/join/mgps/customview/ObservableListView;->m:Landroid/widget/AbsListView$OnScrollListener;

    const/4 p2, 0x0

    .line 23
    iput p2, p0, Lcom/join/mgps/customview/ObservableListView;->n:F

    .line 24
    iput p2, p0, Lcom/join/mgps/customview/ObservableListView;->o:F

    .line 25
    iput-boolean p1, p0, Lcom/join/mgps/customview/ObservableListView;->r:Z

    .line 26
    iput p1, p0, Lcom/join/mgps/customview/ObservableListView;->s:I

    .line 27
    invoke-direct {p0}, Lcom/join/mgps/customview/ObservableListView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/ObservableListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ObservableListView;->l:Landroid/widget/AbsListView$OnScrollListener;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/ObservableListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/ObservableListView;->d()V

    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/ObservableListView;->e:Landroid/util/SparseIntArray;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ObservableListView;->m:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ObservableListView;->a:Ll1/j;

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_11

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    if-gt v1, v4, :cond_2

    .line 5
    iget-object v4, p0, Lcom/join/mgps/customview/ObservableListView;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/join/mgps/customview/ObservableListView;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 6
    :cond_0
    iget-object v4, p0, Lcom/join/mgps/customview/ObservableListView;->e:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 8
    iget v3, p0, Lcom/join/mgps/customview/ObservableListView;->b:I

    const/4 v4, 0x1

    if-ge v3, v0, :cond_6

    sub-int v3, v0, v3

    if-eq v3, v4, :cond_4

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    .line 9
    :goto_1
    iget v5, p0, Lcom/join/mgps/customview/ObservableListView;->b:I

    if-le v3, v5, :cond_5

    .line 10
    iget-object v5, p0, Lcom/join/mgps/customview/ObservableListView;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-lez v5, :cond_3

    .line 11
    iget-object v5, p0, Lcom/join/mgps/customview/ObservableListView;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    :goto_2
    add-int/2addr v4, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 13
    :cond_5
    iget v3, p0, Lcom/join/mgps/customview/ObservableListView;->d:I

    iget v5, p0, Lcom/join/mgps/customview/ObservableListView;->c:I

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    iput v3, p0, Lcom/join/mgps/customview/ObservableListView;->d:I

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/join/mgps/customview/ObservableListView;->c:I

    goto :goto_5

    :cond_6
    if-ge v0, v3, :cond_a

    sub-int v5, v3, v0

    if-eq v5, v4, :cond_8

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    :goto_3
    if-le v3, v0, :cond_9

    .line 15
    iget-object v5, p0, Lcom/join/mgps/customview/ObservableListView;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-lez v5, :cond_7

    .line 16
    iget-object v5, p0, Lcom/join/mgps/customview/ObservableListView;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    goto :goto_4

    .line 17
    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    :goto_4
    add-int/2addr v4, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    .line 18
    :cond_9
    iget v3, p0, Lcom/join/mgps/customview/ObservableListView;->d:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/join/mgps/customview/ObservableListView;->d:I

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/join/mgps/customview/ObservableListView;->c:I

    goto :goto_5

    :cond_a
    if-nez v0, :cond_b

    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/join/mgps/customview/ObservableListView;->c:I

    .line 21
    :cond_b
    :goto_5
    iget v3, p0, Lcom/join/mgps/customview/ObservableListView;->c:I

    if-gez v3, :cond_c

    .line 22
    iput v2, p0, Lcom/join/mgps/customview/ObservableListView;->c:I

    .line 23
    :cond_c
    iget v3, p0, Lcom/join/mgps/customview/ObservableListView;->d:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/join/mgps/customview/ObservableListView;->g:I

    .line 24
    iput v0, p0, Lcom/join/mgps/customview/ObservableListView;->b:I

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 26
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/customview/ObservableListView;->a:Ll1/j;

    iget v1, p0, Lcom/join/mgps/customview/ObservableListView;->g:I

    iget-boolean v3, p0, Lcom/join/mgps/customview/ObservableListView;->i:Z

    iget-boolean v4, p0, Lcom/join/mgps/customview/ObservableListView;->j:Z

    invoke-interface {v0, v1, v3, v4}, Ll1/j;->a(IZZ)V

    .line 27
    iget-boolean v0, p0, Lcom/join/mgps/customview/ObservableListView;->i:Z

    if-eqz v0, :cond_e

    .line 28
    iput-boolean v2, p0, Lcom/join/mgps/customview/ObservableListView;->i:Z

    .line 29
    :cond_e
    iget v0, p0, Lcom/join/mgps/customview/ObservableListView;->f:I

    iget v1, p0, Lcom/join/mgps/customview/ObservableListView;->g:I

    if-ge v0, v1, :cond_f

    .line 30
    sget-object v0, Lcom/join/mgps/enums/ScrollState;->UP:Lcom/join/mgps/enums/ScrollState;

    iput-object v0, p0, Lcom/join/mgps/customview/ObservableListView;->h:Lcom/join/mgps/enums/ScrollState;

    goto :goto_6

    :cond_f
    if-ge v1, v0, :cond_10

    .line 31
    sget-object v0, Lcom/join/mgps/enums/ScrollState;->DOWN:Lcom/join/mgps/enums/ScrollState;

    iput-object v0, p0, Lcom/join/mgps/customview/ObservableListView;->h:Lcom/join/mgps/enums/ScrollState;

    goto :goto_6

    .line 32
    :cond_10
    sget-object v0, Lcom/join/mgps/enums/ScrollState;->STOP:Lcom/join/mgps/enums/ScrollState;

    iput-object v0, p0, Lcom/join/mgps/customview/ObservableListView;->h:Lcom/join/mgps/enums/ScrollState;

    .line 33
    :goto_6
    iput v1, p0, Lcom/join/mgps/customview/ObservableListView;->f:I

    :cond_11
    return-void
.end method


# virtual methods
.method public getCurrentScrollY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/ObservableListView;->g:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 3
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    iput-boolean v2, p0, Lcom/join/mgps/customview/ObservableListView;->j:Z

    .line 5
    iput v0, p0, Lcom/join/mgps/customview/ObservableListView;->n:F

    .line 6
    iput v1, p0, Lcom/join/mgps/customview/ObservableListView;->o:F

    .line 7
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/customview/ObservableListView;->k:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 8
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ObservableListView;->a:Ll1/j;

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iput-boolean v1, p0, Lcom/join/mgps/customview/ObservableListView;->j:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/ObservableListView;->a:Ll1/j;

    iget-object v1, p0, Lcom/join/mgps/customview/ObservableListView;->h:Lcom/join/mgps/enums/ScrollState;

    invoke-interface {v0, v1}, Ll1/j;->b(Lcom/join/mgps/enums/ScrollState;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/customview/ObservableListView;->r:Z

    if-nez v0, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/join/mgps/customview/ObservableListView;->p:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/join/mgps/customview/ObservableListView;->q:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 10
    :goto_0
    iput-boolean v2, p0, Lcom/join/mgps/customview/ObservableListView;->r:Z

    .line 11
    :cond_3
    iget v0, p0, Lcom/join/mgps/customview/ObservableListView;->g:I

    if-nez v0, :cond_6

    .line 12
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 14
    :cond_5
    iput-boolean v1, p0, Lcom/join/mgps/customview/ObservableListView;->r:Z

    .line 15
    iput-boolean v2, p0, Lcom/join/mgps/customview/ObservableListView;->j:Z

    iput-boolean v2, p0, Lcom/join/mgps/customview/ObservableListView;->i:Z

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/ObservableListView;->p:F

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/ObservableListView;->q:F

    .line 18
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 19
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ObservableListView;->l:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setScrollViewCallbacks(Ll1/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ObservableListView;->a:Ll1/j;

    return-void
.end method
