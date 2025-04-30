.class final Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$startGame$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModgameCloudListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->startGame(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
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

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$startGame$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$startGame$1;->$archive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$startGame$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$startGame$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    :goto_0
    move-object v2, v0

    if-nez v2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$startGame$1;->$archive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$startGame$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$startGame$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$startGame$1;->$archive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "archive.id"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$startGame$1;->$archive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUid()I

    move-result v0

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    const-string v3, "AccountUtil_.getInstance_(ctx)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    const-string v3, "AccountUtil_.getInstance_(ctx).accountData"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$startGame$1;->$archive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUid()I

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {v2}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u6b63\u5728\u4f7f\u7528 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$startGame$1;->$archive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u7684\u5b58\u6863"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$startGame$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getGoldFingerBean()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_6

    const-string v0, "0"

    goto :goto_4

    :cond_6
    const-string v0, "1"

    :goto_4
    move-object v4, v0

    .line 10
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$startGame$1;->$archive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v6

    .line 11
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$startGame$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getModgameBean()Lcom/join/mgps/dto/ModGameDetailBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBbs_strategy_switch()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5

    :cond_7
    move-object v0, v1

    :goto_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 12
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$startGame$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getModgameBean()Lcom/join/mgps/dto/ModGameDetailBean;

    move-result-object v0

    if-eqz v0, :cond_a

    if-eqz v6, :cond_a

    .line 13
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    const-string v3, "downloadTask.modInfoBean"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$startGame$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getModgameBean()Lcom/join/mgps/dto/ModGameDetailBean;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    goto :goto_6

    :cond_8
    move-object v3, v1

    :goto_6
    if-eqz v3, :cond_a

    .line 15
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getVer()I

    move-result v7

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getVer()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v7, v0, :cond_a

    const/16 v0, 0x9

    .line 16
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/ModInfoBean;->setStatus(I)V

    .line 17
    invoke-static {v3}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMod_info(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, v6}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    if-eqz v6, :cond_b

    .line 19
    sget-object v1, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$startGame$1;->$archive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual/range {v1 .. v6}, Lcom/join/android/app/common/utils/APKUtils$Companion;->x(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_b
    return-void
.end method
