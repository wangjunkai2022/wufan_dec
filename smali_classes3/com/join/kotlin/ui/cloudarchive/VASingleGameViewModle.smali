.class public final Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;
.super Landroidx/lifecycle/ViewModel;
.source "VASingleGameViewModle.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$ShowStatus;,
        Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001:\u000278B\u0007\u00a2\u0006\u0004\u00085\u00106J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tR\"\u0010\r\u001a\u00020\u000c8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R(\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR(\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0018\u001a\u0004\u0008\u001f\u0010\u001a\"\u0004\u0008 \u0010\u001cR$\u0010\"\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R(\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010\u0018\u001a\u0004\u0008)\u0010\u001a\"\u0004\u0008*\u0010\u001cR(\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010\u0018\u001a\u0004\u0008,\u0010\u001a\"\u0004\u0008-\u0010\u001cR\"\u0010/\u001a\u00020.8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104\u00a8\u00069"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;",
        "Landroidx/lifecycle/ViewModel;",
        "",
        "gameId",
        "",
        "initDatas",
        "Landroid/content/Context;",
        "context",
        "loadDatas",
        "Landroid/view/View;",
        "view",
        "onClickView",
        "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
        "downloadTask",
        "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
        "getDownloadTask",
        "()Lcom/github/snowdream/android/app/downloader/DownloadTask;",
        "setDownloadTask",
        "(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V",
        "Lcom/join/kotlin/domain/common/LoadBindindData;",
        "statusBind",
        "Lcom/join/kotlin/domain/common/LoadBindindData;",
        "Landroidx/lifecycle/MutableLiveData;",
        "backGroundURl",
        "Landroidx/lifecycle/MutableLiveData;",
        "getBackGroundURl",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setBackGroundURl",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "",
        "showStatus",
        "getShowStatus",
        "setShowStatus",
        "Lcom/join/mgps/dto/ModGameDetailBean;",
        "modGameDetailBean",
        "Lcom/join/mgps/dto/ModGameDetailBean;",
        "getModGameDetailBean",
        "()Lcom/join/mgps/dto/ModGameDetailBean;",
        "setModGameDetailBean",
        "(Lcom/join/mgps/dto/ModGameDetailBean;)V",
        "gameName",
        "getGameName",
        "setGameName",
        "loadBindData",
        "getLoadBindData",
        "setLoadBindData",
        "Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;",
        "listener",
        "Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;",
        "getListener",
        "()Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;",
        "setListener",
        "(Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;)V",
        "<init>",
        "()V",
        "Listener",
        "ShowStatus",
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
.field private backGroundURl:Landroidx/lifecycle/MutableLiveData;
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

.field public downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private gameName:Landroidx/lifecycle/MutableLiveData;
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

.field public listener:Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;

.field private loadBindData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/domain/common/LoadBindindData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private showStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private statusBind:Lcom/join/kotlin/domain/common/LoadBindindData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->backGroundURl:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->gameName:Landroidx/lifecycle/MutableLiveData;

    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->showStatus:Landroidx/lifecycle/MutableLiveData;

    .line 5
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->loadBindData:Landroidx/lifecycle/MutableLiveData;

    .line 6
    new-instance v0, Lcom/join/kotlin/domain/common/LoadBindindData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->statusBind:Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 7
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->backGroundURl:Landroidx/lifecycle/MutableLiveData;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->gameName:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->loadBindData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->statusBind:Lcom/join/kotlin/domain/common/LoadBindindData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getBackGroundURl()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->backGroundURl:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_0

    const-string v1, "downloadTask"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getGameName()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->gameName:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getListener()Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->listener:Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;

    if-nez v0, :cond_0

    const-string v1, "listener"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getLoadBindData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/domain/common/LoadBindindData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->loadBindData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getModGameDetailBean()Lcom/join/mgps/dto/ModGameDetailBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    return-object v0
.end method

.method public final getShowStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->showStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final initDatas(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gameId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    const-string v0, "DownloadTaskManager.getI\u2026nce().getByGameId(gameId)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->gameName:Landroidx/lifecycle/MutableLiveData;

    if-nez p1, :cond_0

    const-string v1, "downloadTask"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final loadDatas(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x3

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    const-string v2, "AccountUtil_.getInstance_(context)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/join/mgps/dto/AccountBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountBean;-><init>()V

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->showStatus:Landroidx/lifecycle/MutableLiveData;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 6
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->loadBindData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/join/kotlin/domain/common/LoadBindindData;

    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->showStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/join/kotlin/domain/common/LoadBindindData;->setShowStatus(I)V

    .line 7
    new-instance v2, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v2}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 8
    new-instance v3, Lcom/join/mgps/dto/RequestModGameArgs;

    invoke-direct {v3}, Lcom/join/mgps/dto/RequestModGameArgs;-><init>()V

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/RequestModGameArgs;->setUid(I)V

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/RequestModGameArgs;->setUserToken(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_1

    const-string v4, "downloadTask"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/RequestModGameArgs;->setGameId(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 14
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object p1

    const-string v0, "RpcGameClientImpl.newInstance()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object p1

    invoke-interface {p1, v2}, Lq1/h;->p(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    .line 15
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$loadDatas$1;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$loadDatas$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->showStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 18
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->loadBindData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/join/kotlin/domain/common/LoadBindindData;

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->showStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/kotlin/domain/common/LoadBindindData;->setShowStatus(I)V

    goto :goto_0

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->showStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->loadBindData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/join/kotlin/domain/common/LoadBindindData;

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->showStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/kotlin/domain/common/LoadBindindData;->setShowStatus(I)V

    :goto_0
    return-void
.end method

.method public final onClickView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09026d

    if-eq v0, v1, :cond_2

    const p1, 0x7f0907e0

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->listener:Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;

    if-nez p1, :cond_1

    const-string v0, "listener"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;->onCLickBack()V

    goto :goto_0

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const-string v1, "downloadTask"

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->s3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final setBackGroundURl(Landroidx/lifecycle/MutableLiveData;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->backGroundURl:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method

.method public final setGameName(Landroidx/lifecycle/MutableLiveData;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->gameName:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setListener(Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->listener:Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;

    return-void
.end method

.method public final setLoadBindData(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/domain/common/LoadBindindData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->loadBindData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setModGameDetailBean(Lcom/join/mgps/dto/ModGameDetailBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/ModGameDetailBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    return-void
.end method

.method public final setShowStatus(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->showStatus:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method
