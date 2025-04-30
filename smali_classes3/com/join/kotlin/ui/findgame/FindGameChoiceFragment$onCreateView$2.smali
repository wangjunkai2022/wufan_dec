.class final Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FindGameChoiceFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "invoke",
        "()V",
        "<anonymous>"
    }
    k = 0x3
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

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$2;->this$0:Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;

    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$2;->$requestArgs:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$2;->this$0:Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;->getPrensenter()Lcom/join/kotlin/presenter/FindModlePrensenter;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$2;->this$0:Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment$onCreateView$2;->$requestArgs:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    invoke-virtual {v0, v1, v2}, Lcom/join/kotlin/presenter/FindModlePrensenter;->loadFindChoiceData(Landroid/content/Context;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V

    return-void
.end method
