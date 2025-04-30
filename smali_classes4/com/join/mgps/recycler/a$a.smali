.class Lcom/join/mgps/recycler/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "HeaderAndFooterRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/recycler/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/recycler/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/recycler/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/recycler/a$a;->a:Lcom/join/mgps/recycler/a;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/recycler/a$a;->a:Lcom/join/mgps/recycler/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/recycler/a$a;->a:Lcom/join/mgps/recycler/a;

    invoke-virtual {v0}, Lcom/join/mgps/recycler/a;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/recycler/a$a;->a:Lcom/join/mgps/recycler/a;

    invoke-virtual {v0}, Lcom/join/mgps/recycler/a;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/recycler/a$a;->a:Lcom/join/mgps/recycler/a;

    invoke-virtual {v0}, Lcom/join/mgps/recycler/a;->getHeaderViewsCount()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/recycler/a$a;->a:Lcom/join/mgps/recycler/a;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    add-int/2addr p2, p3

    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/recycler/a$a;->a:Lcom/join/mgps/recycler/a;

    invoke-virtual {v0}, Lcom/join/mgps/recycler/a;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
