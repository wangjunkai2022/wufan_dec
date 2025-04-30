.class public final Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
.super Lio/netty/channel/kqueue/KQueueChannelConfig;
.source "KQueueDatagramChannelConfig.java"

# interfaces
.implements Lio/netty/channel/socket/DatagramChannelConfig;


# static fields
.field private static final DEFAULT_RCVBUF_ALLOCATOR:Lio/netty/channel/RecvByteBufAllocator;


# instance fields
.field private activeOnOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/netty/channel/FixedRecvByteBufAllocator;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Lio/netty/channel/FixedRecvByteBufAllocator;-><init>(I)V

    sput-object v0, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->DEFAULT_RCVBUF_ALLOCATOR:Lio/netty/channel/RecvByteBufAllocator;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/kqueue/KQueueDatagramChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;-><init>(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V

    .line 2
    sget-object p1, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->DEFAULT_RCVBUF_ALLOCATOR:Lio/netty/channel/RecvByteBufAllocator;

    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    return-void
.end method

.method private setActiveOnOpen(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->activeOnOpen:Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can only changed before channel was registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method getActiveOnOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->activeOnOpen:Z

    return v0
.end method

.method public getInterface()Ljava/net/InetAddress;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkInterface()Ljava/net/NetworkInterface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_BROADCAST:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->isBroadcast()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_RCVBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->getReceiveBufferSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_SNDBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->getSendBufferSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_REUSEADDR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->isReuseAddress()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_LOOP_DISABLED:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_4

    .line 10
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->isLoopbackModeDisabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_ADDR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_5

    .line 12
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->getInterface()Ljava/net/InetAddress;

    move-result-object p1

    return-object p1

    .line 13
    :cond_5
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_IF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_6

    .line 14
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object p1

    return-object p1

    .line 15
    :cond_6
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_TTL:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_7

    .line 16
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->getTimeToLive()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 17
    :cond_7
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_TOS:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_8

    .line 18
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->getTrafficClass()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 19
    :cond_8
    sget-object v0, Lio/netty/channel/ChannelOption;->DATAGRAM_CHANNEL_ACTIVE_ON_REGISTRATION:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_9

    .line 20
    iget-boolean p1, p0, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->activeOnOpen:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 21
    :cond_9
    sget-object v0, Lio/netty/channel/unix/UnixChannelOption;->SO_REUSEPORT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_a

    .line 22
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->isReusePort()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 23
    :cond_a
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOptions()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lio/netty/channel/kqueue/KQueueChannelConfig;->getOptions()Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0xb

    new-array v1, v1, [Lio/netty/channel/ChannelOption;

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_BROADCAST:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_RCVBUF:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_SNDBUF:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_REUSEADDR:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->IP_MULTICAST_LOOP_DISABLED:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->IP_MULTICAST_ADDR:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->IP_MULTICAST_IF:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->IP_MULTICAST_TTL:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->IP_TOS:Lio/netty/channel/ChannelOption;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->DATAGRAM_CHANNEL_ACTIVE_ON_REGISTRATION:Lio/netty/channel/ChannelOption;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/unix/UnixChannelOption;->SO_REUSEPORT:Lio/netty/channel/ChannelOption;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 2
    invoke-virtual {p0, v0, v1}, Lio/netty/channel/DefaultChannelConfig;->getOptions(Ljava/util/Map;[Lio/netty/channel/ChannelOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReceiveBufferSize()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/unix/Socket;->getReceiveBufferSize()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSendBufferSize()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/unix/Socket;->getSendBufferSize()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTimeToLive()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getTrafficClass()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/unix/Socket;->getTrafficClass()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isBroadcast()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/unix/Socket;->isBroadcast()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isLoopbackModeDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReuseAddress()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/unix/Socket;->isReuseAddress()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isReusePort()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/unix/Socket;->isReusePort()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoClose(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setAutoClose(Z)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoClose(Z)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setAutoClose(Z)Lio/netty/channel/ChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setAutoClose(Z)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setAutoClose(Z)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setAutoRead(Z)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setAutoRead(Z)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoRead(Z)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setAutoRead(Z)Lio/netty/channel/kqueue/KQueueChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setAutoRead(Z)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setBroadcast(Z)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/unix/Socket;->setBroadcast(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lio/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic setBroadcast(Z)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setBroadcast(Z)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setInterface(Ljava/net/InetAddress;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Multicast not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setInterface(Ljava/net/InetAddress;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setInterface(Ljava/net/InetAddress;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setLoopbackModeDisabled(Z)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Multicast not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Multicast not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setNetworkInterface(Ljava/net/NetworkInterface;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setNetworkInterface(Ljava/net/NetworkInterface;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/DefaultChannelConfig;->validate(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_BROADCAST:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setBroadcast(Z)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    goto/16 :goto_0

    .line 4
    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_RCVBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    .line 5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setReceiveBufferSize(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    goto/16 :goto_0

    .line 6
    :cond_1
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_SNDBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_2

    .line 7
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setSendBufferSize(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    goto/16 :goto_0

    .line 8
    :cond_2
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_REUSEADDR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_3

    .line 9
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setReuseAddress(Z)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    goto :goto_0

    .line 10
    :cond_3
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_LOOP_DISABLED:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_4

    .line 11
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setLoopbackModeDisabled(Z)Lio/netty/channel/socket/DatagramChannelConfig;

    goto :goto_0

    .line 12
    :cond_4
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_ADDR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_5

    .line 13
    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p0, p2}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setInterface(Ljava/net/InetAddress;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    goto :goto_0

    .line 14
    :cond_5
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_IF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_6

    .line 15
    check-cast p2, Ljava/net/NetworkInterface;

    invoke-virtual {p0, p2}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setNetworkInterface(Ljava/net/NetworkInterface;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    goto :goto_0

    .line 16
    :cond_6
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_TTL:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_7

    .line 17
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setTimeToLive(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    goto :goto_0

    .line 18
    :cond_7
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_TOS:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_8

    .line 19
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setTrafficClass(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    goto :goto_0

    .line 20
    :cond_8
    sget-object v0, Lio/netty/channel/ChannelOption;->DATAGRAM_CHANNEL_ACTIVE_ON_REGISTRATION:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_9

    .line 21
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setActiveOnOpen(Z)V

    goto :goto_0

    .line 22
    :cond_9
    sget-object v0, Lio/netty/channel/unix/UnixChannelOption;->SO_REUSEPORT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_a

    .line 23
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setReusePort(Z)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 24
    :cond_a
    invoke-super {p0, p1, p2}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setRcvAllocTransportProvidesGuess(Z)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setRcvAllocTransportProvidesGuess(Z)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setRcvAllocTransportProvidesGuess(Z)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setRcvAllocTransportProvidesGuess(Z)Lio/netty/channel/kqueue/KQueueChannelConfig;

    return-object p0
.end method

.method public setReceiveBufferSize(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/unix/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lio/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic setReceiveBufferSize(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setReceiveBufferSize(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setReuseAddress(Z)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/unix/Socket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lio/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic setReuseAddress(Z)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setReuseAddress(Z)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setReusePort(Z)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/unix/Socket;->setReusePort(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lio/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setSendBufferSize(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/unix/Socket;->setSendBufferSize(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lio/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic setSendBufferSize(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setSendBufferSize(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setTimeToLive(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Multicast not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setTimeToLive(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setTimeToLive(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setTrafficClass(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/unix/Socket;->setTrafficClass(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lio/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic setTrafficClass(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setTrafficClass(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferHighWaterMark(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/kqueue/KQueueChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferLowWaterMark(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/kqueue/KQueueChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method
