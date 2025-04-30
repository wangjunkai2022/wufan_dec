.class Lcom/join/mgps/base/BaseQuickAdapter$b;
.super Ljava/lang/Object;
.source "BaseQuickAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/base/BaseQuickAdapter;->disableLoadMoreIfNotFullPage(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

.field final synthetic b:Lcom/join/mgps/base/BaseQuickAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/base/BaseQuickAdapter;Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter$b;->b:Lcom/join/mgps/base/BaseQuickAdapter;

    iput-object p2, p0, Lcom/join/mgps/base/BaseQuickAdapter$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    new-array v0, v0, [I

    .line 2
    iget-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    .line 3
    iget-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter$b;->b:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-static {v1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->access$100(Lcom/join/mgps/base/BaseQuickAdapter;[I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/base/BaseQuickAdapter$b;->b:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-virtual {v2}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter$b;->b:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    :cond_0
    return-void
.end method
