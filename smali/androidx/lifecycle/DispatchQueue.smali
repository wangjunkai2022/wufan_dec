.class public final Landroidx/lifecycle/DispatchQueue;
.super Ljava/lang/Object;
.source "DispatchQueue.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatchQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchQueue.kt\nandroidx/lifecycle/DispatchQueue\n*L\n1#1,109:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0008\u0010\u0003\u001a\u00020\u0002H\u0003J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0003J\u0008\u0010\u0008\u001a\u00020\u0006H\u0007J\u0008\u0010\t\u001a\u00020\u0006H\u0007J\u0008\u0010\n\u001a\u00020\u0006H\u0007J\u0008\u0010\u000b\u001a\u00020\u0006H\u0007J\u0010\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007R\u0016\u0010\u000f\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u000eR\u001c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/lifecycle/DispatchQueue;",
        "",
        "",
        "a",
        "Ljava/lang/Runnable;",
        "runnable",
        "",
        "b",
        "pause",
        "resume",
        "finish",
        "drainQueue",
        "runOrEnqueue",
        "c",
        "Z",
        "isDraining",
        "paused",
        "Ljava/util/Queue;",
        "d",
        "Ljava/util/Queue;",
        "queue",
        "finished",
        "<init>",
        "()V",
        "lifecycle-runtime-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->a:Z

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/DispatchQueue;->d:Ljava/util/Queue;

    return-void
.end method

.method private final a()Z
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final synthetic access$enqueue(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/DispatchQueue;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final b(Ljava/lang/Runnable;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/DispatchQueue;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/lifecycle/DispatchQueue;->drainQueue()V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot enqueue any more runnables"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final drainQueue()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Landroidx/lifecycle/DispatchQueue;->c:Z

    .line 3
    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/lifecycle/DispatchQueue;->d:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_3

    .line 4
    invoke-direct {p0}, Landroidx/lifecycle/DispatchQueue;->a()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget-object v2, p0, Landroidx/lifecycle/DispatchQueue;->d:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :cond_3
    :goto_1
    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->c:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->c:Z

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public final finish()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->b:Z

    .line 2
    invoke-virtual {p0}, Landroidx/lifecycle/DispatchQueue;->drainQueue()V

    return-void
.end method

.method public final pause()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->a:Z

    return-void
.end method

.method public final resume()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->a:Z

    .line 4
    invoke-virtual {p0}, Landroidx/lifecycle/DispatchQueue;->drainQueue()V

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot resume a finished dispatcher"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final runOrEnqueue(Ljava/lang/Runnable;)V
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongThread"
        }
    .end annotation

    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Lkotlinx/coroutines/ExperimentalCoroutinesApi;
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/g1;->e()Lkotlinx/coroutines/m2;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/m2;->y()Lkotlinx/coroutines/m2;

    move-result-object v0

    .line 2
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Landroidx/lifecycle/DispatchQueue$runOrEnqueue$$inlined$with$lambda$1;

    invoke-direct {v2, p0, p1}, Landroidx/lifecycle/DispatchQueue$runOrEnqueue$$inlined$with$lambda$1;-><init>(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Landroidx/lifecycle/DispatchQueue;->b(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
