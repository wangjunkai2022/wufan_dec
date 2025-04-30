.class Lcom/join/mgps/customview/LoadMoreRecyclerView$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "LoadMoreRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/LoadMoreRecyclerView;->b1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/LoadMoreRecyclerView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/LoadMoreRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->a:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->a:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->S0(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->a:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->S0(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->a:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->T0(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Lcom/join/mgps/customview/LoadMoreRecyclerView$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->a:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->U0(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->a:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->V0(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p3, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->a:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->W0(Lcom/join/mgps/customview/LoadMoreRecyclerView;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->a:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-static {v2}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->X0(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Lcom/join/mgps/customview/LoadMoreRecyclerView$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/customview/LoadMoreRecyclerView$b;->getItemCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->a:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->setLoadingMore(Z)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->a:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-static {v1, v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->Y0(Lcom/join/mgps/customview/LoadMoreRecyclerView;I)I

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->a:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->T0(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Lcom/join/mgps/customview/LoadMoreRecyclerView$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView$c;->onLoadMore()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->a:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->S0(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->a:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->S0(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_1
    return-void
.end method
