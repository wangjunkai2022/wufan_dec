.class Lcom/join/mgps/customview/SlidingTabLayout4$b;
.super Ljava/lang/Object;
.source "SlidingTabLayout4.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabLayout4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/SlidingTabLayout4;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/SlidingTabLayout4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout4$b;->a:Lcom/join/mgps/customview/SlidingTabLayout4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4$b;->a:Lcom/join/mgps/customview/SlidingTabLayout4;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout4$b;->a:Lcom/join/mgps/customview/SlidingTabLayout4;

    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabLayout4;->j(Lcom/join/mgps/customview/SlidingTabLayout4;)I

    move-result v1

    const-string v2, "scrollRunnable"

    if-ne v0, v1, :cond_2

    const-string v0, "\u505c\u6b62\u6eda\u52a8"

    .line 2
    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4$b;->a:Lcom/join/mgps/customview/SlidingTabLayout4;

    sget-object v1, Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;->IDLE:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    invoke-static {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout4;->m(Lcom/join/mgps/customview/SlidingTabLayout4;Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;)Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4$b;->a:Lcom/join/mgps/customview/SlidingTabLayout4;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout4;->n(Lcom/join/mgps/customview/SlidingTabLayout4;)Lcom/join/mgps/customview/SlidingTabLayout4$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4$b;->a:Lcom/join/mgps/customview/SlidingTabLayout4;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout4;->n(Lcom/join/mgps/customview/SlidingTabLayout4;)Lcom/join/mgps/customview/SlidingTabLayout4$c;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout4$b;->a:Lcom/join/mgps/customview/SlidingTabLayout4;

    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabLayout4;->l(Lcom/join/mgps/customview/SlidingTabLayout4;)Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout4$c;->a(Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4$b;->a:Lcom/join/mgps/customview/SlidingTabLayout4;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout4;->o(Lcom/join/mgps/customview/SlidingTabLayout4;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4$b;->a:Lcom/join/mgps/customview/SlidingTabLayout4;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout4;->o(Lcom/join/mgps/customview/SlidingTabLayout4;)Landroid/os/Handler;

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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4$b;->a:Lcom/join/mgps/customview/SlidingTabLayout4;

    sget-object v1, Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;->FLING:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    invoke-static {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout4;->m(Lcom/join/mgps/customview/SlidingTabLayout4;Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;)Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4$b;->a:Lcom/join/mgps/customview/SlidingTabLayout4;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout4;->n(Lcom/join/mgps/customview/SlidingTabLayout4;)Lcom/join/mgps/customview/SlidingTabLayout4$c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4$b;->a:Lcom/join/mgps/customview/SlidingTabLayout4;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout4;->n(Lcom/join/mgps/customview/SlidingTabLayout4;)Lcom/join/mgps/customview/SlidingTabLayout4$c;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout4$b;->a:Lcom/join/mgps/customview/SlidingTabLayout4;

    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabLayout4;->l(Lcom/join/mgps/customview/SlidingTabLayout4;)Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout4$c;->a(Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;)V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4$b;->a:Lcom/join/mgps/customview/SlidingTabLayout4;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-static {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout4;->k(Lcom/join/mgps/customview/SlidingTabLayout4;I)I

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4$b;->a:Lcom/join/mgps/customview/SlidingTabLayout4;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout4;->o(Lcom/join/mgps/customview/SlidingTabLayout4;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4$b;->a:Lcom/join/mgps/customview/SlidingTabLayout4;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout4;->o(Lcom/join/mgps/customview/SlidingTabLayout4;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout4$b;->a:Lcom/join/mgps/customview/SlidingTabLayout4;

    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabLayout4;->p(Lcom/join/mgps/customview/SlidingTabLayout4;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method
