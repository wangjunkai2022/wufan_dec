.class final Lorg/jboss/netty/channel/socket/nio/t$a;
.super Ljava/lang/Object;
.source "NioWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Lorg/jboss/netty/channel/socket/nio/r;

.field private final b:Lorg/jboss/netty/channel/j;

.field private final c:Z

.field final synthetic d:Lorg/jboss/netty/channel/socket/nio/t;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/t;Lorg/jboss/netty/channel/socket/nio/r;Lorg/jboss/netty/channel/j;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->d:Lorg/jboss/netty/channel/socket/nio/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->a:Lorg/jboss/netty/channel/socket/nio/r;

    .line 3
    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->b:Lorg/jboss/netty/channel/j;

    .line 4
    iput-boolean p4, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->c:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->a:Lorg/jboss/netty/channel/socket/nio/r;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/r;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->a:Lorg/jboss/netty/channel/socket/nio/r;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/r;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    if-eqz v0, :cond_7

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->c:Z

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->a:Lorg/jboss/netty/channel/socket/nio/r;

    iget-object v2, v2, Lorg/jboss/netty/channel/socket/nio/b;->A:Ljava/nio/channels/SelectableChannel;

    check-cast v2, Ljava/nio/channels/SocketChannel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 5
    :cond_1
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->a:Lorg/jboss/netty/channel/socket/nio/r;

    iget-object v2, v2, Lorg/jboss/netty/channel/socket/nio/b;->A:Ljava/nio/channels/SelectableChannel;

    check-cast v2, Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->d:Lorg/jboss/netty/channel/socket/nio/t;

    iget-object v3, v3, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/nio/channels/Selector;

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->a:Lorg/jboss/netty/channel/socket/nio/r;

    invoke-virtual {v4}, Lorg/jboss/netty/channel/socket/nio/b;->m0()I

    move-result v4

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->a:Lorg/jboss/netty/channel/socket/nio/r;

    invoke-virtual {v2, v3, v4, v5}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    .line 6
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->b:Lorg/jboss/netty/channel/j;

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->a:Lorg/jboss/netty/channel/socket/nio/r;

    invoke-virtual {v2}, Lorg/jboss/netty/channel/socket/nio/r;->P0()V

    .line 8
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->b:Lorg/jboss/netty/channel/j;

    invoke-interface {v2}, Lorg/jboss/netty/channel/j;->setSuccess()Z

    .line 9
    :cond_2
    iget-boolean v2, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->c:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->a:Lorg/jboss/netty/channel/socket/nio/r;

    check-cast v2, Lorg/jboss/netty/channel/socket/nio/m;

    iget-boolean v2, v2, Lorg/jboss/netty/channel/socket/nio/m;->J:Z

    if-nez v2, :cond_4

    .line 10
    :cond_3
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->a:Lorg/jboss/netty/channel/socket/nio/r;

    invoke-static {v2, v0}, Lorg/jboss/netty/channel/s;->k(Lorg/jboss/netty/channel/e;Ljava/net/SocketAddress;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->a:Lorg/jboss/netty/channel/socket/nio/r;

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/s;->p(Lorg/jboss/netty/channel/e;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->b:Lorg/jboss/netty/channel/j;

    if-eqz v1, :cond_5

    .line 13
    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 14
    :cond_5
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->d:Lorg/jboss/netty/channel/socket/nio/t;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->a:Lorg/jboss/netty/channel/socket/nio/r;

    invoke-static {v2}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jboss/netty/channel/socket/nio/e;->n(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    .line 15
    instance-of v1, v0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v1, :cond_6

    :goto_0
    return-void

    .line 16
    :cond_6
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    const-string v2, "Failed to register a socket to the selector."

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 17
    :cond_7
    :goto_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->b:Lorg/jboss/netty/channel/j;

    if-eqz v0, :cond_8

    .line 18
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 19
    :cond_8
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->d:Lorg/jboss/netty/channel/socket/nio/t;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/t$a;->a:Lorg/jboss/netty/channel/socket/nio/r;

    invoke-static {v1}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/channel/socket/nio/e;->n(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    return-void
.end method
