.class public Lk3/c;
.super Lorg/jboss/netty/channel/v;
.source "DefaultSocketChannelConfig.java"

# interfaces
.implements Lk3/e;


# instance fields
.field private final c:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/channel/v;-><init>()V

    const-string v0, "socket"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lk3/c;->c:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/v;->c(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "receiveBufferSize"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p2}, Lorg/jboss/netty/util/internal/b;->b(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lk3/c;->setReceiveBufferSize(I)V

    goto :goto_0

    :cond_1
    const-string v0, "sendBufferSize"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {p2}, Lorg/jboss/netty/util/internal/b;->b(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lk3/c;->setSendBufferSize(I)V

    goto :goto_0

    :cond_2
    const-string v0, "tcpNoDelay"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {p2}, Lorg/jboss/netty/util/internal/b;->a(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lk3/c;->setTcpNoDelay(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "keepAlive"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-static {p2}, Lorg/jboss/netty/util/internal/b;->a(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lk3/c;->setKeepAlive(Z)V

    goto :goto_0

    :cond_4
    const-string v0, "reuseAddress"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-static {p2}, Lorg/jboss/netty/util/internal/b;->a(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lk3/c;->setReuseAddress(Z)V

    goto :goto_0

    :cond_5
    const-string v0, "soLinger"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    invoke-static {p2}, Lorg/jboss/netty/util/internal/b;->b(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lk3/c;->setSoLinger(I)V

    goto :goto_0

    :cond_6
    const-string v0, "trafficClass"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    invoke-static {p2}, Lorg/jboss/netty/util/internal/b;->b(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lk3/c;->setTrafficClass(I)V

    :goto_0
    return v1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public getReceiveBufferSize()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lk3/c;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSendBufferSize()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lk3/c;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSoLinger()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lk3/c;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTrafficClass()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lk3/c;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTrafficClass()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isKeepAlive()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lk3/c;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isReuseAddress()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lk3/c;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReuseAddress()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isTcpNoDelay()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lk3/c;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setKeepAlive(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lk3/c;->c:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setPerformancePreferences(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk3/c;->c:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/Socket;->setPerformancePreferences(III)V

    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lk3/c;->c:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setReuseAddress(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lk3/c;->c:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setSendBufferSize(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lk3/c;->c:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setSoLinger(I)V
    .locals 2

    if-gez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lk3/c;->c:Ljava/net/Socket;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lk3/c;->c:Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setTcpNoDelay(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lk3/c;->c:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setTrafficClass(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lk3/c;->c:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTrafficClass(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
