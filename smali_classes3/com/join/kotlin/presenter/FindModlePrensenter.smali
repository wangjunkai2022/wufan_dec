.class public final Lcom/join/kotlin/presenter/FindModlePrensenter;
.super Lcom/join/kotlin/presenter/BasePresenter;
.source "FindModlePrensenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/presenter/BasePresenter<",
        "Lcom/join/kotlin/presenter/view/FindHomeView;",
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0016\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005J\u0016\u0010\t\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005R\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\u000b\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/join/kotlin/presenter/FindModlePrensenter;",
        "Lcom/join/kotlin/presenter/BasePresenter;",
        "Lcom/join/kotlin/presenter/view/FindHomeView;",
        "Landroid/content/Context;",
        "context",
        "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;",
        "arg",
        "",
        "loadFindChoiceData",
        "loadClassfyDatas",
        "",
        "isLoading",
        "Z",
        "()Z",
        "setLoading",
        "(Z)V",
        "Lq1/h;",
        "rpcGameClient",
        "Lq1/h;",
        "getRpcGameClient",
        "()Lq1/h;",
        "setRpcGameClient",
        "(Lq1/h;)V",
        "view",
        "<init>",
        "(Lcom/join/kotlin/presenter/view/FindHomeView;)V",
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
.field private isLoading:Z

.field public rpcGameClient:Lq1/h;


# direct methods
.method public constructor <init>(Lcom/join/kotlin/presenter/view/FindHomeView;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/presenter/view/FindHomeView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/presenter/BasePresenter;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/kotlin/presenter/BasePresenter;->setMView(Lcom/psk/kotlin/base/presenter/view/BaseView;)V

    return-void
.end method


# virtual methods
.method public final getRpcGameClient()Lq1/h;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/presenter/FindModlePrensenter;->rpcGameClient:Lq1/h;

    if-nez v0, :cond_0

    const-string v1, "rpcGameClient"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final isLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/presenter/FindModlePrensenter;->isLoading:Z

    return v0
.end method

.method public final loadClassfyDatas(Landroid/content/Context;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v0

    const-string v1, "RpcGameClientImpl.newInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v0

    const-string v1, "RpcGameClientImpl.newInstance().service"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/kotlin/presenter/FindModlePrensenter;->rpcGameClient:Lq1/h;

    .line 2
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 4
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/join/kotlin/presenter/FindModlePrensenter;->rpcGameClient:Lq1/h;

    if-nez p1, :cond_0

    const-string v1, "rpcGameClient"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v0

    invoke-interface {p1, v0}, Lq1/h;->D0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/presenter/FindModlePrensenter$loadClassfyDatas$1;

    invoke-direct {v0, p0, p2}, Lcom/join/kotlin/presenter/FindModlePrensenter$loadClassfyDatas$1;-><init>(Lcom/join/kotlin/presenter/FindModlePrensenter;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final loadFindChoiceData(Landroid/content/Context;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/presenter/FindModlePrensenter;->isLoading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/kotlin/presenter/FindModlePrensenter;->isLoading:Z

    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v0

    const-string v1, "RpcGameClientImpl.newInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v0

    const-string v1, "RpcGameClientImpl.newInstance().service"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/kotlin/presenter/FindModlePrensenter;->rpcGameClient:Lq1/h;

    .line 4
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 6
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/join/kotlin/presenter/FindModlePrensenter;->rpcGameClient:Lq1/h;

    if-nez p1, :cond_1

    const-string v1, "rpcGameClient"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v0

    invoke-interface {p1, v0}, Lq1/h;->v0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/presenter/FindModlePrensenter$loadFindChoiceData$1;

    invoke-direct {v0, p0, p2}, Lcom/join/kotlin/presenter/FindModlePrensenter$loadFindChoiceData$1;-><init>(Lcom/join/kotlin/presenter/FindModlePrensenter;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final setLoading(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/presenter/FindModlePrensenter;->isLoading:Z

    return-void
.end method

.method public final setRpcGameClient(Lq1/h;)V
    .locals 1
    .param p1    # Lq1/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/presenter/FindModlePrensenter;->rpcGameClient:Lq1/h;

    return-void
.end method
