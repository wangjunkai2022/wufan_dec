.class abstract Lio/netty/channel/epoll/AbstractEpollChannel;
.super Lio/netty/channel/AbstractChannel;
.source "AbstractEpollChannel.java"

# interfaces
.implements Lio/netty/channel/unix/UnixChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;
    }
.end annotation


# static fields
.field private static final METADATA:Lio/netty/channel/ChannelMetadata;


# instance fields
.field protected volatile active:Z

.field private connectPromise:Lio/netty/channel/ChannelPromise;

.field private connectTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field epollInReadyRunnablePending:Z

.field protected flags:I

.field inputClosedSeenErrorOnRead:Z

.field private volatile local:Ljava/net/SocketAddress;

.field private volatile remote:Ljava/net/SocketAddress;

.field private requestedRemoteAddress:Ljava/net/SocketAddress;

.field final socket:Lio/netty/channel/epoll/LinuxSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/netty/channel/ChannelMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/channel/ChannelMetadata;-><init>(Z)V

    sput-object v0, Lio/netty/channel/epoll/AbstractEpollChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/Channel;Lio/netty/channel/epoll/LinuxSocket;Ljava/net/SocketAddress;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel;-><init>(Lio/netty/channel/Channel;)V

    .line 9
    sget p1, Lio/netty/channel/epoll/Native;->EPOLLET:I

    iput p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    const-string p1, "fd"

    .line 10
    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/epoll/LinuxSocket;

    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->active:Z

    .line 12
    iput-object p3, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->remote:Ljava/net/SocketAddress;

    .line 13
    invoke-virtual {p2}, Lio/netty/channel/unix/Socket;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->local:Ljava/net/SocketAddress;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/Channel;Lio/netty/channel/epoll/LinuxSocket;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel;-><init>(Lio/netty/channel/Channel;)V

    .line 3
    sget p1, Lio/netty/channel/epoll/Native;->EPOLLET:I

    iput p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    const-string p1, "fd"

    .line 4
    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/epoll/LinuxSocket;

    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    .line 5
    iput-boolean p3, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->active:Z

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p2}, Lio/netty/channel/unix/Socket;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->local:Ljava/net/SocketAddress;

    .line 7
    invoke-virtual {p2}, Lio/netty/channel/unix/Socket;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->remote:Ljava/net/SocketAddress;

    :cond_0
    return-void
.end method

.method constructor <init>(Lio/netty/channel/epoll/LinuxSocket;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, p1, v1}, Lio/netty/channel/epoll/AbstractEpollChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/epoll/LinuxSocket;Z)V

    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/ChannelConfig;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->isAllowHalfClosure(Lio/netty/channel/ChannelConfig;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lio/netty/channel/epoll/AbstractEpollChannel;)Lio/netty/channel/ChannelPromise;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    return-object p0
.end method

