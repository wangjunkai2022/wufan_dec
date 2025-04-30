.class Lcom/join/mgps/fragment/b$b;
.super Ljava/lang/Object;
.source "ArenaGameListFragment.java"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/b;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/b;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/b$b;->a:Lcom/join/mgps/fragment/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/b$b;->a:Lcom/join/mgps/fragment/b;

    invoke-static {v0}, Lcom/join/mgps/fragment/b;->a0(Lcom/join/mgps/fragment/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/b$b;->a:Lcom/join/mgps/fragment/b;

    invoke-static {v0}, Lcom/join/mgps/fragment/b;->Z(Lcom/join/mgps/fragment/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/b$b;->a:Lcom/join/mgps/fragment/b;

    iget-object v0, v0, Lcom/join/mgps/fragment/b;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->y1()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/b$b;->a:Lcom/join/mgps/fragment/b;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/b;->c0()V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/b$b;->a:Lcom/join/mgps/fragment/b;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/b;->loadData()V

    :cond_1
    return-void
.end method

.method public onRefresh()V
    .locals 0

    return-void
.end method
