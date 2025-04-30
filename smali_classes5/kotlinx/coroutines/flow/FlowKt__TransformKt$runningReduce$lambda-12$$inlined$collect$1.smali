.class public final Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__TransformKt;->i(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/g<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,134:1\n125#2,7:135\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3",
        "Lkotlinx/coroutines/flow/g;",
        "value",
        "",
        "emit",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic b:Lkotlin/jvm/functions/Function3;

.field final synthetic c:Lkotlinx/coroutines/flow/g;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/g;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;->b:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;->c:Lkotlinx/coroutines/flow/g;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    .line 1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->e:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->d:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_1

    .line 4
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v5, Lkotlinx/coroutines/flow/internal/m;->a:Lkotlinx/coroutines/internal/i0;

    if-ne v2, v5, :cond_5

    :cond_4
    move-object v2, p0

    goto :goto_1

    .line 6
    :cond_5
    iget-object v5, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;->b:Lkotlin/jvm/functions/Function3;

    iput-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->d:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->e:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->b:I

    const/4 v4, 0x6

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v5, v2, p1, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x7

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    if-ne p1, v1, :cond_4

    return-object v1

    .line 7
    :goto_1
    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 8
    iget-object p1, v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;->c:Lkotlinx/coroutines/flow/g;

    iget-object p2, v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->d:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->e:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->b:I

    invoke-interface {p1, p2, v0}, Lkotlinx/coroutines/flow/g;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 9
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
