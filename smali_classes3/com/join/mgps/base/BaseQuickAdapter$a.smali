.class Lcom/join/mgps/base/BaseQuickAdapter$a;
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
.field final synthetic a:Landroidx/recyclerview/widget/LinearLayoutManager;

.field final synthetic b:Lcom/join/mgps/base/BaseQuickAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/base/BaseQuickAdapter;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter$a;->b:Lcom/join/mgps/base/BaseQuickAdapter;

    iput-object p2, p0, Lcom/join/mgps/base/BaseQuickAdapter$a;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter$a;->b:Lcom/join/mgps/base/BaseQuickAdapter;

    iget-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter$a;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->access$000(Lcom/join/mgps/base/BaseQuickAdapter;Landroidx/recyclerview/widget/LinearLayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter$a;->b:Lcom/join/mgps/base/BaseQuickAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    :cond_0
    return-void
.end method
