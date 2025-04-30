.class public final Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$3;
.super Ljava/lang/Object;
.source "FindGameChoiceFragment.kt"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "com/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$3",
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
.field final synthetic $requestArgs:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$3;->this$0:Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;

    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$3;->$requestArgs:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$3;->$requestArgs:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$3;->this$0:Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;->getPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPage(I)V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$3;->this$0:Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;->getPrensenter()Lcom/join/kotlin/presenter/FindModlePrensenter;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$3;->this$0:Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$3;->$requestArgs:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    invoke-virtual {v0, v1, v2}, Lcom/join/kotlin/presenter/FindModlePrensenter;->loadFindChoiceData(Landroid/content/Context;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V

    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$3;->this$0:Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;->setPage(I)V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$3;->this$0:Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/ef;

    move-result-object v0

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ef;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->t1()V

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$3;->$requestArgs:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$3;->this$0:Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;->getPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPage(I)V

    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$3;->this$0:Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;->getPrensenter()Lcom/join/kotlin/presenter/FindModlePrensenter;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$3;->this$0:Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$3;->$requestArgs:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    invoke-virtual {v0, v1, v2}, Lcom/join/kotlin/presenter/FindModlePrensenter;->loadFindChoiceData(Landroid/content/Context;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V

    return-void
.end method
