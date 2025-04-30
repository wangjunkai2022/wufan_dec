.class public final Lkotlinx/coroutines/flow/i$a;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/i;->i(Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f<",
        "TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Context.kt\nkotlinx/coroutines/flow/FlowKt__ContextKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 4 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n*L\n1#1,112:1\n330#2:113\n331#2,2:115\n335#2:120\n329#3:114\n72#4,3:117\n*S KotlinDebug\n*F\n+ 1 Context.kt\nkotlinx/coroutines/flow/FlowKt__ContextKt\n*L\n330#1:114\n332#1:117,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0007\u00b8\u0006\u0008"
    }
    d2 = {
        "kotlinx/coroutines/flow/i$a",
        "Lkotlinx/coroutines/flow/f;",
        "Lkotlinx/coroutines/flow/g;",
        "collector",
        "",
        "e",
        "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core",
        "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/flow/f;

.field final synthetic b:I

.field final synthetic c:Lkotlin/jvm/functions/Function1;

.field final synthetic d:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/f;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/i$a;->a:Lkotlinx/coroutines/flow/f;

    iput p2, p0, Lkotlinx/coroutines/flow/i$a;->b:I

    iput-object p3, p0, Lkotlinx/coroutines/flow/i$a;->c:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lkotlinx/coroutines/flow/i$a;->d:Lkotlin/coroutines/CoroutineContext;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lkotlinx/coroutines/flow/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/g<",
            "-TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 2
    sget-object v1, Lkotlinx/coroutines/c2;->Q:Lkotlinx/coroutines/c2$b;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/flow/i$a;->a:Lkotlinx/coroutines/flow/f;

    invoke-static {v1, v0}, Lkotlinx/coroutines/flow/h;->P0(Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/f;

    move-result-object v0

    iget v1, p0, Lkotlinx/coroutines/flow/i$a;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lkotlinx/coroutines/flow/h;->s(Lkotlinx/coroutines/flow/f;ILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/f;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lkotlinx/coroutines/flow/i$a;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/f;

    iget-object v1, p0, Lkotlinx/coroutines/flow/i$a;->d:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/h;->P0(Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/f;

    move-result-object v0

    iget v1, p0, Lkotlinx/coroutines/flow/i$a;->b:I

    invoke-static {v0, v1, v2, v3, v2}, Lkotlinx/coroutines/flow/h;->s(Lkotlinx/coroutines/flow/f;ILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/f;

    move-result-object v0

    .line 5
    new-instance v1, Lkotlinx/coroutines/flow/i$b;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/flow/i$b;-><init>(Lkotlinx/coroutines/flow/g;)V

    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/flow/f;->e(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    .line 6
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
