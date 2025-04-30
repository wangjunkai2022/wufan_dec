.class public final Lorg/jboss/netty/util/internal/e;
.super Ljava/lang/Object;
.source "ExecutorUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/concurrent/Executor;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs b(Ljava/lang/ThreadLocal;[Ljava/util/concurrent/Executor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/concurrent/Executor;",
            ">;[",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    const-string v0, "executors"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p1

    new-array v1, v0, [Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 4
    aget-object v4, p1, v3

    if-eqz v4, :cond_0

    .line 5
    aget-object v4, p1, v3

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "executors["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_3

    .line 8
    aget-object v3, v1, p1

    if-eq v3, p0, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "An Executor cannot be shut down from the thread acquired from itself.  Please make sure you are not calling releaseExternalResources() from an I/O worker thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 p0, 0x0

    :goto_2
    if-ge v2, v0, :cond_6

    .line 10
    aget-object p1, v1, v2

    .line 11
    instance-of v3, p1, Ljava/util/concurrent/ExecutorService;

    if-nez v3, :cond_4

    goto :goto_5

    .line 12
    :cond_4
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    .line 13
    :cond_5
    :goto_3
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    .line 14
    :catch_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_4
    const-wide/16 v3, 0x64

    .line 15
    :try_start_2
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v3, v4, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v3, :cond_5

    goto :goto_5

    :catch_2
    const/4 p0, 0x1

    goto :goto_3

    :catch_3
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    if-eqz p0, :cond_7

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_7
    return-void
.end method

.method public static varargs c([Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/util/internal/c;->a:Ljava/lang/ThreadLocal;

    invoke-static {v0, p0}, Lorg/jboss/netty/util/internal/e;->b(Ljava/lang/ThreadLocal;[Ljava/util/concurrent/Executor;)V

    return-void
.end method
