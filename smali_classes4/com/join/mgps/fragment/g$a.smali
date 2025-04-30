.class Lcom/join/mgps/fragment/g$a;
.super Ljava/lang/Object;
.source "ChoiceFragment.java"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/g;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/g;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/g$a;->a:Lcom/join/mgps/fragment/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g$a;->a:Lcom/join/mgps/fragment/g;

    iget-object v0, v0, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/g$a;->a:Lcom/join/mgps/fragment/g;

    const-string v1, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528!"

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/g;->showMessage(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/g$a;->a:Lcom/join/mgps/fragment/g;

    iget-object v0, v0, Lcom/join/mgps/fragment/g;->m:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->z1()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/g$a;->a:Lcom/join/mgps/fragment/g;

    invoke-static {v0}, Lcom/join/mgps/fragment/g;->N(Lcom/join/mgps/fragment/g;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/g;->W(I)V

    :goto_0
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g$a;->a:Lcom/join/mgps/fragment/g;

    iget-object v0, v0, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/g$a;->a:Lcom/join/mgps/fragment/g;

    const-string v1, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528!"

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/g;->showMessage(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/g$a;->a:Lcom/join/mgps/fragment/g;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/g;->e0()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/g$a;->a:Lcom/join/mgps/fragment/g;

    iget-object v0, v0, Lcom/join/mgps/fragment/g;->m:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/g$a;->a:Lcom/join/mgps/fragment/g;

    invoke-static {v0}, Lcom/join/mgps/fragment/g;->M(Lcom/join/mgps/fragment/g;)V

    :goto_0
    return-void
.end method
