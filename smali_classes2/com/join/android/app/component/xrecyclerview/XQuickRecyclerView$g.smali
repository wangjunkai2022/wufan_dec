.class public Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "XQuickRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field final synthetic c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;


# direct methods
.method public constructor <init>(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->a:Z

    .line 3
    iput-object p2, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    iget-object v1, v0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->K1:Lcom/join/mgps/customview/XListViewFooter;

    if-eqz v1, :cond_2

    .line 2
    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->Y0(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    iget-object v0, v0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->K1:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    iget-boolean v1, v0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->L1:Z

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, v0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->K1:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->K1:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->c1(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public c(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->V0(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public d(I)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    invoke-static {v2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->c1(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v0

    if-ge p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public e(I)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getItemCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->V0(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 2
    iget-boolean v1, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->a:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b()I

    move-result v1

    iget-object v2, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    :goto_1
    add-int/2addr v1, v0

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b()I

    move-result v1

    goto :goto_1

    .line 6
    :cond_2
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->a:Z

    .line 7
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b()I

    move-result v1

    iget-object v2, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b()I

    move-result v1

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->a:Z

    .line 2
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b()I

    move-result v1

    add-int/2addr v1, v0

    if-lt p1, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b()I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr p1, v1

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-boolean v2, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->a:Z

    .line 4
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b()I

    move-result v3

    add-int/2addr v3, v2

    sub-int v2, p1, v3

    if-ge v2, v0, :cond_2

    .line 5
    iget-object v3, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    iget-object v4, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->T0(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "XRecyclerView require itemViewType in adapter should be less than 10000 "

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->e(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->a:Z

    if-eqz v3, :cond_3

    const/16 p1, 0x2710

    return p1

    .line 8
    :cond_3
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->d(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->a:Z

    if-eqz v0, :cond_4

    add-int/lit8 p1, p1, -0x1

    .line 10
    :cond_4
    invoke-static {}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->U0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 11
    :cond_5
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->c(I)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x2711

    return p1

    :cond_6
    if-ge v2, v0, :cond_7

    .line 12
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_7
    return v1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 5
    new-instance v1, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g$a;

    invoke-direct {v1, p0, v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g$a;-><init>(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->d(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->e(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->a:Z

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->f()V

    return-void

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->a:Z

    .line 5
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b()I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr p2, v1

    .line 6
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 9
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->d(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->e(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->a:Z

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0, p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->f()V

    return-void

    .line 13
    :cond_2
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->a:Z

    .line 14
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b()I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr p2, v1

    .line 15
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const/16 v0, 0x2710

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    invoke-static {v0, p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->d1(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance p1, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g$b;

    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    invoke-static {v0, p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->S0(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g$b;-><init>(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;Landroid/view/View;)V

    return-object p1

    :cond_1
    const/16 v0, 0x2711

    if-ne p2, v0, :cond_2

    .line 3
    new-instance p1, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g$b;

    iget-object p2, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    iget-object p2, p2, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->K1:Lcom/join/mgps/customview/XListViewFooter;

    invoke-direct {p1, p0, p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g$b;-><init>(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;Landroid/view/View;)V

    return-object p1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->d(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->e(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method public unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->b:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method
