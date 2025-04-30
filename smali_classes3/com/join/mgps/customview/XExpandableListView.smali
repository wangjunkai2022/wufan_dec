.class public Lcom/join/mgps/customview/XExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "XExpandableListView.java"

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

.field private u:Lcom/join/mgps/ptr/a;

.field private v:Lcom/join/mgps/customview/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/XExpandableListView;->a:F

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/XExpandableListView;->b:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->k:Z

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/customview/XExpandableListView;->p:Z

    .line 7
    iput v1, p0, Lcom/join/mgps/customview/XExpandableListView;->s:I

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/customview/XExpandableListView;->t:Z

    .line 9
    new-instance v0, Lcom/join/mgps/customview/XExpandableListView$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XExpandableListView$a;-><init>(Lcom/join/mgps/customview/XExpandableListView;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->u:Lcom/join/mgps/ptr/a;

    .line 10
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XExpandableListView;->f(Landroid/content/Context;)V

    .line 11
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->setFriction(F)V

    .line 12
    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListView;->setFastScrollEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 14
    iput p2, p0, Lcom/join/mgps/customview/XExpandableListView;->a:F

    .line 15
    iput p2, p0, Lcom/join/mgps/customview/XExpandableListView;->b:F

    const/4 p2, 0x1

    .line 16
    iput-boolean p2, p0, Lcom/join/mgps/customview/XExpandableListView;->k:Z

    .line 17
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/join/mgps/customview/XExpandableListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->p:Z

    .line 19
    iput v0, p0, Lcom/join/mgps/customview/XExpandableListView;->s:I

    .line 20
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->t:Z

    .line 21
    new-instance p2, Lcom/join/mgps/customview/XExpandableListView$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/XExpandableListView$a;-><init>(Lcom/join/mgps/customview/XExpandableListView;)V

    iput-object p2, p0, Lcom/join/mgps/customview/XExpandableListView;->u:Lcom/join/mgps/ptr/a;

    .line 22
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XExpandableListView;->f(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 24
    iput p2, p0, Lcom/join/mgps/customview/XExpandableListView;->a:F

    .line 25
    iput p2, p0, Lcom/join/mgps/customview/XExpandableListView;->b:F

    const/4 p2, 0x1

    .line 26
    iput-boolean p2, p0, Lcom/join/mgps/customview/XExpandableListView;->k:Z

    .line 27
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/join/mgps/customview/XExpandableListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    iput-boolean p3, p0, Lcom/join/mgps/customview/XExpandableListView;->p:Z

    .line 29
    iput p3, p0, Lcom/join/mgps/customview/XExpandableListView;->s:I

    .line 30
    iput-boolean p3, p0, Lcom/join/mgps/customview/XExpandableListView;->t:Z

    .line 31
    new-instance p2, Lcom/join/mgps/customview/XExpandableListView$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/XExpandableListView$a;-><init>(Lcom/join/mgps/customview/XExpandableListView;)V

    iput-object p2, p0, Lcom/join/mgps/customview/XExpandableListView;->u:Lcom/join/mgps/ptr/a;

    .line 32
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XExpandableListView;->f(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/customview/XExpandableListView;)Lcom/join/mgps/customview/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/XExpandableListView;->v:Lcom/join/mgps/customview/j;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/XExpandableListView;->r:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    iget-object v1, p0, Lcom/join/mgps/customview/XExpandableListView;->c:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->postInvalidate()V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/customview/XExpandableListView;->g()V

    .line 6
    :cond_1
    invoke-super {p0}, Landroid/widget/ExpandableListView;->computeScroll()V

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->k:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->h:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    return-void
.end method

.method protected f(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->c:Landroid/widget/Scroller;

    .line 2
    invoke-super {p0, p0}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 3
    new-instance v0, Lcom/join/mgps/customview/XListViewHeader;

    invoke-direct {v0, p1}, Lcom/join/mgps/customview/XListViewHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    const v1, 0x7f0912f0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->h:Landroid/widget/RelativeLayout;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    const v1, 0x7f0912f4

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->i:Landroid/widget/TextView;

    .line 7
    new-instance v0, Lcom/join/mgps/customview/XListViewFooter;

    invoke-direct {v0, p1}, Lcom/join/mgps/customview/XListViewFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/customview/XExpandableListView;->c()V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/customview/XExpandableListView;->d()V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method protected g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->d:Landroid/widget/AbsListView$OnScrollListener;

    instance-of v1, v0, Lcom/join/mgps/customview/k;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/join/mgps/customview/k;

    .line 3
    invoke-interface {v0, p0}, Lcom/join/mgps/customview/k;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public i()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/XExpandableListView;->q:I

    iget v2, p0, Lcom/join/mgps/customview/XExpandableListView;->s:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->e:Lcom/join/mgps/customview/i;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Lcom/join/mgps/customview/i;->onLoadMore()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Z

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->k:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    return-void
.end method

.method protected k()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/XExpandableListView;->r:I

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/XExpandableListView;->c:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    neg-int v5, v3

    const/16 v6, 0x190

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected l()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/join/mgps/customview/XExpandableListView;->j:I

    if-gt v3, v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/join/mgps/customview/XExpandableListView;->j:I

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
    iput v1, p0, Lcom/join/mgps/customview/XExpandableListView;->r:I

    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/XExpandableListView;->c:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x190

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->invalidate()V

    return-void
.end method

.method protected m(I)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/join/mgps/customview/XExpandableListView;->j:I

    if-gt v2, p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/join/mgps/customview/XExpandableListView;->j:I

    if-le v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput v0, p0, Lcom/join/mgps/customview/XExpandableListView;->r:I

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetHeaderHeight-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->c:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x64

    const/16 v5, 0x190

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->invalidate()V

    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->f()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScroll  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " visibleItemCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " totalItemCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";mPullRefreshing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/customview/XExpandableListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";mPullLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2
    iput p4, p0, Lcom/join/mgps/customview/XExpandableListView;->q:I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->d:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scrollStateChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-eqz p2, :cond_0

    add-int/2addr v0, v1

    .line 4
    iget v1, p0, Lcom/join/mgps/customview/XExpandableListView;->q:I

    if-le v0, v1, :cond_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/XExpandableListView;->i()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->d:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/XExpandableListView;->a:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XExpandableListView;->a:F

    .line 3
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/XExpandableListView;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XExpandableListView;->b:F

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 6
    iput v1, p0, Lcom/join/mgps/customview/XExpandableListView;->a:F

    .line 7
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/XExpandableListView;->q:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_6

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/customview/XExpandableListView;->p()V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/customview/XExpandableListView;->k()V

    goto/16 :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/XExpandableListView;->a:F

    sub-float/2addr v0, v1

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/XExpandableListView;->a:F

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent  LastVisiblePosition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mTotalItemCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/customview/XExpandableListView;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";mPullLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";mEnablePullLoad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v1

    iget v2, p0, Lcom/join/mgps/customview/XExpandableListView;->q:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v1

    if-gtz v1, :cond_3

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    if-nez v1, :cond_4

    .line 15
    iget-boolean v1, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Z

    if-eqz v1, :cond_6

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 16
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/XExpandableListView;->t(F)V

    goto :goto_0

    .line 17
    :cond_4
    iget v0, p0, Lcom/join/mgps/customview/XExpandableListView;->s:I

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/customview/XExpandableListView;->i()V

    goto :goto_0

    .line 19
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XExpandableListView;->a:F

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XExpandableListView;->b:F

    .line 21
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected p()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->e:Lcom/join/mgps/customview/i;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/join/mgps/customview/i;->onLoadMore()V

    :cond_0
    return-void
.end method

.method protected q()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->C()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setNoMore()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/XExpandableListView;->r()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->d:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setPreLoadCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/XExpandableListView;->s:I

    return-void
.end method

.method public setPullLoadEnable(Lcom/join/mgps/customview/i;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Z

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->t:Z

    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->e:Lcom/join/mgps/customview/i;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    new-instance v0, Lcom/join/mgps/customview/XExpandableListView$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XExpandableListView$b;-><init>(Lcom/join/mgps/customview/XExpandableListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPullRefreshEnable(Lcom/join/mgps/customview/j;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->v:Lcom/join/mgps/customview/j;

    .line 2
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->u:Lcom/join/mgps/ptr/a;

    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

    :cond_0
    return-void
.end method

.method protected t(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v0

    float-to-int p1, p1

    add-int/2addr v0, p1

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    if-nez p1, :cond_1

    const/16 p1, 0x32

    if-le v0, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    return-void
.end method

.method protected u(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    float-to-int p1, p1

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v1

    add-int/2addr p1, v1

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/XListViewHeader;->setVisibleHeight(I)V

    .line 4
    iget-boolean p1, p0, Lcom/join/mgps/customview/XExpandableListView;->k:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result p1

    iget v1, p0, Lcom/join/mgps/customview/XExpandableListView;->j:I

    if-le p1, v1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->g:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->setSelection(I)V

    return-void
.end method
