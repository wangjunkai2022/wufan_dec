.class public Lorg/jboss/netty/channel/w;
.super Ljava/lang/Object;
.source "DefaultChannelFuture.java"

# interfaces
.implements Lorg/jboss/netty/channel/j;


# static fields
.field private static final i:Ljava/lang/Throwable;

.field private static volatile j:Z

.field private static k:Z


# instance fields
.field private final a:Lorg/jboss/netty/channel/e;

.field private final b:Z

.field private c:Lorg/jboss/netty/channel/k;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jboss/netty/channel/k;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jboss/netty/channel/l;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/lang/Throwable;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/w;->i:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lorg/jboss/netty/channel/w;->j:Z

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/e;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/jboss/netty/channel/w;->a:Lorg/jboss/netty/channel/e;

    .line 3
    iput-boolean p2, p0, Lorg/jboss/netty/channel/w;->b:Z

    return-void
.end method

.method private f(JZ)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object v1, p0

    if-eqz p3, :cond_1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_2

    move-wide v4, v2

    goto :goto_1

    .line 3
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    :goto_1
    const/4 v6, 0x0

    .line 4
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :try_start_1
    iget-boolean v0, v1, Lorg/jboss/netty/channel/w;->f:Z

    if-nez v0, :cond_9

    cmp-long v7, p1, v2

    if-gtz v7, :cond_3

    goto :goto_4

    .line 6
    :cond_3
    invoke-static {}, Lorg/jboss/netty/channel/w;->g()V

    .line 7
    iget v0, v1, Lorg/jboss/netty/channel/w;->h:I

    const/4 v7, 0x1

    add-int/2addr v0, v7

    iput v0, v1, Lorg/jboss/netty/channel/w;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide v8, p1

    :cond_4
    const-wide/32 v10, 0xf4240

    .line 8
    :try_start_2
    div-long v12, v8, v10

    rem-long/2addr v8, v10

    long-to-int v0, v8

    invoke-virtual {p0, v12, v13, v0}, Ljava/lang/Object;->wait(JI)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    if-nez p3, :cond_8

    const/4 v6, 0x1

    .line 9
    :goto_2
    :try_start_3
    iget-boolean v0, v1, Lorg/jboss/netty/channel/w;->f:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_6

    .line 10
    :try_start_4
    iget v0, v1, Lorg/jboss/netty/channel/w;->h:I

    sub-int/2addr v0, v7

    iput v0, v1, Lorg/jboss/netty/channel/w;->h:I

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v6, :cond_5

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    return v7

    .line 12
    :cond_6
    :try_start_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    sub-long v8, p1, v8

    cmp-long v0, v8, v2

    if-gtz v0, :cond_4

    .line 13
    iget-boolean v0, v1, Lorg/jboss/netty/channel/w;->f:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 14
    :try_start_6
    iget v2, v1, Lorg/jboss/netty/channel/w;->h:I

    sub-int/2addr v2, v7

    iput v2, v1, Lorg/jboss/netty/channel/w;->h:I

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v6, :cond_7

    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_7
    return v0

    .line 16
    :cond_8
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 17
    :goto_3
    :try_start_8
    iget v2, v1, Lorg/jboss/netty/channel/w;->h:I

    sub-int/2addr v2, v7

    iput v2, v1, Lorg/jboss/netty/channel/w;->h:I

    throw v0

    .line 18
    :cond_9
    :goto_4
    monitor-exit p0

    return v0

    :catchall_1
    move-exception v0

    .line 19
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz v6, :cond_a

    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_a
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private static g()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/jboss/netty/channel/w;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/jboss/netty/util/internal/c;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "await*() in I/O thread causes a dead lock or sudden performance drop. Use addListener() instead or call await*() from a different thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static h()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/jboss/netty/channel/w;->j:Z

    return v0
.end method

