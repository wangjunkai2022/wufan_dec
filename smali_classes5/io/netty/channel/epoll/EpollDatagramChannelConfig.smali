.class public final Lio/netty/channel/epoll/EpollDatagramChannelConfig;
.super Lio/netty/channel/epoll/EpollChannelConfig;
.source "EpollDatagramChannelConfig.java"

# interfaces
.implements Lio/netty/channel/socket/DatagramChannelConfig;


# static fields
.field private static final DEFAULT_RCVBUF_ALLOCATOR:Lio/netty/channel/RecvByteBufAllocator;


# instance fields
.field private activeOnOpen:Z

.field private volatile maxDatagramSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/netty/channel/FixedRecvByteBufAllocator;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Lio/netty/channel/FixedRecvByteBufAllocator;-><init>(I)V

    sput-object v0, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->DEFAULT_RCVBUF_ALLOCATOR:Lio/netty/channel/RecvByteBufAllocator;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/epoll/EpollDatagramChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;-><init>(Lio/netty/channel/epoll/AbstractEpollChannel;)V

    .line 2
    sget-object p1, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->DEFAULT_RCVBUF_ALLOCATOR:Lio/netty/channel/RecvByteBufAllocator;

    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

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
    iput-boolean p1, p0, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->activeOnOpen:Z

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
    iget-boolean v0, p0, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->activeOnOpen:Z

    return v0
.end method

.method public getInterface()Ljava/net/InetAddress;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->getInterface()Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMaxDatagramPayloadSize()I
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->maxDatagramSize:I

    return v0
.end method

.method public getNetworkInterface()Ljava/net/NetworkInterface;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->isBroadcast()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_RCVBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->getReceiveBufferSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_SNDBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->getSendBufferSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_REUSEADDR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->isReuseAddress()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_LOOP_DISABLED:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_4

    .line 10
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->isLoopbackModeDisabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_ADDR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_5

    .line 12
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->getInterface()Ljava/net/InetAddress;

    move-result-object p1

    return-object p1

    .line 13
    :cond_5
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_IF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_6

    .line 14
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object p1

    return-object p1

    .line 15
    :cond_6
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_TTL:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_7

    .line 16
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->getTimeToLive()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 17
    :cond_7
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_TOS:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_8

    .line 18
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->getTrafficClass()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 19
    :cond_8
    sget-object v0, Lio/netty/channel/ChannelOption;->DATAGRAM_CHANNEL_ACTIVE_ON_REGISTRATION:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_9

    .line 20
    iget-boolean p1, p0, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->activeOnOpen:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 21
    :cond_9
    sget-object v0, Lio/netty/channel/unix/UnixChannelOption;->SO_REUSEPORT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_a

    .line 22
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->isReusePort()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 23
    :cond_a
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->IP_TRANSPARENT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_b

    .line 24
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->isIpTransparent()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 25
    :cond_b
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->IP_FREEBIND:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_c

    .line 26
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->isFreeBind()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 27
    :cond_c
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->IP_RECVORIGDSTADDR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_d

    .line 28
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->isIpRecvOrigDestAddr()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 29
    :cond_d
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->MAX_DATAGRAM_PAYLOAD_SIZE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_e

    .line 30
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->getMaxDatagramPayloadSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 31
    :cond_e
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

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
    invoke-super {p0}, Lio/netty/channel/epoll/EpollChannelConfig;->getOptions()Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0xf

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

    sget-object v2, Lio/netty/channel/epoll/EpollChannelOption;->IP_FREEBIND:Lio/netty/channel/ChannelOption;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/epoll/EpollChannelOption;->IP_TRANSPARENT:Lio/netty/channel/ChannelOption;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/epoll/EpollChannelOption;->IP_RECVORIGDSTADDR:Lio/netty/channel/ChannelOption;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/epoll/EpollChannelOption;->MAX_DATAGRAM_PAYLOAD_SIZE:Lio/netty/channel/ChannelOption;

    const/16 v3, 0xe

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

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

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

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

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
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTimeToLive()I

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

.method public getTrafficClass()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

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

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

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

.method public isFreeBind()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->isIpFreeBind()Z

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

.method public isIpRecvOrigDestAddr()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->isIpRecvOrigDestAddr()Z

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

.method public isIpTransparent()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->isIpTransparent()Z

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
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->isLoopbackModeDisabled()Z

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

