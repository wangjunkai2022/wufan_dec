.class public final Lcom/psk/eventmodule/net/StatCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ApiCallEvent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/psk/eventmodule/net/StatCore$offlineAll$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/t0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/psk/eventmodule/net/modle/ResponseModel<",
        "Ljava/lang/Object;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApiCallEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiCallEvent.kt\ncom/psk/eventmodule/net/util/ApiCallEventKt$apiCallEvent$2\n+ 2 StatCore.kt\ncom/psk/eventmodule/net/StatCore$offlineAll$1\n*L\n1#1,23:1\n151#2,24:24\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\u0008\u0000\u0010\u0000*\u00020\u0001H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "T",
        "Lkotlinx/coroutines/t0;",
        "Lcom/psk/eventmodule/net/modle/ResponseModel;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "com/psk/eventmodule/net/util/ApiCallEventKt$apiCallEvent$2",
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
    c = "com.psk.eventmodule.net.StatCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1"
    f = "StatCore.kt"
    i = {}
    l = {
        0x2f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $requestList$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p2, p0, Lcom/psk/eventmodule/net/StatCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1;->$requestList$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/psk/eventmodule/net/StatCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1;

    iget-object v1, p0, Lcom/psk/eventmodule/net/StatCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1;->$requestList$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, p2, v1}, Lcom/psk/eventmodule/net/StatCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    iput-object p1, v0, Lcom/psk/eventmodule/net/StatCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/psk/eventmodule/net/StatCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/psk/eventmodule/net/StatCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/psk/eventmodule/net/StatCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/psk/eventmodule/net/StatCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/psk/eventmodule/net/StatCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/t0;

    .line 4
    :try_start_1
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/psk/eventmodule/net/StatCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1;->$requestList$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 6
    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    sget-object v1, Lcom/psk/eventmodule/net/util/LogPrintUtil;->Companion:Lcom/psk/eventmodule/net/util/LogPrintUtil$Companion;

    invoke-virtual {v1}, Lcom/psk/eventmodule/net/util/LogPrintUtil$Companion;->getPrintLog()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "statData"

    const-string v4, "json"

    .line 8
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "eventjson"

    .line 9
    invoke-virtual {v1, v3, p1, v4}, Lcom/psk/eventmodule/net/util/LogPrintUtil$Companion;->printOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, ""

    .line 10
    invoke-static {p1, v1}, Lcom/psk/eventmodule/net/util/AESUtilV2;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "application/json"

    .line 11
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    const-string v3, "jsonSign"

    .line 12
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v3, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p1

    const-string v1, "RequestBody.create(\n    \u2026y()\n                    )"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v1, Lcom/psk/eventmodule/net/api/RpcEventFactory;->Companion:Lcom/psk/eventmodule/net/api/RpcEventFactory$Companion;

    invoke-virtual {v1}, Lcom/psk/eventmodule/net/api/RpcEventFactory$Companion;->getInstance()Lcom/psk/eventmodule/net/api/RpcEventFactory;

    move-result-object v1

    const-class v3, Lcom/psk/eventmodule/net/api/EventApi;

    invoke-virtual {v1, v3}, Lcom/psk/eventmodule/net/api/RpcEventFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/psk/eventmodule/net/api/EventApi;

    iput v2, p0, Lcom/psk/eventmodule/net/StatCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1;->label:I

    invoke-interface {v1, p1, p0}, Lcom/psk/eventmodule/net/api/EventApi;->sendPoint(Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lcom/psk/eventmodule/net/modle/ResponseModel;

    return-object p1

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :goto_1
    sget-object v0, Lcom/psk/eventmodule/net/util/ApiException;->Companion:Lcom/psk/eventmodule/net/util/ApiException$Companion;

    invoke-virtual {v0, p1}, Lcom/psk/eventmodule/net/util/ApiException$Companion;->build(Ljava/lang/Throwable;)Lcom/psk/eventmodule/net/util/ApiException;

    move-result-object p1

    invoke-virtual {p1}, Lcom/psk/eventmodule/net/util/ApiException;->toResponse()Lcom/psk/eventmodule/net/modle/ResponseModel;

    move-result-object p1

    return-object p1
.end method
