.class final synthetic Lkotlinx/coroutines/flow/FlowKt__ChannelsKt;
.super Ljava/lang/Object;
.source "Channels.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,232:1\n1#2:233\n106#3:234\n*S KotlinDebug\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n*L\n177#1:234\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a1\u0010\u0005\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a9\u0010\t\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\n\u001a\u001c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u001a\u001c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u001a\u001e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u000eH\u0007\u001a0\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000e\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u000b2\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012H\u0007\u001a&\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u000b2\u0006\u0010\u0011\u001a\u00020\u0010H\u0007\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "T",
        "Lkotlinx/coroutines/flow/g;",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "channel",
        "",
        "f",
        "(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "consume",
        "g",
        "(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f;",
        "i",
        "e",
        "Lkotlinx/coroutines/channels/h;",
        "b",
        "Lkotlinx/coroutines/t0;",
        "scope",
        "Lkotlinx/coroutines/CoroutineStart;",
        "start",
        "c",
        "h",
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
.method public static final synthetic a(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt;->g(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lkotlinx/coroutines/channels/h;)Lkotlinx/coroutines/flow/f;
    .locals 1
    .param p0    # Lkotlinx/coroutines/channels/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/h<",
            "TT;>;)",
            "Lkotlinx/coroutines/flow/f<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "\'BroadcastChannel\' is obsolete and all coreresponding operators are deprecated in the favour of StateFlow and SharedFlow"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$b;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$b;-><init>(Lkotlinx/coroutines/channels/h;)V

    return-object v0
.end method

.method public static final c(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/t0;Lkotlinx/coroutines/CoroutineStart;)Lkotlinx/coroutines/channels/h;
    .locals 10
    .param p0    # Lkotlinx/coroutines/flow/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/coroutines/t0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/CoroutineStart;
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
            "Lkotlinx/coroutines/t0;",
            "Lkotlinx/coroutines/CoroutineStart;",
            ")",
            "Lkotlinx/coroutines/channels/h<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use shareIn operator and the resulting SharedFlow as a replacement for BroadcastChannel"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.shareIn(scope, SharingStarted.Lazily, 0)"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/d;->b(Lkotlinx/coroutines/flow/f;)Lkotlinx/coroutines/flow/internal/ChannelFlow;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->c:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v2, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 p0, 0x3

    if-eq v1, p0, :cond_0

    .line 3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Broadcast channel does not support BufferOverflow.DROP_LATEST"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v1, -0x1

    const/4 v4, -0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/internal/ChannelFlow;->m()I

    move-result v1

    move v4, v1

    .line 5
    :goto_0
    iget-object v3, v0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->a:Lkotlin/coroutines/CoroutineContext;

    const/4 v6, 0x0

    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$broadcastIn$1;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$broadcastIn$1;-><init>(Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/Continuation;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v2 .. v9}, Lkotlinx/coroutines/channels/BroadcastKt;->c(Lkotlinx/coroutines/t0;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/t0;Lkotlinx/coroutines/CoroutineStart;ILjava/lang/Object;)Lkotlinx/coroutines/channels/h;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    sget-object p2, Lkotlinx/coroutines/CoroutineStart;->LAZY:Lkotlinx/coroutines/CoroutineStart;

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/h;->n(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/t0;Lkotlinx/coroutines/CoroutineStart;)Lkotlinx/coroutines/channels/h;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/f;
    .locals 9
    .param p0    # Lkotlinx/coroutines/channels/ReceiveChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TT;>;)",
            "Lkotlinx/coroutines/flow/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v8, Lkotlinx/coroutines/flow/c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/flow/c;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method

.method public static final f(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lkotlinx/coroutines/flow/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/coroutines/channels/ReceiveChannel;
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
            "Lkotlinx/coroutines/flow/g<",
            "-TT;>;",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0, p2}, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt;->g(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final g(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/g<",
            "-TT;>;",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TT;>;Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget-boolean p0, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->c:Z

    iget-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->a:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/flow/g;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v6, p2

    move p2, p0

    move-object p0, v6

    goto :goto_1

    .line 2
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_3
    iget-boolean p0, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->c:Z

    iget-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->a:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/flow/g;

    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p3, Lkotlinx/coroutines/channels/n;

    invoke-virtual {p3}, Lkotlinx/coroutines/channels/n;->o()Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    invoke-static {p0}, Lkotlinx/coroutines/flow/h;->q0(Lkotlinx/coroutines/flow/g;)V

    .line 5
    :goto_1
    :try_start_2
    iput-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->a:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->b:Ljava/lang/Object;

    iput-boolean p2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->c:Z

    iput v4, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->e:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->K(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    move v6, p2

    move-object p2, p0

    move p0, v6

    :goto_2
    const/4 v2, 0x0

    .line 6
    :try_start_3
    invoke-static {p3}, Lkotlinx/coroutines/channels/n;->k(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 7
    invoke-static {p3}, Lkotlinx/coroutines/channels/n;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p2, :cond_7

    if-eqz p0, :cond_6

    .line 8
    invoke-static {p1, v2}, Lkotlinx/coroutines/channels/o;->b(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 9
    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 10
    :cond_7
    :try_start_4
    throw p2

    .line 11
    :cond_8
    invoke-static {p3}, Lkotlinx/coroutines/channels/n;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->a:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->b:Ljava/lang/Object;

    iput-boolean p0, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->c:Z

    iput v3, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->e:I

    invoke-interface {p2, p3, v0}, Lkotlinx/coroutines/flow/g;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p3, v1, :cond_1

    return-object v1

    :catchall_1
    move-exception p0

    move v6, p2

    move-object p2, p0

    move p0, v6

    .line 12
    :goto_3
    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p3

    if-eqz p0, :cond_9

    .line 13
    invoke-static {p1, p2}, Lkotlinx/coroutines/channels/o;->b(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    :cond_9
    goto :goto_5

    :goto_4
    throw p3

    :goto_5
    goto :goto_4
.end method

.method public static final h(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/t0;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .locals 0
    .param p0    # Lkotlinx/coroutines/flow/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/coroutines/t0;
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
            "Lkotlinx/coroutines/t0;",
            ")",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlinx/coroutines/FlowPreview;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/d;->b(Lkotlinx/coroutines/flow/f;)Lkotlinx/coroutines/flow/internal/ChannelFlow;

    move-result-object p0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/internal/ChannelFlow;->n(Lkotlinx/coroutines/t0;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/f;
    .locals 9
    .param p0    # Lkotlinx/coroutines/channels/ReceiveChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TT;>;)",
            "Lkotlinx/coroutines/flow/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v8, Lkotlinx/coroutines/flow/c;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/flow/c;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method