.method private i(Lorg/jboss/netty/channel/k;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Lorg/jboss/netty/channel/k;->b(Lorg/jboss/netty/channel/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->c:Lorg/jboss/netty/channel/k;

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/w;->i(Lorg/jboss/netty/channel/k;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/jboss/netty/channel/w;->c:Lorg/jboss/netty/channel/k;

    .line 4
    iget-object v1, p0, Lorg/jboss/netty/channel/w;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/channel/k;

    .line 6
    invoke-direct {p0, v2}, Lorg/jboss/netty/channel/w;->i(Lorg/jboss/netty/channel/k;)V

    goto :goto_0

    .line 7
    :cond_0
    iput-object v0, p0, Lorg/jboss/netty/channel/w;->d:Ljava/util/List;

    :cond_1
    return-void
.end method

.method private k(Lorg/jboss/netty/channel/l;JJJ)V
    .locals 8

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    .line 1
    :try_start_0
    invoke-interface/range {v0 .. v7}, Lorg/jboss/netty/channel/l;->c(Lorg/jboss/netty/channel/j;JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/w;->a()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2

    .line 3
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 5
    :cond_1
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 6
    :cond_2
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method

.method public static m(Z)V
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget-boolean v0, Lorg/jboss/netty/channel/w;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lorg/jboss/netty/channel/w;->k:Z

    .line 3
    :cond_0
    sput-boolean p0, Lorg/jboss/netty/channel/w;->j:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/Throwable;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->g:Ljava/lang/Throwable;

    sget-object v1, Lorg/jboss/netty/channel/w;->i:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 2
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public await()Lorg/jboss/netty/channel/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/w;->f:Z

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lorg/jboss/netty/channel/w;->g()V

    .line 5
    iget v0, p0, Lorg/jboss/netty/channel/w;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/channel/w;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    iget v0, p0, Lorg/jboss/netty/channel/w;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/channel/w;->h:I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget v1, p0, Lorg/jboss/netty/channel/w;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/channel/w;->h:I

    throw v0

    .line 8
    :cond_0
    monitor-exit p0

    return-object p0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public await(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 11
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/channel/w;->f(JZ)Z

    move-result p1

    return p1
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 10
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/channel/w;->f(JZ)Z

    move-result p1

    return p1
.end method

.method public awaitUninterruptibly()Lorg/jboss/netty/channel/j;
    .locals 3

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/jboss/netty/channel/w;->f:Z

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lorg/jboss/netty/channel/w;->g()V

    .line 4
    iget v1, p0, Lorg/jboss/netty/channel/w;->h:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/jboss/netty/channel/w;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    iget v1, p0, Lorg/jboss/netty/channel/w;->h:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/jboss/netty/channel/w;->h:I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget v1, p0, Lorg/jboss/netty/channel/w;->h:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/jboss/netty/channel/w;->h:I

    throw v0

    :catch_0
    iget v0, p0, Lorg/jboss/netty/channel/w;->h:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/jboss/netty/channel/w;->h:I

    const/4 v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-object p0

    :catchall_1
    move-exception v0

    .line 9
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public awaitUninterruptibly(J)Z
    .locals 1

    .line 12
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/channel/w;->f(JZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 13
    :catch_0
    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1
.end method

.method public awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    .line 10
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/channel/w;->f(JZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 11
    :catch_0
    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1
.end method

.method public b(Lorg/jboss/netty/channel/k;)V
    .locals 3

    const-string v0, "listener"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lorg/jboss/netty/channel/w;->f:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/channel/w;->c:Lorg/jboss/netty/channel/k;

    if-nez v1, :cond_1

    .line 5
    iput-object p1, p0, Lorg/jboss/netty/channel/w;->c:Lorg/jboss/netty/channel/k;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lorg/jboss/netty/channel/w;->d:Ljava/util/List;

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jboss/netty/channel/w;->d:Ljava/util/List;

    .line 8
    :cond_2
    iget-object v1, p0, Lorg/jboss/netty/channel/w;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :goto_0
    instance-of v1, p1, Lorg/jboss/netty/channel/l;

    if-eqz v1, :cond_4

    .line 10
    iget-object v1, p0, Lorg/jboss/netty/channel/w;->e:Ljava/util/List;

    if-nez v1, :cond_3

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jboss/netty/channel/w;->e:Ljava/util/List;

    .line 12
    :cond_3
    iget-object v1, p0, Lorg/jboss/netty/channel/w;->e:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Lorg/jboss/netty/channel/l;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_4
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    .line 14
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/w;->i(Lorg/jboss/netty/channel/k;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c(Lorg/jboss/netty/channel/k;)V
    .locals 2

    const-string v0, "listener"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/w;->f:Z

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->c:Lorg/jboss/netty/channel/k;

    if-ne p1, v0, :cond_1

    .line 5
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/k;

    iput-object v0, p0, Lorg/jboss/netty/channel/w;->c:Lorg/jboss/netty/channel/k;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/jboss/netty/channel/w;->c:Lorg/jboss/netty/channel/k;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10
    :cond_2
    :goto_0
    instance-of v0, p1, Lorg/jboss/netty/channel/l;

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancel()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/jboss/netty/channel/w;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/w;->f:Z

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0

    return v1

    .line 5
    :cond_1
    sget-object v0, Lorg/jboss/netty/channel/w;->i:Ljava/lang/Throwable;

    iput-object v0, p0, Lorg/jboss/netty/channel/w;->g:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lorg/jboss/netty/channel/w;->f:Z

    .line 7
    iget v1, p0, Lorg/jboss/netty/channel/w;->h:I

    if-lez v1, :cond_2

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 9
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-direct {p0}, Lorg/jboss/netty/channel/w;->j()V

    return v0

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d(JJJ)Z
    .locals 13

    move-object v9, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, v9, Lorg/jboss/netty/channel/w;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    iget-object v0, v9, Lorg/jboss/netty/channel/w;->e:Ljava/util/List;

    const/4 v10, 0x1

    if-eqz v0, :cond_3

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jboss/netty/channel/l;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/channel/l;

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    array-length v11, v0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_2

    aget-object v2, v0, v12

    move-object v1, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    .line 9
    invoke-direct/range {v1 .. v8}, Lorg/jboss/netty/channel/w;->k(Lorg/jboss/netty/channel/l;JJJ)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    return v10

    .line 10
    :cond_3
    :goto_1
    :try_start_1
    monitor-exit p0

    return v10

    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public e()Lorg/jboss/netty/channel/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/w;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/w;->a()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    instance-of v1, v0, Ljava/lang/Exception;

    if-nez v1, :cond_3

    .line 4
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_2

    .line 5
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 6
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 7
    :cond_3
    check-cast v0, Ljava/lang/Exception;

    throw v0
.end method

.method public getChannel()Lorg/jboss/netty/channel/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->a:Lorg/jboss/netty/channel/e;

    return-object v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/w;->g:Ljava/lang/Throwable;

    sget-object v1, Lorg/jboss/netty/channel/w;->i:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/w;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSuccess()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/w;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/w;->g:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFailure(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/w;->f:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3
    monitor-exit p0

    return p1

    .line 4
    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/channel/w;->g:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lorg/jboss/netty/channel/w;->f:Z

    .line 6
    iget v0, p0, Lorg/jboss/netty/channel/w;->h:I

    if-lez v0, :cond_1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-direct {p0}, Lorg/jboss/netty/channel/w;->j()V

    return p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setSuccess()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/w;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lorg/jboss/netty/channel/w;->f:Z

    .line 5
    iget v1, p0, Lorg/jboss/netty/channel/w;->h:I

    if-lez v1, :cond_1

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 7
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-direct {p0}, Lorg/jboss/netty/channel/w;->j()V

    return v0

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sync()Lorg/jboss/netty/channel/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/w;->await()Lorg/jboss/netty/channel/j;

    .line 2
    invoke-direct {p0}, Lorg/jboss/netty/channel/w;->l()V

    return-object p0
.end method

.method public syncUninterruptibly()Lorg/jboss/netty/channel/j;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/w;->awaitUninterruptibly()Lorg/jboss/netty/channel/j;

    .line 2
    invoke-direct {p0}, Lorg/jboss/netty/channel/w;->l()V

    return-object p0
.end method
