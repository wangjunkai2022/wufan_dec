.class Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "WebSocketClientProtocolHandshakeHandler.java"


# static fields
.field private static final DEFAULT_HANDSHAKE_TIMEOUT_MS:J = 0x2710L


# instance fields
.field private ctx:Lio/netty/channel/ChannelHandlerContext;

.field private handshakePromise:Lio/netty/channel/ChannelPromise;

.field private final handshakeTimeoutMillis:J

.field private final handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;)V
    .locals 2

    const-wide/16 v0, 0x2710

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;J)V

    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 3
    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    const-string p1, "handshakeTimeoutMillis"

    .line 4
    invoke-static {p2, p3, p1}, Lio/netty/util/internal/ObjectUtil;->checkPositive(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshakeTimeoutMillis:J

    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;)Lio/netty/channel/ChannelPromise;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshakePromise:Lio/netty/channel/ChannelPromise;

    return-object p0
.end method

.method static synthetic access$100(Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;)Lio/netty/channel/ChannelHandlerContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object p0
.end method

.method private applyHandshakeTimeout()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshakePromise:Lio/netty/channel/ChannelPromise;

    .line 2
    iget-wide v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshakeTimeoutMillis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    new-instance v2, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler$2;

    invoke-direct {v2, p0, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler$2;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;Lio/netty/channel/ChannelPromise;)V

    iget-wide v3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshakeTimeoutMillis:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Lio/netty/util/concurrent/EventExecutorGroup;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/c;

    move-result-object v1

    .line 4
    new-instance v2, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler$3;

    invoke-direct {v2, p0, v1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler$3;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;Lio/netty/util/concurrent/Future;)V

    invoke-interface {v0, v2}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/netty/channel/ChannelInboundHandlerAdapter;->channelActive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 2
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->handshake(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler$1;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler$1;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 3
    invoke-direct {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->applyHandshakeTimeout()V

    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/netty/handler/codec/http/FullHttpResponse;

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void

    .line 3
    :cond_0
    check-cast p2, Lio/netty/handler/codec/http/FullHttpResponse;

    .line 4
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->isHandshakeComplete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->finishHandshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/FullHttpResponse;)V

    .line 6
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshakePromise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->trySuccess()Z

    .line 7
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler$ClientHandshakeStateEvent;->HANDSHAKE_COMPLETE:Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler$ClientHandshakeStateEvent;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 8
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-interface {p2}, Lio/netty/util/ReferenceCounted;->release()Z

    return-void

    .line 10
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "WebSocketClientHandshaker should have been non finished yet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 11
    invoke-interface {p2}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 12
    throw p1
.end method

.method getHandshakeFuture()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshakePromise:Lio/netty/channel/ChannelPromise;

    return-object v0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 2
    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshakePromise:Lio/netty/channel/ChannelPromise;

    return-void
.end method
