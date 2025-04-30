.class Lcom/join/mgps/customview/SlidingTabForumLayout$d;
.super Ljava/lang/Object;
.source "SlidingTabForumLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabForumLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/SlidingTabForumLayout;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/SlidingTabForumLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->a:Lcom/join/mgps/customview/SlidingTabForumLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->a:Lcom/join/mgps/customview/SlidingTabForumLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->a:Lcom/join/mgps/customview/SlidingTabForumLayout;

    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->l(Lcom/join/mgps/customview/SlidingTabForumLayout;)I

    move-result v1

    const-string v2, "scrollRunnable"

    if-ne v0, v1, :cond_2

    const-string v0, "\u505c\u6b62\u6eda\u52a8"

    .line 2
    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->a:Lcom/join/mgps/customview/SlidingTabForumLayout;

    sget-object v1, Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;->IDLE:Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

    invoke-static {v0, v1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->o(Lcom/join/mgps/customview/SlidingTabForumLayout;Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;)Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->a:Lcom/join/mgps/customview/SlidingTabForumLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->p(Lcom/join/mgps/customview/SlidingTabForumLayout;)Lcom/join/mgps/customview/SlidingTabForumLayout$f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->a:Lcom/join/mgps/customview/SlidingTabForumLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->p(Lcom/join/mgps/customview/SlidingTabForumLayout;)Lcom/join/mgps/customview/SlidingTabForumLayout$f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->a:Lcom/join/mgps/customview/SlidingTabForumLayout;

    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->n(Lcom/join/mgps/customview/SlidingTabForumLayout;)Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/customview/SlidingTabForumLayout$f;->a(Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->a:Lcom/join/mgps/customview/SlidingTabForumLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->q(Lcom/join/mgps/customview/SlidingTabForumLayout;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->a:Lcom/join/mgps/customview/SlidingTabForumLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->q(Lcom/join/mgps/customview/SlidingTabForumLayout;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "Fling..."

    .line 8
    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->a:Lcom/join/mgps/customview/SlidingTabForumLayout;

    sget-object v1, Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;->FLING:Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

    invoke-static {v0, v1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->o(Lcom/join/mgps/customview/SlidingTabForumLayout;Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;)Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->a:Lcom/join/mgps/customview/SlidingTabForumLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->p(Lcom/join/mgps/customview/SlidingTabForumLayout;)Lcom/join/mgps/customview/SlidingTabForumLayout$f;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->a:Lcom/join/mgps/customview/SlidingTabForumLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->p(Lcom/join/mgps/customview/SlidingTabForumLayout;)Lcom/join/mgps/customview/SlidingTabForumLayout$f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->a:Lcom/join/mgps/customview/SlidingTabForumLayout;

    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->n(Lcom/join/mgps/customview/SlidingTabForumLayout;)Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/customview/SlidingTabForumLayout$f;->a(Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;)V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->a:Lcom/join/mgps/customview/SlidingTabForumLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-static {v0, v1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->m(Lcom/join/mgps/customview/SlidingTabForumLayout;I)I

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->a:Lcom/join/mgps/customview/SlidingTabForumLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->q(Lcom/join/mgps/customview/SlidingTabForumLayout;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->a:Lcom/join/mgps/customview/SlidingTabForumLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->q(Lcom/join/mgps/customview/SlidingTabForumLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->a:Lcom/join/mgps/customview/SlidingTabForumLayout;

    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->r(Lcom/join/mgps/customview/SlidingTabForumLayout;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method
