.class final synthetic Lkotlinx/coroutines/flow/FlowKt__CountKt;
.super Ljava/lang/Object;
.source "Count.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCount.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Count.kt\nkotlinx/coroutines/flow/FlowKt__CountKt\n+ 2 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n*L\n1#1,38:1\n72#2,3:39\n72#2,3:42\n*S KotlinDebug\n*F\n+ 1 Count.kt\nkotlinx/coroutines/flow/FlowKt__CountKt\n*L\n18#1:39,3\n30#1:42,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u001a#\u0010\u0003\u001a\u00020\u0002\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0001H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u001aG\u0010\n\u001a\u00020\u0002\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\"\u0010\t\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0005H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "T",
        "Lkotlinx/coroutines/flow/f;",
        "",
        "a",
        "(Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "predicate",
        "b",
        "(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x5
    mv = {
        0x1,
        0x5,
        0x1
    }
    xs = "kotlinx/coroutines/flow/FlowKt"
.end annotation


# direct methods
.method public static final a(Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lkotlinx/coroutines/flow/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/f<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->a:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 5
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__CountKt$a;

    invoke-direct {v2, p1}, Lkotlinx/coroutines/flow/FlowKt__CountKt$a;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->a:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->c:I

    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/f;->e(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p1

    .line 6
    :goto_1
    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lkotlinx/coroutines/flow/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/f<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->a:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 5
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;

    invoke-direct {v2, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$IntRef;)V

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->a:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->c:I

    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/f;->e(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p2

    .line 6
    :goto_1
    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
