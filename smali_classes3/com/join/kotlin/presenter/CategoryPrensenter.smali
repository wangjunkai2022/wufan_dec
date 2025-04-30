.class public final Lcom/join/kotlin/presenter/CategoryPrensenter;
.super Lcom/join/kotlin/presenter/BasePresenter;
.source "CategoryPrensenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/presenter/BasePresenter<",
        "Lcom/join/kotlin/presenter/view/CategoryView;",
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0016\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005R\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/join/kotlin/presenter/CategoryPrensenter;",
        "Lcom/join/kotlin/presenter/BasePresenter;",
        "Lcom/join/kotlin/presenter/view/CategoryView;",
        "Landroid/content/Context;",
        "context",
        "Lcom/join/kotlin/ui/findgame/data/CategoryRequest;",
        "arg",
        "",
        "loadCategoryData",
        "Lq1/h;",
        "rpcGameClient",
        "Lq1/h;",
        "getRpcGameClient",
        "()Lq1/h;",
        "setRpcGameClient",
        "(Lq1/h;)V",
        "view",
        "<init>",
        "(Lcom/join/kotlin/presenter/view/CategoryView;)V",
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
.field public rpcGameClient:Lq1/h;


# direct methods
.method public constructor <init>(Lcom/join/kotlin/presenter/view/CategoryView;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/presenter/view/CategoryView;
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
    iget-object v0, p0, Lcom/join/kotlin/presenter/CategoryPrensenter;->rpcGameClient:Lq1/h;

    if-nez v0, :cond_0

    const-string v1, "rpcGameClient"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final loadCategoryData(Landroid/content/Context;Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/findgame/data/CategoryRequest;
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

    iput-object v0, p0, Lcom/join/kotlin/presenter/CategoryPrensenter;->rpcGameClient:Lq1/h;

    .line 2
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 4
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/join/kotlin/presenter/CategoryPrensenter;->rpcGameClient:Lq1/h;

    if-nez p1, :cond_0

    const-string v1, "rpcGameClient"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v0

    invoke-interface {p1, v0}, Lq1/h;->T(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/presenter/CategoryPrensenter$loadCategoryData$1;

    invoke-direct {v0, p0, p2}, Lcom/join/kotlin/presenter/CategoryPrensenter$loadCategoryData$1;-><init>(Lcom/join/kotlin/presenter/CategoryPrensenter;Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

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
    iput-object p1, p0, Lcom/join/kotlin/presenter/CategoryPrensenter;->rpcGameClient:Lq1/h;

    return-void
.end method
