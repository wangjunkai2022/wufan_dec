.class final Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CloudShareViewModle.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getDetialData(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/t0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/t0;",
        "",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.join.kotlin.ui.cloudarchive.CloudShareViewModle$getDetialData$1"
    f = "CloudShareViewModle.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $gameId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;->$gameId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;->$gameId:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    const-string v0, "AccountUtil_.getInstance_(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/join/mgps/dto/AccountBean;

    invoke-direct {p1}, Lcom/join/mgps/dto/AccountBean;-><init>()V

    .line 5
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 6
    new-instance v2, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v2}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 7
    new-instance v3, Lcom/join/mgps/dto/RequestModGameArgs;

    invoke-direct {v3}, Lcom/join/mgps/dto/RequestModGameArgs;-><init>()V

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/RequestModGameArgs;->setUid(I)V

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/RequestModGameArgs;->setUserToken(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;->$gameId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/RequestModGameArgs;->setGameId(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;->$context:Landroid/content/Context;

    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 13
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/join/mgps/rpc/impl/h;->p(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 14
    move-object v2, p1

    check-cast v2, Lcom/join/mgps/dto/ResponseModel;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result p1

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_1

    .line 15
    sget-object v3, Lkotlinx/coroutines/v1;->a:Lkotlinx/coroutines/v1;

    invoke-static {}, Lkotlinx/coroutines/g1;->e()Lkotlinx/coroutines/m2;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1$1;

    invoke-direct {v6, p0, v0, v1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->e(Lkotlinx/coroutines/t0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/c2;

    .line 16
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getShowDialog()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 19
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
