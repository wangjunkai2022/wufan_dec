.class Lorg/jboss/netty/channel/socket/nio/o;
.super Lorg/jboss/netty/channel/socket/nio/c;
.source "NioClientSocketPipelineSink.java"


# static fields
.field static final synthetic b:Z


# instance fields
.field private final a:Lorg/jboss/netty/channel/socket/nio/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/channel/socket/nio/h<",
            "Lorg/jboss/netty/channel/socket/nio/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/h<",
            "Lorg/jboss/netty/channel/socket/nio/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/c;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/o;->a:Lorg/jboss/netty/channel/socket/nio/h;

    return-void
.end method

.method private static e(Lorg/jboss/netty/channel/socket/nio/m;Lorg/jboss/netty/channel/j;Ljava/net/SocketAddress;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->A:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lorg/jboss/netty/channel/socket/nio/m;->J:Z

    .line 3
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/r;->O0()V

    .line 4
    invoke-interface {p1}, Lorg/jboss/netty/channel/j;->setSuccess()Z

    .line 5
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/r;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/jboss/netty/channel/s;->k(Lorg/jboss/netty/channel/e;Ljava/net/SocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 6
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 7
    invoke-static {p0, p2}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private f(Lorg/jboss/netty/channel/socket/nio/m;Lorg/jboss/netty/channel/j;Ljava/net/SocketAddress;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p1, Lorg/jboss/netty/channel/socket/nio/b;->A:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p3}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    iget-object p3, p1, Lorg/jboss/netty/channel/socket/nio/b;->n:Lorg/jboss/netty/channel/socket/nio/e;

    invoke-virtual {p3, p1, p2}, Lorg/jboss/netty/channel/socket/nio/d;->s(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/a;->t0()Lorg/jboss/netty/channel/j;

    move-result-object p3

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/o$a;

    invoke-direct {v0, p0, p2}, Lorg/jboss/netty/channel/socket/nio/o$a;-><init>(Lorg/jboss/netty/channel/socket/nio/o;Lorg/jboss/netty/channel/j;)V

    invoke-interface {p3, v0}, Lorg/jboss/netty/channel/j;->b(Lorg/jboss/netty/channel/k;)V

    .line 4
    sget-object p3, Lorg/jboss/netty/channel/k;->h0:Lorg/jboss/netty/channel/k;

    invoke-interface {p2, p3}, Lorg/jboss/netty/channel/j;->b(Lorg/jboss/netty/channel/k;)V

    .line 5
    iput-object p2, p1, Lorg/jboss/netty/channel/socket/nio/m;->I:Lorg/jboss/netty/channel/j;

    .line 6
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/o;->g()Lorg/jboss/netty/channel/socket/nio/k;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/jboss/netty/channel/socket/nio/k;->s(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    .line 7
    invoke-interface {p2, p3}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 8
    invoke-static {p1, p3}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    .line 9
    iget-object p2, p1, Lorg/jboss/netty/channel/socket/nio/b;->n:Lorg/jboss/netty/channel/socket/nio/e;

    invoke-static {p1}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lorg/jboss/netty/channel/socket/nio/e;->n(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    :goto_0
    return-void
.end method

.method private g()Lorg/jboss/netty/channel/socket/nio/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/o;->a:Lorg/jboss/netty/channel/socket/nio/h;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/h;->d()Lorg/jboss/netty/channel/socket/nio/g;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/k;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of p1, p2, Lorg/jboss/netty/channel/q;

    if-eqz p1, :cond_6

    .line 2
    check-cast p2, Lorg/jboss/netty/channel/q;

    .line 3
    invoke-interface {p2}, Lorg/jboss/netty/channel/h;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object p1

    check-cast p1, Lorg/jboss/netty/channel/socket/nio/m;

    .line 4
    invoke-interface {p2}, Lorg/jboss/netty/channel/h;->d()Lorg/jboss/netty/channel/j;

    move-result-object v0

    .line 5
    invoke-interface {p2}, Lorg/jboss/netty/channel/q;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v1

    .line 6
    invoke-interface {p2}, Lorg/jboss/netty/channel/q;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 7
    sget-object v2, Lorg/jboss/netty/channel/socket/nio/o$b;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p1, Lorg/jboss/netty/channel/socket/nio/b;->n:Lorg/jboss/netty/channel/socket/nio/e;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v1, p1, v0, p2}, Lorg/jboss/netty/channel/socket/nio/e;->t(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 9
    check-cast p2, Ljava/net/SocketAddress;

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/channel/socket/nio/o;->f(Lorg/jboss/netty/channel/socket/nio/m;Lorg/jboss/netty/channel/j;Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p2, p1, Lorg/jboss/netty/channel/socket/nio/b;->n:Lorg/jboss/netty/channel/socket/nio/e;

    invoke-virtual {p2, p1, v0}, Lorg/jboss/netty/channel/socket/nio/e;->n(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 11
    check-cast p2, Ljava/net/SocketAddress;

    invoke-static {p1, v0, p2}, Lorg/jboss/netty/channel/socket/nio/o;->e(Lorg/jboss/netty/channel/socket/nio/m;Lorg/jboss/netty/channel/j;Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 12
    :cond_4
    iget-object p2, p1, Lorg/jboss/netty/channel/socket/nio/b;->n:Lorg/jboss/netty/channel/socket/nio/e;

    invoke-virtual {p2, p1, v0}, Lorg/jboss/netty/channel/socket/nio/e;->n(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    goto :goto_0

    .line 13
    :cond_5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 14
    iget-object p2, p1, Lorg/jboss/netty/channel/socket/nio/b;->n:Lorg/jboss/netty/channel/socket/nio/e;

    invoke-virtual {p2, p1, v0}, Lorg/jboss/netty/channel/socket/nio/e;->n(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    goto :goto_0

    .line 15
    :cond_6
    instance-of p1, p2, Lorg/jboss/netty/channel/i0;

    if-eqz p1, :cond_7

    .line 16
    check-cast p2, Lorg/jboss/netty/channel/i0;

    .line 17
    invoke-interface {p2}, Lorg/jboss/netty/channel/h;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object p1

    check-cast p1, Lorg/jboss/netty/channel/socket/nio/r;

    .line 18
    iget-object v0, p1, Lorg/jboss/netty/channel/socket/nio/b;->r:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 19
    iget-object p2, p1, Lorg/jboss/netty/channel/socket/nio/b;->n:Lorg/jboss/netty/channel/socket/nio/e;

    invoke-virtual {p2, p1}, Lorg/jboss/netty/channel/socket/nio/e;->y(Lorg/jboss/netty/channel/socket/nio/b;)V

    :cond_7
    :goto_0
    return-void
.end method
