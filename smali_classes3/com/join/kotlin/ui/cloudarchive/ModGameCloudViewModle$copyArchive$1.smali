.class final Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$copyArchive$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ModGameCloudViewModle.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->copyArchive(Lkotlin/jvm/functions/Function1;)V
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
    c = "com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle$copyArchive$1"
    f = "ModGameCloudViewModle.kt"
    i = {}
    l = {
        0x2b9
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $func:Lkotlin/jvm/functions/Function1;

.field final synthetic $newArchivePath:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $oldArchivePath:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$copyArchive$1;->$oldArchivePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$copyArchive$1;->$newArchivePath:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$copyArchive$1;->$func:Lkotlin/jvm/functions/Function1;

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

    new-instance p1, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$copyArchive$1;

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$copyArchive$1;->$oldArchivePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$copyArchive$1;->$newArchivePath:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$copyArchive$1;->$func:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$copyArchive$1;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$copyArchive$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$copyArchive$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$copyArchive$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$copyArchive$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    sget-object v3, Lkotlinx/coroutines/v1;->a:Lkotlinx/coroutines/v1;

    invoke-static {}, Lkotlinx/coroutines/g1;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$copyArchive$1$result$1;

    const/4 p1, 0x0

    invoke-direct {v6, p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$copyArchive$1$result$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$copyArchive$1;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/t0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/z0;

    move-result-object p1

    iput v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$copyArchive$1;->label:I

    .line 5
    invoke-interface {p1, p0}, Lkotlinx/coroutines/z0;->n(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 6
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$copyArchive$1;->$func:Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
