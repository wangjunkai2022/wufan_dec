.class public Lcom/join/mgps/recycler/g;
.super Ljava/lang/Object;
.source "RecyclerViewUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    instance-of v0, p0, Lcom/join/mgps/recycler/a;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/join/mgps/recycler/a;

    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->getHeaderViewsCount()I

    move-result p0

    if-lez p0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    sub-int/2addr p1, p0

    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    return p0
.end method

.method public static b(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    instance-of v0, p0, Lcom/join/mgps/recycler/a;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/join/mgps/recycler/a;

    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->getHeaderViewsCount()I

    move-result p0

    if-lez p0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    sub-int/2addr p1, p0

    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p0

    return p0
.end method

.method public static c(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    instance-of v0, p0, Lcom/join/mgps/recycler/a;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/join/mgps/recycler/a;

    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->c()Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/recycler/a;->removeFooterView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static d(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    instance-of v0, p0, Lcom/join/mgps/recycler/a;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/join/mgps/recycler/a;

    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->d()Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/recycler/a;->removeFooterView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static e(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    instance-of v0, p0, Lcom/join/mgps/recycler/a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p0, Lcom/join/mgps/recycler/a;

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/recycler/a;->a(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static f(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    instance-of v0, p0, Lcom/join/mgps/recycler/a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p0, Lcom/join/mgps/recycler/a;

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/recycler/a;->b(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
