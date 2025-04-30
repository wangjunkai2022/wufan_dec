.class public Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;
.super Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;
.source "AbstractNioByteChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/nio/AbstractNioByteChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NioByteUnsafe"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/nio/AbstractNioByteChannel;


# direct methods
.method protected constructor <init>(Lio/netty/channel/nio/AbstractNioByteChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;-><init>(Lio/netty/channel/nio/AbstractNioChannel;)V

    return-void
.end method

.method private closeOnRead(Lio/netty/channel/ChannelPipeline;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->isInputShutdown0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->access$000(Lio/netty/channel/ChannelConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->shutdownInput()Lio/netty/channel/ChannelFuture;

    .line 4
    sget-object v0, Lio/netty/channel/socket/ChannelInputShutdownEvent;->INSTANCE:Lio/netty/channel/socket/ChannelInputShutdownEvent;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/netty/channel/nio/AbstractNioByteChannel;->access$102(Lio/netty/channel/nio/AbstractNioByteChannel;Z)Z

    .line 7
    sget-object v0, Lio/netty/channel/socket/ChannelInputShutdownReadComplete;->INSTANCE:Lio/netty/channel/socket/ChannelInputShutdownReadComplete;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    :goto_0
    return-void
.end method

.method private handleReadException(Lio/netty/channel/ChannelPipeline;Lio/netty/buffer/ByteBuf;Ljava/lang/Throwable;ZLio/netty/channel/RecvByteBufAllocator$Handle;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    .line 3
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 5
    :cond_1
    :goto_0
    invoke-interface {p5}, Lio/netty/channel/RecvByteBufAllocator$Handle;->readComplete()V

    .line 6
    invoke-interface {p1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 7
    invoke-interface {p1, p3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    if-nez p4, :cond_2

    .line 8
    instance-of p2, p3, Ljava/io/IOException;

    if-eqz p2, :cond_3

    .line 9
    :cond_2
    invoke-direct {p0, p1}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->closeOnRead(Lio/netty/channel/ChannelPipeline;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final read()V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v1, v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->shouldBreakReadReady(Lio/netty/channel/ChannelConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioChannel;->clearReadPending()V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v3

    .line 5
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v7

    .line 7
    invoke-interface {v7, v0}, Lio/netty/channel/RecvByteBufAllocator$Handle;->reset(Lio/netty/channel/ChannelConfig;)V

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 8
    :try_start_0
    invoke-interface {v7, v1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 9
    :try_start_1
    iget-object v6, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v6, v5}, Lio/netty/channel/nio/AbstractNioByteChannel;->doReadBytes(Lio/netty/buffer/ByteBuf;)I

    move-result v6

    invoke-interface {v7, v6}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead(I)V

    .line 10
    invoke-interface {v7}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead()I

    move-result v6

    const/4 v8, 0x1

    if-gtz v6, :cond_4

    .line 11
    invoke-interface {v5}, Lio/netty/util/ReferenceCounted;->release()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 12
    :try_start_2
    invoke-interface {v7}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_3

    .line 13
    :try_start_3
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    iput-boolean v4, v1, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v4, v2

    move v6, v8

    goto :goto_3

    :cond_3
    :goto_1
    move v4, v8

    goto :goto_2

    .line 14
    :cond_4
    :try_start_4
    invoke-interface {v7, v8}, Lio/netty/channel/RecvByteBufAllocator$Handle;->incMessagesRead(I)V

    .line 15
    iget-object v6, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    iput-boolean v4, v6, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    .line 16
    invoke-interface {v3, v5}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 17
    :try_start_5
    invoke-interface {v7}, Lio/netty/channel/RecvByteBufAllocator$Handle;->continueReading()Z

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v5, :cond_1

    .line 18
    :goto_2
    :try_start_6
    invoke-interface {v7}, Lio/netty/channel/RecvByteBufAllocator$Handle;->readComplete()V

    .line 19
    invoke-interface {v3}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    if-eqz v4, :cond_5

    .line 20
    invoke-direct {p0, v3}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->closeOnRead(Lio/netty/channel/ChannelPipeline;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 21
    :cond_5
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    iget-boolean v1, v1, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    if-nez v1, :cond_6

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v5, v1

    move v6, v4

    move-object v4, v2

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v4, v5

    const/4 v6, 0x0

    move-object v5, v1

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v5, v1

    move-object v4, v2

    const/4 v6, 0x0

    :goto_3
    move-object v2, p0

    .line 22
    :try_start_7
    invoke-direct/range {v2 .. v7}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->handleReadException(Lio/netty/channel/ChannelPipeline;Lio/netty/buffer/ByteBuf;Ljava/lang/Throwable;ZLio/netty/channel/RecvByteBufAllocator$Handle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 23
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    iget-boolean v1, v1, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    if-nez v1, :cond_6

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_6

    .line 24
    :goto_4
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->removeReadOp()V

    :cond_6
    return-void

    :catchall_4
    move-exception v1

    .line 25
    iget-object v2, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    iget-boolean v2, v2, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    if-nez v2, :cond_7

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_7

    .line 26
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->removeReadOp()V

    .line 27
    :cond_7
    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method
