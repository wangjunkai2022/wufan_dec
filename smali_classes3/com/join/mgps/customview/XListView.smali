.class public Lcom/join/mgps/customview/XListView;
.super Landroid/widget/ListView;
.source "XListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field public static final u:Ljava/lang/String; = "XListView"

.field protected static final v:I = 0x0

.field protected static final w:I = 0x1

.field protected static final x:I = 0x190

.field protected static final y:I = 0x32

.field protected static final z:F = 2.0f


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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/XListView;->a:F

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/XListView;->b:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView;->k:Z

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/join/mgps/customview/XListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/customview/XListView;->p:Z

    .line 7
    iput v1, p0, Lcom/join/mgps/customview/XListView;->s:I

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/customview/XListView;->t:Z

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XListView;->e(Landroid/content/Context;)V

    .line 10
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setFriction(F)V

    .line 11
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 13
    iput p2, p0, Lcom/join/mgps/customview/XListView;->a:F

    .line 14
    iput p2, p0, Lcom/join/mgps/customview/XListView;->b:F

    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListView;->k:Z

    .line 16
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/join/mgps/customview/XListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView;->p:Z

    .line 18
    iput v0, p0, Lcom/join/mgps/customview/XListView;->s:I

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView;->t:Z

    .line 20
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XListView;->e(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 22
    iput p2, p0, Lcom/join/mgps/customview/XListView;->a:F

    .line 23
    iput p2, p0, Lcom/join/mgps/customview/XListView;->b:F

    const/4 p2, 0x1

    .line 24
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListView;->k:Z

    .line 25
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/join/mgps/customview/XListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    iput-boolean p3, p0, Lcom/join/mgps/customview/XListView;->p:Z

    .line 27
    iput p3, p0, Lcom/join/mgps/customview/XListView;->s:I

    .line 28
    iput-boolean p3, p0, Lcom/join/mgps/customview/XListView;->t:Z

    .line 29
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XListView;->e(Landroid/content/Context;)V

    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/XListView;->q:I

    iget v2, p0, Lcom/join/mgps/customview/XListView;->s:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView;->o:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->e:Lcom/join/mgps/customview/i;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/join/mgps/customview/i;->onLoadMore()V

    :cond_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView;->n:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView;->k:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->h:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/XListView;->r:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    iget-object v1, p0, Lcom/join/mgps/customview/XListView;->c:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewHeader;->setVisibleHeight(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    iget-object v1, p0, Lcom/join/mgps/customview/XListView;->c:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->postInvalidate()V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView;->f()V

    .line 7
    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView;->n:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    return-void
.end method

.method protected e(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XListView;->c:Landroid/widget/Scroller;

    .line 2
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 3
    new-instance v0, Lcom/join/mgps/customview/XListViewHeader;

    invoke-direct {v0, p1}, Lcom/join/mgps/customview/XListViewHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    const v1, 0x7f0912f0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/XListView;->h:Landroid/widget/RelativeLayout;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    const v1, 0x7f0912f4

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/XListView;->i:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 8
    new-instance v0, Lcom/join/mgps/customview/XListViewFooter;

    invoke-direct {v0, p1}, Lcom/join/mgps/customview/XListViewFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/XListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/customview/XListView$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XListView$a;-><init>(Lcom/join/mgps/customview/XListView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView;->b()V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView;->c()V

    return-void
.end method

.method protected f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->d:Landroid/widget/AbsListView$OnScrollListener;

    instance-of v1, v0, Lcom/join/mgps/customview/k;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/join/mgps/customview/k;

    .line 3
    invoke-interface {v0, p0}, Lcom/join/mgps/customview/k;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView;->n:Z

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView;->k:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    return-void
.end method

.method protected j()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/XListView;->r:I

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/XListView;->c:Landroid/widget/Scroller;

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

.method protected k()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/join/mgps/customview/XListView;->j:I

    if-gt v3, v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/join/mgps/customview/XListView;->j:I

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
    iput v1, p0, Lcom/join/mgps/customview/XListView;->r:I

    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/XListView;->c:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x190

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method protected l(I)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/XListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/join/mgps/customview/XListView;->j:I

    if-gt v2, p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/XListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/join/mgps/customview/XListView;->j:I

    if-le v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput v0, p0, Lcom/join/mgps/customview/XListView;->r:I

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetHeaderHeight-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->c:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x64

    const/16 v5, 0x190

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 3
    iget v0, p0, Lcom/join/mgps/customview/XListView;->j:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/XListView;->t(F)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView;->k()V

    return-void
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView;->n:Z

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    return-void
.end method

.method protected o()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView;->o:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->e:Lcom/join/mgps/customview/i;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/join/mgps/customview/i;->onLoadMore()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListView;->p:Z

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
    iput-boolean p3, p0, Lcom/join/mgps/customview/XListView;->p:Z

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 1
    iput p4, p0, Lcom/join/mgps/customview/XListView;->q:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->d:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-eqz p2, :cond_0

    add-int/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/join/mgps/customview/XListView;->q:I

    if-le v0, v1, :cond_1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/customview/XListView;->h()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->d:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/XListView;->a:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XListView;->a:F

    .line 3
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/XListView;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XListView;->b:F

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    .line 6
    iput v1, p0, Lcom/join/mgps/customview/XListView;->a:F

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView;->k:Z

    if-eqz v0, :cond_9

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView;->p()V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView;->k()V

    goto/16 :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/XListView;->q:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_9

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView;->o()V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView;->j()V

    goto/16 :goto_0

    .line 14
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/XListView;->a:F

    sub-float/2addr v0, v1

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/XListView;->a:F

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent  LastVisiblePosition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mTotalItemCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/customview/XListView;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";mPullLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/join/mgps/customview/XListView;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";mEnablePullLoad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/join/mgps/customview/XListView;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/join/mgps/customview/XListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v1

    if-gtz v1, :cond_4

    cmpl-float v1, v0, v3

    if-lez v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/join/mgps/customview/XListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_5

    .line 20
    iget-boolean v1, p0, Lcom/join/mgps/customview/XListView;->k:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/join/mgps/customview/XListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_9

    div-float/2addr v0, v2

    .line 21
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/XListView;->t(F)V

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView;->f()V

    goto :goto_0

    .line 23
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    iget v4, p0, Lcom/join/mgps/customview/XListView;->q:I

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v1

    if-gtz v1, :cond_6

    cmpg-float v1, v0, v3

    if-gez v1, :cond_7

    :cond_6
    iget-boolean v1, p0, Lcom/join/mgps/customview/XListView;->o:Z

    if-nez v1, :cond_7

    .line 25
    iget-boolean v1, p0, Lcom/join/mgps/customview/XListView;->n:Z

    if-eqz v1, :cond_9

    neg-float v0, v0

    div-float/2addr v0, v2

    .line 26
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/XListView;->s(F)V

    goto :goto_0

    .line 27
    :cond_7
    iget v0, p0, Lcom/join/mgps/customview/XListView;->s:I

    if-eqz v0, :cond_9

    .line 28
    invoke-direct {p0}, Lcom/join/mgps/customview/XListView;->h()V

    goto :goto_0

    .line 29
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XListView;->a:F

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XListView;->b:F

    .line 31
    :cond_9
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected p()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/XListView;->j:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->f:Lcom/join/mgps/customview/j;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/join/mgps/customview/j;->onRefresh()V

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView;->t:Z

    if-eqz v0, :cond_1

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/customview/XListView;->n:Z

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    :cond_1
    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView;->o:Z

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView;->k()V

    :cond_0
    return-void
.end method

.method protected s(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v0

    float-to-int p1, p1

    add-int/2addr v0, p1

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListView;->n:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/join/mgps/customview/XListView;->o:Z

    if-nez p1, :cond_1

    const/16 p1, 0x32

    if-le v0, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

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
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView;->q()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView;->n:Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XListView;->d:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setPreLoadCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/XListView;->s:I

    return-void
.end method

.method public setPullLoadEnable(Lcom/join/mgps/customview/i;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView;->n:Z

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView;->t:Z

    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/XListView;->e:Lcom/join/mgps/customview/i;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/XListView;->o:Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/XListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    new-instance v0, Lcom/join/mgps/customview/XListView$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XListView$b;-><init>(Lcom/join/mgps/customview/XListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPullRefreshEnable(Lcom/join/mgps/customview/j;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView;->k:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->h:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/XListView;->f:Lcom/join/mgps/customview/j;

    return-void
.end method

.method protected t(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    float-to-int p1, p1

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v1

    add-int/2addr p1, v1

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/XListViewHeader;->setVisibleHeight(I)V

    .line 4
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListView;->k:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/customview/XListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/XListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result p1

    iget v1, p0, Lcom/join/mgps/customview/XListView;->j:I

    if-le p1, v1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/XListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
