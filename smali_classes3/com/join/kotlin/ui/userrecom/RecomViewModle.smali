.class public final Lcom/join/kotlin/ui/userrecom/RecomViewModle;
.super Lcom/join/kotlin/ui/base/BaseHasDownloadActivityViewModle;
.source "RecomViewModle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008,\u0010-J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J3\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042!\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u00020\u0006H\u0016R(\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0016\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\"\u0010\u001c\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R.\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\"0\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010\u0010\u001a\u0004\u0008$\u0010\u0012\"\u0004\u0008%\u0010\u0014R8\u0010)\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\'0&j\u0008\u0012\u0004\u0012\u00020\'`(0\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010\u0010\u001a\u0004\u0008*\u0010\u0012\"\u0004\u0008+\u0010\u0014\u00a8\u0006."
    }
    d2 = {
        "Lcom/join/kotlin/ui/userrecom/RecomViewModle;",
        "Lcom/join/kotlin/ui/base/BaseHasDownloadActivityViewModle;",
        "",
        "updateProgressPartly",
        "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
        "downloadTask",
        "Lkotlin/Function1;",
        "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
        "Lkotlin/ParameterName;",
        "name",
        "sub",
        "func",
        "updateDowStateList",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "titleMessage",
        "Landroidx/lifecycle/MutableLiveData;",
        "getTitleMessage",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setTitleMessage",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "Lcom/join/kotlin/ui/userrecom/UserRecomRequest;",
        "request",
        "Lcom/join/kotlin/ui/userrecom/UserRecomRequest;",
        "getRequest",
        "()Lcom/join/kotlin/ui/userrecom/UserRecomRequest;",
        "setRequest",
        "(Lcom/join/kotlin/ui/userrecom/UserRecomRequest;)V",
        "recycleViewH",
        "Ljava/lang/String;",
        "getRecycleViewH",
        "()Ljava/lang/String;",
        "setRecycleViewH",
        "(Ljava/lang/String;)V",
        "",
        "gameIdlist",
        "getGameIdlist",
        "setGameIdlist",
        "Ljava/util/ArrayList;",
        "Lcom/psk/kotlin/util/CommonListMainData;",
        "Lkotlin/collections/ArrayList;",
        "showDataList",
        "getShowDataList",
        "setShowDataList",
        "<init>",
        "()V",
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
.field private gameIdlist:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private recycleViewH:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private request:Lcom/join/kotlin/ui/userrecom/UserRecomRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private showDataList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private titleMessage:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/base/BaseHasDownloadActivityViewModle;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/userrecom/RecomViewModle;->titleMessage:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/userrecom/RecomViewModle;->gameIdlist:Landroidx/lifecycle/MutableLiveData;

    const-string v0, "300px"

    .line 4
    iput-object v0, p0, Lcom/join/kotlin/ui/userrecom/RecomViewModle;->recycleViewH:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/join/kotlin/ui/userrecom/UserRecomRequest;

    invoke-direct {v0}, Lcom/join/kotlin/ui/userrecom/UserRecomRequest;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/userrecom/RecomViewModle;->request:Lcom/join/kotlin/ui/userrecom/UserRecomRequest;

    .line 6
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/userrecom/RecomViewModle;->showDataList:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final getGameIdlist()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/userrecom/RecomViewModle;->gameIdlist:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getRecycleViewH()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/userrecom/RecomViewModle;->recycleViewH:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequest()Lcom/join/kotlin/ui/userrecom/UserRecomRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/userrecom/RecomViewModle;->request:Lcom/join/kotlin/ui/userrecom/UserRecomRequest;

    return-object v0
.end method

.method public final getShowDataList()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/userrecom/RecomViewModle;->showDataList:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getTitleMessage()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/userrecom/RecomViewModle;->titleMessage:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final setGameIdlist(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/userrecom/RecomViewModle;->gameIdlist:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setRecycleViewH(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/userrecom/RecomViewModle;->recycleViewH:Ljava/lang/String;

    return-void
.end method

.method public final setRequest(Lcom/join/kotlin/ui/userrecom/UserRecomRequest;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/userrecom/UserRecomRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/userrecom/RecomViewModle;->request:Lcom/join/kotlin/ui/userrecom/UserRecomRequest;

    return-void
.end method

.method public final setShowDataList(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/userrecom/RecomViewModle;->showDataList:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setTitleMessage(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/userrecom/RecomViewModle;->titleMessage:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public updateDowStateList(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "downloadTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "func"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/kotlin/ui/userrecom/RecomViewModle;->showDataList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/psk/kotlin/util/CommonListMainData;

    .line 2
    invoke-virtual {v0}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 4
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.join.mgps.business.CollectionBeanSubBusiness"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    invoke-virtual {v0}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;

    .line 8
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->getGame_info()Lcom/join/mgps/business/CollectionBeanSubBusiness;

    move-result-object v0

    const-string v1, "subp.game_info"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.FindChoiceBannerData"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method

.method public updateProgressPartly()V
    .locals 0

    return-void
.end method
