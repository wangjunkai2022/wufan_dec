.class abstract Lorg/jboss/netty/channel/socket/nio/d;
.super Ljava/lang/Object;
.source "AbstractNioSelector.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/p;


# static fields
.field private static final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final k:I = 0x100

.field static final synthetic l:Z


# instance fields
.field private final a:I

.field private final b:Ljava/util/concurrent/Executor;

.field protected volatile c:Ljava/lang/Thread;

.field protected volatile d:Ljava/nio/channels/Selector;

.field protected final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile g:I

.field private final h:Ljava/util/concurrent/CountDownLatch;

.field private volatile i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/jboss/netty/channel/socket/nio/d;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/d;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/channel/socket/nio/d;-><init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/d;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/d;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/d;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->a:I

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->f:Ljava/util/Queue;

    .line 6
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->h:Ljava/util/concurrent/CountDownLatch;

    .line 7
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/d;->b:Ljava/util/concurrent/Executor;

    .line 8
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/socket/nio/d;->g(Lorg/jboss/netty/util/d;)V

    return-void
.end method

.method private g(Lorg/jboss/netty/util/d;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/nio/channels/Selector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->b:Ljava/util/concurrent/Executor;

    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->a:I

    invoke-virtual {p0, v1, p1}, Lorg/jboss/netty/channel/socket/nio/d;->f(ILorg/jboss/netty/util/d;)Lorg/jboss/netty/util/e;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/jboss/netty/util/internal/c;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 3
    :try_start_2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/nio/channels/Selector;

    throw p1

    :catchall_2
    move-exception p1

    .line 6
    new-instance v0, Lorg/jboss/netty/channel/ChannelException;

    const-string v1, "Failed to create a selector."

    invoke-direct {v0, v1, p1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private i()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/d;->a()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0
.end method


# virtual methods
.method protected final a()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->g:I

    const/4 v1, 0x0

    const/16 v2, 0x100

    if-lt v0, v2, :cond_0

    .line 2
    iput v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->g:I

    .line 3
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method protected abstract b(Ljava/nio/channels/SelectionKey;)V
.end method

.method protected abstract c(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;)Ljava/lang/Runnable;
.end method

.method protected final d()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->g:I

    return-void
.end method

.method protected final e()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->c:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract f(ILorg/jboss/netty/util/d;)Lorg/jboss/netty/util/e;
.end method

.method protected abstract h(Ljava/nio/channels/Selector;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final j(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    const-string v0, "Worker has already been shutdown"

    invoke-direct {p1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected k(Ljava/nio/channels/Selector;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/v;->a(Ljava/nio/channels/Selector;)I

    move-result p1

    return p1
.end method

.method public rebuildSelector()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->f:Ljava/util/Queue;

    new-instance v1, Lorg/jboss/netty/channel/socket/nio/d$a;

    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/socket/nio/d$a;-><init>(Lorg/jboss/netty/channel/socket/nio/d;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/nio/channels/Selector;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5
    :catch_0
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6
    :try_start_2
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v4

    .line 8
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 9
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v5

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v1, v4, v6}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 10
    :catch_1
    :try_start_3
    invoke-virtual {p0, v3}, Lorg/jboss/netty/channel/socket/nio/d;->b(Ljava/nio/channels/SelectionKey;)V
    :try_end_3
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 11
    :cond_3
    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/nio/channels/Selector;

    .line 12
    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void

    :catch_2
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public run()V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->c:Ljava/lang/Thread;

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/nio/channels/Selector;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-wide v1, Lorg/jboss/netty/channel/socket/nio/v;->d:J

    const-wide/16 v3, 0x50

    mul-long v1, v1, v3

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    :catch_0
    :goto_1
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v6, 0x1

    .line 5
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 6
    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/d;->k(Ljava/nio/channels/Selector;)I

    move-result v9

    .line 7
    sget-boolean v10, Lorg/jboss/netty/channel/socket/nio/v;->e:Z

    if-eqz v10, :cond_7

    if-nez v9, :cond_7

    if-nez v4, :cond_7

    iget-object v9, p0, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-nez v9, :cond_7

    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v7

    cmp-long v7, v9, v1

    if-gez v7, :cond_6

    .line 9
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :catch_1
    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/channels/SelectionKey;

    .line 10
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    instance-of v11, v10, Ljava/nio/channels/DatagramChannel;

    if-eqz v11, :cond_2

    move-object v11, v10

    check-cast v11, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v11}, Ljava/nio/channels/DatagramChannel;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    instance-of v11, v10, Ljava/nio/channels/SocketChannel;

    if-eqz v11, :cond_1

    check-cast v10, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v10}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v10
    :try_end_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v10, :cond_1

    .line 12
    :cond_3
    :try_start_2
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v5, 0x0

    :goto_4
    const/16 v7, 0x400

    if-ne v5, v7, :cond_8

    .line 13
    :try_start_3
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/d;->rebuildSelector()V

    .line 14
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/nio/channels/Selector;

    goto :goto_0

    :cond_7
    const/4 v5, 0x0

    .line 15
    :cond_8
    iget-object v7, p0, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_9

    .line 16
    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v4, 0x1

    goto :goto_5

    :catchall_0
    move-exception v4

    move-object v6, v4

    const/4 v4, 0x1

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    .line 17
    :goto_5
    :try_start_5
    iput v3, p0, Lorg/jboss/netty/channel/socket/nio/d;->g:I

    .line 18
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/d;->i()V

    .line 19
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/nio/channels/Selector;

    .line 20
    iget-boolean v6, p0, Lorg/jboss/netty/channel/socket/nio/d;->i:Z

    if-eqz v6, :cond_b

    const/4 v6, 0x0

    .line 21
    iput-object v6, p0, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/nio/channels/Selector;

    .line 22
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/d;->i()V

    .line 23
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/channels/SelectionKey;

    .line 24
    invoke-virtual {p0, v7}, Lorg/jboss/netty/channel/socket/nio/d;->b(Ljava/nio/channels/SelectionKey;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    .line 25
    :cond_a
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    :catch_3
    move-exception v6

    .line 26
    :try_start_7
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 27
    :goto_7
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/d;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 28
    :cond_b
    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/d;->h(Ljava/nio/channels/Selector;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v6

    .line 29
    :goto_8
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v6, 0x3e8

    .line 30
    :try_start_8
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1
.end method

.method public s(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/d;->c(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;)Ljava/lang/Runnable;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/d;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/d;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/nio/channels/Selector;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->i:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not be called from a I/O-Thread to prevent deadlocks!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
