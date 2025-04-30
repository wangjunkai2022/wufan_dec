.class final Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ModgameCloudListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->onClickRunGame(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
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
.field final synthetic $archive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3;->$archive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3;->$archive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUid()I

    move-result v0

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    const-string v2, "AccountUtil_.getInstance_(context)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    const-string v2, "AccountUtil_.getInstance_(context).accountData"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getCheckDownloadTypeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    move-result-object v0

    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3$1;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3;)V

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->setClickDelDialogListener(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V

    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getCheckDownloadTypeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    move-result-object v0

    .line 5
    new-instance v9, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    const-string v2, "\u662f\u5426\u8986\u76d6\u672c\u5730\u9ed8\u8ba4\u5b58\u6863\uff1f"

    const-string v3, "\u8986\u76d6\u672c\u5730\u5b58\u6863\u540e\uff0c\u4f60\u53ef\u518d\u6b21\u5206\u4eab\u5b58\u6863\u3002"

    const-string v4, "\u8986\u76d6"

    const-string v5, "\u4e0d\u8986\u76d6"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    invoke-virtual {v0, v9}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->setDatas(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V

    .line 7
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getCheckDownloadTypeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/join/kotlin/domain/ext/EXTKt;->dialogFragmentCanShow(Landroidx/fragment/app/DialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getCheckDownloadTypeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "childFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "checkDownloadTypeDialog"

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3;->$archive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->access$showDownloadDialog(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;I)V

    :cond_1
    :goto_0
    return-void
.end method