.method public isReuseAddress()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

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

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

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
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/epoll/EpollChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoClose(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setAutoClose(Z)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoClose(Z)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setAutoClose(Z)Lio/netty/channel/ChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setAutoClose(Z)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setAutoClose(Z)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setAutoRead(Z)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setAutoRead(Z)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoRead(Z)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setAutoRead(Z)Lio/netty/channel/epoll/EpollChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setAutoRead(Z)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setBroadcast(Z)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

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
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setBroadcast(Z)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setConnectTimeoutMillis(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/epoll/EpollChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setEpollMode(Lio/netty/channel/epoll/EpollMode;)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setEpollMode(Lio/netty/channel/epoll/EpollMode;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setEpollMode(Lio/netty/channel/epoll/EpollMode;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setEpollMode(Lio/netty/channel/epoll/EpollMode;)Lio/netty/channel/epoll/EpollChannelConfig;

    return-object p0
.end method

.method public setFreeBind(Z)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setIpFreeBind(Z)V
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

.method public setInterface(Ljava/net/InetAddress;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setInterface(Ljava/net/InetAddress;)V
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

.method public bridge synthetic setInterface(Ljava/net/InetAddress;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setInterface(Ljava/net/InetAddress;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setIpRecvOrigDestAddr(Z)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setIpRecvOrigDestAddr(Z)V
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

.method public setIpTransparent(Z)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setIpTransparent(Z)V
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

.method public setLoopbackModeDisabled(Z)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setLoopbackModeDisabled(Z)V
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

.method public setMaxDatagramPayloadSize(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 1

    const-string v0, "maxDatagramSize"

    .line 1
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->maxDatagramSize:I

    return-object p0
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMaxMessagesPerRead(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/epoll/EpollChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/epoll/EpollChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    .line 3
    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lio/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic setNetworkInterface(Ljava/net/NetworkInterface;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setNetworkInterface(Ljava/net/NetworkInterface;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

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

    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setBroadcast(Z)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    goto/16 :goto_0

    .line 4
    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_RCVBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    .line 5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setReceiveBufferSize(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    goto/16 :goto_0

    .line 6
    :cond_1
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_SNDBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_2

    .line 7
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setSendBufferSize(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    goto/16 :goto_0

    .line 8
    :cond_2
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_REUSEADDR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_3

    .line 9
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setReuseAddress(Z)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    goto/16 :goto_0

    .line 10
    :cond_3
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_LOOP_DISABLED:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_4

    .line 11
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setLoopbackModeDisabled(Z)Lio/netty/channel/socket/DatagramChannelConfig;

    goto/16 :goto_0

    .line 12
    :cond_4
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_ADDR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_5

    .line 13
    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p0, p2}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setInterface(Ljava/net/InetAddress;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    goto/16 :goto_0

    .line 14
    :cond_5
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_IF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_6

    .line 15
    check-cast p2, Ljava/net/NetworkInterface;

    invoke-virtual {p0, p2}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setNetworkInterface(Ljava/net/NetworkInterface;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    goto/16 :goto_0

    .line 16
    :cond_6
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_MULTICAST_TTL:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_7

    .line 17
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setTimeToLive(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    goto :goto_0

    .line 18
    :cond_7
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_TOS:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_8

    .line 19
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setTrafficClass(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    goto :goto_0

    .line 20
    :cond_8
    sget-object v0, Lio/netty/channel/ChannelOption;->DATAGRAM_CHANNEL_ACTIVE_ON_REGISTRATION:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_9

    .line 21
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setActiveOnOpen(Z)V

    goto :goto_0

    .line 22
    :cond_9
    sget-object v0, Lio/netty/channel/unix/UnixChannelOption;->SO_REUSEPORT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_a

    .line 23
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setReusePort(Z)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    goto :goto_0

    .line 24
    :cond_a
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->IP_FREEBIND:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_b

    .line 25
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setFreeBind(Z)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    goto :goto_0

    .line 26
    :cond_b
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->IP_TRANSPARENT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_c

    .line 27
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setIpTransparent(Z)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    goto :goto_0

    .line 28
    :cond_c
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->IP_RECVORIGDSTADDR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_d

    .line 29
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setIpRecvOrigDestAddr(Z)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    goto :goto_0

    .line 30
    :cond_d
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->MAX_DATAGRAM_PAYLOAD_SIZE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_e

    .line 31
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setMaxDatagramPayloadSize(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 32
    :cond_e
    invoke-super {p0, p1, p2}, Lio/netty/channel/epoll/EpollChannelConfig;->setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setReceiveBufferSize(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

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
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setReceiveBufferSize(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/epoll/EpollChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setReuseAddress(Z)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

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
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setReuseAddress(Z)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setReusePort(Z)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

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

.method public setSendBufferSize(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

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
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setSendBufferSize(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setTimeToLive(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTimeToLive(I)V
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

.method public bridge synthetic setTimeToLive(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setTimeToLive(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setTrafficClass(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

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
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setTrafficClass(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferHighWaterMark(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/epoll/EpollChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferLowWaterMark(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/epoll/EpollChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/epoll/EpollChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteSpinCount(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/epoll/EpollChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method
