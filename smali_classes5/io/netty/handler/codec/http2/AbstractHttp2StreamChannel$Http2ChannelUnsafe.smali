.class final Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;
.super Ljava/lang/Object;
.source "AbstractHttp2StreamChannel.java"

# interfaces
.implements Lio/netty/channel/Channel$Unsafe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Http2ChannelUnsafe"
.end annotation


# instance fields
.field private closeInitiated:Z

.field private readEOS:Z

.field private recvHandle:Lio/netty/channel/RecvByteBufAllocator$Handle;

.field final synthetic this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

.field private final unsafeVoidPromise:Lio/netty/channel/VoidChannelPromise;

.field private writeDoneAndNoFlush:Z


# direct methods
.method private constructor <init>(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/netty/channel/VoidChannelPromise;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/netty/channel/VoidChannelPromise;-><init>(Lio/netty/channel/Channel;Z)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->unsafeVoidPromise:Lio/netty/channel/VoidChannelPromise;

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;-><init>(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)V

    return-void
.end method

.method static synthetic access$1100(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->safeSetSuccess(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$1900(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->firstWriteComplete(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$2000(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->writeComplete(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method private fireChannelInactiveAndDeregister(Lio/netty/channel/ChannelPromise;Z)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lio/netty/util/concurrent/Promise;->setUncancellable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$400(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    return-void

    .line 4
    :cond_1
    new-instance v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe$2;

    invoke-direct {v0, p0, p2, p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe$2;-><init>(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;ZLio/netty/channel/ChannelPromise;)V

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method private firstWriteComplete(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->closeForcibly()V

    .line 4
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->wrapStreamClosedError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    :goto_0
    return-void
.end method

.method private invokeLater(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-static {}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$1200()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    const-string v1, "Can\'t invoke task later as EventLoop rejected it"

    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private pollQueuedMessage()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$800(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Ljava/util/Queue;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$800(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private safeSetSuccess(Lio/netty/channel/ChannelPromise;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lio/netty/channel/VoidChannelPromise;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->trySuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$1200()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    const-string v1, "Failed to mark a promise as success because it is done already: {}"

    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateLocalWindowIfNeeded()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$1500(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$1500(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$1502(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;I)I

    .line 4
    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->parentContext()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    new-instance v3, Lio/netty/handler/codec/http2/DefaultHttp2WindowUpdateFrame;

    invoke-direct {v3, v0}, Lio/netty/handler/codec/http2/DefaultHttp2WindowUpdateFrame;-><init>(I)V

    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$700(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/netty/handler/codec/http2/DefaultHttp2WindowUpdateFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2WindowUpdateFrame;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->write0(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$000(Lio/netty/channel/ChannelFuture;Lio/netty/channel/Channel;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$1600(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Lio/netty/channel/ChannelFutureListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->writeDoneAndNoFlush:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private validateStreamFrame(Lio/netty/handler/codec/http2/Http2StreamFrame;)Lio/netty/handler/codec/http2/Http2StreamFrame;
    .locals 4

    .line 1
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$700(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must not be set on the frame: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private wrapStreamClosedError(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    instance-of v0, p1, Lio/netty/handler/codec/http2/Http2Exception;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http2/Http2Exception;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Exception;->error()Lio/netty/handler/codec/http2/Http2Error;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-virtual {v0, p1}, Ljava/nio/channels/ClosedChannelException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private writeComplete(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->wrapStreamClosedError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 4
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$2100(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2StreamChannelConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/DefaultChannelConfig;->isAutoClose()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->closeForcibly()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$902(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Z)Z

    .line 8
    :cond_2
    :goto_0
    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    :goto_1
    return-void
.end method


# virtual methods
.method public beginRead()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->updateLocalWindowIfNeeded()V

    .line 3
    sget-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$5;->$SwitchMap$io$netty$handler$codec$http2$AbstractHttp2StreamChannel$ReadStatus:[I

    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$1300(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    sget-object v1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;->REQUESTED:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$1302(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;)Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    sget-object v1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;->IN_PROGRESS:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$1302(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;)Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    .line 6
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->doBeginRead()V

    :goto_0
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-interface {p2}, Lio/netty/util/concurrent/Promise;->setUncancellable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    return-void
.end method

.method public close(Lio/netty/channel/ChannelPromise;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lio/netty/util/concurrent/Promise;->setUncancellable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->closeInitiated:Z

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$500(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p1, Lio/netty/channel/VoidChannelPromise;

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$500(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    new-instance v1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe$1;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe$1;-><init>(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->closeInitiated:Z

    .line 8
    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$602(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Z)Z

    .line 9
    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->isActive()Z

    move-result v1

    .line 10
    iget-object v2, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/Channel;->isActive()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->readEOS:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$700(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->id()I

    move-result v2

    invoke-static {v2}, Lio/netty/handler/codec/http2/Http2CodecUtil;->isStreamIdValid(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    new-instance v2, Lio/netty/handler/codec/http2/DefaultHttp2ResetFrame;

    sget-object v3, Lio/netty/handler/codec/http2/Http2Error;->CANCEL:Lio/netty/handler/codec/http2/Http2Error;

    invoke-direct {v2, v3}, Lio/netty/handler/codec/http2/DefaultHttp2ResetFrame;-><init>(Lio/netty/handler/codec/http2/Http2Error;)V

    iget-object v3, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v3}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/http2/DefaultHttp2ResetFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2ResetFrame;

    move-result-object v2

    .line 12
    iget-object v3, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v3}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/Channel$Unsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 13
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->flush()V

    .line 14
    :cond_4
    iget-object v2, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$800(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Ljava/util/Queue;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 15
    :goto_1
    iget-object v2, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$800(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 16
    iget-object v2, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$802(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Ljava/util/Queue;)Ljava/util/Queue;

    goto :goto_2

    .line 17
    :cond_5
    invoke-static {v2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_6
    :goto_2
    iget-object v2, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v2, v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$902(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Z)Z

    .line 19
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$500(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 20
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 21
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->fireChannelInactiveAndDeregister(Lio/netty/channel/ChannelPromise;Z)V

    return-void
.end method

.method public closeForcibly()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel$Unsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-interface {p3}, Lio/netty/util/concurrent/Promise;->setUncancellable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-interface {p3, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    return-void
.end method

.method public deregister(Lio/netty/channel/ChannelPromise;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->fireChannelInactiveAndDeregister(Lio/netty/channel/ChannelPromise;Z)V

    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method doBeginRead()V
    .locals 3

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$1300(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;->IDLE:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    if-eq v0, v1, :cond_6

    .line 2
    invoke-direct {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->pollQueuedMessage()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->readEOS:Z

    if-eqz v0, :cond_6

    .line 4
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$1400(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->closeForcibly()V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/netty/channel/RecvByteBufAllocator$Handle;->reset(Lio/netty/channel/ChannelConfig;)V

    const/4 v2, 0x0

    .line 7
    :cond_2
    check-cast v0, Lio/netty/handler/codec/http2/Http2Frame;

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->doRead0(Lio/netty/handler/codec/http2/Http2Frame;Lio/netty/channel/RecvByteBufAllocator$Handle;)V

    .line 8
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->readEOS:Z

    if-nez v0, :cond_3

    invoke-interface {v1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->continueReading()Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v0

    .line 9
    :cond_3
    invoke-direct {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->pollQueuedMessage()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v2

    :cond_4
    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 10
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->isParentReadInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->readEOS:Z

    if-nez v0, :cond_5

    .line 11
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$600(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v0, v2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$602(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Z)Z

    .line 13
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->addChannelToReadCompletePendingQueue()V

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p0, v1, v2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->notifyReadComplete(Lio/netty/channel/RecvByteBufAllocator$Handle;Z)V

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method doRead0(Lio/netty/handler/codec/http2/Http2Frame;Lio/netty/channel/RecvByteBufAllocator$Handle;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lio/netty/handler/codec/http2/Http2DataFrame;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http2/Http2DataFrame;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2DataFrame;->initialFlowControlledBytes()I

    move-result v0

    .line 3
    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$1500(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$1502(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;I)I

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    .line 4
    :goto_0
    invoke-interface {p2, v0}, Lio/netty/channel/RecvByteBufAllocator$Handle;->attemptedBytesRead(I)V

    .line 5
    invoke-interface {p2, v0}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead(I)V

    const/4 v0, 0x1

    .line 6
    invoke-interface {p2, v0}, Lio/netty/channel/RecvByteBufAllocator$Handle;->incMessagesRead(I)V

    .line 7
    iget-object p2, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {p2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p2

    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->writeDoneAndNoFlush:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->isParentReadInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->writeDoneAndNoFlush:Z

    .line 3
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->parentContext()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->flush0(Lio/netty/channel/ChannelHandlerContext;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public localAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel$Unsafe;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method notifyReadComplete(Lio/netty/channel/RecvByteBufAllocator$Handle;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$600(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$602(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Z)Z

    .line 3
    iget-object p2, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {p2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$1300(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    move-result-object p2

    sget-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;->REQUESTED:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    if-ne p2, v0, :cond_1

    .line 4
    iget-object p2, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    sget-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;->IN_PROGRESS:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    invoke-static {p2, v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$1302(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;)Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    sget-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;->IDLE:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    invoke-static {p2, v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$1302(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;)Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    .line 6
    :goto_0
    invoke-interface {p1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->readComplete()V

    .line 7
    iget-object p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 8
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->flush()V

    .line 9
    iget-boolean p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->readEOS:Z

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$1400(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->closeForcibly()V

    :cond_2
    return-void
.end method

.method public outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method readEOS()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->readEOS:Z

    return-void
.end method

.method public recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->recvHandle:Lio/netty/channel/RecvByteBufAllocator$Handle;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getRecvByteBufAllocator()Lio/netty/channel/RecvByteBufAllocator;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/RecvByteBufAllocator;->newHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->recvHandle:Lio/netty/channel/RecvByteBufAllocator$Handle;

    .line 3
    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->recvHandle:Lio/netty/channel/RecvByteBufAllocator$Handle;

    return-object v0
.end method

.method public register(Lio/netty/channel/EventLoop;Lio/netty/channel/ChannelPromise;)V
    .locals 1

    .line 1
    invoke-interface {p2}, Lio/netty/util/concurrent/Promise;->setUncancellable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$400(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Re-register is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$402(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Z)Z

    .line 5
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 6
    iget-object p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/ChannelPipeline;->fireChannelRegistered()Lio/netty/channel/ChannelPipeline;

    .line 7
    iget-object p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/ChannelPipeline;->fireChannelActive()Lio/netty/channel/ChannelPipeline;

    :cond_2
    return-void
.end method

.method public remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel$Unsafe;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public voidPromise()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->unsafeVoidPromise:Lio/netty/channel/VoidChannelPromise;

    return-object v0
.end method

.method public write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 6

    .line 1
    invoke-interface {p2}, Lio/netty/util/concurrent/Promise;->setUncancellable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    .line 4
    invoke-static {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$900(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lio/netty/handler/codec/http2/Http2HeadersFrame;

    if-nez v0, :cond_7

    instance-of v0, p1, Lio/netty/handler/codec/http2/Http2DataFrame;

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 5
    :cond_1
    :try_start_0
    instance-of v0, p1, Lio/netty/handler/codec/http2/Http2StreamFrame;

    if-eqz v0, :cond_6

    .line 6
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http2/Http2StreamFrame;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->validateStreamFrame(Lio/netty/handler/codec/http2/Http2StreamFrame;)Lio/netty/handler/codec/http2/Http2StreamFrame;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2StreamFrame;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$1700(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v1

    invoke-static {v1}, Lio/netty/handler/codec/http2/Http2CodecUtil;->isStreamIdValid(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 8
    instance-of v1, v0, Lio/netty/handler/codec/http2/Http2HeadersFrame;

    if-nez v1, :cond_2

    .line 9
    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The first frame must be a headers frame. Was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Frame;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    return-void

    .line 13
    :cond_2
    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {v1, v3}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$1702(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Z)Z

    .line 14
    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->parentContext()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->write0(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-direct {p0, v0, p2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->firstWriteComplete(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 17
    :cond_3
    invoke-static {}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$FlowControlledFrameSizeEstimator;->access$1800()Lio/netty/channel/MessageSizeEstimator$Handle;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/netty/channel/MessageSizeEstimator$Handle;->size(Ljava/lang/Object;)I

    move-result p1

    int-to-long v4, p1

    .line 18
    iget-object p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {p1, v4, v5, v2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$200(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;JZ)V

    .line 19
    new-instance p1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe$3;

    invoke-direct {p1, p0, p2, v4, v5}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe$3;-><init>(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;Lio/netty/channel/ChannelPromise;J)V

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 20
    iput-boolean v3, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->writeDoneAndNoFlush:Z

    :goto_0
    return-void

    .line 21
    :cond_4
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->parentContext()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->write0(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 23
    invoke-direct {p0, v0, p2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->writeComplete(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    goto :goto_1

    .line 24
    :cond_5
    invoke-static {}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$FlowControlledFrameSizeEstimator;->access$1800()Lio/netty/channel/MessageSizeEstimator$Handle;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/netty/channel/MessageSizeEstimator$Handle;->size(Ljava/lang/Object;)I

    move-result p1

    int-to-long v4, p1

    .line 25
    iget-object p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-static {p1, v4, v5, v2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$200(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;JZ)V

    .line 26
    new-instance p1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe$4;

    invoke-direct {p1, p0, p2, v4, v5}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe$4;-><init>(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;Lio/netty/channel/ChannelPromise;J)V

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 27
    iput-boolean v3, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->writeDoneAndNoFlush:Z

    goto :goto_1

    .line 28
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message must be an "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lio/netty/handler/codec/http2/Http2StreamFrame;

    .line 31
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 33
    invoke-interface {p2, p1}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    :goto_1
    return-void

    .line 34
    :cond_7
    :goto_2
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 35
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    return-void
.end method
