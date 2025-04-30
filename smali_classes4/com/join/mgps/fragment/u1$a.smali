.class Lcom/join/mgps/fragment/u1$a;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "FriendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/u1;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/u1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/u1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/u1$a;->a:Lcom/join/mgps/fragment/u1;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$a;->a:Lcom/join/mgps/fragment/u1;

    invoke-static {v0}, Lcom/join/mgps/fragment/u1;->X(Lcom/join/mgps/fragment/u1;)Lcom/join/mgps/adapter/l0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/fragment/u1$a;->a:Lcom/join/mgps/fragment/u1;

    iget-object v1, v0, Lcom/join/mgps/fragment/u1;->h:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 3
    invoke-static {v0}, Lcom/join/mgps/fragment/u1;->X(Lcom/join/mgps/fragment/u1;)Lcom/join/mgps/adapter/l0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/adapter/l0;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$a;->a:Lcom/join/mgps/fragment/u1;

    iget-object v0, v0, Lcom/join/mgps/fragment/u1;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$a;->a:Lcom/join/mgps/fragment/u1;

    iget-object v0, v0, Lcom/join/mgps/fragment/u1;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
