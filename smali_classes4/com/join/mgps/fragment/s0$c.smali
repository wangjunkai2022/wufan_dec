.class Lcom/join/mgps/fragment/s0$c;
.super Ljava/lang/Object;
.source "ForumPostsFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/s0;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/s0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/s0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/s0$c;->a:Lcom/join/mgps/fragment/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s0$c;->a:Lcom/join/mgps/fragment/s0;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/s0;->a0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/s0$c;->a:Lcom/join/mgps/fragment/s0;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/fragment/q0;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/s0$c;->a:Lcom/join/mgps/fragment/s0;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/fragment/q0;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/q0;->k0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/s0$c;->a:Lcom/join/mgps/fragment/s0;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/s0;->x0()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/s0$c;->a:Lcom/join/mgps/fragment/s0;

    const/4 v1, 0x0

    iput v1, v0, Lcom/join/mgps/fragment/s0;->o:I

    .line 6
    iput v1, v0, Lcom/join/mgps/fragment/s0;->n:I

    .line 7
    iget-object v0, v0, Lcom/join/mgps/fragment/s0;->s:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/s0$c;->a:Lcom/join/mgps/fragment/s0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/s0;->V(I)V

    :cond_2
    return-void
.end method
