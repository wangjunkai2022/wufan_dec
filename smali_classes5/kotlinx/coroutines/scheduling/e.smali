.class final Lkotlinx/coroutines/scheduling/e;
.super Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
.source "Dispatcher.kt"

# interfaces
.implements Lkotlinx/coroutines/scheduling/j;
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B)\u0012\u0006\u0010,\u001a\u00020)\u0012\u0006\u0010$\u001a\u00020\u001a\u0012\u0008\u0010/\u001a\u0004\u0018\u00010\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001a\u00a2\u0006\u0004\u00080\u00101J#\u0010\n\u001a\u00020\t2\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001b\u0010\r\u001a\u00020\t2\n\u0010\u000c\u001a\u00060\u0004j\u0002`\u0005H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J#\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J#\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0010R\u001c\u0010\u001f\u001a\u00020\u001a8\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\"\u001a\u00020\u00038V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0016\u0010$\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010\u001cR \u0010(\u001a\u000c\u0012\u0008\u0012\u00060\u0004j\u0002`\u00050%8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0018\u0010/\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.\u00a8\u00062"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/e;",
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        "Lkotlinx/coroutines/scheduling/j;",
        "Ljava/util/concurrent/Executor;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "block",
        "",
        "tailDispatch",
        "",
        "z",
        "(Ljava/lang/Runnable;Z)V",
        "command",
        "execute",
        "(Ljava/lang/Runnable;)V",
        "close",
        "()V",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "dispatch",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V",
        "dispatchYield",
        "",
        "toString",
        "()Ljava/lang/String;",
        "q",
        "",
        "e",
        "I",
        "r",
        "()I",
        "taskMode",
        "y",
        "()Ljava/util/concurrent/Executor;",
        "executor",
        "c",
        "parallelism",
        "Ljava/util/concurrent/ConcurrentLinkedQueue;",
        "f",
        "Ljava/util/concurrent/ConcurrentLinkedQueue;",
        "queue",
        "Lkotlinx/coroutines/scheduling/c;",
        "b",
        "Lkotlinx/coroutines/scheduling/c;",
        "dispatcher",
        "d",
        "Ljava/lang/String;",
        "name",
        "<init>",
        "(Lkotlinx/coroutines/scheduling/c;ILjava/lang/String;I)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final b:Lkotlinx/coroutines/scheduling/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:I

.field private final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:I

.field private final f:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic inFlightTasks:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/scheduling/e;

    const-string v1, "inFlightTasks"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/e;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/scheduling/c;ILjava/lang/String;I)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/scheduling/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/e;->b:Lkotlinx/coroutines/scheduling/c;

    .line 3
    iput p2, p0, Lkotlinx/coroutines/scheduling/e;->c:I

    .line 4
    iput-object p3, p0, Lkotlinx/coroutines/scheduling/e;->d:Ljava/lang/String;

    .line 5
    iput p4, p0, Lkotlinx/coroutines/scheduling/e;->e:I

    .line 6
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/e;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lkotlinx/coroutines/scheduling/e;->inFlightTasks:I

    return-void
.end method

.method private final z(Ljava/lang/Runnable;Z)V
    .locals 3

    .line 1
    :cond_0
    sget-object v0, Lkotlinx/coroutines/scheduling/e;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v1

    .line 2
    iget v2, p0, Lkotlinx/coroutines/scheduling/e;->c:I

    if-gt v1, v2, :cond_1

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/e;->b:Lkotlinx/coroutines/scheduling/c;

    invoke-virtual {v0, p1, p0, p2}, Lkotlinx/coroutines/scheduling/c;->F(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/j;Z)V

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/e;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result p1

    iget v0, p0, Lkotlinx/coroutines/scheduling/e;->c:I

    if-lt p1, v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/e;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-nez p1, :cond_0

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Close cannot be invoked on LimitingBlockingDispatcher"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p2, p1}, Lkotlinx/coroutines/scheduling/e;->z(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    .line 1
    invoke-direct {p0, p2, p1}, Lkotlinx/coroutines/scheduling/e;->z(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/scheduling/e;->z(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/e;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/e;->b:Lkotlinx/coroutines/scheduling/c;

    invoke-virtual {v2, v0, p0, v1}, Lkotlinx/coroutines/scheduling/c;->F(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/j;Z)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lkotlinx/coroutines/scheduling/e;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 4
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/e;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/scheduling/e;->z(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/coroutines/scheduling/e;->e:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/e;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lkotlinx/coroutines/CoroutineDispatcher;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[dispatcher = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/e;->b:Lkotlinx/coroutines/scheduling/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public y()Ljava/util/concurrent/Executor;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method
