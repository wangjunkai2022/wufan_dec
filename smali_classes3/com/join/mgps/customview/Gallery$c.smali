.class Lcom/join/mgps/customview/Gallery$c;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/widget/Scroller;

.field private b:I

.field final synthetic c:Lcom/join/mgps/customview/Gallery;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/Gallery;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/Gallery$c;->a:Landroid/widget/Scroller;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/Gallery$c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/Gallery$c;->c(Z)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/customview/Gallery$c;)Landroid/widget/Scroller;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/Gallery$c;->a:Landroid/widget/Scroller;

    return-object p0
.end method

.method private c(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery$c;->a:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    invoke-static {p1}, Lcom/join/mgps/customview/Gallery;->D(Lcom/join/mgps/customview/Gallery;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public e(I)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery$c;->d()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/Gallery$c;->b:I

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/Gallery$c;->a:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    neg-int v4, p1

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    invoke-static {p1}, Lcom/join/mgps/customview/Gallery;->C(Lcom/join/mgps/customview/Gallery;)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f(I)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery$c;->d()V

    if-gez p1, :cond_1

    const v0, 0x7fffffff

    const v2, 0x7fffffff

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iput v2, p0, Lcom/join/mgps/customview/Gallery$c;->b:I

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/Gallery$c;->a:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v4, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/Gallery$c;->c(Z)V

    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    iget v1, v0, Lcom/join/mgps/customview/AdapterView;->s:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2
    invoke-direct {p0, v2}, Lcom/join/mgps/customview/Gallery$c;->c(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/join/mgps/customview/Gallery;->F(Lcom/join/mgps/customview/Gallery;Z)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery$c;->a:Landroid/widget/Scroller;

    .line 5
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 6
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 7
    iget v3, p0, Lcom/join/mgps/customview/Gallery$c;->b:I

    sub-int/2addr v3, v0

    if-lez v3, :cond_2

    .line 8
    iget-object v4, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    invoke-static {v4}, Lcom/join/mgps/customview/Gallery;->H(Lcom/join/mgps/customview/Gallery;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    iget v6, v5, Lcom/join/mgps/customview/AdapterView;->a:I

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/2addr v6, v5

    sub-int/2addr v6, v2

    goto :goto_0

    .line 9
    :cond_1
    iget-object v5, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    iget v6, v5, Lcom/join/mgps/customview/AdapterView;->a:I

    .line 10
    :goto_0
    invoke-static {v4, v6}, Lcom/join/mgps/customview/Gallery;->G(Lcom/join/mgps/customview/Gallery;I)I

    .line 11
    iget-object v4, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_2

    .line 12
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    invoke-static {v4}, Lcom/join/mgps/customview/Gallery;->H(Lcom/join/mgps/customview/Gallery;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    iget v5, v5, Lcom/join/mgps/customview/AdapterView;->a:I

    goto :goto_1

    .line 13
    :cond_3
    iget-object v5, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    iget v6, v5, Lcom/join/mgps/customview/AdapterView;->a:I

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/2addr v6, v5

    add-int/lit8 v5, v6, -0x1

    .line 14
    :goto_1
    invoke-static {v4, v5}, Lcom/join/mgps/customview/Gallery;->G(Lcom/join/mgps/customview/Gallery;I)I

    .line 15
    iget-object v4, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    neg-int v4, v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 16
    :goto_2
    iget-object v4, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    invoke-virtual {v4, v3}, Lcom/join/mgps/customview/Gallery;->g0(I)V

    if-eqz v1, :cond_4

    .line 17
    iget-object v1, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    invoke-static {v1}, Lcom/join/mgps/customview/Gallery;->E(Lcom/join/mgps/customview/Gallery;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 18
    iput v0, p0, Lcom/join/mgps/customview/Gallery$c;->b:I

    .line 19
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery$c;->c:Lcom/join/mgps/customview/Gallery;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 20
    :cond_4
    invoke-direct {p0, v2}, Lcom/join/mgps/customview/Gallery$c;->c(Z)V

    :goto_3
    return-void
.end method
