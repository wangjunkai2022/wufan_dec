.class final synthetic Lkotlinx/coroutines/flow/FlowKt__CollectionKt;
.super Ljava/lang/Object;
.source "Collection.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collection.kt\nkotlinx/coroutines/flow/FlowKt__CollectionKt\n+ 2 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n*L\n1#1,31:1\n72#2,3:32\n*S KotlinDebug\n*F\n+ 1 Collection.kt\nkotlinx/coroutines/flow/FlowKt__CollectionKt\n*L\n26#1:32,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0010\u001f\n\u0002\u0008\u0004\u001a9\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u000e\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a9\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u000e\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\n\u001a=\u0010\r\u001a\u00028\u0001\"\u0004\u0008\u0000\u0010\u0000\"\u0010\u0008\u0001\u0010\u000c*\n\u0012\u0006\u0008\u0000\u0012\u00028\u00000\u000b*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00028\u0001H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000e\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "T",
        "Lkotlinx/coroutines/flow/f;",
        "",
        "destination",
        "",
        "b",
        "(Lkotlinx/coroutines/flow/f;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "",
        "d",
        "(Lkotlinx/coroutines/flow/f;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "C",
        "a",
        "(Lkotlinx/coroutines/flow/f;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public static final a(Lkotlinx/coroutines/flow/f;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lkotlinx/coroutines/flow/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
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
            "C::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Lkotlinx/coroutines/flow/f<",
            "+TT;>;TC;",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1;->a:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

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
    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$a;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$a;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1;->a:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1;->c:I

    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/f;->e(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public static final b(Lkotlinx/coroutines/flow/f;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p0    # Lkotlinx/coroutines/flow/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/h;->f2(Lkotlinx/coroutines/flow/f;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lkotlinx/coroutines/flow/f;Ljava/util/List;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/h;->g2(Lkotlinx/coroutines/flow/f;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lkotlinx/coroutines/flow/f;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p0    # Lkotlinx/coroutines/flow/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Set;
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
            "Ljava/util/Set<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Set<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/h;->f2(Lkotlinx/coroutines/flow/f;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lkotlinx/coroutines/flow/f;Ljava/util/Set;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 1
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/h;->i2(Lkotlinx/coroutines/flow/f;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