.method static synthetic access$102(Lio/netty/channel/epoll/AbstractEpollChannel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    return-object p1
.end method

.method static synthetic access$200(Lio/netty/channel/epoll/AbstractEpollChannel;)Ljava/net/SocketAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->requestedRemoteAddress:Ljava/net/SocketAddress;

    return-object p0
.end method

.method static synthetic access$202(Lio/netty/channel/epoll/AbstractEpollChannel;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->requestedRemoteAddress:Ljava/net/SocketAddress;

    return-object p1
.end method

.method static synthetic access$300(Lio/netty/channel/epoll/AbstractEpollChannel;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->connectTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$302(Lio/netty/channel/epoll/AbstractEpollChannel;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->connectTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$402(Lio/netty/channel/epoll/AbstractEpollChannel;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->remote:Ljava/net/SocketAddress;

    return-object p1
.end method

.method protected static checkResolvable(Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/nio/channels/UnresolvedAddressException;

    invoke-direct {p0}, Ljava/nio/channels/UnresolvedAddressException;-><init>()V

    throw p0
.end method

.method private doConnect0(Ljava/net/SocketAddress;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/unix/Socket;->connect(Ljava/net/SocketAddress;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    sget v0, Lio/netty/channel/epoll/Native;->EPOLLOUT:I

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->setFlag(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->doClose()V

    .line 4
    throw p1
.end method

.method private static isAllowHalfClosure(Lio/netty/channel/ChannelConfig;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lio/netty/channel/epoll/EpollDomainSocketChannelConfig;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lio/netty/channel/epoll/EpollDomainSocketChannelConfig;

    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainSocketChannelConfig;->isAllowHalfClosure()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    instance-of v0, p0, Lio/netty/channel/socket/SocketChannelConfig;

    if-eqz v0, :cond_1

    check-cast p0, Lio/netty/channel/socket/SocketChannelConfig;

    .line 4
    invoke-interface {p0}, Lio/netty/channel/socket/SocketChannelConfig;->isAllowHalfClosure()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isSoErrorZero(Lio/netty/channel/unix/Socket;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/unix/Socket;->getSoError()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Lio/netty/channel/ChannelException;

    invoke-direct {v0, p0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private modifyEvents()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    check-cast v0, Lio/netty/channel/epoll/EpollEventLoop;

    invoke-virtual {v0, p0}, Lio/netty/channel/epoll/EpollEventLoop;->modify(Lio/netty/channel/epoll/AbstractEpollChannel;)V

    :cond_0
    return-void
.end method

.method private static newDirectBuffer0(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1
    invoke-interface {p2, p3}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p2, p1, v0, p3}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 3
    invoke-static {p0}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    return-object p2
.end method


# virtual methods
.method final clearEpollIn()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v1

    check-cast v1, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;

    .line 4
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->clearEpollIn0()V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Lio/netty/channel/epoll/AbstractEpollChannel$2;

    invoke-direct {v2, p0, v1}, Lio/netty/channel/epoll/AbstractEpollChannel$2;-><init>(Lio/netty/channel/epoll/AbstractEpollChannel;Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    sget v1, Lio/netty/channel/epoll/Native;->EPOLLIN:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    :goto_0
    return-void
.end method

.method clearFlag(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/AbstractEpollChannel;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    .line 3
    invoke-direct {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->modifyEvents()V

    :cond_0
    return-void
.end method

.method public bridge synthetic config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->config()Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public abstract config()Lio/netty/channel/epoll/EpollChannelConfig;
.end method

.method protected final doBeginRead()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    check-cast v0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->readPending:Z

    .line 3
    sget v1, Lio/netty/channel/epoll/Native;->EPOLLIN:I

    invoke-virtual {p0, v1}, Lio/netty/channel/epoll/AbstractEpollChannel;->setFlag(I)V

    .line 4
    iget-boolean v1, v0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->maybeMoreDataToRead:Z

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->config()Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->executeEpollInReadyRunnable(Lio/netty/channel/ChannelConfig;)V

    :cond_0
    return-void
.end method

.method protected doBind(Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->checkResolvable(Ljava/net/InetSocketAddress;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/unix/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 4
    iget-object p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {p1}, Lio/netty/channel/unix/Socket;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->local:Ljava/net/SocketAddress;

    return-void
.end method

.method protected doClose()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->active:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->inputClosedSeenErrorOnRead:Z

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v1, v3}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 5
    iput-object v2, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    .line 6
    :cond_0
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->connectTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 8
    iput-object v2, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->connectTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 9
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->doDeregister()V

    goto :goto_0

    .line 13
    :cond_2
    new-instance v1, Lio/netty/channel/epoll/AbstractEpollChannel$1;

    invoke-direct {v1, p0}, Lio/netty/channel/epoll/AbstractEpollChannel$1;-><init>(Lio/netty/channel/epoll/AbstractEpollChannel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_3
    :goto_0
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/unix/FileDescriptor;->close()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->close()V

    .line 15
    throw v0
.end method

.method protected doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p2

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->checkResolvable(Ljava/net/InetSocketAddress;)V

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    invoke-static {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->checkResolvable(Ljava/net/InetSocketAddress;)V

    .line 5
    :cond_2
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->remote:Ljava/net/SocketAddress;

    if-nez v1, :cond_6

    if-eqz p2, :cond_3

    .line 6
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v1, p2}, Lio/netty/channel/unix/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 7
    :cond_3
    invoke-direct {p0, p1}, Lio/netty/channel/epoll/AbstractEpollChannel;->doConnect0(Ljava/net/SocketAddress;)Z

    move-result p2

    if-eqz p2, :cond_5

    if-nez v0, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    iget-object p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    .line 9
    invoke-virtual {p1}, Lio/netty/channel/unix/Socket;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-static {v0, p1}, Lio/netty/channel/unix/UnixChannelUtil;->computeRemoteAddr(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->remote:Ljava/net/SocketAddress;

    .line 10
    :cond_5
    iget-object p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {p1}, Lio/netty/channel/unix/Socket;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->local:Ljava/net/SocketAddress;

    return p2

    .line 11
    :cond_6
    new-instance p1, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {p1}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw p1
.end method

.method protected doDeregister()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    check-cast v0, Lio/netty/channel/epoll/EpollEventLoop;

    invoke-virtual {v0, p0}, Lio/netty/channel/epoll/EpollEventLoop;->remove(Lio/netty/channel/epoll/AbstractEpollChannel;)V

    return-void
.end method

.method protected doDisconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->doClose()V

    return-void
.end method

.method protected final doReadBytes(Lio/netty/buffer/ByteBuf;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel$Unsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v2

    invoke-interface {v1, v2}, Lio/netty/channel/RecvByteBufAllocator$Handle;->attemptedBytesRead(I)V

    .line 3
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v2

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lio/netty/channel/unix/FileDescriptor;->readAddress(JII)I

    move-result v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lio/netty/channel/unix/FileDescriptor;->read(Ljava/nio/ByteBuffer;II)I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    add-int/2addr v0, v1

    .line 7
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    :cond_1
    return v1
.end method

.method protected doRegister()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->epollInReadyRunnablePending:Z

    .line 2
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    check-cast v0, Lio/netty/channel/epoll/EpollEventLoop;

    invoke-virtual {v0, p0}, Lio/netty/channel/epoll/EpollEventLoop;->add(Lio/netty/channel/epoll/AbstractEpollChannel;)V

    return-void
.end method

.method protected final doWriteBytes(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/buffer/ByteBuf;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result p2

    invoke-virtual {v0, v2, v3, v4, p2}, Lio/netty/channel/unix/FileDescriptor;->writeAddress(JII)I

    move-result p2

    if-lez p2, :cond_2

    int-to-long v2, p2

    .line 3
    invoke-virtual {p1, v2, v3}, Lio/netty/channel/ChannelOutboundBuffer;->removeBytes(J)V

    return v1

    .line 4
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 6
    :goto_0
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v0, p2, v2, v3}, Lio/netty/channel/unix/FileDescriptor;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    if-lez v0, :cond_2

    .line 7
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    int-to-long v2, v0

    .line 8
    invoke-virtual {p1, v2, v3}, Lio/netty/channel/ChannelOutboundBuffer;->removeBytes(J)V

    return v1

    :cond_2
    const p1, 0x7fffffff

    return p1
.end method

.method public final fd()Lio/netty/channel/unix/FileDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->active:Z

    return v0
.end method

.method protected isCompatible(Lio/netty/channel/EventLoop;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lio/netty/channel/epoll/EpollEventLoop;

    return p1
.end method

.method isFlagSet(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/unix/FileDescriptor;->isOpen()Z

    move-result v0

    return v0
.end method

.method protected localAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->local:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 1
    sget-object v0, Lio/netty/channel/epoll/AbstractEpollChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-object v0
.end method

.method protected final newDirectBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1}, Lio/netty/channel/epoll/AbstractEpollChannel;->newDirectBuffer(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method protected final newDirectBuffer(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 4
    sget-object p1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Lio/netty/buffer/ByteBufAllocator;->isDirectBufferPooled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-static {p1, p2, v1, v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->newDirectBuffer0(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    invoke-static {}, Lio/netty/buffer/ByteBufUtil;->threadLocalDirectBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    if-nez v2, :cond_2

    .line 9
    invoke-static {p1, p2, v1, v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->newDirectBuffer0(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {v2, p2, v1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 11
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    return-object v2
.end method

.method protected bridge synthetic newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->newUnsafe()Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;

    move-result-object v0

    return-object v0
.end method

.method protected abstract newUnsafe()Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;
.end method

.method protected remoteAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->remote:Ljava/net/SocketAddress;

    return-object v0
.end method

.method resetCachedAddresses()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/unix/Socket;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->local:Ljava/net/SocketAddress;

    .line 2
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/unix/Socket;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->remote:Ljava/net/SocketAddress;

    return-void
.end method

.method setFlag(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/AbstractEpollChannel;->isFlagSet(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    .line 3
    invoke-direct {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->modifyEvents()V

    :cond_0
    return-void
.end method

.method final shouldBreakEpollInReady(Lio/netty/channel/ChannelConfig;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/unix/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->inputClosedSeenErrorOnRead:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/netty/channel/epoll/AbstractEpollChannel;->isAllowHalfClosure(Lio/netty/channel/ChannelConfig;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
