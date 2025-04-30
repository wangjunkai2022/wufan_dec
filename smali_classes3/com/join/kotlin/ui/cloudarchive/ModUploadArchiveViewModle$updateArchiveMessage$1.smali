.class final Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ModUploadArchiveViewModle.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->updateArchiveMessage(Landroid/content/Context;)V
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
    c = "com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1"
    f = "ModUploadArchiveViewModle.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $accountBean:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $archiveArgs:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $archiveData:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $chnalNmber:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $requestModel:Lcom/join/mgps/dto/RequestModel;

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;Landroid/content/Context;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/join/mgps/dto/RequestModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->$accountBean:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->$requestModel:Lcom/join/mgps/dto/RequestModel;

    iput-object p5, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->$chnalNmber:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p6, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->$archiveArgs:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p7, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->$archiveData:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance p1, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->$accountBean:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->$requestModel:Lcom/join/mgps/dto/RequestModel;

    iget-object v5, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->$chnalNmber:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->$archiveArgs:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->$archiveData:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;Landroid/content/Context;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/join/mgps/dto/RequestModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getImagepath()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    const-string v3, "http"

    invoke-static {p1, v3, v1, v2, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->$context:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->access$compressImage(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {}, Lcom/join/android/app/common/http/h;->b()Lcom/join/android/app/common/http/h;

    move-result-object v3

    .line 5
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->$accountBean:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/join/mgps/dto/AccountBean;

    const-string v2, "accountBean"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 6
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->$accountBean:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/join/mgps/dto/AccountBean;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v6

    .line 7
    iget-object v7, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->$requestModel:Lcom/join/mgps/dto/RequestModel;

    .line 8
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->$chnalNmber:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    .line 9
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 10
    sget-object v10, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$json$1;->INSTANCE:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$json$1;

    .line 11
    invoke-virtual/range {v3 .. v10}, Lcom/join/android/app/common/http/h;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/RequestModel;Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/g;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-string v2, "JsonParser.parseString(json)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v2, "code"

    .line 13
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    const-string v2, "data"

    .line 14
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-string v2, "jsonObj.get(\"data\")"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 16
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-string v1, "array[0]"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v1, "remoteUrl"

    .line 17
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-string v1, "objItem.get(\"remoteUrl\")"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    .line 18
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->$archiveArgs:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;

    invoke-virtual {v1, p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;->setCoverLocation(Ljava/lang/String;)V

    .line 19
    :cond_1
    sget-object v2, Lkotlinx/coroutines/v1;->a:Lkotlinx/coroutines/v1;

    invoke-static {}, Lkotlinx/coroutines/g1;->e()Lkotlinx/coroutines/m2;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;

    invoke-direct {v5, p0, v0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->e(Lkotlinx/coroutines/t0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/c2;

    .line 20
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
