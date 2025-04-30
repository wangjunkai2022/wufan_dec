.class public Lorg/jboss/netty/bootstrap/b;
.super Lorg/jboss/netty/bootstrap/a;
.source "ClientBootstrap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/bootstrap/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/i;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/jboss/netty/bootstrap/a;-><init>(Lorg/jboss/netty/channel/i;)V

    return-void
.end method


# virtual methods
.method public p(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;
    .locals 1

    const-string v0, "remoteAddress"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "localAddress"

    .line 2
    invoke-virtual {p0, v0}, Lorg/jboss/netty/bootstrap/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/bootstrap/b;->q(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;
    .locals 3

    const-string v0, "remoteAddress"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/a;->h()Lorg/jboss/netty/channel/o;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/o;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/a;->c()Lorg/jboss/netty/channel/i;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/i;->a(Lorg/jboss/netty/channel/n;)Lorg/jboss/netty/channel/e;

    move-result-object v0

    .line 4
    :try_start_1
    invoke-interface {v0}, Lorg/jboss/netty/channel/e;->getConfig()Lorg/jboss/netty/channel/f;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/a;->e()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/f;->setOptions(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {v0, p2}, Lorg/jboss/netty/channel/e;->bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/e;->connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    invoke-interface {v0}, Lorg/jboss/netty/channel/e;->close()Lorg/jboss/netty/channel/j;

    throw p1

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Lorg/jboss/netty/channel/ChannelPipelineException;

    const-string v0, "Failed to initialize a pipeline."

    invoke-direct {p2, v0, p1}, Lorg/jboss/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
