.class public Lcom/join/mgps/customview/XScrollView;
.super Landroid/widget/ScrollView;
.source "XScrollView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/XScrollView$e;,
        Lcom/join/mgps/customview/XScrollView$f;
    }
.end annotation


# static fields
.field private static final A:I = 0x32

.field private static final B:F = 1.8f

.field private static final w:Ljava/lang/String; = "XScrollView"

.field private static final x:I = 0x0

.field private static final y:I = 0x1

.field private static final z:I = 0x190


# instance fields
.field private a:F

.field private b:Landroid/widget/Scroller;

.field private c:Landroid/widget/AbsListView$OnScrollListener;

.field private d:I

.field private e:Lcom/join/mgps/customview/XScrollView$e;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Lcom/join/mgps/customview/XListViewHeader;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/TextView;

.field private k:I

.field private l:Lcom/join/mgps/customview/XListViewFooter;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/XScrollView;->a:F

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->m:Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/join/mgps/customview/XScrollView;->n:Z

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->o:Z

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/customview/XScrollView;->p:Z

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/customview/XScrollView;->q:Z

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->v:Z

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XScrollView;->f(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 11
    iput p2, p0, Lcom/join/mgps/customview/XScrollView;->a:F

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lcom/join/mgps/customview/XScrollView;->m:Z

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->n:Z

    .line 14
    iput-boolean p2, p0, Lcom/join/mgps/customview/XScrollView;->o:Z

    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->p:Z

    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->q:Z

    .line 17
    iput-boolean p2, p0, Lcom/join/mgps/customview/XScrollView;->v:Z

    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XScrollView;->f(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 20
    iput p2, p0, Lcom/join/mgps/customview/XScrollView;->a:F

    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p0, Lcom/join/mgps/customview/XScrollView;->m:Z

    const/4 p3, 0x0

    .line 22
    iput-boolean p3, p0, Lcom/join/mgps/customview/XScrollView;->n:Z

    .line 23
    iput-boolean p2, p0, Lcom/join/mgps/customview/XScrollView;->o:Z

    .line 24
    iput-boolean p3, p0, Lcom/join/mgps/customview/XScrollView;->p:Z

    .line 25
    iput-boolean p3, p0, Lcom/join/mgps/customview/XScrollView;->q:Z

    .line 26
    iput-boolean p2, p0, Lcom/join/mgps/customview/XScrollView;->v:Z

    .line 27
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XScrollView;->f(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/customview/XScrollView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/XScrollView;->k:I

    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/XScrollView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/XScrollView;->i:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/XScrollView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->o()V

    return-void
.end method

.method private g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->c:Landroid/widget/AbsListView$OnScrollListener;

    instance-of v1, v0, Lcom/join/mgps/customview/XScrollView$f;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/join/mgps/customview/XScrollView$f;

    .line 3
    invoke-interface {v0, p0}, Lcom/join/mgps/customview/XScrollView$f;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private h()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->computeVerticalScrollRange()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->l:Lcom/join/mgps/customview/XListViewFooter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private i()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->h:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/XScrollView;->k:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private j()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->e:Lcom/join/mgps/customview/XScrollView$e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/join/mgps/customview/XScrollView$e;->onLoadMore()V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->e:Lcom/join/mgps/customview/XScrollView$e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/join/mgps/customview/XScrollView$e;->onRefresh()V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->l:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/XScrollView;->d:I

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/XScrollView;->b:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    neg-int v5, v3

    const/16 v6, 0x190

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->h:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->n:Z

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/join/mgps/customview/XScrollView;->k:I

    if-gt v3, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget v0, p0, Lcom/join/mgps/customview/XScrollView;->k:I

    if-le v3, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_0
    iput v1, p0, Lcom/join/mgps/customview/XScrollView;->d:I

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/XScrollView;->b:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    sub-int v5, v0, v3

    const/16 v6, 0x190

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->h:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/XScrollView;->k:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->n:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->h:Lcom/join/mgps/customview/XListViewHeader;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->k()V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->m()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->o:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->l:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->o()V

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->l()V

    :cond_3
    :goto_0
    return-void
.end method

.method private o()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->q:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->l:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->j()V

    :cond_0
    return-void
.end method

.method private r(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->l:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v0

    float-to-int p1, p1

    add-int/2addr v0, p1

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/customview/XScrollView;->o:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/join/mgps/customview/XScrollView;->q:Z

    if-nez p1, :cond_1

    const/16 p1, 0x32

    if-le v0, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->l:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->l:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->l:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    .line 6
    new-instance p1, Lcom/join/mgps/customview/XScrollView$d;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/XScrollView$d;-><init>(Lcom/join/mgps/customview/XScrollView;)V

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private s(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->h:Lcom/join/mgps/customview/XListViewHeader;

    float-to-int p1, p1

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/XListViewHeader;->setVisibleHeight(I)V

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/customview/XScrollView;->m:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/join/mgps/customview/XScrollView;->n:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->h:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result p1

    iget v0, p0, Lcom/join/mgps/customview/XScrollView;->k:I

    if-le p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->h:Lcom/join/mgps/customview/XListViewHeader;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->h:Lcom/join/mgps/customview/XListViewHeader;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 6
    :cond_1
    :goto_0
    new-instance p1, Lcom/join/mgps/customview/XScrollView$c;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/XScrollView$c;-><init>(Lcom/join/mgps/customview/XScrollView;)V

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/XScrollView;->d:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->h:Lcom/join/mgps/customview/XListViewHeader;

    iget-object v1, p0, Lcom/join/mgps/customview/XScrollView;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewHeader;->setVisibleHeight(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->l:Lcom/join/mgps/customview/XListViewFooter;

    iget-object v1, p0, Lcom/join/mgps/customview/XScrollView;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidate()V

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->g()V

    .line 7
    :cond_1
    invoke-super {p0}, Landroid/widget/ScrollView;->computeScroll()V

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->h:Lcom/join/mgps/customview/XListViewHeader;

    iget v1, p0, Lcom/join/mgps/customview/XScrollView;->k:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewHeader;->setVisibleHeight(I)V

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->m:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->n:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->h:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v0

    iget v2, p0, Lcom/join/mgps/customview/XScrollView;->k:I

    if-le v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->h:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->h:Lcom/join/mgps/customview/XListViewHeader;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 6
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/join/mgps/customview/XScrollView;->n:Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->h:Lcom/join/mgps/customview/XListViewHeader;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->k()V

    return-void
.end method

.method protected f(Landroid/content/Context;)V
    .locals 4

    const v0, 0x7f0c05f4

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/XScrollView;->f:Landroid/widget/LinearLayout;

    const v2, 0x7f0902f4

    .line 2
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/XScrollView;->g:Landroid/widget/LinearLayout;

    .line 3
    new-instance v0, Landroid/widget/Scroller;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XScrollView;->b:Landroid/widget/Scroller;

    .line 4
    invoke-virtual {p0, p0}, Lcom/join/mgps/customview/XScrollView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 5
    new-instance v0, Lcom/join/mgps/customview/XListViewHeader;

    invoke-direct {v0, p1}, Lcom/join/mgps/customview/XListViewHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XScrollView;->h:Lcom/join/mgps/customview/XListViewHeader;

    const v2, 0x7f0912f0

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/XScrollView;->i:Landroid/widget/RelativeLayout;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->h:Lcom/join/mgps/customview/XListViewHeader;

    const v2, 0x7f0912f4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/XScrollView;->j:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->f:Landroid/widget/LinearLayout;

    const v2, 0x7f09064c

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 9
    iget-object v2, p0, Lcom/join/mgps/customview/XScrollView;->h:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 10
    new-instance v0, Lcom/join/mgps/customview/XListViewFooter;

    invoke-direct {v0, p1}, Lcom/join/mgps/customview/XListViewFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XScrollView;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 11
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 12
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->l:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->f:Landroid/widget/LinearLayout;

    const v3, 0x7f0904ee

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 15
    iget-object v3, p0, Lcom/join/mgps/customview/XScrollView;->l:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0, v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->h:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 17
    new-instance v0, Lcom/join/mgps/customview/XScrollView$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XScrollView$a;-><init>(Lcom/join/mgps/customview/XScrollView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 19
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 20
    invoke-virtual {p0}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    if-eqz v1, :cond_2

    .line 22
    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/XScrollView;->setContentView(Landroid/view/ViewGroup;)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 4
    iget v2, p0, Lcom/join/mgps/customview/XScrollView;->r:F

    iget v3, p0, Lcom/join/mgps/customview/XScrollView;->t:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/join/mgps/customview/XScrollView;->r:F

    .line 5
    iget v2, p0, Lcom/join/mgps/customview/XScrollView;->s:F

    iget v3, p0, Lcom/join/mgps/customview/XScrollView;->u:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/join/mgps/customview/XScrollView;->s:F

    .line 6
    iput v0, p0, Lcom/join/mgps/customview/XScrollView;->t:F

    .line 7
    iput v1, p0, Lcom/join/mgps/customview/XScrollView;->u:F

    .line 8
    iget v0, p0, Lcom/join/mgps/customview/XScrollView;->r:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    return v1

    .line 9
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->v:Z

    if-eqz v0, :cond_2

    .line 10
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/join/mgps/customview/XScrollView;->s:F

    iput v0, p0, Lcom/join/mgps/customview/XScrollView;->r:F

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XScrollView;->t:F

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XScrollView;->u:F

    .line 14
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    add-int/2addr v2, v0

    sub-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->p:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->o()V

    .line 5
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/XScrollView;->a:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XScrollView;->a:F

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 4
    iput v1, p0, Lcom/join/mgps/customview/XScrollView;->a:F

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->n()V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/XScrollView;->a:F

    sub-float/2addr v0, v1

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/XScrollView;->a:F

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->i()Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0x3fe66666    # 1.8f

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/join/mgps/customview/XScrollView;->h:Lcom/join/mgps/customview/XListViewHeader;

    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    move-result v1

    if-gtz v1, :cond_2

    cmpl-float v1, v0, v2

    if-lez v1, :cond_3

    :cond_2
    div-float/2addr v0, v3

    .line 9
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/XScrollView;->s(F)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->h()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/join/mgps/customview/XScrollView;->l:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v1

    if-gtz v1, :cond_4

    cmpg-float v1, v0, v2

    if-gez v1, :cond_5

    :cond_4
    neg-float v0, v0

    div-float/2addr v0, v3

    .line 11
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/XScrollView;->r(F)V

    .line 12
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->g()V

    goto :goto_1

    .line 13
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XScrollView;->a:F

    .line 14
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->g()V

    .line 15
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public p()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->q:Z

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/XScrollView;->l:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->n:Z

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->m()V

    :cond_0
    return-void
.end method

.method public setAutoLoadEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/XScrollView;->p:Z

    return-void
.end method

.method public setContentView(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->f:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/XScrollView;->g:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    const v1, 0x7f0902f4

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/XScrollView;->g:Landroid/widget/LinearLayout;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setIXScrollViewListener(Lcom/join/mgps/customview/XScrollView$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XScrollView;->e:Lcom/join/mgps/customview/XScrollView$e;

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XScrollView;->c:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setPullLoadEnable(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/XScrollView;->o:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->l:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->l:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->l:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->l:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 6
    :cond_0
    iput-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->q:Z

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->l:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->l:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->l:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->l:Lcom/join/mgps/customview/XListViewFooter;

    new-instance v0, Lcom/join/mgps/customview/XScrollView$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XScrollView$b;-><init>(Lcom/join/mgps/customview/XScrollView;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public setPullRefreshEnable(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/XScrollView;->m:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->i:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public setRefreshTime(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setScrollEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/XScrollView;->v:Z

    xor-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->f:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/XScrollView;->g:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    const v1, 0x7f0902f4

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/XScrollView;->g:Landroid/widget/LinearLayout;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
