.class public final Lio/netty/channel/PendingWriteQueue;
.super Ljava/lang/Object;
.source "PendingWriteQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/PendingWriteQueue$PendingWrite;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PENDING_WRITE_OVERHEAD:I

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private bytes:J

.field private final ctx:Lio/netty/channel/ChannelHandlerContext;

.field private head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

.field private size:I

.field private tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

.field private final tracker:Lio/netty/channel/PendingBytesTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lio/netty/channel/PendingWriteQueue;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/PendingWriteQueue;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const/16 v0, 0x40

    const-string v1, "io.netty.transport.pendingWriteSizeOverhead"

    .line 2
    invoke-static {v1, v0}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lio/netty/channel/PendingWriteQueue;->PENDING_WRITE_OVERHEAD:I

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/PendingBytesTracker;->newTracker(Lio/netty/channel/Channel;)Lio/netty/channel/PendingBytesTracker;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/PendingWriteQueue;->tracker:Lio/netty/channel/PendingBytesTracker;

    .line 3
    iput-object p1, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method private assertEmpty()V
    .locals 0

    return-void
.end method

.method private recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;Z)V
    .locals 5

    .line 1
    invoke-static {p1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$000(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$100(Lio/netty/channel/PendingWriteQueue$PendingWrite;)J

    move-result-wide v1

    if-eqz p2, :cond_1

    if-nez v0, :cond_0

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    iput-object p2, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    const-wide/16 v3, 0x0

    .line 5
    iput-wide v3, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    goto :goto_0

    .line 6
    :cond_0
    iput-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 7
    iget p2, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    .line 8
    iget-wide v3, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    .line 9
    :cond_1
    :goto_0
    invoke-static {p1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$400(Lio/netty/channel/PendingWriteQueue$PendingWrite;)V

    .line 10
    iget-object p1, p0, Lio/netty/channel/PendingWriteQueue;->tracker:Lio/netty/channel/PendingBytesTracker;

    invoke-virtual {p1, v1, v2}, Lio/netty/channel/PendingBytesTracker;->decrementPendingOutboundBytes(J)V

    return-void
.end method

.method private static safeFail(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    instance-of v0, p0, Lio/netty/channel/VoidChannelPromise;

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/netty/channel/PendingWriteQueue;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Failed to mark a promise as failure because it\'s done already: {}"

    invoke-interface {v0, v1, p0, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private size(Ljava/lang/Object;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->tracker:Lio/netty/channel/PendingBytesTracker;

    invoke-virtual {v0, p1}, Lio/netty/channel/PendingBytesTracker;->size(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    :cond_0
    sget v0, Lio/netty/channel/PendingWriteQueue;->PENDING_WRITE_OVERHEAD:I

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 5

    const-string v0, "msg"

    .line 1
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "promise"

    .line 2
    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p1}, Lio/netty/channel/PendingWriteQueue;->size(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-static {p1, v0, p2}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->newInstance(Ljava/lang/Object;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-nez p2, :cond_0

    .line 6
    iput-object p1, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    iput-object p1, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p2, p1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$002(Lio/netty/channel/PendingWriteQueue$PendingWrite;Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 8
    iput-object p1, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 9
    :goto_0
    iget p2, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    .line 10
    iget-wide v1, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    .line 11
    iget-object p2, p0, Lio/netty/channel/PendingWriteQueue;->tracker:Lio/netty/channel/PendingBytesTracker;

    invoke-static {p1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$100(Lio/netty/channel/PendingWriteQueue$PendingWrite;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lio/netty/channel/PendingBytesTracker;->incrementPendingOutboundBytes(J)V

    return-void
.end method

.method public bytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    return-wide v0
.end method

.method public current()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$200(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove()Lio/netty/channel/ChannelPromise;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$300(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$200(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 4
    invoke-direct {p0, v0, v2}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;Z)V

    return-object v1
.end method

.method public removeAndFail(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "cause"

    .line 1
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$200(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 4
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$300(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v1

    .line 5
    invoke-static {v1, p1}, Lio/netty/channel/PendingWriteQueue;->safeFail(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, v0, p1}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;Z)V

    return-void
.end method

.method public removeAndFailAll(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "cause"

    .line 1
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :cond_0
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    iput-object v1, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    const-wide/16 v2, 0x0

    .line 5
    iput-wide v2, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    :goto_0
    if-eqz v0, :cond_0

    .line 6
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$000(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-result-object v2

    .line 7
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$200(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 8
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$300(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v3

    .line 9
    invoke-direct {p0, v0, v1}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;Z)V

    .line 10
    invoke-static {v3, p1}, Lio/netty/channel/PendingWriteQueue;->safeFail(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0}, Lio/netty/channel/PendingWriteQueue;->assertEmpty()V

    return-void
.end method

.method public removeAndWrite()Lio/netty/channel/ChannelFuture;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$200(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$300(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v2

    const/4 v3, 0x1

    .line 4
    invoke-direct {p0, v0, v3}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;Z)V

    .line 5
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, v1, v2}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public removeAndWriteAll()Lio/netty/channel/ChannelFuture;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/PendingWriteQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    .line 3
    new-instance v2, Lio/netty/util/concurrent/PromiseCombiner;

    iget-object v3, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v3}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/netty/util/concurrent/PromiseCombiner;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 4
    :cond_1
    :try_start_0
    iget-object v3, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-eqz v3, :cond_3

    .line 5
    iput-object v1, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    iput-object v1, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    const/4 v4, 0x0

    .line 6
    iput v4, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    const-wide/16 v5, 0x0

    .line 7
    iput-wide v5, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    :goto_0
    if-eqz v3, :cond_1

    .line 8
    invoke-static {v3}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$000(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-result-object v5

    .line 9
    invoke-static {v3}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$200(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v6

    .line 10
    invoke-static {v3}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$300(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v7

    .line 11
    invoke-direct {p0, v3, v4}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;Z)V

    .line 12
    instance-of v3, v7, Lio/netty/channel/VoidChannelPromise;

    if-nez v3, :cond_2

    .line 13
    invoke-virtual {v2, v7}, Lio/netty/util/concurrent/PromiseCombiner;->add(Lio/netty/util/concurrent/Promise;)V

    .line 14
    :cond_2
    iget-object v3, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v3, v6, v7}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-object v3, v5

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {v2, v0}, Lio/netty/util/concurrent/PromiseCombiner;->finish(Lio/netty/util/concurrent/Promise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 16
    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 17
    :goto_1
    invoke-direct {p0}, Lio/netty/channel/PendingWriteQueue;->assertEmpty()V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    return v0
.end method
