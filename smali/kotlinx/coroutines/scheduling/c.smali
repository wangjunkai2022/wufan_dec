.class public Lkotlinx/coroutines/scheduling/c;
.super Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
.source "Dispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Dispatcher.kt\nkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,245:1\n1#2:246\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008\u0017\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010,\u001a\u00020\u000f\u0012\u0006\u0010*\u001a\u00020\u000f\u0012\u0006\u0010(\u001a\u00020\u001b\u0012\u0008\u0008\u0002\u0010&\u001a\u00020\r\u00a2\u0006\u0004\u00080\u00101B\'\u0008\u0016\u0012\u0008\u0008\u0002\u0010,\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010*\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010&\u001a\u00020\r\u00a2\u0006\u0004\u00080\u00102B\u001d\u0008\u0017\u0012\u0008\u0008\u0002\u0010,\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010*\u001a\u00020\u000f\u00a2\u0006\u0004\u00080\u00103J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u001c\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\n\u0010\u0008\u001a\u00060\u0006j\u0002`\u0007H\u0016J\u001c\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\n\u0010\u0008\u001a\u00060\u0006j\u0002`\u0007H\u0016J\u0008\u0010\u000c\u001a\u00020\tH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0012\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fJ+\u0010\u0017\u001a\u00020\t2\n\u0010\u0008\u001a\u00060\u0006j\u0002`\u00072\u0006\u0010\u0005\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0015H\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\tH\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u001bH\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\tH\u0000\u00a2\u0006\u0004\u0008\u001f\u0010\u001aR\u0016\u0010#\u001a\u00020 8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0016\u0010&\u001a\u00020\r8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0016\u0010(\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010\u0019R\u0016\u0010*\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010\u001dR\u0016\u0010,\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010\u001dR\u0016\u0010/\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.\u00a8\u00064"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/c;",
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler;",
        "C",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "block",
        "",
        "dispatch",
        "dispatchYield",
        "close",
        "",
        "toString",
        "",
        "parallelism",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "z",
        "G",
        "Lkotlinx/coroutines/scheduling/j;",
        "",
        "tailDispatch",
        "F",
        "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/j;Z)V",
        "J",
        "()V",
        "",
        "timeout",
        "I",
        "(J)V",
        "H",
        "Ljava/util/concurrent/Executor;",
        "y",
        "()Ljava/util/concurrent/Executor;",
        "executor",
        "e",
        "Ljava/lang/String;",
        "schedulerName",
        "d",
        "idleWorkerKeepAliveNs",
        "c",
        "maxPoolSize",
        "b",
        "corePoolSize",
        "f",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler;",
        "coroutineScheduler",
        "<init>",
        "(IIJLjava/lang/String;)V",
        "(IILjava/lang/String;)V",
        "(II)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
.end annotation


# instance fields
.field private final b:I

.field private final c:I

.field private final d:J

.field private final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 8
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility for Ktor 1.0-beta"
    .end annotation

    .line 15
    sget-wide v3, Lkotlinx/coroutines/scheduling/l;->g:J

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/scheduling/c;-><init>(IIJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 12
    sget p1, Lkotlinx/coroutines/scheduling/l;->e:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 13
    sget p2, Lkotlinx/coroutines/scheduling/l;->f:I

    .line 14
    :cond_1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/scheduling/c;-><init>(II)V

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 0
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;-><init>()V

    .line 3
    iput p1, p0, Lkotlinx/coroutines/scheduling/c;->b:I

    .line 4
    iput p2, p0, Lkotlinx/coroutines/scheduling/c;->c:I

    .line 5
    iput-wide p3, p0, Lkotlinx/coroutines/scheduling/c;->d:J

    .line 6
    iput-object p5, p0, Lkotlinx/coroutines/scheduling/c;->e:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/c;->C()Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/c;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    return-void
.end method

.method public synthetic constructor <init>(IIJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const-string p5, "CoroutineScheduler"

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/c;-><init>(IIJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 6
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 11
    sget-wide v3, Lkotlinx/coroutines/scheduling/l;->g:J

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/c;-><init>(IIJLjava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 8
    sget p1, Lkotlinx/coroutines/scheduling/l;->e:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 9
    sget p2, Lkotlinx/coroutines/scheduling/l;->f:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const-string p3, "DefaultDispatcher"

    .line 10
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/scheduling/c;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic B(Lkotlinx/coroutines/scheduling/c;IILjava/lang/Object;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 1
    sget p1, Lkotlinx/coroutines/scheduling/l;->d:I

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/c;->z(I)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: blocking"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final C()Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .locals 7

    .line 1
    new-instance v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget v1, p0, Lkotlinx/coroutines/scheduling/c;->b:I

    iget v2, p0, Lkotlinx/coroutines/scheduling/c;->c:I

    iget-wide v3, p0, Lkotlinx/coroutines/scheduling/c;->d:J

    iget-object v5, p0, Lkotlinx/coroutines/scheduling/c;->e:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;-><init>(IIJLjava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public final F(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/j;Z)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/scheduling/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/c;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v0, p1, p2, p3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->n(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/j;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object p3, Lkotlinx/coroutines/x0;->f:Lkotlinx/coroutines/x0;

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/c;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/j;)Lkotlinx/coroutines/scheduling/i;

    move-result-object p1

    invoke-virtual {p3, p1}, Lkotlinx/coroutines/o1;->X(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final G(I)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 1
    iget v2, p0, Lkotlinx/coroutines/scheduling/c;->b:I

    if-gt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Lkotlinx/coroutines/scheduling/e;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, v1}, Lkotlinx/coroutines/scheduling/e;-><init>(Lkotlinx/coroutines/scheduling/c;ILjava/lang/String;I)V

    return-object v0

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected parallelism level lesser than core pool size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/coroutines/scheduling/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), but have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Expected positive parallelism level, but have "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final H()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/c;->J()V

    return-void
.end method

.method public final declared-synchronized I(J)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/c;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->z(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized J()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/c;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->z(J)V

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/c;->C()Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/c;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/c;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->close()V

    return-void
.end method

.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/c;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/j;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object v0, Lkotlinx/coroutines/x0;->f:Lkotlinx/coroutines/x0;

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/o1;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/c;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/j;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object v0, Lkotlinx/coroutines/x0;->f:Lkotlinx/coroutines/x0;

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lkotlinx/coroutines/CoroutineDispatcher;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[scheduler = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/c;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/c;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    return-object v0
.end method

.method public final z(I)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1
    new-instance v1, Lkotlinx/coroutines/scheduling/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, v0}, Lkotlinx/coroutines/scheduling/e;-><init>(Lkotlinx/coroutines/scheduling/c;ILjava/lang/String;I)V

    return-object v1

    .line 2
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Expected positive parallelism level, but have "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
