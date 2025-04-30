.class public Lio/netty/handler/codec/http2/Http2FrameCodec;
.super Lio/netty/handler/codec/http2/Http2ConnectionHandler;
.source "Http2FrameCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;,
        Lio/netty/handler/codec/http2/Http2FrameCodec$Http2RemoteFlowControllerListener;,
        Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;,
        Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOG:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final frameStreamToInitializeMap:Lio/netty/util/collection/IntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/collection/IntObjectMap<",
            "Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;",
            ">;"
        }
    .end annotation
.end field

.field private final initialFlowControlWindowSize:Ljava/lang/Integer;

.field private numBufferedStreams:I

.field protected final streamKey:Lio/netty/handler/codec/http2/Http2Connection$a;

.field private final upgradeKey:Lio/netty/handler/codec/http2/Http2Connection$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/netty/handler/codec/http2/Http2FrameCodec;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/Http2FrameCodec;->LOG:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Settings;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1, p3, p4}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;Z)V

    .line 2
    new-instance p1, Lio/netty/util/collection/IntObjectHashMap;

    const/16 p4, 0x8

    invoke-direct {p1, p4}, Lio/netty/util/collection/IntObjectHashMap;-><init>(I)V

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->frameStreamToInitializeMap:Lio/netty/util/collection/IntObjectMap;

    .line 3
    new-instance p1, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;

    const/4 p4, 0x0

    invoke-direct {p1, p0, p4}, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;-><init>(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$1;)V

    invoke-interface {p2, p1}, Lio/netty/handler/codec/http2/Http2ConnectionDecoder;->frameListener(Lio/netty/handler/codec/http2/Http2FrameListener;)V

    .line 4
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object p1

    new-instance p2, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;

    invoke-direct {p2, p0, p4}, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;-><init>(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$1;)V

    invoke-interface {p1, p2}, Lio/netty/handler/codec/http2/Http2Connection;->addListener(Lio/netty/handler/codec/http2/Http2Connection$Listener;)V

    .line 5
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->flowController()Lio/netty/handler/codec/http2/Http2FlowController;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    new-instance p2, Lio/netty/handler/codec/http2/Http2FrameCodec$Http2RemoteFlowControllerListener;

    invoke-direct {p2, p0, p4}, Lio/netty/handler/codec/http2/Http2FrameCodec$Http2RemoteFlowControllerListener;-><init>(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$1;)V

    invoke-interface {p1, p2}, Lio/netty/handler/codec/http2/Http2RemoteFlowController;->listener(Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;)V

    .line 6
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->newKey()Lio/netty/handler/codec/http2/Http2Connection$a;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->streamKey:Lio/netty/handler/codec/http2/Http2Connection$a;

    .line 7
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->newKey()Lio/netty/handler/codec/http2/Http2Connection$a;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->upgradeKey:Lio/netty/handler/codec/http2/Http2Connection$a;

    .line 8
    invoke-virtual {p3}, Lio/netty/handler/codec/http2/Http2Settings;->initialWindowSize()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->initialFlowControlWindowSize:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$410(Lio/netty/handler/codec/http2/Http2FrameCodec;)I
    .locals 2

    .line 1
    iget v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->numBufferedStreams:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->numBufferedStreams:I

    return v0
.end method

