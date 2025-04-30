.class public Lcom/join/mgps/customview/LoadMoreRecyclerView$b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LoadMoreRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/LoadMoreRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/LoadMoreRecyclerView$b$a;
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
.field private a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private b:I

.field final synthetic c:Lcom/join/mgps/customview/LoadMoreRecyclerView;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/LoadMoreRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$b;->c:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$b;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$b;->b:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$b;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$b;->c:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-static {v1}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->U0(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/LoadMoreRecyclerView$b;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$b;->c:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->U0(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x3e7

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$b;->c:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$b;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$b;->c:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$b;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/LoadMoreRecyclerView$b;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x3e7

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$b;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 3
    :cond_0
    :try_start_0
    const-class p2, Lcom/join/mgps/customview/LoadMoreRecyclerView$b$a;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4
    check-cast p1, Lcom/join/mgps/customview/LoadMoreRecyclerView$b$a;

    .line 5
    iget-object p2, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$b;->c:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    invoke-static {p2}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->Z0(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Z

    move-result p2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p1, Lcom/join/mgps/customview/LoadMoreRecyclerView$b$a;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p1, p1, Lcom/join/mgps/customview/LoadMoreRecyclerView$b$a;->b:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/customview/LoadMoreRecyclerView$b$a;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p1, p1, Lcom/join/mgps/customview/LoadMoreRecyclerView$b$a;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/16 v0, 0x3e7

    if-ne p2, v0, :cond_0

    .line 1
    new-instance p2, Lcom/join/mgps/customview/LoadMoreRecyclerView$b$a;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0601

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/customview/LoadMoreRecyclerView$b$a;-><init>(Lcom/join/mgps/customview/LoadMoreRecyclerView$b;Landroid/view/View;)V

    return-object p2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$b;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method
