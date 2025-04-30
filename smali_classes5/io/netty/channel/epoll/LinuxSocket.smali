.class final Lio/netty/channel/epoll/LinuxSocket;
.super Lio/netty/channel/unix/Socket;
.source "LinuxSocket.java"


# static fields
.field static final INET6_ANY:Ljava/net/InetAddress;

.field private static final INET_ANY:Ljava/net/InetAddress;

.field private static final MAX_UINT32_T:J = 0xffffffffL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "::"

    .line 1
    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->unsafeInetAddrByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/LinuxSocket;->INET6_ANY:Ljava/net/InetAddress;

    const-string v0, "0.0.0.0"

    .line 2
    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->unsafeInetAddrByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/LinuxSocket;->INET_ANY:Ljava/net/InetAddress;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/netty/channel/unix/Socket;-><init>(I)V

    return-void
.end method

.method private static deriveInetAddress(Ljava/net/NetworkInterface;Z)Ljava/net/InetAddress;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lio/netty/channel/epoll/LinuxSocket;->INET6_ANY:Ljava/net/InetAddress;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/channel/epoll/LinuxSocket;->INET_ANY:Ljava/net/InetAddress;

    :goto_0
    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object p0

    .line 3
    :cond_1
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 5
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method private family()Lio/netty/channel/socket/InternetProtocolFamily;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/channel/socket/InternetProtocolFamily;->IPv6:Lio/netty/channel/socket/InternetProtocolFamily;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/channel/socket/InternetProtocolFamily;->IPv4:Lio/netty/channel/socket/InternetProtocolFamily;

    :goto_0
    return-object v0
.end method

.method private static native getInterface(IZ)I
.end method