.method static synthetic access$500(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/channel/ChannelFuture;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2FrameCodec;->handleHeaderFuture(Lio/netty/channel/ChannelFuture;I)V

    return-void
.end method

.method static synthetic access$600(Lio/netty/handler/codec/http2/Http2FrameCodec;)Lio/netty/util/collection/IntObjectMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->frameStreamToInitializeMap:Lio/netty/util/collection/IntObjectMap;

    return-object p0
.end method

.method static synthetic access$700(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onStreamActive0(Lio/netty/handler/codec/http2/Http2Stream;)V

    return-void
.end method

.method static synthetic access$800(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2StreamWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Z)V

    return-void
.end method

.method private handleHeaderFuture(Lio/netty/channel/ChannelFuture;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->frameStreamToInitializeMap:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {p1, p2}, Lio/netty/util/collection/IntObjectMap;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private increaseInitialConnectionWindow(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->flowController()Lio/netty/handler/codec/http2/Http2FlowController;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2LocalFlowController;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lio/netty/handler/codec/http2/Http2FlowController;->incrementWindowSize(Lio/netty/handler/codec/http2/Http2Stream;I)V

    return-void
.end method

.method private onHttp2StreamWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Z)V
    .locals 0

    .line 1
    iget-object p2, p2, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->writabilityChanged:Lio/netty/handler/codec/http2/Http2FrameStreamEvent;

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method private onHttp2UnknownStreamError(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception$StreamException;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Lio/netty/handler/codec/http2/Http2Exception;->error()Lio/netty/handler/codec/http2/Http2Error;

    move-result-object p1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;

    if-ne p1, v0, :cond_0

    sget-object p1, Lio/netty/util/internal/logging/InternalLogLevel;->DEBUG:Lio/netty/util/internal/logging/InternalLogLevel;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/netty/util/internal/logging/InternalLogLevel;->WARN:Lio/netty/util/internal/logging/InternalLogLevel;

    .line 2
    :goto_0
    sget-object v0, Lio/netty/handler/codec/http2/Http2FrameCodec;->LOG:Lio/netty/util/internal/logging/InternalLogger;

    invoke-virtual {p3}, Lio/netty/handler/codec/http2/Http2Exception$StreamException;->streamId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "Stream exception thrown for unknown stream {}."

    invoke-interface {v0, p1, v1, p3, p2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private onStreamActive0(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v1

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->isValidStreamId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->newStream()Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->streamKey:Lio/netty/handler/codec/http2/Http2Connection$a;

    invoke-virtual {v0, v1, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->setStreamAndProperty(Lio/netty/handler/codec/http2/Http2Connection$a;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {p0, v0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2StreamStateChanged(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;)V

    return-void
.end method

.method private onUpgradeEvent(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method private tryExpandConnectionFlowControlWindow(Lio/netty/handler/codec/http2/Http2Connection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->initialFlowControlWindowSize:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->flowController()Lio/netty/handler/codec/http2/Http2FlowController;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2LocalFlowController;

    .line 4
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->initialFlowControlWindowSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->initialWindowSize(Lio/netty/handler/codec/http2/Http2Stream;)I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    shl-int/lit8 v2, v1, 0x1

    .line 5
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lio/netty/handler/codec/http2/Http2FlowController;->incrementWindowSize(Lio/netty/handler/codec/http2/Http2Stream;I)V

    .line 6
    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->flush(Lio/netty/channel/ChannelHandlerContext;)V

    :cond_0
    return-void
.end method

.method private writeGoAwayFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2GoAwayFrame;Lio/netty/channel/ChannelPromise;)V
    .locals 9

    .line 1
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2GoAwayFrame;->lastStreamId()I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->lastStreamCreated()I

    move-result v0

    int-to-long v0, v0

    .line 3
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2GoAwayFrame;->extraStreamIds()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x2

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    move-wide v0, v2

    :cond_0
    long-to-int v4, v0

    .line 4
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2GoAwayFrame;->errorCode()J

    move-result-wide v5

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2GoAwayFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->goAway(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void

    .line 5
    :cond_1
    invoke-interface {p2}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Last stream id must not be set on GOAWAY frame"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeHeadersFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2HeadersFrame;Lio/netty/channel/ChannelPromise;)V
    .locals 10

    .line 1
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v0

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2CodecUtil;->isStreamIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v1

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v3

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2HeadersFrame;->headers()Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v4

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2HeadersFrame;->padding()I

    move-result v5

    .line 3
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2HeadersFrame;->isEndStream()Z

    move-result v6

    move-object v2, p1

    move-object v7, p3

    .line 4
    invoke-interface/range {v1 .. v7}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto/16 :goto_1

    .line 5
    :cond_0
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    .line 6
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->incrementAndGetNextStreamId()I

    move-result v2

    if-gez v2, :cond_2

    .line 8
    new-instance p2, Lio/netty/handler/codec/http2/Http2NoMoreStreamIdsException;

    invoke-direct {p2}, Lio/netty/handler/codec/http2/Http2NoMoreStreamIdsException;-><init>()V

    invoke-interface {p3, p2}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 9
    new-instance p2, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, 0x7fffffff

    goto :goto_0

    :cond_1
    const p3, 0x7ffffffe

    :goto_0
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->NO_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 10
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v0

    .line 11
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    const-string v3, "Stream IDs exhausted on local stream creation"

    invoke-static {v2, v3}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/CharSequence;)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-direct {p2, p3, v0, v1, v2}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;-><init>(IJLio/netty/buffer/ByteBuf;)V

    .line 12
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2Frame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Frame;)V

    return-void

    .line 13
    :cond_2
    invoke-static {v0, v2}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->access$302(Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;I)I

    .line 14
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->frameStreamToInitializeMap:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v1, v2, v0}, Lio/netty/util/collection/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v3

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2HeadersFrame;->headers()Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v6

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2HeadersFrame;->padding()I

    move-result v7

    .line 16
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2HeadersFrame;->isEndStream()Z

    move-result v8

    move-object v4, p1

    move v5, v2

    move-object v9, p3

    .line 17
    invoke-interface/range {v3 .. v9}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 18
    invoke-interface {p3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    if-nez p1, :cond_3

    .line 19
    iget p1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->numBufferedStreams:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->numBufferedStreams:I

    .line 20
    new-instance p1, Lio/netty/handler/codec/http2/Http2FrameCodec$3;

    invoke-direct {p1, p0, v2}, Lio/netty/handler/codec/http2/Http2FrameCodec$3;-><init>(Lio/netty/handler/codec/http2/Http2FrameCodec;I)V

    invoke-interface {p3, p1}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    goto :goto_1

    .line 21
    :cond_3
    invoke-direct {p0, p3, v2}, Lio/netty/handler/codec/http2/Http2FrameCodec;->handleHeaderFuture(Lio/netty/channel/ChannelFuture;I)V

    :goto_1
    return-void
.end method


# virtual methods
.method final consumeBytes(II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2
    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->upgradeKey:Lio/netty/handler/codec/http2/Http2Connection$a;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->flowController()Lio/netty/handler/codec/http2/Http2FlowController;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2LocalFlowController;

    invoke-interface {p1, v0, p2}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->consumeBytes(Lio/netty/handler/codec/http2/Http2Stream;I)Z

    move-result p1

    return p1
.end method

.method final forEachActiveStream(Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->numActiveStreams()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    new-instance v1, Lio/netty/handler/codec/http2/Http2FrameCodec$1;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec$1;-><init>(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http2/Http2Connection;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2StreamVisitor;)Lio/netty/handler/codec/http2/Http2Stream;

    :cond_0
    return-void
.end method

.method public final handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 2
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 3
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->handlerAdded0(Lio/netty/channel/ChannelHandlerContext;)V

    .line 4
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->tryExpandConnectionFlowControlWindow(Lio/netty/handler/codec/http2/Http2Connection;)V

    :cond_0
    return-void
.end method

.method handlerAdded0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method protected final isGracefulShutdownComplete()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->isGracefulShutdownComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->numBufferedStreams:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method newStream()Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;
    .locals 1

    .line 1
    new-instance v0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;-><init>()V

    return-object v0
.end method

.method numInitializingStreams()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->frameStreamToInitializeMap:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected onConnectionError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception;)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    invoke-interface {p1, p3}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onConnectionError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception;)V

    return-void
.end method

.method onHttp2Frame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Frame;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method onHttp2FrameStreamException(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameStreamException;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method onHttp2StreamStateChanged(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;)V
    .locals 0

    .line 1
    iget-object p2, p2, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->stateChanged:Lio/netty/handler/codec/http2/Http2FrameStreamEvent;

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method protected final onStreamError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception$StreamException;)V
    .locals 2

    .line 1
    invoke-virtual {p4}, Lio/netty/handler/codec/http2/Http2Exception$StreamException;->streamId()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p3, p4}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2UnknownStreamError(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception$StreamException;)V

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onStreamError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception$StreamException;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->streamKey:Lio/netty/handler/codec/http2/Http2Connection$a;

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameStream;

    if-nez v0, :cond_1

    .line 6
    sget-object v0, Lio/netty/handler/codec/http2/Http2FrameCodec;->LOG:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Stream exception thrown without stream object attached."

    invoke-interface {v0, v1, p3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onStreamError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception$StreamException;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 8
    new-instance p2, Lio/netty/handler/codec/http2/Http2FrameStreamException;

    invoke-virtual {p4}, Lio/netty/handler/codec/http2/Http2Exception;->error()Lio/netty/handler/codec/http2/Http2Error;

    move-result-object p4

    invoke-direct {p2, v0, p4, p3}, Lio/netty/handler/codec/http2/Http2FrameStreamException;-><init>(Lio/netty/handler/codec/http2/Http2FrameStream;Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2FrameStreamException(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameStreamException;)V

    :cond_2
    return-void
.end method

.method public final userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/netty/handler/codec/http2/Http2ConnectionPrefaceAndSettingsFrameWrittenEvent;->INSTANCE:Lio/netty/handler/codec/http2/Http2ConnectionPrefaceAndSettingsFrameWrittenEvent;

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->tryExpandConnectionFlowControlWindow(Lio/netty/handler/codec/http2/Http2Connection;)V

    .line 3
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    new-instance v1, Lio/netty/handler/codec/http2/Http2FrameCodec$2;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/handler/codec/http2/Http2FrameCodec$2;-><init>(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;

    if-eqz v0, :cond_2

    .line 5
    check-cast p2, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;

    .line 6
    :try_start_0
    invoke-virtual {p2}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;->retain()Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onUpgradeEvent(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;)V

    .line 7
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->streamKey:Lio/netty/handler/codec/http2/Http2Connection$a;

    invoke-interface {v0, v2}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$a;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 9
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onStreamActive0(Lio/netty/handler/codec/http2/Http2Stream;)V

    .line 10
    :cond_1
    invoke-virtual {p2}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;->upgradeRequest()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    sget-object v3, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    .line 11
    invoke-virtual {v3}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v3

    .line 12
    invoke-virtual {v2, v3, v1}, Lio/netty/handler/codec/http/HttpHeaders;->setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;

    .line 13
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->upgradeKey:Lio/netty/handler/codec/http2/Http2Connection$a;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->decoder()Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2ConnectionDecoder;->frameListener()Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v1

    invoke-virtual {p2}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;->upgradeRequest()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/handler/codec/http/FullHttpRequest;->retain()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v2

    .line 15
    invoke-static {p1, v0, v1, v2}, Lio/netty/handler/codec/http2/InboundHttpToHttp2Adapter;->handle(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2FrameListener;Lio/netty/handler/codec/http/FullHttpMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {p2}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;->release()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;->release()Z

    .line 17
    throw p1

    .line 18
    :cond_2
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 8

    .line 1
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2DataFrame;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lio/netty/handler/codec/http2/Http2DataFrame;

    .line 3
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v0

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v2

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2DataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 4
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2DataFrame;->padding()I

    move-result v4

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2DataFrame;->isEndStream()Z

    move-result v5

    move-object v1, p1

    move-object v6, p3

    .line 5
    invoke-interface/range {v0 .. v6}, Lio/netty/handler/codec/http2/Http2DataWriter;->writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto/16 :goto_1

    .line 6
    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2HeadersFrame;

    if-eqz v0, :cond_1

    .line 7
    check-cast p2, Lio/netty/handler/codec/http2/Http2HeadersFrame;

    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2FrameCodec;->writeHeadersFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2HeadersFrame;Lio/netty/channel/ChannelPromise;)V

    goto/16 :goto_1

    .line 8
    :cond_1
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2WindowUpdateFrame;

    if-eqz v0, :cond_3

    .line 9
    check-cast p2, Lio/netty/handler/codec/http2/Http2WindowUpdateFrame;

    .line 10
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object p1

    if-nez p1, :cond_2

    .line 11
    :try_start_0
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2WindowUpdateFrame;->windowSizeIncrement()I

    move-result p1

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->increaseInitialConnectionWindow(I)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result p1

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2WindowUpdateFrame;->windowSizeIncrement()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2FrameCodec;->consumeBytes(II)Z

    .line 13
    :goto_0
    invoke-interface {p3}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    .line 14
    invoke-interface {p3, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto/16 :goto_1

    .line 15
    :cond_3
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2ResetFrame;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 16
    check-cast p2, Lio/netty/handler/codec/http2/Http2ResetFrame;

    .line 17
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v0

    .line 18
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/netty/handler/codec/http2/Http2Connection;->streamMayHaveExisted(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v2

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v4

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2ResetFrame;->errorCode()J

    move-result-wide v5

    move-object v3, p1

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeRstStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto/16 :goto_1

    .line 20
    :cond_4
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 21
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result p1

    sget-object p2, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Stream never existed"

    .line 22
    invoke-static {p1, p2, v1, v0}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto/16 :goto_1

    .line 23
    :cond_5
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2PingFrame;

    if-eqz v0, :cond_6

    .line 24
    check-cast p2, Lio/netty/handler/codec/http2/Http2PingFrame;

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v0

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2PingFrame;->ack()Z

    move-result v2

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2PingFrame;->content()J

    move-result-wide v3

    move-object v1, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writePing(Lio/netty/channel/ChannelHandlerContext;ZJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_1

    .line 26
    :cond_6
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2SettingsFrame;

    if-eqz v0, :cond_7

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v0

    check-cast p2, Lio/netty/handler/codec/http2/Http2SettingsFrame;

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2SettingsFrame;->settings()Lio/netty/handler/codec/http2/Http2Settings;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeSettings(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_1

    .line 28
    :cond_7
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2SettingsAckFrame;

    if-eqz v0, :cond_8

    .line 29
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeSettingsAck(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_1

    .line 30
    :cond_8
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    if-eqz v0, :cond_9

    .line 31
    check-cast p2, Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2FrameCodec;->writeGoAwayFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2GoAwayFrame;Lio/netty/channel/ChannelPromise;)V

    goto :goto_1

    .line 32
    :cond_9
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2UnknownFrame;

    if-eqz v0, :cond_a

    .line 33
    check-cast p2, Lio/netty/handler/codec/http2/Http2UnknownFrame;

    .line 34
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v0

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2UnknownFrame;->frameType()B

    move-result v2

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2UnknownFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v3

    .line 35
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2UnknownFrame;->flags()Lio/netty/handler/codec/http2/Http2Flags;

    move-result-object v4

    invoke-interface {p2}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v5

    move-object v1, p1

    move-object v6, p3

    .line 36
    invoke-interface/range {v0 .. v6}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->writeFrame(Lio/netty/channel/ChannelHandlerContext;BILio/netty/handler/codec/http2/Http2Flags;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_1

    .line 37
    :cond_a
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2Frame;

    if-nez v0, :cond_b

    .line 38
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    :goto_1
    return-void

    .line 39
    :cond_b
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 40
    new-instance p1, Lio/netty/handler/codec/UnsupportedMessageTypeException;

    new-array p3, v1, [Ljava/lang/Class;

    invoke-direct {p1, p2, p3}, Lio/netty/handler/codec/UnsupportedMessageTypeException;-><init>(Ljava/lang/Object;[Ljava/lang/Class;)V

    throw p1
.end method
