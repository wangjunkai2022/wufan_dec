.class final Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog$onClick$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CommentArchiveDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->onClick(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog$onClick$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog$onClick$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog$onClick$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog$onClick$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "NEGATIVE"

    invoke-virtual {v0, v1, v2}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->commentArchive(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog$onClick$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickEvalCloudButton:Lcom/papa/sim/statistic/Event;

    .line 5
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v3, "4"

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog$onClick$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;

    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method