.method private static native getIpMulticastLoop(IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getPeerCredentials(I)Lio/netty/channel/unix/PeerCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getSoBusyPoll(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpDeferAccept(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpInfo(I[J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpKeepCnt(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpKeepIdle(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpKeepIntvl(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpNotSentLowAt(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpUserTimeout(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTimeToLive(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static inetAddress(I)Ljava/net/InetAddress;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static interfaceIndex(Ljava/net/InetAddress;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 3
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static interfaceIndex(Ljava/net/NetworkInterface;)I
    .locals 2

    .line 1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static native isIpFreeBind(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isIpRecvOrigDestAddr(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isIpTransparent(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isTcpCork(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isTcpFastOpenConnect(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isTcpQuickAck(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native joinGroup(IZ[B[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native joinSsmGroup(IZ[B[BII[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native leaveGroup(IZ[B[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native leaveSsmGroup(IZ[B[BII[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static newSocketDgram()Lio/netty/channel/epoll/LinuxSocket;
    .locals 1

    .line 2
    invoke-static {}, Lio/netty/channel/unix/Socket;->isIPv6Preferred()Z

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->newSocketDgram(Z)Lio/netty/channel/epoll/LinuxSocket;

    move-result-object v0

    return-object v0
.end method

.method public static newSocketDgram(Z)Lio/netty/channel/epoll/LinuxSocket;
    .locals 1

    .line 1
    new-instance v0, Lio/netty/channel/epoll/LinuxSocket;

    invoke-static {p0}, Lio/netty/channel/unix/Socket;->newSocketDgram0(Z)I

    move-result p0

    invoke-direct {v0, p0}, Lio/netty/channel/epoll/LinuxSocket;-><init>(I)V

    return-object v0
.end method

.method public static newSocketDomain()Lio/netty/channel/epoll/LinuxSocket;
    .locals 2

    .line 1
    new-instance v0, Lio/netty/channel/epoll/LinuxSocket;

    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketDomain0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/epoll/LinuxSocket;-><init>(I)V

    return-object v0
.end method

.method public static newSocketStream()Lio/netty/channel/epoll/LinuxSocket;
    .locals 1

    .line 2
    invoke-static {}, Lio/netty/channel/unix/Socket;->isIPv6Preferred()Z

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->newSocketStream(Z)Lio/netty/channel/epoll/LinuxSocket;

    move-result-object v0

    return-object v0
.end method

.method public static newSocketStream(Z)Lio/netty/channel/epoll/LinuxSocket;
    .locals 1

    .line 1
    new-instance v0, Lio/netty/channel/epoll/LinuxSocket;

    invoke-static {p0}, Lio/netty/channel/unix/Socket;->newSocketStream0(Z)I

    move-result p0

    invoke-direct {v0, p0}, Lio/netty/channel/epoll/LinuxSocket;-><init>(I)V

    return-object v0
.end method

.method private static native sendFile(ILio/netty/channel/DefaultFileRegion;JJJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setInterface(IZ[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setIpFreeBind(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setIpMulticastLoop(IZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setIpRecvOrigDestAddr(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setIpTransparent(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setSoBusyPoll(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpCork(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpDeferAccept(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpFastOpen(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpFastOpenConnect(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpKeepCnt(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpKeepIdle(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpKeepIntvl(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpMd5Sig(IZ[BI[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpNotSentLowAt(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpQuickAck(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpUserTimeout(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTimeToLive(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static unsafeInetAddrByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Lio/netty/channel/ChannelException;

    invoke-direct {v0, p0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method getInterface()Ljava/net/InetAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lio/netty/util/internal/SocketUtils;->addressesFromNetworkInterface(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getNetworkInterface()Ljava/net/NetworkInterface;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    iget-boolean v1, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    invoke-static {v0, v1}, Lio/netty/channel/epoll/LinuxSocket;->getInterface(IZ)I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v1

    const/4 v3, 0x7

    if-lt v1, v3, :cond_0

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByIndex(I)Ljava/net/NetworkInterface;

    move-result-object v2

    :cond_0
    return-object v2

    .line 4
    :cond_1
    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->inetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method getPeerCredentials()Lio/netty/channel/unix/PeerCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getPeerCredentials(I)Lio/netty/channel/unix/PeerCredentials;

    move-result-object v0

    return-object v0
.end method

.method getSoBusyPoll()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getSoBusyPoll(I)I

    move-result v0

    return v0
.end method

.method getTcpDeferAccept()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpDeferAccept(I)I

    move-result v0

    return v0
.end method

.method getTcpInfo(Lio/netty/channel/epoll/EpollTcpInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    iget-object p1, p1, Lio/netty/channel/epoll/EpollTcpInfo;->info:[J

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->getTcpInfo(I[J)V

    return-void
.end method

.method getTcpKeepCnt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpKeepCnt(I)I

    move-result v0

    return v0
.end method

.method getTcpKeepIdle()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpKeepIdle(I)I

    move-result v0

    return v0
.end method

.method getTcpKeepIntvl()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpKeepIntvl(I)I

    move-result v0

    return v0
.end method

.method getTcpNotSentLowAt()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpNotSentLowAt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method getTcpUserTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpUserTimeout(I)I

    move-result v0

    return v0
.end method

.method getTimeToLive()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTimeToLive(I)I

    move-result v0

    return v0
.end method

.method isIpFreeBind()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->isIpFreeBind(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isIpRecvOrigDestAddr()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->isIpRecvOrigDestAddr(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isIpTransparent()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->isIpTransparent(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isLoopbackModeDisabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    iget-boolean v1, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    invoke-static {v0, v1}, Lio/netty/channel/epoll/LinuxSocket;->getIpMulticastLoop(IZ)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTcpCork()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->isTcpCork(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTcpFastOpenConnect()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->isTcpFastOpenConnect(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTcpQuickAck()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->isTcpQuickAck(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p1 .. p1}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v1

    move-object/from16 v2, p1

    .line 2
    instance-of v2, v2, Ljava/net/Inet6Address;

    move-object/from16 v3, p2

    .line 3
    invoke-static {v3, v2}, Lio/netty/channel/epoll/LinuxSocket;->deriveInetAddress(Ljava/net/NetworkInterface;Z)Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v2}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v2

    if-eqz p3, :cond_0

    .line 4
    invoke-static/range {p3 .. p3}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v4

    .line 5
    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v5

    iget-boolean v6, v0, Lio/netty/channel/unix/Socket;->ipv6:Z

    invoke-virtual {v1}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v7

    invoke-virtual {v2}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v8

    .line 6
    invoke-virtual {v1}, Lio/netty/channel/unix/NativeInetAddress;->scopeId()I

    move-result v9

    invoke-static/range {p2 .. p2}, Lio/netty/channel/epoll/LinuxSocket;->interfaceIndex(Ljava/net/NetworkInterface;)I

    move-result v10

    invoke-virtual {v4}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v11

    .line 7
    invoke-static/range {v5 .. v11}, Lio/netty/channel/epoll/LinuxSocket;->joinSsmGroup(IZ[B[BII[B)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v12

    iget-boolean v13, v0, Lio/netty/channel/unix/Socket;->ipv6:Z

    invoke-virtual {v1}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v14

    invoke-virtual {v2}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v15

    invoke-virtual {v1}, Lio/netty/channel/unix/NativeInetAddress;->scopeId()I

    move-result v16

    invoke-static/range {p2 .. p2}, Lio/netty/channel/epoll/LinuxSocket;->interfaceIndex(Ljava/net/NetworkInterface;)I

    move-result v17

    invoke-static/range {v12 .. v17}, Lio/netty/channel/epoll/LinuxSocket;->joinGroup(IZ[B[BII)V

    :goto_0
    return-void
.end method

.method leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p1 .. p1}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v1

    move-object/from16 v2, p1

    .line 2
    instance-of v2, v2, Ljava/net/Inet6Address;

    move-object/from16 v3, p2

    .line 3
    invoke-static {v3, v2}, Lio/netty/channel/epoll/LinuxSocket;->deriveInetAddress(Ljava/net/NetworkInterface;Z)Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v2}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v2

    if-eqz p3, :cond_0

    .line 4
    invoke-static/range {p3 .. p3}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v4

    .line 5
    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v5

    iget-boolean v6, v0, Lio/netty/channel/unix/Socket;->ipv6:Z

    invoke-virtual {v1}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v7

    invoke-virtual {v2}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v8

    .line 6
    invoke-virtual {v1}, Lio/netty/channel/unix/NativeInetAddress;->scopeId()I

    move-result v9

    invoke-static/range {p2 .. p2}, Lio/netty/channel/epoll/LinuxSocket;->interfaceIndex(Ljava/net/NetworkInterface;)I

    move-result v10

    invoke-virtual {v4}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v11

    .line 7
    invoke-static/range {v5 .. v11}, Lio/netty/channel/epoll/LinuxSocket;->leaveSsmGroup(IZ[B[BII[B)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v12

    iget-boolean v13, v0, Lio/netty/channel/unix/Socket;->ipv6:Z

    invoke-virtual {v1}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v14

    invoke-virtual {v2}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v15

    invoke-virtual {v1}, Lio/netty/channel/unix/NativeInetAddress;->scopeId()I

    move-result v16

    invoke-static/range {p2 .. p2}, Lio/netty/channel/epoll/LinuxSocket;->interfaceIndex(Ljava/net/NetworkInterface;)I

    move-result v17

    invoke-static/range {v12 .. v17}, Lio/netty/channel/epoll/LinuxSocket;->leaveGroup(IZ[B[BII)V

    :goto_0
    return-void
.end method

.method recvmmsg([Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    iget-boolean v1, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    invoke-static {v0, v1, p1, p2, p3}, Lio/netty/channel/epoll/Native;->recvmmsg(IZ[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I

    move-result p1

    return p1
.end method

.method sendFile(Lio/netty/channel/DefaultFileRegion;JJJ)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/netty/channel/DefaultFileRegion;->open()V

    .line 2
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-static/range {v0 .. v7}, Lio/netty/channel/epoll/LinuxSocket;->sendFile(ILio/netty/channel/DefaultFileRegion;JJJ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p5, p1, p3

    if-ltz p5, :cond_0

    return-wide p1

    :cond_0
    long-to-int p2, p1

    const-string p1, "sendfile"

    .line 3
    invoke-static {p1, p2}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method sendmmsg([Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    iget-boolean v1, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    invoke-static {v0, v1, p1, p2, p3}, Lio/netty/channel/epoll/Native;->sendmmsg(IZ[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I

    move-result p1

    return p1
.end method

.method setInterface(Ljava/net/InetAddress;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v1

    iget-boolean v2, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    invoke-virtual {v0}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/channel/unix/NativeInetAddress;->scopeId()I

    move-result v0

    invoke-static {p1}, Lio/netty/channel/epoll/LinuxSocket;->interfaceIndex(Ljava/net/InetAddress;)I

    move-result p1

    invoke-static {v1, v2, v3, v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setInterface(IZ[BII)V

    return-void
.end method

.method setIpFreeBind(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setIpFreeBind(II)V

    return-void
.end method

.method setIpRecvOrigDestAddr(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setIpRecvOrigDestAddr(II)V

    return-void
.end method

.method setIpTransparent(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setIpTransparent(II)V

    return-void
.end method

.method setLoopbackModeDisabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    iget-boolean v1, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, v1, p1}, Lio/netty/channel/epoll/LinuxSocket;->setIpMulticastLoop(IZI)V

    return-void
.end method

.method setNetworkInterface(Ljava/net/NetworkInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/netty/channel/epoll/LinuxSocket;->family()Lio/netty/channel/socket/InternetProtocolFamily;

    move-result-object v0

    sget-object v1, Lio/netty/channel/socket/InternetProtocolFamily;->IPv6:Lio/netty/channel/socket/InternetProtocolFamily;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lio/netty/channel/epoll/LinuxSocket;->deriveInetAddress(Ljava/net/NetworkInterface;Z)Ljava/net/InetAddress;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lio/netty/channel/epoll/LinuxSocket;->family()Lio/netty/channel/socket/InternetProtocolFamily;

    move-result-object v1

    sget-object v2, Lio/netty/channel/socket/InternetProtocolFamily;->IPv4:Lio/netty/channel/socket/InternetProtocolFamily;

    if-ne v1, v2, :cond_1

    sget-object v1, Lio/netty/channel/epoll/LinuxSocket;->INET_ANY:Ljava/net/InetAddress;

    goto :goto_1

    :cond_1
    sget-object v1, Lio/netty/channel/epoll/LinuxSocket;->INET6_ANY:Ljava/net/InetAddress;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    invoke-static {v0}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v1

    iget-boolean v2, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    invoke-virtual {v0}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/channel/unix/NativeInetAddress;->scopeId()I

    move-result v0

    invoke-static {p1}, Lio/netty/channel/epoll/LinuxSocket;->interfaceIndex(Ljava/net/NetworkInterface;)I

    move-result p1

    invoke-static {v1, v2, v3, v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setInterface(IZ[BII)V

    return-void

    .line 5
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkInterface does not support "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lio/netty/channel/epoll/LinuxSocket;->family()Lio/netty/channel/socket/InternetProtocolFamily;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setSoBusyPoll(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setSoBusyPoll(II)V

    return-void
.end method

.method setTcpCork(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpCork(II)V

    return-void
.end method

.method setTcpDeferAccept(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpDeferAccept(II)V

    return-void
.end method

.method setTcpFastOpen(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpFastOpen(II)V

    return-void
.end method

.method setTcpFastOpenConnect(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpFastOpenConnect(II)V

    return-void
.end method

.method setTcpKeepCnt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpKeepCnt(II)V

    return-void
.end method

.method setTcpKeepIdle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpKeepIdle(II)V

    return-void
.end method

.method setTcpKeepIntvl(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpKeepIntvl(II)V

    return-void
.end method

.method setTcpMd5Sig(Ljava/net/InetAddress;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    iget-boolean v1, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    invoke-virtual {p1}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v2

    invoke-virtual {p1}, Lio/netty/channel/unix/NativeInetAddress;->scopeId()I

    move-result p1

    invoke-static {v0, v1, v2, p1, p2}, Lio/netty/channel/epoll/LinuxSocket;->setTcpMd5Sig(IZ[BI[B)V

    return-void
.end method

.method setTcpNotSentLowAt(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    long-to-int p2, p1

    invoke-static {v0, p2}, Lio/netty/channel/epoll/LinuxSocket;->setTcpNotSentLowAt(II)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tcpNotSentLowAt must be a uint32_t"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setTcpQuickAck(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpQuickAck(II)V

    return-void
.end method

.method setTcpUserTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpUserTimeout(II)V

    return-void
.end method

.method setTimeToLive(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTimeToLive(II)V

    return-void
.end method
