.class public Lcom/join/mgps/customview/XListView4Forum;
.super Landroid/widget/ListView;
.source "XListView4Forum.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field protected static final A:I = 0x32

.field protected static final B:F = 2.0f

.field public static final w:Ljava/lang/String; = "XListView"

.field protected static final x:I = 0x0

.field protected static final y:I = 0x1

.field protected static final z:I = 0x190


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

.field private u:Landroid/view/ViewGroup;

.field private v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/XListView4Forum;->a:F

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/XListView4Forum;->b:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->k:Z

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/customview/XListView4Forum;->p:Z

    .line 7
    iput v1, p0, Lcom/join/mgps/customview/XListView4Forum;->s:I

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/customview/XListView4Forum;->t:Z

    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/customview/XListView4Forum;->v:Z

    .line 10
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XListView4Forum;->g(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 12
    iput p2, p0, Lcom/join/mgps/customview/XListView4Forum;->a:F

    .line 13
    iput p2, p0, Lcom/join/mgps/customview/XListView4Forum;->b:F

    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListView4Forum;->k:Z

    .line 15
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->p:Z

    .line 17
    iput v0, p0, Lcom/join/mgps/customview/XListView4Forum;->s:I

    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->t:Z

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->v:Z

    .line 20
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XListView4Forum;->g(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 22
    iput p2, p0, Lcom/join/mgps/customview/XListView4Forum;->a:F

    .line 23
    iput p2, p0, Lcom/join/mgps/customview/XListView4Forum;->b:F

    const/4 p2, 0x1

    .line 24
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListView4Forum;->k:Z

    .line 25
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    iput-boolean p3, p0, Lcom/join/mgps/customview/XListView4Forum;->p:Z

    .line 27
    iput p3, p0, Lcom/join/mgps/customview/XListView4Forum;->s:I

    .line 28
    iput-boolean p3, p0, Lcom/join/mgps/customview/XListView4Forum;->t:Z

    .line 29
    iput-boolean p3, p0, Lcom/join/mgps/customview/XListView4Forum;->v:Z

    .line 30
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XListView4Forum;->g(Landroid/content/Context;)V

    return-void
.end method

.method private setParentScrollAble(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->u:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->v:Z

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/XListView4Forum;->r:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->g:Lcom/join/mgps/customview/XListViewHeader;

    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->c:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewHeader;->setVisibleHeight(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->c:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->postInvalidate()V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView4Forum;->h()V

    .line 7
    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->k:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->h:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->v:Z

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    return-void
.end method

.method protected g(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->c:Landroid/widget/Scroller;

    .line 2
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 3
    new-instance v0, Lcom/join/mgps/customview/XListViewHeader;

    invoke-direct {v0, p1}, Lcom/join/mgps/customview/XListViewHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->g:Lcom/join/mgps/customview/XListViewHeader;

    const v1, 0x7f0912f0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->h:Landroid/widget/RelativeLayout;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->g:Lcom/join/mgps/customview/XListViewHeader;

    const v1, 0x7f0912f4

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->i:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->g:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 8
    new-instance v0, Lcom/join/mgps/customview/XListViewFooter;

    invoke-direct {v0, p1}, Lcom/join/mgps/customview/XListViewFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->g:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/customview/XListView4Forum$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XListView4Forum$a;-><init>(Lcom/join/mgps/customview/XListView4Forum;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView4Forum;->c()V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView4Forum;->d()V

    return-void
.end method

.method protected h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->d:Landroid/widget/AbsListView$OnScrollListener;

    instance-of v1, v0, Lcom/join/mgps/customview/k;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/join/mgps/customview/k;

    .line 3
    invoke-interface {v0, p0}, Lcom/join/mgps/customview/k;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected i()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/XListView4Forum;->r:I

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->c:Landroid/widget/Scroller;

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

.method protected j()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->g:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/join/mgps/customview/XListView4Forum;->j:I

    if-gt v3, v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/join/mgps/customview/XListView4Forum;->j:I

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
    iput v1, p0, Lcom/join/mgps/customview/XListView4Forum;->r:I

    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->c:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x190

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method protected k(I)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->g:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/join/mgps/customview/XListView4Forum;->j:I

    if-gt v2, p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/join/mgps/customview/XListView4Forum;->j:I

    if-le v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput v0, p0, Lcom/join/mgps/customview/XListView4Forum;->r:I

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetHeaderHeight-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->c:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x64

    const/16 v5, 0x190

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->g:Lcom/join/mgps/customview/XListViewHeader;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 3
    iget v0, p0, Lcom/join/mgps/customview/XListView4Forum;->j:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/XListView4Forum;->s(F)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView4Forum;->j()V

    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    return-void
.end method

.method protected n()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->o:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->e:Lcom/join/mgps/customview/i;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/join/mgps/customview/i;->onLoadMore()V

    :cond_0
    return-void
.end method

.method protected o()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->g:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/XListView4Forum;->j:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->g:Lcom/join/mgps/customview/XListViewHeader;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->f:Lcom/join/mgps/customview/j;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->f:Lcom/join/mgps/customview/j;

    invoke-interface {v0}, Lcom/join/mgps/customview/j;->onRefresh()V

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->t:Z

    if-eqz v0, :cond_1

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Z

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->u:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->v:Z

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "XListView"

    aput-object v4, v2, v3

    const/4 v5, 0x1

    const-string v6, "onInterceptTouchEvent"

    aput-object v6, v2, v5

    .line 3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " disallowIntercept="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v2, v8

    invoke-static {v2}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, " ACTION_DOWN"

    .line 5
    filled-new-array {v4, v6, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, v3}, Lcom/join/mgps/customview/XListView4Forum;->setParentScrollAble(Z)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_2

    const-string v0, " ACTION_UP"

    .line 8
    filled-new-array {v4, v6, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, v5}, Lcom/join/mgps/customview/XListView4Forum;->setParentScrollAble(Z)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_3

    const-string v0, " ACTION_MOVE"

    .line 11
    filled-new-array {v4, v6, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_5

    const-string v0, " ACTION_CANCEL"

    .line 13
    filled-new-array {v4, v6, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, v5}, Lcom/join/mgps/customview/XListView4Forum;->setParentScrollAble(Z)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-direct {p0, v5}, Lcom/join/mgps/customview/XListView4Forum;->setParentScrollAble(Z)V

    .line 16
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListView4Forum;->p:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    if-eq p1, p2, :cond_0

    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/customview/XListView4Forum;->p:Z

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScroll firstVisibleItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " visibleItemCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " totalItemCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    iput p4, p0, Lcom/join/mgps/customview/XListView4Forum;->q:I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->d:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->d:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/XListView4Forum;->a:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XListView4Forum;->a:F

    .line 3
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/XListView4Forum;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XListView4Forum;->b:F

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v2, 0x1

    if-eq v0, v2, :cond_10

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    .line 6
    iput v1, p0, Lcom/join/mgps/customview/XListView4Forum;->a:F

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_10

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView4Forum;->o()V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView4Forum;->j()V

    goto/16 :goto_2

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/XListView4Forum;->q:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_10

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView4Forum;->n()V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView4Forum;->i()V

    goto/16 :goto_2

    .line 14
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/XListView4Forum;->a:F

    sub-float/2addr v0, v1

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/XListView4Forum;->a:F

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent  LastVisiblePosition "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mTotalItemCount "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/join/mgps/customview/XListView4Forum;->q:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->g:Lcom/join/mgps/customview/XListViewHeader;

    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v1

    if-gtz v1, :cond_4

    cmpl-float v1, v0, v5

    if-lez v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_5

    .line 20
    iget-boolean v1, p0, Lcom/join/mgps/customview/XListView4Forum;->k:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_8

    div-float v1, v0, v4

    .line 21
    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/XListView4Forum;->s(F)V

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView4Forum;->h()V

    goto :goto_0

    .line 23
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    iget v6, p0, Lcom/join/mgps/customview/XListView4Forum;->q:I

    sub-int/2addr v6, v2

    if-ne v1, v6, :cond_7

    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v1

    if-gtz v1, :cond_6

    cmpg-float v1, v0, v5

    if-gez v1, :cond_7

    :cond_6
    iget-boolean v1, p0, Lcom/join/mgps/customview/XListView4Forum;->o:Z

    if-nez v1, :cond_7

    .line 25
    iget-boolean v1, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Z

    if-eqz v1, :cond_8

    neg-float v1, v0

    div-float/2addr v1, v4

    .line 26
    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/XListView4Forum;->r(F)V

    goto :goto_0

    .line 27
    :cond_7
    iget v1, p0, Lcom/join/mgps/customview/XListView4Forum;->s:I

    if-eqz v1, :cond_8

    .line 28
    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/join/mgps/customview/XListView4Forum;->o:Z

    if-nez v1, :cond_8

    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    iget v4, p0, Lcom/join/mgps/customview/XListView4Forum;->q:I

    iget v6, p0, Lcom/join/mgps/customview/XListView4Forum;->s:I

    sub-int/2addr v4, v6

    if-lt v1, v4, :cond_8

    .line 29
    iput-boolean v2, p0, Lcom/join/mgps/customview/XListView4Forum;->o:Z

    .line 30
    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v1, v3}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 31
    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->e:Lcom/join/mgps/customview/i;

    if-eqz v1, :cond_8

    .line 32
    invoke-interface {v1}, Lcom/join/mgps/customview/i;->onLoadMore()V

    .line 33
    :cond_8
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v4, p0, Lcom/join/mgps/customview/XListView4Forum;->b:F

    sub-float/2addr v1, v4

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, p0, Lcom/join/mgps/customview/XListView4Forum;->b:F

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "XListView"

    aput-object v6, v3, v4

    .line 35
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deltaY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " deltaX="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-static {v3}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 36
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v3, v1

    if-gez v1, :cond_b

    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->u:Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_9
    if-nez v1, :cond_10

    const-string v0, "SCROLL HORIZONTAL"

    .line 37
    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 38
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->v:Z

    if-eqz v0, :cond_a

    .line 39
    invoke-direct {p0, v4}, Lcom/join/mgps/customview/XListView4Forum;->setParentScrollAble(Z)V

    goto :goto_2

    .line 40
    :cond_a
    invoke-direct {p0, v2}, Lcom/join/mgps/customview/XListView4Forum;->setParentScrollAble(Z)V

    goto :goto_2

    :cond_b
    :goto_1
    cmpl-float v1, v0, v5

    if-lez v1, :cond_d

    .line 41
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "SCROLL DOWN -- ParentScrollAble=true"

    .line 42
    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, v2}, Lcom/join/mgps/customview/XListView4Forum;->setParentScrollAble(Z)V

    goto :goto_2

    :cond_c
    const-string v0, "SCROLL DOWN -- ParentScrollAble=false"

    .line 44
    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, v4}, Lcom/join/mgps/customview/XListView4Forum;->setParentScrollAble(Z)V

    goto :goto_2

    :cond_d
    cmpg-float v0, v0, v5

    if-gez v0, :cond_10

    const-string v0, "SCROLL UP"

    .line 46
    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/XListView4Forum;->q:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_e

    const-string v0, "SCROLL UP -- ParentScrollAble=true"

    .line 48
    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, v2}, Lcom/join/mgps/customview/XListView4Forum;->setParentScrollAble(Z)V

    goto :goto_2

    :cond_e
    const-string v0, "SCROLL UP -- ParentScrollAble=false"

    .line 50
    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, v4}, Lcom/join/mgps/customview/XListView4Forum;->setParentScrollAble(Z)V

    goto :goto_2

    .line 52
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XListView4Forum;->a:F

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XListView4Forum;->b:F

    .line 54
    :cond_10
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public p()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->o:Z

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView4Forum;->j()V

    :cond_0
    return-void
.end method

.method protected r(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v0

    float-to-int p1, p1

    add-int/2addr v0, p1

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/join/mgps/customview/XListView4Forum;->o:Z

    if-nez p1, :cond_1

    const/16 p1, 0x32

    if-le v0, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    return-void
.end method

.method protected s(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->g:Lcom/join/mgps/customview/XListViewHeader;

    float-to-int p1, p1

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v1

    add-int/2addr p1, v1

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/XListViewHeader;->setVisibleHeight(I)V

    .line 4
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListView4Forum;->k:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->g:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result p1

    iget v1, p0, Lcom/join/mgps/customview/XListView4Forum;->j:I

    if-le p1, v1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->g:Lcom/join/mgps/customview/XListViewHeader;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->g:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XListView4Forum;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setNoMore()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView4Forum;->p()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->d:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setParentIntercepView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->u:Landroid/view/ViewGroup;

    return-void
.end method

.method public setPreLoadCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/XListView4Forum;->s:I

    return-void
.end method

.method public setPullLoadEnable(Lcom/join/mgps/customview/i;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Z

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->t:Z

    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->e:Lcom/join/mgps/customview/i;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/XListView4Forum;->o:Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Lcom/join/mgps/customview/XListViewFooter;

    new-instance v0, Lcom/join/mgps/customview/XListView4Forum$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XListView4Forum$b;-><init>(Lcom/join/mgps/customview/XListView4Forum;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPullRefreshEnable(Lcom/join/mgps/customview/j;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->k:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->h:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->f:Lcom/join/mgps/customview/j;

    return-void
.end method
