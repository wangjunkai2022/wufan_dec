.class public Lio/netty/channel/unix/Socket;
.super Lio/netty/channel/unix/FileDescriptor;
.source "Socket.java"


# static fields
.field private static final INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final UDS_SUN_PATH_SIZE:I


# instance fields
.field protected final ipv6:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/netty/channel/unix/LimitsStaticallyReferencedJniMethods;->udsSunPathSize()I

    move-result v0

    sput v0, Lio/netty/channel/unix/Socket;->UDS_SUN_PATH_SIZE:I

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lio/netty/channel/unix/Socket;->INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/netty/channel/unix/FileDescriptor;-><init>(I)V

    .line 2
    invoke-static {p1}, Lio/netty/channel/unix/Socket;->isIPv6(I)Z

    move-result p1

    iput-boolean p1, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    return-void
.end method

.method private static native accept(I[B)I
.end method

.method private static native bind(IZ[BII)I
.end method

.method private static native bindDomainSocket(I[B)I
.end method

.method private static native connect(IZ[BII)I
.end method

.method private static native connectDomainSocket(I[B)I
.end method

.method private static native disconnect(IZ)I
.end method

.method private static native finishConnect(I)I
.end method

.method private static native getReceiveBufferSize(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getSendBufferSize(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getSoError(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getSoLinger(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTrafficClass(IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static initialize()V
    .locals 3

    .line 1
    sget-object v0, Lio/netty/channel/unix/Socket;->INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lio/netty/util/NetUtil;->isIpV4StackPreferred()Z

    move-result v0

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->initialize(Z)V

    :cond_0
    return-void
.end method

.method private static native initialize(Z)V
.end method

.method private static native isBroadcast(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isIPv6(I)Z
.end method

.method public static native isIPv6Preferred()Z
.end method

.method private static native isKeepAlive(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isReuseAddress(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isReusePort(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isTcpNoDelay(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native listen(II)I
.end method

.method private static native localAddress(I)[B
.end method

.method public static newSocketDgram()Lio/netty/channel/unix/Socket;
    .locals 2

    .line 1
    new-instance v0, Lio/netty/channel/unix/Socket;

    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketDgram0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/unix/Socket;-><init>(I)V

    return-object v0
.end method

.method protected static newSocketDgram0()I
    .locals 1

    .line 1
    invoke-static {}, Lio/netty/channel/unix/Socket;->isIPv6Preferred()Z

    move-result v0

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->newSocketDgram0(Z)I

    move-result v0

    return v0
.end method

.method protected static newSocketDgram0(Z)I
    .locals 2

    .line 2
    invoke-static {p0}, Lio/netty/channel/unix/Socket;->newSocketDgramFd(Z)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    .line 3
    :cond_0
    new-instance v0, Lio/netty/channel/ChannelException;

    const-string v1, "newSocketDgram"

    invoke-static {v1, p0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static native newSocketDgramFd(Z)I
.end method

.method public static newSocketDomain()Lio/netty/channel/unix/Socket;
    .locals 2

    .line 1
    new-instance v0, Lio/netty/channel/unix/Socket;

    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketDomain0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/unix/Socket;-><init>(I)V

    return-object v0
.end method

.method protected static newSocketDomain0()I
    .locals 3

    .line 1
    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketDomainFd()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 2
    :cond_0
    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "newSocketDomain"

    invoke-static {v2, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static native newSocketDomainFd()I
.end method

.method public static newSocketStream()Lio/netty/channel/unix/Socket;
    .locals 2

    .line 1
    new-instance v0, Lio/netty/channel/unix/Socket;

    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketStream0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/unix/Socket;-><init>(I)V

    return-object v0
.end method

.method protected static newSocketStream0()I
    .locals 1

    .line 1
    invoke-static {}, Lio/netty/channel/unix/Socket;->isIPv6Preferred()Z

    move-result v0

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->newSocketStream0(Z)I

    move-result v0

    return v0
.end method

.method protected static newSocketStream0(Z)I
    .locals 2

    .line 2
    invoke-static {p0}, Lio/netty/channel/unix/Socket;->newSocketStreamFd(Z)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    .line 3
    :cond_0
    new-instance v0, Lio/netty/channel/ChannelException;

    const-string v1, "newSocketStream"

    invoke-static {v1, p0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static native newSocketStreamFd(Z)I
.end method

.method private static native recvFd(I)I
.end method

.method private static native recvFrom(ILjava/nio/ByteBuffer;II)Lio/netty/channel/unix/DatagramSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native recvFromAddress(IJII)Lio/netty/channel/unix/DatagramSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native remoteAddress(I)[B
.end method

.method private static native sendFd(II)I
.end method

.method private static native sendTo(IZLjava/nio/ByteBuffer;II[BII)I
.end method

.method private static native sendToAddress(IZJII[BII)I
.end method

.method private static native sendToAddresses(IZJI[BII)I
.end method

.method private static native setBroadcast(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setKeepAlive(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setReceiveBufferSize(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setReuseAddress(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setReusePort(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setSendBufferSize(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setSoLinger(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpNoDelay(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTrafficClass(IZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native shutdown(IZZ)I
.end method


# virtual methods
.method public final accept([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->accept(I[B)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    .line 2
    :cond_0
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EAGAIN_NEGATIVE:I

    if-eq p1, v0, :cond_2

    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EWOULDBLOCK_NEGATIVE:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "accept"

    .line 3
    invoke-static {v0, p1}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public final bind(Ljava/net/SocketAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    const-string v1, "bind"

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Ljava/net/InetSocketAddress;

    .line 3
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v0

    .line 4
    iget v2, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    iget-boolean v3, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    iget-object v4, v0, Lio/netty/channel/unix/NativeInetAddress;->address:[B

    iget v0, v0, Lio/netty/channel/unix/NativeInetAddress;->scopeId:I

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-static {v2, v3, v4, v0, p1}, Lio/netty/channel/unix/Socket;->bind(IZ[BII)I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1, p1}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p1

    throw p1

    .line 6
    :cond_1
    instance-of v0, p1, Lio/netty/channel/unix/DomainSocketAddress;

    if-eqz v0, :cond_3

    .line 7
    check-cast p1, Lio/netty/channel/unix/DomainSocketAddress;

    .line 8
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-virtual {p1}, Lio/netty/channel/unix/DomainSocketAddress;->path()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->bindDomainSocket(I[B)I

    move-result p1

    if-ltz p1, :cond_2

    :goto_0
    return-void

    .line 9
    :cond_2
    invoke-static {v1, p1}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p1

    throw p1

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected SocketAddress implementation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final connect(Ljava/net/SocketAddress;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/net/InetSocketAddress;

    .line 3
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v0

    .line 4
    iget v1, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    iget-boolean v2, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    iget-object v3, v0, Lio/netty/channel/unix/NativeInetAddress;->address:[B

    iget v0, v0, Lio/netty/channel/unix/NativeInetAddress;->scopeId:I

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-static {v1, v2, v3, v0, p1}, Lio/netty/channel/unix/Socket;->connect(IZ[BII)I

    move-result p1

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Lio/netty/channel/unix/DomainSocketAddress;

    if-eqz v0, :cond_3

    .line 6
    check-cast p1, Lio/netty/channel/unix/DomainSocketAddress;

    .line 7
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-virtual {p1}, Lio/netty/channel/unix/DomainSocketAddress;->path()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->connectDomainSocket(I[B)I

    move-result p1

    :goto_0
    if-gez p1, :cond_2

    .line 8
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EINPROGRESS_NEGATIVE:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const-string v0, "connect"

    .line 9
    invoke-static {v0, p1}, Lio/netty/channel/unix/Errors;->throwConnectException(Ljava/lang/String;I)V

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected SocketAddress implementation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final disconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    iget-boolean v1, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    invoke-static {v0, v1}, Lio/netty/channel/unix/Socket;->disconnect(IZ)I

    move-result v0

    if-gez v0, :cond_0

    const-string v1, "disconnect"

    .line 2
    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->throwConnectException(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final finishConnect()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->finishConnect(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 2
    sget v1, Lio/netty/channel/unix/Errors;->ERRNO_EINPROGRESS_NEGATIVE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "finishConnect"

    .line 3
    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->throwConnectException(Ljava/lang/String;I)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final getReceiveBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->getReceiveBufferSize(I)I

    move-result v0

    return v0
.end method

.method public final getSendBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->getSendBufferSize(I)I

    move-result v0

    return v0
.end method

.method public final getSoError()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->getSoError(I)I

    move-result v0

    return v0
.end method

.method public final getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->getSoLinger(I)I

    move-result v0

    return v0
.end method

.method public final getTrafficClass()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    iget-boolean v1, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    invoke-static {v0, v1}, Lio/netty/channel/unix/Socket;->getTrafficClass(IZ)I

    move-result v0

    return v0
.end method

.method public final isBroadcast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isBroadcast(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInputShutdown()Z
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->state:I

    invoke-static {v0}, Lio/netty/channel/unix/FileDescriptor;->isInputShutdown(I)Z

    move-result v0

    return v0
.end method

.method public final isKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isKeepAlive(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isOutputShutdown()Z
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->state:I

    invoke-static {v0}, Lio/netty/channel/unix/FileDescriptor;->isOutputShutdown(I)Z

    move-result v0

    return v0
.end method

.method public final isReuseAddress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isReuseAddress(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isReusePort()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isReusePort(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isShutdown()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->state:I

    .line 2
    invoke-static {v0}, Lio/netty/channel/unix/FileDescriptor;->isInputShutdown(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lio/netty/channel/unix/FileDescriptor;->isOutputShutdown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isTcpNoDelay(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final listen(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->listen(II)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    :cond_0
    const-string v0, "listen"

    .line 2
    invoke-static {v0, p1}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p1

    throw p1
.end method

.method public final localAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->localAddress(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    array-length v2, v0

    invoke-static {v0, v1, v2}, Lio/netty/channel/unix/NativeInetAddress;->address([BII)Ljava/net/InetSocketAddress;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final recvFd()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->recvFd(I)I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_1
    sget v1, Lio/netty/channel/unix/Errors;->ERRNO_EAGAIN_NEGATIVE:I

    if-eq v0, v1, :cond_3

    sget v1, Lio/netty/channel/unix/Errors;->ERRNO_EWOULDBLOCK_NEGATIVE:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "recvFd"

    .line 3
    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final recvFrom(Ljava/nio/ByteBuffer;II)Lio/netty/channel/unix/DatagramSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1, p2, p3}, Lio/netty/channel/unix/Socket;->recvFrom(ILjava/nio/ByteBuffer;II)Lio/netty/channel/unix/DatagramSocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public final recvFromAddress(JII)Lio/netty/channel/unix/DatagramSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1, p2, p3, p4}, Lio/netty/channel/unix/Socket;->recvFromAddress(IJII)Lio/netty/channel/unix/DatagramSocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public final remoteAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->remoteAddress(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    array-length v2, v0

    invoke-static {v0, v1, v2}, Lio/netty/channel/unix/NativeInetAddress;->address([BII)Ljava/net/InetSocketAddress;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final sendFd(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->sendFd(II)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    .line 2
    :cond_0
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EAGAIN_NEGATIVE:I

    if-eq p1, v0, :cond_2

    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EWOULDBLOCK_NEGATIVE:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "sendFd"

    .line 3
    invoke-static {v0, p1}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public final sendTo(Ljava/nio/ByteBuffer;IILjava/net/InetAddress;I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p4, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 3
    check-cast p4, Ljava/net/Inet6Address;

    invoke-virtual {p4}, Ljava/net/Inet6Address;->getScopeId()I

    move-result p4

    move v7, p4

    move-object v6, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p4

    invoke-static {p4}, Lio/netty/channel/unix/NativeInetAddress;->ipv4MappedIpv6Address([B)[B

    move-result-object p4

    move-object v6, p4

    const/4 v7, 0x0

    .line 5
    :goto_0
    iget v1, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    iget-boolean v2, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v8, p5

    invoke-static/range {v1 .. v8}, Lio/netty/channel/unix/Socket;->sendTo(IZLjava/nio/ByteBuffer;II[BII)I

    move-result p1

    if-ltz p1, :cond_1

    return p1

    .line 6
    :cond_1
    sget p2, Lio/netty/channel/unix/Errors;->ERROR_ECONNREFUSED_NEGATIVE:I

    if-eq p1, p2, :cond_2

    const-string p2, "sendTo"

    .line 7
    invoke-static {p2, p1}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 8
    :cond_2
    new-instance p1, Ljava/net/PortUnreachableException;

    const-string p2, "sendTo failed"

    invoke-direct {p1, p2}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final sendToAddress(JIILjava/net/InetAddress;I)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p5

    .line 1
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual/range {p5 .. p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 3
    check-cast v1, Ljava/net/Inet6Address;

    invoke-virtual {v1}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v1

    move v10, v1

    move-object v9, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    invoke-virtual/range {p5 .. p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-static {v1}, Lio/netty/channel/unix/NativeInetAddress;->ipv4MappedIpv6Address([B)[B

    move-result-object v1

    move-object v9, v1

    const/4 v10, 0x0

    .line 5
    :goto_0
    iget v3, v0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    iget-boolean v4, v0, Lio/netty/channel/unix/Socket;->ipv6:Z

    move-wide v5, p1

    move v7, p3

    move/from16 v8, p4

    move/from16 v11, p6

    invoke-static/range {v3 .. v11}, Lio/netty/channel/unix/Socket;->sendToAddress(IZJII[BII)I

    move-result v1

    if-ltz v1, :cond_1

    return v1

    .line 6
    :cond_1
    sget v2, Lio/netty/channel/unix/Errors;->ERROR_ECONNREFUSED_NEGATIVE:I

    if-eq v1, v2, :cond_2

    const-string v2, "sendToAddress"

    .line 7
    invoke-static {v2, v1}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 8
    :cond_2
    new-instance v1, Ljava/net/PortUnreachableException;

    const-string v2, "sendToAddress failed"

    invoke-direct {v1, v2}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final sendToAddresses(JILjava/net/InetAddress;I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p4, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 3
    check-cast p4, Ljava/net/Inet6Address;

    invoke-virtual {p4}, Ljava/net/Inet6Address;->getScopeId()I

    move-result p4

    move v7, p4

    move-object v6, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p4

    invoke-static {p4}, Lio/netty/channel/unix/NativeInetAddress;->ipv4MappedIpv6Address([B)[B

    move-result-object p4

    move-object v6, p4

    const/4 v7, 0x0

    .line 5
    :goto_0
    iget v1, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    iget-boolean v2, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    move-wide v3, p1

    move v5, p3

    move v8, p5

    invoke-static/range {v1 .. v8}, Lio/netty/channel/unix/Socket;->sendToAddresses(IZJI[BII)I

    move-result p1

    if-ltz p1, :cond_1

    return p1

    .line 6
    :cond_1
    sget p2, Lio/netty/channel/unix/Errors;->ERROR_ECONNREFUSED_NEGATIVE:I

    if-eq p1, p2, :cond_2

    const-string p2, "sendToAddresses"

    .line 7
    invoke-static {p2, p1}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 8
    :cond_2
    new-instance p1, Ljava/net/PortUnreachableException;

    const-string p2, "sendToAddresses failed"

    invoke-direct {p1, p2}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setBroadcast(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setBroadcast(II)V

    return-void
.end method

.method public final setKeepAlive(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setKeepAlive(II)V

    return-void
.end method

.method public final setReceiveBufferSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setReceiveBufferSize(II)V

    return-void
.end method

.method public final setReuseAddress(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setReuseAddress(II)V

    return-void
.end method

.method public final setReusePort(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setReusePort(II)V

    return-void
.end method

.method public final setSendBufferSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setSendBufferSize(II)V

    return-void
.end method

.method public final setSoLinger(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setSoLinger(II)V

    return-void
.end method

.method public final setTcpNoDelay(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setTcpNoDelay(II)V

    return-void
.end method

.method public final setTrafficClass(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    iget-boolean v1, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    invoke-static {v0, v1, p1}, Lio/netty/channel/unix/Socket;->setTrafficClass(IZI)V

    return-void
.end method

.method public final shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v0}, Lio/netty/channel/unix/Socket;->shutdown(ZZ)V

    return-void
.end method

.method public final shutdown(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    :cond_0
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->state:I

    .line 3
    invoke-static {v0}, Lio/netty/channel/unix/FileDescriptor;->isClosed(I)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p1, :cond_1

    .line 4
    invoke-static {v0}, Lio/netty/channel/unix/FileDescriptor;->isInputShutdown(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-static {v0}, Lio/netty/channel/unix/FileDescriptor;->inputShutdown(I)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz p2, :cond_2

    .line 6
    invoke-static {v1}, Lio/netty/channel/unix/FileDescriptor;->isOutputShutdown(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    invoke-static {v1}, Lio/netty/channel/unix/FileDescriptor;->outputShutdown(I)I

    move-result v1

    :cond_2
    if-ne v1, v0, :cond_3

    return-void

    .line 8
    :cond_3
    invoke-virtual {p0, v0, v1}, Lio/netty/channel/unix/FileDescriptor;->casState(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1, p2}, Lio/netty/channel/unix/Socket;->shutdown(IZZ)I

    move-result p1

    if-gez p1, :cond_4

    const-string p2, "shutdown"

    .line 10
    invoke-static {p2, p1}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    :cond_4
    return-void

    .line 11
    :cond_5
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Socket{fd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
