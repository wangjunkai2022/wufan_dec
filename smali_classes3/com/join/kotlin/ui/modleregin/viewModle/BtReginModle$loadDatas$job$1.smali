.class final Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BtReginModle.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->loadDatas(Landroid/content/Context;I)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBtReginModle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BtReginModle.kt\ncom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1\n+ 2 ApiCall.kt\ncom/join/kotlin/http/protocol/ApiCallKt\n*L\n1#1,610:1\n12#2:611\n*E\n*S KotlinDebug\n*F\n+ 1 BtReginModle.kt\ncom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1\n*L\n65#1:611\n*E\n"
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
    c = "com.join.kotlin.ui.modleregin.viewModle.BtReginModle$loadDatas$job$1"
    f = "BtReginModle.kt"
    i = {}
    l = {
        0x263
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $requestModel:Lkotlin/jvm/internal/Ref$ObjectRef;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    iput-object p2, p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->$requestModel:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->$context:Landroid/content/Context;

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

    new-instance p1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    iget-object v1, p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->$requestModel:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->$context:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;-><init>(Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 5
    invoke-static {}, Lkotlinx/coroutines/g1;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v4, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1;

    invoke-direct {v4, v2, p0}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;)V

    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->label:I

    invoke-static {v1, v4, p0}, Lkotlinx/coroutines/i;->h(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    move-object v1, v0

    .line 6
    :goto_0
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 7
    sget-object v3, Lkotlinx/coroutines/v1;->a:Lkotlinx/coroutines/v1;

    invoke-static {}, Lkotlinx/coroutines/g1;->e()Lkotlinx/coroutines/m2;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;

    invoke-direct {v6, p0, v1, v2}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;-><init>(Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->e(Lkotlinx/coroutines/t0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/c2;

    .line 8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
