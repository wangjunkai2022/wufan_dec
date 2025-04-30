.class Lcom/join/mgps/adapter/t4$e;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "PapaMainV2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/t4;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/adapter/t4$m;

.field final synthetic c:Lcom/join/mgps/adapter/t4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/t4;Ljava/util/List;Lcom/join/mgps/adapter/t4$m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t4$e;->c:Lcom/join/mgps/adapter/t4;

    iput-object p2, p0, Lcom/join/mgps/adapter/t4$e;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/join/mgps/adapter/t4$e;->b:Lcom/join/mgps/adapter/t4$m;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/t4$e;->c:Lcom/join/mgps/adapter/t4;

    iget-object p2, p0, Lcom/join/mgps/adapter/t4$e;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/join/mgps/adapter/t4$e;->b:Lcom/join/mgps/adapter/t4$m;

    invoke-static {v0}, Lcom/join/mgps/adapter/t4$m;->a(Lcom/join/mgps/adapter/t4$m;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/join/mgps/adapter/t4;->q(Lcom/join/mgps/adapter/t4;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
