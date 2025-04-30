.class Lcom/join/mgps/ptr/PtrFrameLayout$c;
.super Ljava/lang/Object;
.source "PtrFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/ptr/PtrFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/widget/Scroller;

.field private c:Z

.field private d:I

.field private e:I

.field final synthetic f:Lcom/join/mgps/ptr/PtrFrameLayout;


# direct methods
.method public constructor <init>(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->f:Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->c:Z

    .line 3
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->b:Landroid/widget/Scroller;

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/ptr/PtrFrameLayout$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->d()V

    return-void
.end method

.method static synthetic c(Lcom/join/mgps/ptr/PtrFrameLayout$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->c:Z

    return p0
.end method

.method private d()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->f()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->b:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->f:Lcom/join/mgps/ptr/PtrFrameLayout;

    iget-object v1, v0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->c(Lcom/join/mgps/ptr/PtrFrameLayout;)Lcom/join/mgps/ptr/indicator/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "finish, currentPos:%s"

    invoke-static {v1, v0, v2}, Lcom/join/mgps/ptr/util/a;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->f()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->f:Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->x()V

    return-void
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->c:Z

    .line 2
    iput v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->a:I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->f:Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->c:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->b:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->f:Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->w()V

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->f()V

    :cond_1
    return-void
.end method

.method public g(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->f:Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-static {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->c(Lcom/join/mgps/ptr/PtrFrameLayout;)Lcom/join/mgps/ptr/indicator/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/indicator/a;->t(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->f:Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-static {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->c(Lcom/join/mgps/ptr/PtrFrameLayout;)Lcom/join/mgps/ptr/indicator/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->d()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->d:I

    .line 3
    iput p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->e:I

    sub-int v5, p1, v0

    .line 4
    sget-boolean v1, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    const/4 v2, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->f:Lcom/join/mgps/ptr/PtrFrameLayout;

    iget-object v1, v1, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "tryToScrollTo: start: %s, distance:%s, to:%s"

    invoke-static {v1, p1, v3}, Lcom/join/mgps/ptr/util/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->f:Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    iput v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->a:I

    .line 8
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->b:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->b:Landroid/widget/Scroller;

    invoke-virtual {p1, v7}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->b:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->f:Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 12
    iput-boolean v7, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->c:Z

    return-void
.end method

.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    iget-object v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->b:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 3
    iget v4, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->a:I

    sub-int v4, v3, v4

    .line 4
    sget-boolean v5, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 5
    iget-object v5, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->f:Lcom/join/mgps/ptr/PtrFrameLayout;

    iget-object v5, v5, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    iget v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    const/4 v1, 0x2

    iget v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->f:Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-static {v2}, Lcom/join/mgps/ptr/PtrFrameLayout;->c(Lcom/join/mgps/ptr/PtrFrameLayout;)Lcom/join/mgps/ptr/indicator/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/ptr/indicator/a;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const-string v1, "scroll: %s, start: %s, to: %s, currentPos: %s, current :%s, last: %s, delta: %s"

    .line 7
    invoke-static {v5, v1, v6}, Lcom/join/mgps/ptr/util/a;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-nez v0, :cond_3

    .line 8
    iput v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->a:I

    .line 9
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->f:Lcom/join/mgps/ptr/PtrFrameLayout;

    int-to-float v1, v4

    invoke-static {v0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->d(Lcom/join/mgps/ptr/PtrFrameLayout;F)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->f:Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 11
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->e()V

    :goto_2
    return-void
.end method
