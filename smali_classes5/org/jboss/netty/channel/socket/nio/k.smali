.class public final Lorg/jboss/netty/channel/socket/nio/k;
.super Lorg/jboss/netty/channel/socket/nio/d;
.source "NioClientBoss.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/k$b;
    }
.end annotation


# instance fields
.field private final m:Lorg/jboss/netty/util/h;

.field private final n:Lorg/jboss/netty/util/g;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/g;Lorg/jboss/netty/util/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/channel/socket/nio/d;-><init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/d;)V

    .line 2
    new-instance p1, Lorg/jboss/netty/channel/socket/nio/k$a;

    invoke-direct {p1, p0}, Lorg/jboss/netty/channel/socket/nio/k$a;-><init>(Lorg/jboss/netty/channel/socket/nio/k;)V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/k;->m:Lorg/jboss/netty/util/h;

    .line 3
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/k;->n:Lorg/jboss/netty/util/g;

    return-void
.end method

.method static synthetic l(Lorg/jboss/netty/channel/socket/nio/k;)Lorg/jboss/netty/util/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jboss/netty/channel/socket/nio/k;->m:Lorg/jboss/netty/util/h;

    return-object p0
.end method

.method static synthetic m(Lorg/jboss/netty/channel/socket/nio/k;)Lorg/jboss/netty/util/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jboss/netty/channel/socket/nio/k;->n:Lorg/jboss/netty/util/g;

    return-object p0
.end method

.method private static n(Ljava/nio/channels/SelectionKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/m;

    .line 2
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/b;->A:Ljava/nio/channels/SelectableChannel;

    check-cast v1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 4
    iget-object p0, v0, Lorg/jboss/netty/channel/socket/nio/m;->n0:Lorg/jboss/netty/util/f;

    if-eqz p0, :cond_0

    .line 5
    iget-object p0, v0, Lorg/jboss/netty/channel/socket/nio/m;->n0:Lorg/jboss/netty/util/f;

    invoke-interface {p0}, Lorg/jboss/netty/util/f;->cancel()V

    .line 6
    :cond_0
    iget-object p0, v0, Lorg/jboss/netty/channel/socket/nio/b;->n:Lorg/jboss/netty/channel/socket/nio/e;

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/m;->I:Lorg/jboss/netty/channel/j;

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/channel/socket/nio/d;->s(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;)V

    :cond_1
    return-void
.end method

.method private static o(Ljava/util/Set;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 2
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/socket/nio/m;

    .line 4
    iget-wide v2, v1, Lorg/jboss/netty/channel/socket/nio/m;->K:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Ljava/net/ConnectException;

    const-string v2, "connection timed out"

    invoke-direct {v0, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 6
    :cond_2
    iget-object v2, v1, Lorg/jboss/netty/channel/socket/nio/m;->I:Lorg/jboss/netty/channel/j;

    invoke-interface {v2, v0}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 7
    invoke-static {v1, v0}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    .line 8
    iget-object v2, v1, Lorg/jboss/netty/channel/socket/nio/b;->n:Lorg/jboss/netty/channel/socket/nio/e;

    invoke-static {v1}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/jboss/netty/channel/socket/nio/e;->n(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private p(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 5
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/k;->b(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0

    .line 7
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-static {v0}, Lorg/jboss/netty/channel/socket/nio/k;->n(Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 9
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/channel/socket/nio/m;

    .line 10
    iget-object v3, v2, Lorg/jboss/netty/channel/socket/nio/m;->I:Lorg/jboss/netty/channel/j;

    invoke-interface {v3, v1}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 11
    invoke-static {v2, v1}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 13
    iget-object v0, v2, Lorg/jboss/netty/channel/socket/nio/b;->n:Lorg/jboss/netty/channel/socket/nio/e;

    invoke-static {v2}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/jboss/netty/channel/socket/nio/e;->n(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method protected b(Ljava/nio/channels/SelectionKey;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jboss/netty/channel/socket/nio/m;

    .line 2
    iget-object v0, p1, Lorg/jboss/netty/channel/socket/nio/b;->n:Lorg/jboss/netty/channel/socket/nio/e;

    invoke-static {p1}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/jboss/netty/channel/socket/nio/e;->n(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    return-void
.end method

.method protected c(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    new-instance p2, Lorg/jboss/netty/channel/socket/nio/k$b;

    check-cast p1, Lorg/jboss/netty/channel/socket/nio/m;

    invoke-direct {p2, p0, p0, p1}, Lorg/jboss/netty/channel/socket/nio/k$b;-><init>(Lorg/jboss/netty/channel/socket/nio/k;Lorg/jboss/netty/channel/socket/nio/k;Lorg/jboss/netty/channel/socket/nio/m;)V

    return-object p2
.end method

.method protected f(ILorg/jboss/netty/util/d;)Lorg/jboss/netty/util/e;
    .locals 3

    .line 1
    new-instance v0, Lorg/jboss/netty/util/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New I/O boss #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lorg/jboss/netty/util/e;-><init>(Ljava/lang/Runnable;Ljava/lang/String;Lorg/jboss/netty/util/d;)V

    return-object v0
.end method

.method protected h(Ljava/nio/channels/Selector;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/k;->p(Ljava/util/Set;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 3
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lorg/jboss/netty/channel/socket/nio/k;->o(Ljava/util/Set;J)V

    return-void
.end method

.method public bridge synthetic rebuildSelector()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/d;->rebuildSelector()V

    return-void
.end method

.method public bridge synthetic run()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/d;->run()V

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
