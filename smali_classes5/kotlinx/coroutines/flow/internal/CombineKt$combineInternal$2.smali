.class final Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Combine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/CombineKt;->a(Lkotlinx/coroutines/flow/g;[Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "\u0000\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "R",
        "T",
        "Lkotlinx/coroutines/t0;",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2"
    f = "Combine.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x39,
        0x4f,
        0x52
    }
    m = "invokeSuspend"
    n = {
        "latestValues",
        "resultChannel",
        "lastReceivedEpoch",
        "remainingAbsentValues"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field d:I

.field e:I

.field private synthetic f:Ljava/lang/Object;

.field final synthetic g:[Lkotlinx/coroutines/flow/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/flow/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic h:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "[TT;>;"
        }
    .end annotation
.end field

.field final synthetic i:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lkotlinx/coroutines/flow/g<",
            "-TR;>;[TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic j:Lkotlinx/coroutines/flow/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/g<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/flow/f<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "[TT;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/flow/g<",
            "-TR;>;-[TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/flow/g<",
            "-TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->g:[Lkotlinx/coroutines/flow/f;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->h:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->i:Lkotlin/jvm/functions/Function3;

    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->j:Lkotlinx/coroutines/flow/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->g:[Lkotlinx/coroutines/flow/f;

    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->h:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->i:Lkotlin/jvm/functions/Function3;

    iget-object v4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->j:Lkotlinx/coroutines/flow/g;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;-><init>([Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->f:Ljava/lang/Object;

    return-object v6
.end method

.method public final e(Lkotlinx/coroutines/t0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/t0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/t0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/t0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->e(Lkotlinx/coroutines/t0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->e:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->d:I

    iget v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->c:I

    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->b:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->a:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/k;

    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->f:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v13, v3

    move-object v14, v9

    move v3, v2

    move-object v2, v7

    move-object v7, v8

    move-object v8, v0

    goto/16 :goto_5

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->d:I

    iget v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->c:I

    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->b:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->a:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/k;

    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->f:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v13, v3

    move-object v14, v9

    move v3, v2

    move-object v2, v7

    move-object v7, v8

    move-object v8, v0

    goto/16 :goto_2

    :cond_2
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->d:I

    iget v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->c:I

    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->b:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->a:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/k;

    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->f:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    check-cast v10, Lkotlinx/coroutines/channels/n;

    invoke-virtual {v10}, Lkotlinx/coroutines/channels/n;->o()Ljava/lang/Object;

    move-result-object v10

    move-object v15, v9

    move-object v9, v0

    move-object/from16 v22, v7

    move v7, v2

    move-object/from16 v2, v22

    goto/16 :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->f:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/t0;

    .line 4
    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->g:[Lkotlinx/coroutines/flow/f;

    array-length v13, v7

    if-nez v13, :cond_4

    .line 5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 6
    :cond_4
    new-array v14, v13, [Ljava/lang/Object;

    .line 7
    sget-object v8, Lkotlinx/coroutines/flow/internal/m;->b:Lkotlinx/coroutines/internal/i0;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v14

    invoke-static/range {v7 .. v12}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    .line 8
    invoke-static {v13, v8, v8, v7, v8}, Lkotlinx/coroutines/channels/m;->d(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/k;

    move-result-object v21

    .line 9
    new-instance v12, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v12, v13}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    if-lez v13, :cond_6

    const/16 v17, 0x0

    :goto_0
    add-int/lit8 v11, v17, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 10
    new-instance v10, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;

    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->g:[Lkotlinx/coroutines/flow/f;

    const/16 v20, 0x0

    move-object v15, v10

    move-object/from16 v16, v7

    move-object/from16 v18, v12

    move-object/from16 v19, v21

    invoke-direct/range {v15 .. v20}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;-><init>([Lkotlinx/coroutines/flow/f;ILjava/util/concurrent/atomic/AtomicInteger;Lkotlinx/coroutines/channels/k;Lkotlin/coroutines/Continuation;)V

    const/4 v15, 0x3

    const/16 v16, 0x0

    move-object v7, v2

    move v3, v11

    move v11, v15

    move-object v15, v12

    move-object/from16 v12, v16

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->e(Lkotlinx/coroutines/t0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/c2;

    if-lt v3, v13, :cond_5

    goto :goto_1

    :cond_5
    move/from16 v17, v3

    move-object v12, v15

    goto :goto_0

    .line 11
    :cond_6
    :goto_1
    new-array v2, v13, [B

    move-object v8, v0

    move-object/from16 v7, v21

    const/4 v3, 0x0

    :goto_2
    add-int/2addr v3, v6

    int-to-byte v3, v3

    .line 12
    iput-object v14, v8, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->f:Ljava/lang/Object;

    iput-object v7, v8, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->a:Ljava/lang/Object;

    iput-object v2, v8, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->b:Ljava/lang/Object;

    iput v13, v8, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->c:I

    iput v3, v8, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->d:I

    iput v6, v8, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->e:I

    invoke-interface {v7, v8}, Lkotlinx/coroutines/channels/ReceiveChannel;->K(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_7

    return-object v1

    :cond_7
    move-object v9, v8

    move-object v15, v14

    move-object v8, v7

    move v7, v3

    move v3, v13

    :goto_3
    invoke-static {v10}, Lkotlinx/coroutines/channels/n;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/collections/IndexedValue;

    if-nez v10, :cond_8

    .line 13
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 14
    :cond_8
    invoke-virtual {v10}, Lkotlin/collections/IndexedValue;->getIndex()I

    move-result v11

    .line 15
    aget-object v12, v15, v11

    .line 16
    invoke-virtual {v10}, Lkotlin/collections/IndexedValue;->getValue()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v15, v11

    .line 17
    sget-object v10, Lkotlinx/coroutines/flow/internal/m;->b:Lkotlinx/coroutines/internal/i0;

    if-ne v12, v10, :cond_9

    add-int/lit8 v3, v3, -0x1

    .line 18
    :cond_9
    aget-byte v10, v2, v11

    if-ne v10, v7, :cond_a

    goto :goto_4

    :cond_a
    int-to-byte v10, v7

    .line 19
    aput-byte v10, v2, v11

    .line 20
    invoke-interface {v8}, Lkotlinx/coroutines/channels/ReceiveChannel;->I()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlinx/coroutines/channels/n;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/collections/IndexedValue;

    if-nez v10, :cond_8

    :goto_4
    if-nez v3, :cond_d

    .line 21
    iget-object v10, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->h:Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    if-nez v10, :cond_c

    .line 22
    iget-object v10, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->i:Lkotlin/jvm/functions/Function3;

    iget-object v11, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->j:Lkotlinx/coroutines/flow/g;

    iput-object v15, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->f:Ljava/lang/Object;

    iput-object v8, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->a:Ljava/lang/Object;

    iput-object v2, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->b:Ljava/lang/Object;

    iput v3, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->c:I

    iput v7, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->d:I

    iput v5, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->e:I

    invoke-interface {v10, v11, v15, v9}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_b

    return-object v1

    :cond_b
    move v13, v3

    move v3, v7

    move-object v7, v8

    move-object v8, v9

    move-object v14, v15

    goto :goto_2

    :cond_c
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xe

    const/16 v18, 0x0

    move-object v11, v15

    move-object v12, v10

    move-object v5, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    .line 23
    invoke-static/range {v11 .. v17}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 24
    iget-object v11, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->i:Lkotlin/jvm/functions/Function3;

    iget-object v12, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->j:Lkotlinx/coroutines/flow/g;

    iput-object v5, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->f:Ljava/lang/Object;

    iput-object v8, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->a:Ljava/lang/Object;

    iput-object v2, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->b:Ljava/lang/Object;

    iput v3, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->c:I

    iput v7, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->d:I

    iput v4, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->e:I

    invoke-interface {v11, v12, v10, v9}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_e

    return-object v1

    :goto_5
    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_d
    move-object v5, v15

    :cond_e
    move v13, v3

    move-object v14, v5

    move v3, v7

    move-object v7, v8

    move-object v8, v9

    goto :goto_5
.end method
