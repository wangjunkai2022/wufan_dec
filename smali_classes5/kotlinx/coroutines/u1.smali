.class public final Lkotlinx/coroutines/u1;
.super Ljava/lang/Object;
.source "Executors.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u001a\u0013\u0010\u0006\u001a\u00020\u0005*\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a\n\u0010\u0008\u001a\u00020\u0004*\u00020\u0005\u00a8\u0006\t"
    }
    d2 = {
        "Ljava/util/concurrent/ExecutorService;",
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        "c",
        "(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        "Ljava/util/concurrent/Executor;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "b",
        "(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;",
        "a",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public static final a(Lkotlinx/coroutines/CoroutineDispatcher;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lkotlinx/coroutines/f1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/f1;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;->y()Ljava/util/concurrent/Executor;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public static final b(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "from"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/f1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/f1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lkotlinx/coroutines/t1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/t1;-><init>(Ljava/util/concurrent/Executor;)V

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lkotlinx/coroutines/f1;->a:Lkotlinx/coroutines/CoroutineDispatcher;

    :goto_1
    return-object v0
.end method

.method public static final c(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .locals 1
    .param p0    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "from"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/t1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/t1;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
