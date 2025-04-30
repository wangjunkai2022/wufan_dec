.class Lcom/join/mgps/fragment/a0$b;
.super Ljava/lang/Object;
.source "DIscoveryTabFragment.java"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/a0;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/a0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/a0$b;->a:Lcom/join/mgps/fragment/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/a0$b;->a:Lcom/join/mgps/fragment/a0;

    iget v1, v0, Lcom/join/mgps/fragment/a0;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2
    iget v1, v0, Lcom/join/mgps/fragment/a0;->l:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/a0;->O(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget v1, v0, Lcom/join/mgps/fragment/a0;->l:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/a0;->loadData(I)V

    :goto_0
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/a0$b;->a:Lcom/join/mgps/fragment/a0;

    const/4 v1, 0x1

    iput v1, v0, Lcom/join/mgps/fragment/a0;->l:I

    .line 2
    iget-object v0, v0, Lcom/join/mgps/fragment/a0;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->t1()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/a0$b;->a:Lcom/join/mgps/fragment/a0;

    iget v1, v0, Lcom/join/mgps/fragment/a0;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, v0, Lcom/join/mgps/fragment/a0;->l:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/a0;->O(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget v1, v0, Lcom/join/mgps/fragment/a0;->l:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/a0;->loadData(I)V

    :goto_0
    return-void
.end method
