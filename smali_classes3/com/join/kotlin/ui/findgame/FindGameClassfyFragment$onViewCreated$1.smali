.class public final Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "FindGameClassfyFragment.kt"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1",
        "Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;",
        "",
        "onRefresh",
        "onLoadMore",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getRequestArgs()Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPage(I)V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getPresenter()Lcom/join/kotlin/presenter/FindModlePrensenter;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getRequestArgs()Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/kotlin/presenter/FindModlePrensenter;->loadClassfyDatas(Landroid/content/Context;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V

    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/gf;

    move-result-object v0

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/gf;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->t1()V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->setPage(I)V

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getRequestArgs()Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPage(I)V

    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getPresenter()Lcom/join/kotlin/presenter/FindModlePrensenter;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getRequestArgs()Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/kotlin/presenter/FindModlePrensenter;->loadClassfyDatas(Landroid/content/Context;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V

    return-void
.end method
