.class public Lorg/jboss/netty/channel/socket/nio/t;
.super Lorg/jboss/netty/channel/socket/nio/e;
.source "NioWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/t$a;
    }
.end annotation


# instance fields
.field private final n:Lorg/jboss/netty/channel/socket/nio/w;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/e;-><init>(Ljava/util/concurrent/Executor;)V

    .line 2
    new-instance p1, Lorg/jboss/netty/channel/socket/nio/w;

    invoke-direct {p1}, Lorg/jboss/netty/channel/socket/nio/w;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/t;->n:Lorg/jboss/netty/channel/socket/nio/w;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/d;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/e;-><init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/d;)V

    .line 4
    new-instance p1, Lorg/jboss/netty/channel/socket/nio/w;

    invoke-direct {p1}, Lorg/jboss/netty/channel/socket/nio/w;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/t;->n:Lorg/jboss/netty/channel/socket/nio/w;

    return-void
.end method


# virtual methods
.method protected c(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;)Ljava/lang/Runnable;
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/jboss/netty/channel/socket/nio/m;

    xor-int/lit8 v0, v0, 0x1

    .line 2
    new-instance v1, Lorg/jboss/netty/channel/socket/nio/t$a;

    check-cast p1, Lorg/jboss/netty/channel/socket/nio/r;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/jboss/netty/channel/socket/nio/t$a;-><init>(Lorg/jboss/netty/channel/socket/nio/t;Lorg/jboss/netty/channel/socket/nio/r;Lorg/jboss/netty/channel/j;Z)V

    return-object v1
.end method

.method public bridge synthetic e0(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jboss/netty/channel/socket/nio/e;->e0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic o(Ljava/lang/Runnable;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/e;->o(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method protected q(Ljava/nio/channels/SelectionKey;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 2
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/socket/nio/r;

    .line 3
    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/r;->M0()Lorg/jboss/netty/channel/socket/nio/s;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/socket/nio/s;->f()Lorg/jboss/netty/channel/j0;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Lorg/jboss/netty/channel/j0;->a()I

    move-result v3

    .line 5
    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/r;->M0()Lorg/jboss/netty/channel/socket/nio/s;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/channel/f;->g()Lorg/jboss/netty/buffer/f;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/t;->n:Lorg/jboss/netty/channel/socket/nio/w;

    invoke-virtual {v5, v3}, Lorg/jboss/netty/channel/socket/nio/w;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v4}, Lorg/jboss/netty/buffer/f;->d()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_0
    const/4 v8, 0x1

    .line 7
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7

    if-lez v7, :cond_1

    add-int/2addr v6, v7

    .line 8
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    invoke-static {v1, v0}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    :catch_0
    const/4 v0, 0x1

    :goto_0
    if-lez v6, :cond_2

    .line 10
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 11
    invoke-interface {v4, v6}, Lorg/jboss/netty/buffer/f;->a(I)Lorg/jboss/netty/buffer/e;

    move-result-object v4

    .line 12
    invoke-interface {v4, v5, v3}, Lorg/jboss/netty/buffer/e;->G0(ILjava/nio/ByteBuffer;)V

    .line 13
    invoke-interface {v4, v6}, Lorg/jboss/netty/buffer/e;->u0(I)V

    .line 14
    invoke-interface {v2, v6}, Lorg/jboss/netty/channel/j0;->b(I)V

    .line 15
    invoke-static {v1, v4}, Lorg/jboss/netty/channel/s;->H(Lorg/jboss/netty/channel/e;Ljava/lang/Object;)V

    :cond_2
    if-ltz v7, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    return v8

    .line 16
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 17
    invoke-static {v1}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/jboss/netty/channel/socket/nio/e;->n(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    return v5
.end method

.method protected r(Lorg/jboss/netty/channel/socket/nio/b;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/b<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->c:Ljava/lang/Thread;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p1, Lorg/jboss/netty/channel/socket/nio/b;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lorg/jboss/netty/channel/socket/nio/b;->p:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/d;->j(Ljava/lang/Runnable;)V

    :cond_0
    return v1

    :cond_1
    return v2
.end method

.method public bridge synthetic rebuildSelector()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/d;->rebuildSelector()V

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/e;->run()V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/t;->n:Lorg/jboss/netty/channel/socket/nio/w;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/w;->b()V

    return-void
.end method

.method public bridge synthetic s(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/d;->s(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;)V

    return-void
.end method

.method public bridge synthetic shutdown()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/d;->shutdown()V

    return-void
.end method
