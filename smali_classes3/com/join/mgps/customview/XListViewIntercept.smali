.class public Lcom/join/mgps/customview/XListViewIntercept;
.super Landroid/widget/ListView;
.source "XListViewIntercept.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/XListViewIntercept$c;,
        Lcom/join/mgps/customview/XListViewIntercept$d;
    }
.end annotation


# static fields
.field private static final u:I = 0x0

.field private static final v:I = 0x1

.field private static final w:I = 0x190

.field private static final x:I = 0x32

.field private static final y:F = 1.8f


# instance fields
.field private a:F

.field private b:Landroid/widget/Scroller;

.field private c:Landroid/widget/AbsListView$OnScrollListener;

.field private d:Lcom/join/mgps/customview/XListViewIntercept$c;

.field private e:Lcom/join/mgps/customview/XListViewHeader;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/TextView;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Lcom/join/mgps/customview/XListViewFooter;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:Z

.field private r:F

.field private s:F

.field private t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->a:F

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->i:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->j:Z

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->n:Z

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->q:Z

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/XListViewIntercept;->e(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 9
    iput p2, p0, Lcom/join/mgps/customview/XListViewIntercept;->a:F

    const/4 p2, 0x1

    .line 10
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListViewIntercept;->i:Z

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListViewIntercept;->j:Z

    .line 12
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListViewIntercept;->n:Z

    .line 13
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListViewIntercept;->q:Z

    .line 14
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/XListViewIntercept;->e(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 16
    iput p2, p0, Lcom/join/mgps/customview/XListViewIntercept;->a:F

    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListViewIntercept;->i:Z

    const/4 p2, 0x0

    .line 18
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListViewIntercept;->j:Z

    .line 19
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListViewIntercept;->n:Z

    .line 20
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListViewIntercept;->q:Z

    .line 21
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/XListViewIntercept;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/customview/XListViewIntercept;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->h:I

    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/XListViewIntercept;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/XListViewIntercept;->f:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/XListViewIntercept;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/XListViewIntercept;->i()V

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->b:Landroid/widget/Scroller;

    .line 2
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 4
    new-instance v0, Lcom/join/mgps/customview/XListViewHeader;

    invoke-direct {v0, p1}, Lcom/join/mgps/customview/XListViewHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->e:Lcom/join/mgps/customview/XListViewHeader;

    const v1, 0x7f0912f0

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->f:Landroid/widget/RelativeLayout;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->e:Lcom/join/mgps/customview/XListViewHeader;

    const v1, 0x7f0912f4

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->g:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->e:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 9
    new-instance v0, Lcom/join/mgps/customview/XListViewFooter;

    invoke-direct {v0, p1}, Lcom/join/mgps/customview/XListViewFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->e:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/customview/XListViewIntercept$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XListViewIntercept$a;-><init>(Lcom/join/mgps/customview/XListViewIntercept;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->c:Landroid/widget/AbsListView$OnScrollListener;

    instance-of v1, v0, Lcom/join/mgps/customview/XListViewIntercept$d;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/join/mgps/customview/XListViewIntercept$d;

    .line 3
    invoke-interface {v0, p0}, Lcom/join/mgps/customview/XListViewIntercept$d;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->p:I

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->b:Landroid/widget/Scroller;

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

.method private h()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->e:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->j:Z

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->h:I

    if-gt v3, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->h:I

    if-le v3, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_0
    iput v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->p:I

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->b:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    sub-int v5, v0, v3

    const/16 v6, 0x190

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method private i()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->m:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->d:Lcom/join/mgps/customview/XListViewIntercept$c;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/join/mgps/customview/XListViewIntercept$c;->onLoadMore()V

    :cond_0
    return-void
.end method

.method private l(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v0

    float-to-int p1, p1

    add-int/2addr v0, p1

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->m:Z

    if-nez p1, :cond_1

    const/16 p1, 0x32

    if-le v0, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    return-void
.end method

.method private m(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->e:Lcom/join/mgps/customview/XListViewHeader;

    float-to-int p1, p1

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v1

    add-int/2addr p1, v1

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/XListViewHeader;->setVisibleHeight(I)V

    .line 4
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->i:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->j:Z

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->e:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result p1

    iget v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->h:I

    if-le p1, v1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->e:Lcom/join/mgps/customview/XListViewHeader;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->e:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->p:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->e:Lcom/join/mgps/customview/XListViewHeader;

    iget-object v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewHeader;->setVisibleHeight(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    iget-object v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->postInvalidate()V

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/customview/XListViewIntercept;->f()V

    .line 7
    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->m:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->m:Z

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->j:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->j:Z

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/XListViewIntercept;->h()V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 1
    iput p4, p0, Lcom/join/mgps/customview/XListViewIntercept;->o:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->q:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    if-nez p3, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    invoke-interface {p3, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 6
    :cond_1
    iget p3, p0, Lcom/join/mgps/customview/XListViewIntercept;->t:I

    if-ge p3, p2, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p3, 0x1

    invoke-interface {p1, p3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_2
    if-ge p2, p3, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    move-result p3

    if-nez p3, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    invoke-interface {p3, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 10
    :cond_3
    :goto_0
    iput p2, p0, Lcom/join/mgps/customview/XListViewIntercept;->t:I

    :cond_4
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->a:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->a:F

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_5

    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->q:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 6
    :cond_1
    iput v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->a:F

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->e:Lcom/join/mgps/customview/XListViewHeader;

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->h:I

    if-le v0, v1, :cond_2

    .line 10
    iput-boolean v2, p0, Lcom/join/mgps/customview/XListViewIntercept;->j:Z

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->e:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {v0, v3}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->d:Lcom/join/mgps/customview/XListViewIntercept$c;

    if-eqz v0, :cond_2

    .line 13
    invoke-interface {v0}, Lcom/join/mgps/customview/XListViewIntercept$c;->onRefresh()V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/customview/XListViewIntercept;->h()V

    goto/16 :goto_1

    .line 16
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->o:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_d

    .line 17
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_4

    .line 19
    invoke-direct {p0}, Lcom/join/mgps/customview/XListViewIntercept;->i()V

    .line 20
    :cond_4
    invoke-direct {p0}, Lcom/join/mgps/customview/XListViewIntercept;->g()V

    goto/16 :goto_1

    .line 21
    :cond_5
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->q:Z

    if-eqz v0, :cond_7

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->r:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/join/mgps/customview/XListViewIntercept;->s:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 24
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 25
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 26
    :goto_0
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_7

    .line 28
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 29
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->a:F

    sub-float/2addr v0, v1

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->a:F

    .line 31
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    const v3, 0x3fe66666    # 1.8f

    const/4 v4, 0x0

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->e:Lcom/join/mgps/customview/XListViewHeader;

    .line 32
    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v1

    if-gtz v1, :cond_8

    cmpl-float v1, v0, v4

    if-lez v1, :cond_9

    .line 33
    :cond_8
    iget-boolean v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->i:Z

    if-eqz v1, :cond_d

    div-float/2addr v0, v3

    .line 34
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/XListViewIntercept;->m(F)V

    .line 35
    invoke-direct {p0}, Lcom/join/mgps/customview/XListViewIntercept;->f()V

    goto :goto_1

    .line 36
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    iget v5, p0, Lcom/join/mgps/customview/XListViewIntercept;->o:I

    sub-int/2addr v5, v2

    if-ne v1, v5, :cond_d

    iget-object v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    .line 37
    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v1

    if-gtz v1, :cond_a

    cmpg-float v1, v0, v4

    if-gez v1, :cond_d

    :cond_a
    neg-float v0, v0

    div-float/2addr v0, v3

    .line 38
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/XListViewIntercept;->l(F)V

    goto :goto_1

    .line 39
    :cond_b
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->q:Z

    if-eqz v0, :cond_c

    .line 40
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->r:F

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->s:F

    .line 43
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->a:F

    .line 44
    :cond_d
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XListViewIntercept;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->n:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setFirstNoMore(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->m:Z

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    :goto_0
    return-void
.end method

.method public setInterceptToch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->q:Z

    return-void
.end method

.method public setNoMore()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->m:Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    :goto_0
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->c:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setPullLoadEnable(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->m:Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Lcom/join/mgps/customview/XListViewFooter;

    new-instance v0, Lcom/join/mgps/customview/XListViewIntercept$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XListViewIntercept$b;-><init>(Lcom/join/mgps/customview/XListViewIntercept;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public setPullRefreshEnable(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->i:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->f:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->f:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setRefreshTime(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setXListViewListener(Lcom/join/mgps/customview/XListViewIntercept$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->d:Lcom/join/mgps/customview/XListViewIntercept$c;

    return-void
.end method
