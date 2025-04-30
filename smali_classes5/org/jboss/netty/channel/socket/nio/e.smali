.class abstract Lorg/jboss/netty/channel/socket/nio/e;
.super Lorg/jboss/netty/channel/socket/nio/d;
.source "AbstractNioWorker.java"

# interfaces
.implements Lk3/f;


# instance fields
.field protected final m:Lorg/jboss/netty/channel/socket/nio/x;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/d;-><init>(Ljava/util/concurrent/Executor;)V

    .line 2
    new-instance p1, Lorg/jboss/netty/channel/socket/nio/x;

    invoke-direct {p1}, Lorg/jboss/netty/channel/socket/nio/x;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/e;->m:Lorg/jboss/netty/channel/socket/nio/x;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/d;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/d;-><init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/d;)V

    .line 4
    new-instance p1, Lorg/jboss/netty/channel/socket/nio/x;

    invoke-direct {p1}, Lorg/jboss/netty/channel/socket/nio/x;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/e;->m:Lorg/jboss/netty/channel/socket/nio/x;

    return-void
.end method

.method protected static l(Lorg/jboss/netty/channel/socket/nio/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b;->u:Lorg/jboss/netty/channel/i0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lorg/jboss/netty/channel/a;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    new-instance v4, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v4}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v4, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v4}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 6
    :goto_0
    invoke-interface {v1}, Lorg/jboss/netty/channel/h;->d()Lorg/jboss/netty/channel/j;

    move-result-object v1

    .line 7
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/b;->v:Lorg/jboss/netty/channel/socket/nio/x$g;

    if-eqz v5, :cond_1

    .line 8
    invoke-interface {v5}, Lorg/jboss/netty/channel/socket/nio/x$g;->release()V

    .line 9
    iput-object v3, p0, Lorg/jboss/netty/channel/socket/nio/b;->v:Lorg/jboss/netty/channel/socket/nio/x$g;

    .line 10
    :cond_1
    iput-object v3, p0, Lorg/jboss/netty/channel/socket/nio/b;->u:Lorg/jboss/netty/channel/i0;

    .line 11
    invoke-interface {v1, v4}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    move-object v3, v4

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 12
    :goto_1
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/b;->r:Ljava/util/Queue;

    .line 13
    :goto_2
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jboss/netty/channel/i0;

    if-nez v5, :cond_5

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 15
    invoke-static {p0}, Lorg/jboss/netty/channel/socket/nio/e;->p(Lorg/jboss/netty/channel/socket/nio/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-static {p0, v3}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 17
    :cond_3
    invoke-static {p0, v3}, Lorg/jboss/netty/channel/s;->F(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/j;

    :cond_4
    :goto_3
    return-void

    :cond_5
    if-nez v3, :cond_7

    .line 18
    :try_start_1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/a;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 19
    new-instance v1, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    goto :goto_4

    .line 20
    :cond_6
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    :goto_4
    move-object v3, v1

    const/4 v1, 0x1

    .line 21
    :cond_7
    invoke-interface {v5}, Lorg/jboss/netty/channel/h;->d()Lorg/jboss/netty/channel/j;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method static p(Lorg/jboss/netty/channel/socket/nio/b;)Z
    .locals 1
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

    iget-object p0, p0, Lorg/jboss/netty/channel/socket/nio/b;->n:Lorg/jboss/netty/channel/socket/nio/e;

    iget-object p0, p0, Lorg/jboss/netty/channel/socket/nio/d;->c:Ljava/lang/Thread;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected b(Ljava/nio/channels/SelectionKey;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jboss/netty/channel/socket/nio/b;

    .line 2
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/socket/nio/e;->n(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    return-void
.end method

.method public e0(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/socket/nio/e;->o(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method protected f(ILorg/jboss/netty/util/d;)Lorg/jboss/netty/util/e;
    .locals 3

    .line 1
    new-instance v0, Lorg/jboss/netty/util/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New I/O worker #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lorg/jboss/netty/util/e;-><init>(Ljava/lang/Runnable;Ljava/lang/String;Lorg/jboss/netty/util/d;)V

    return-object v0
.end method

.method protected h(Ljava/nio/channels/Selector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_2

    if-nez v1, :cond_3

    .line 7
    :cond_2
    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/e;->q(Ljava/nio/channels/SelectionKey;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/e;->w(Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9
    :catch_0
    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/e;->b(Ljava/nio/channels/SelectionKey;)V

    .line 10
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_5
    return-void
.end method

.method protected m(Lorg/jboss/netty/channel/socket/nio/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/nio/channels/Selector;

    .line 2
    iget-object v1, p1, Lorg/jboss/netty/channel/socket/nio/b;->A:Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/e;->b(Ljava/nio/channels/SelectionKey;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/b;->m0()I

    move-result v1

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    and-int/lit8 v1, v1, -0x5

    .line 6
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 7
    invoke-virtual {p1, v1}, Lorg/jboss/netty/channel/socket/nio/b;->L0(I)V

    :cond_2
    return-void
.end method

.method protected n(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/b<",
            "*>;",
            "Lorg/jboss/netty/channel/j;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/channel/e;->isConnected()Z

    move-result v0

    .line 2
    invoke-interface {p1}, Lorg/jboss/netty/channel/e;->r()Z

    move-result v1

    .line 3
    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/e;->p(Lorg/jboss/netty/channel/socket/nio/b;)Z

    move-result v2

    .line 4
    :try_start_0
    iget-object v3, p1, Lorg/jboss/netty/channel/socket/nio/b;->A:Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 5
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/d;->d()V

    .line 6
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/b;->Y()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 7
    invoke-interface {p2}, Lorg/jboss/netty/channel/j;->setSuccess()Z

    if-eqz v0, :cond_1

    if-eqz v2, :cond_0

    .line 8
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->r(Lorg/jboss/netty/channel/e;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->t(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    if-eqz v2, :cond_2

    .line 10
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->z(Lorg/jboss/netty/channel/e;)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->B(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 12
    :cond_3
    :goto_1
    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/e;->l(Lorg/jboss/netty/channel/socket/nio/b;)V

    if-eqz v2, :cond_4

    .line 13
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->m(Lorg/jboss/netty/channel/e;)V

    goto :goto_2

    .line 14
    :cond_4
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->o(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    goto :goto_2

    .line 15
    :cond_5
    invoke-interface {p2}, Lorg/jboss/netty/channel/j;->setSuccess()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 16
    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    if-eqz v2, :cond_6

    .line 17
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 18
    :cond_6
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/s;->F(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/j;

    :goto_2
    return-void
.end method

.method public o(Ljava/lang/Runnable;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/d;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/d;->j(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected abstract q(Ljava/nio/channels/SelectionKey;)Z
.end method

.method protected abstract r(Lorg/jboss/netty/channel/socket/nio/b;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/b<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public run()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/d;->run()V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/e;->m:Lorg/jboss/netty/channel/socket/nio/x;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/x;->b()V

    return-void
.end method

.method t(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/b<",
            "*>;",
            "Lorg/jboss/netty/channel/j;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/e;->p(Lorg/jboss/netty/channel/socket/nio/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/jboss/netty/channel/a;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/socket/nio/e$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/jboss/netty/channel/socket/nio/e$a;-><init>(Lorg/jboss/netty/channel/socket/nio/e;Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;I)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/nio/channels/Selector;

    .line 4
    iget-object v2, p1, Lorg/jboss/netty/channel/socket/nio/b;->A:Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v2, v1}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    and-int/lit8 p3, p3, -0x5

    .line 5
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/b;->m0()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    or-int/2addr p3, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    if-nez v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/b;->m0()I

    move-result v0

    if-eq v0, p3, :cond_3

    .line 7
    invoke-virtual {v2, p3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/d;->c:Ljava/lang/Thread;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 10
    :cond_2
    invoke-virtual {p1, p3}, Lorg/jboss/netty/channel/socket/nio/b;->L0(I)V

    .line 11
    :cond_3
    invoke-interface {p2}, Lorg/jboss/netty/channel/j;->setSuccess()Z

    goto :goto_3

    .line 12
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/b;->m0()I

    move-result v1

    if-eq v1, p3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    .line 13
    :goto_1
    invoke-virtual {p1, p3}, Lorg/jboss/netty/channel/socket/nio/b;->L0(I)V

    .line 14
    invoke-interface {p2}, Lorg/jboss/netty/channel/j;->setSuccess()Z

    if-eqz v3, :cond_7

    if-eqz v0, :cond_6

    .line 15
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->u(Lorg/jboss/netty/channel/e;)V

    goto :goto_2

    .line 16
    :cond_6
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->w(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_2
    return-void

    :catchall_0
    move-exception p3

    .line 17
    invoke-interface {p2, p3}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 18
    invoke-static {p1, p3}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 19
    :catch_0
    new-instance p3, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 20
    invoke-interface {p2, p3}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 21
    invoke-static {p1, p3}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method protected u(Lorg/jboss/netty/channel/socket/nio/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/nio/channels/Selector;

    .line 2
    iget-object v1, p1, Lorg/jboss/netty/channel/socket/nio/b;->A:Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/e;->b(Ljava/nio/channels/SelectionKey;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/b;->m0()I

    move-result v1

    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_2

    or-int/lit8 v1, v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 7
    invoke-virtual {p1, v1}, Lorg/jboss/netty/channel/socket/nio/b;->L0(I)V

    :cond_2
    return-void
.end method

.method protected v(Lorg/jboss/netty/channel/socket/nio/b;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/b<",
            "*>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    invoke-static/range {p1 .. p1}, Lorg/jboss/netty/channel/socket/nio/e;->p(Lorg/jboss/netty/channel/socket/nio/b;)Z

    move-result v3

    .line 2
    iget-object v4, v1, Lorg/jboss/netty/channel/socket/nio/e;->m:Lorg/jboss/netty/channel/socket/nio/x;

    .line 3
    iget-object v0, v2, Lorg/jboss/netty/channel/socket/nio/b;->A:Ljava/nio/channels/SelectableChannel;

    move-object v5, v0

    check-cast v5, Ljava/nio/channels/WritableByteChannel;

    .line 4
    iget-object v6, v2, Lorg/jboss/netty/channel/socket/nio/b;->r:Ljava/util/Queue;

    .line 5
    invoke-virtual/range {p1 .. p1}, Lorg/jboss/netty/channel/socket/nio/b;->e0()Lorg/jboss/netty/channel/socket/nio/j;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/j;->getWriteSpinCount()I

    move-result v7

    .line 6
    iget-object v8, v2, Lorg/jboss/netty/channel/socket/nio/b;->o:Ljava/lang/Object;

    monitor-enter v8

    const/4 v9, 0x1

    .line 7
    :try_start_0
    iput-boolean v9, v2, Lorg/jboss/netty/channel/socket/nio/b;->w:Z

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-wide v15, v10

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v17, 0x0

    .line 8
    :goto_0
    iget-object v0, v2, Lorg/jboss/netty/channel/socket/nio/b;->u:Lorg/jboss/netty/channel/i0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const/4 v9, 0x0

    if-nez v0, :cond_1

    .line 9
    :try_start_1
    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/i0;

    iput-object v0, v2, Lorg/jboss/netty/channel/socket/nio/b;->u:Lorg/jboss/netty/channel/i0;
    :try_end_1
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v0, :cond_0

    .line 10
    :try_start_2
    iput-boolean v12, v2, Lorg/jboss/netty/channel/socket/nio/b;->x:Z
    :try_end_2
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v9, v14

    move-wide v4, v15

    const/4 v6, 0x0

    const/16 v17, 0x1

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object v10, v0

    move-object v0, v9

    move-object v12, v0

    const/16 v17, 0x1

    goto :goto_1

    :catch_0
    const/16 v17, 0x1

    goto :goto_7

    .line 11
    :cond_0
    :try_start_3
    invoke-interface {v0}, Lorg/jboss/netty/channel/h;->d()Lorg/jboss/netty/channel/j;

    move-result-object v19
    :try_end_3
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 12
    :try_start_4
    invoke-interface {v0}, Lorg/jboss/netty/channel/i0;->getMessage()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/jboss/netty/channel/socket/nio/x;->f(Ljava/lang/Object;)Lorg/jboss/netty/channel/socket/nio/x$g;

    move-result-object v12
    :try_end_4
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iput-object v12, v2, Lorg/jboss/netty/channel/socket/nio/b;->v:Lorg/jboss/netty/channel/socket/nio/x$g;
    :try_end_5
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v10, v0

    move-object v12, v9

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v10, v0

    move-object v0, v9

    move-object v12, v0

    :goto_1
    const/16 v18, 0x0

    :goto_2
    const/16 v20, 0x1

    goto/16 :goto_c

    .line 13
    :cond_1
    :try_start_6
    invoke-interface {v0}, Lorg/jboss/netty/channel/h;->d()Lorg/jboss/netty/channel/j;

    move-result-object v19
    :try_end_6
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 14
    :try_start_7
    iget-object v12, v2, Lorg/jboss/netty/channel/socket/nio/b;->v:Lorg/jboss/netty/channel/socket/nio/x$g;
    :try_end_7
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :goto_3
    move v0, v7

    move-wide/from16 v21, v10

    :goto_4
    if-lez v0, :cond_4

    .line 15
    :try_start_8
    invoke-interface {v12, v5}, Lorg/jboss/netty/channel/socket/nio/x$g;->c(Ljava/nio/channels/WritableByteChannel;)J

    move-result-wide v21

    cmp-long v23, v21, v10

    if-eqz v23, :cond_2

    add-long v15, v15, v21

    goto :goto_6

    .line 16
    :cond_2
    invoke-interface {v12}, Lorg/jboss/netty/channel/socket/nio/x$g;->a()Z

    move-result v23
    :try_end_8
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v23, :cond_3

    goto :goto_6

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v10, v0

    :goto_5
    move-object/from16 v0, v19

    goto :goto_1

    :cond_4
    :goto_6
    move-wide/from16 v22, v21

    .line 17
    :try_start_9
    invoke-interface {v12}, Lorg/jboss/netty/channel/socket/nio/x$g;->a()Z

    move-result v0
    :try_end_9
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v0, :cond_5

    .line 18
    :try_start_a
    invoke-interface {v12}, Lorg/jboss/netty/channel/socket/nio/x$g;->release()V

    .line 19
    iput-object v9, v2, Lorg/jboss/netty/channel/socket/nio/b;->u:Lorg/jboss/netty/channel/i0;

    .line 20
    iput-object v9, v2, Lorg/jboss/netty/channel/socket/nio/b;->v:Lorg/jboss/netty/channel/socket/nio/x$g;
    :try_end_a
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 21
    :try_start_b
    invoke-interface/range {v19 .. v19}, Lorg/jboss/netty/channel/j;->setSuccess()Z
    :try_end_b
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catch_1
    :goto_7
    const/16 v18, 0x0

    const/16 v20, 0x1

    goto/16 :goto_e

    :cond_5
    const/4 v14, 0x1

    .line 22
    :try_start_c
    iput-boolean v14, v2, Lorg/jboss/netty/channel/socket/nio/b;->x:Z
    :try_end_c
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    cmp-long v0, v22, v10

    if-lez v0, :cond_6

    .line 23
    :try_start_d
    invoke-interface {v12}, Lorg/jboss/netty/channel/socket/nio/x$g;->e()J

    move-result-wide v24

    invoke-interface {v12}, Lorg/jboss/netty/channel/socket/nio/x$g;->b()J

    move-result-wide v26

    move-object/from16 v21, v19

    invoke-interface/range {v21 .. v27}, Lorg/jboss/netty/channel/j;->d(JJJ)Z
    :try_end_d
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :cond_6
    move-wide v4, v15

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 24
    :goto_8
    :try_start_e
    iput-boolean v6, v2, Lorg/jboss/netty/channel/socket/nio/b;->w:Z

    if-eqz v13, :cond_8

    if-eqz v9, :cond_7

    .line 25
    invoke-virtual/range {p0 .. p1}, Lorg/jboss/netty/channel/socket/nio/e;->u(Lorg/jboss/netty/channel/socket/nio/b;)V

    goto :goto_9

    :cond_7
    if-eqz v17, :cond_8

    .line 26
    invoke-virtual/range {p0 .. p1}, Lorg/jboss/netty/channel/socket/nio/e;->m(Lorg/jboss/netty/channel/socket/nio/b;)V

    .line 27
    :cond_8
    :goto_9
    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    if-eqz v3, :cond_9

    .line 28
    invoke-static {v2, v4, v5}, Lorg/jboss/netty/channel/s;->L(Lorg/jboss/netty/channel/e;J)V

    goto :goto_a

    .line 29
    :cond_9
    invoke-static {v2, v4, v5}, Lorg/jboss/netty/channel/s;->N(Lorg/jboss/netty/channel/e;J)Lorg/jboss/netty/channel/j;

    :goto_a
    return-void

    :catchall_4
    move-exception v0

    const/16 v18, 0x0

    move-object v10, v0

    move-object/from16 v0, v19

    goto :goto_2

    :catchall_5
    move-exception v0

    const/16 v18, 0x0

    const/16 v20, 0x1

    move-object v10, v0

    goto :goto_b

    :catchall_6
    move-exception v0

    const/16 v18, 0x0

    const/16 v20, 0x1

    move-object v10, v0

    move-object v12, v9

    :goto_b
    move-object/from16 v0, v19

    goto :goto_c

    :catchall_7
    move-exception v0

    const/16 v18, 0x0

    const/16 v20, 0x1

    move-object v10, v0

    move-object v0, v9

    move-object v12, v0

    :goto_c
    if-eqz v12, :cond_a

    .line 30
    :try_start_f
    invoke-interface {v12}, Lorg/jboss/netty/channel/socket/nio/x$g;->release()V

    .line 31
    :cond_a
    iput-object v9, v2, Lorg/jboss/netty/channel/socket/nio/b;->u:Lorg/jboss/netty/channel/i0;

    .line 32
    iput-object v9, v2, Lorg/jboss/netty/channel/socket/nio/b;->v:Lorg/jboss/netty/channel/socket/nio/x$g;

    if-eqz v0, :cond_b

    .line 33
    invoke-interface {v0, v10}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    :cond_b
    if-eqz v3, :cond_c

    .line 34
    invoke-static {v2, v10}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 35
    :cond_c
    invoke-static {v2, v10}, Lorg/jboss/netty/channel/s;->F(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/j;

    .line 36
    :goto_d
    instance-of v0, v10, Ljava/io/IOException;

    if-eqz v0, :cond_d

    .line 37
    invoke-static/range {p1 .. p1}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/jboss/netty/channel/socket/nio/e;->n(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    const/4 v13, 0x0

    :cond_d
    :goto_e
    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    goto/16 :goto_0

    :catchall_8
    move-exception v0

    .line 38
    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method

.method w(Ljava/nio/channels/SelectionKey;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jboss/netty/channel/socket/nio/b;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/b;->x:Z

    .line 3
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/e;->v(Lorg/jboss/netty/channel/socket/nio/b;)V

    return-void
.end method

.method x(Lorg/jboss/netty/channel/socket/nio/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/b;->x:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/e;->v(Lorg/jboss/netty/channel/socket/nio/b;)V

    :cond_0
    return-void
.end method

.method y(Lorg/jboss/netty/channel/socket/nio/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/channel/e;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/e;->l(Lorg/jboss/netty/channel/socket/nio/b;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/e;->r(Lorg/jboss/netty/channel/socket/nio/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/b;->x:Z

    if-eqz v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/b;->w:Z

    if-eqz v0, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/e;->v(Lorg/jboss/netty/channel/socket/nio/b;)V

    return-void
.end method
