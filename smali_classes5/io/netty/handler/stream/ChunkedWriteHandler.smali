.class public Lio/netty/handler/stream/ChunkedWriteHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "ChunkedWriteHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;
    }
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private volatile ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/netty/handler/stream/ChunkedWriteHandler;

    .line 2
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/stream/ChunkedWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    if-lez p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxPendingWrites: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: > 0)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lio/netty/handler/stream/ChunkedWriteHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler;->resumeTransfer0(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method static synthetic access$100(Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler;->handleEndOfInputFuture(Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;)V

    return-void
.end method

.method static synthetic access$200(Lio/netty/handler/stream/ChunkedWriteHandler;Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/stream/ChunkedWriteHandler;->handleFuture(Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;Z)V

    return-void
.end method

.method private static closeInput(Lio/netty/handler/stream/ChunkedInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/stream/ChunkedInput<",
            "*>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Lio/netty/handler/stream/ChunkedInput;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    sget-object v0, Lio/netty/handler/stream/ChunkedWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lio/netty/handler/stream/ChunkedWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Failed to close a chunked input."

    invoke-interface {v0, v1, p0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private discard(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v1, v0, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->msg:Ljava/lang/Object;

    .line 3
    instance-of v2, v1, Lio/netty/handler/stream/ChunkedInput;

    if-eqz v2, :cond_4

    .line 4
    check-cast v1, Lio/netty/handler/stream/ChunkedInput;

    .line 5
    :try_start_0
    invoke-interface {v1}, Lio/netty/handler/stream/ChunkedInput;->isEndOfInput()Z

    move-result v2

    .line 6
    invoke-interface {v1}, Lio/netty/handler/stream/ChunkedInput;->length()J

    move-result-wide v3

    .line 7
    invoke-static {v1}, Lio/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lio/netty/handler/stream/ChunkedInput;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_3

    if-nez p1, :cond_2

    .line 8
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 9
    :cond_2
    invoke-virtual {v0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->fail(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v0, v3, v4}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->success(J)V

    goto :goto_0

    :catch_0
    move-exception v2

    .line 11
    invoke-static {v1}, Lio/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lio/netty/handler/stream/ChunkedInput;)V

    .line 12
    invoke-virtual {v0, v2}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->fail(Ljava/lang/Throwable;)V

    .line 13
    sget-object v0, Lio/netty/handler/stream/ChunkedWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lio/netty/handler/stream/ChunkedInput;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    .line 15
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 16
    :cond_5
    invoke-virtual {v0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->fail(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private doFlush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 10

    .line 1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0, v2}, Lio/netty/handler/stream/ChunkedWriteHandler;->discard(Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 5
    :cond_1
    :goto_0
    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 6
    iget-object v5, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;

    if-nez v5, :cond_2

    goto/16 :goto_5

    .line 7
    :cond_2
    iget-object v6, v5, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v6}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 8
    iget-object v5, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_3
    iget-object v6, v5, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->msg:Ljava/lang/Object;

    .line 10
    instance-of v7, v6, Lio/netty/handler/stream/ChunkedInput;

    const/4 v8, 0x0

    if-eqz v7, :cond_b

    .line 11
    check-cast v6, Lio/netty/handler/stream/ChunkedInput;

    .line 12
    :try_start_0
    invoke-interface {v6, v1}, Lio/netty/handler/stream/ChunkedInput;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    invoke-interface {v6}, Lio/netty/handler/stream/ChunkedInput;->isEndOfInput()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_4

    xor-int/lit8 v9, v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_5

    goto/16 :goto_5

    :cond_5
    if-nez v7, :cond_6

    .line 14
    sget-object v7, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 15
    :cond_6
    invoke-interface {p1, v7}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v4

    if-eqz v6, :cond_8

    .line 16
    iget-object v6, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 17
    invoke-interface {v4}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 18
    invoke-static {v4, v5}, Lio/netty/handler/stream/ChunkedWriteHandler;->handleEndOfInputFuture(Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;)V

    goto :goto_2

    .line 19
    :cond_7
    new-instance v6, Lio/netty/handler/stream/ChunkedWriteHandler$2;

    invoke-direct {v6, p0, v5}, Lio/netty/handler/stream/ChunkedWriteHandler$2;-><init>(Lio/netty/handler/stream/ChunkedWriteHandler;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;)V

    invoke-interface {v4, v6}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    goto :goto_2

    .line 20
    :cond_8
    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v6

    xor-int/2addr v6, v3

    .line 21
    invoke-interface {v4}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 22
    invoke-direct {p0, v4, v5, v6}, Lio/netty/handler/stream/ChunkedWriteHandler;->handleFuture(Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;Z)V

    goto :goto_2

    .line 23
    :cond_9
    new-instance v7, Lio/netty/handler/stream/ChunkedWriteHandler$3;

    invoke-direct {v7, p0, v5, v6}, Lio/netty/handler/stream/ChunkedWriteHandler$3;-><init>(Lio/netty/handler/stream/ChunkedWriteHandler;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;Z)V

    invoke-interface {v4, v7}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    :goto_2
    const/4 v4, 0x0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v7

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 24
    :goto_3
    iget-object v1, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    if-eqz v2, :cond_a

    .line 25
    invoke-static {v2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 26
    :cond_a
    invoke-static {v6}, Lio/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lio/netty/handler/stream/ChunkedInput;)V

    .line 27
    invoke-virtual {v5, v0}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->fail(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 28
    :cond_b
    iget-object v4, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 29
    iget-object v4, v5, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1, v6, v4}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    const/4 v4, 0x1

    .line 30
    :goto_4
    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v5

    if-nez v5, :cond_1

    .line 31
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-direct {p0, v0}, Lio/netty/handler/stream/ChunkedWriteHandler;->discard(Ljava/lang/Throwable;)V

    :cond_c
    :goto_5
    if-eqz v4, :cond_d

    .line 32
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    :cond_d
    return-void
.end method

.method private static handleEndOfInputFuture(Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->msg:Ljava/lang/Object;

    check-cast v0, Lio/netty/handler/stream/ChunkedInput;

    .line 2
    invoke-interface {p0}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lio/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lio/netty/handler/stream/ChunkedInput;)V

    .line 4
    invoke-interface {p0}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->fail(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->progress()J

    move-result-wide v1

    .line 6
    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->length()J

    move-result-wide v3

    .line 7
    invoke-static {v0}, Lio/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lio/netty/handler/stream/ChunkedInput;)V

    .line 8
    invoke-virtual {p1, v1, v2, v3, v4}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->progress(JJ)V

    .line 9
    invoke-virtual {p1, v3, v4}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->success(J)V

    :goto_0
    return-void
.end method

.method private handleFuture(Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;Z)V
    .locals 5

    .line 1
    iget-object v0, p2, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->msg:Ljava/lang/Object;

    check-cast v0, Lio/netty/handler/stream/ChunkedInput;

    .line 2
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lio/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lio/netty/handler/stream/ChunkedInput;)V

    .line 4
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->fail(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->progress()J

    move-result-wide v1

    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->length()J

    move-result-wide v3

    invoke-virtual {p2, v1, v2, v3, v4}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->progress(JJ)V

    if-eqz p3, :cond_1

    .line 6
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->isWritable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lio/netty/handler/stream/ChunkedWriteHandler;->resumeTransfer()V

    :cond_1
    :goto_0
    return-void
.end method

.method private resumeTransfer0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler;->doFlush(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object v0, Lio/netty/handler/stream/ChunkedWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Unexpected exception while sending chunks."

    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler;->doFlush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 2
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler;->doFlush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 3
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler;->doFlush(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public resumeTransfer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-direct {p0, v0}, Lio/netty/handler/stream/ChunkedWriteHandler;->resumeTransfer0(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    new-instance v2, Lio/netty/handler/stream/ChunkedWriteHandler$1;

    invoke-direct {v2, p0, v0}, Lio/netty/handler/stream/ChunkedWriteHandler$1;-><init>(Lio/netty/handler/stream/ChunkedWriteHandler;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    new-instance v0, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;

    invoke-direct {v0, p2, p3}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;-><init>(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
