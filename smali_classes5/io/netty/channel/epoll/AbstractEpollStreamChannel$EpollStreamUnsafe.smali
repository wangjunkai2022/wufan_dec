.class Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;
.super Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;
.source "AbstractEpollStreamChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/epoll/AbstractEpollStreamChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EpollStreamUnsafe"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;


# direct methods
.method constructor <init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;-><init>(Lio/netty/channel/epoll/AbstractEpollChannel;)V

    return-void
.end method

.method private handleReadException(Lio/netty/channel/ChannelPipeline;Lio/netty/buffer/ByteBuf;Ljava/lang/Throwable;ZLio/netty/channel/epoll/EpollRecvByteAllocatorHandle;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iput-boolean v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->readPending:Z

    .line 3
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p5}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->readComplete()V

    .line 6
    invoke-interface {p1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 7
    invoke-interface {p1, p3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    if-nez p4, :cond_2

    .line 8
    instance-of p1, p3, Ljava/io/IOException;

    if-eqz p1, :cond_3

    .line 9
    :cond_2
    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->shutdownInput(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method epollInReady()V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->config()Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v1, v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->shouldBreakEpollInReady(Lio/netty/channel/ChannelConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->clearEpollIn0()V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->recvBufAllocHandle()Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;

    move-result-object v7

    .line 5
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    sget v2, Lio/netty/channel/epoll/Native;->EPOLLET:I

    invoke-virtual {v1, v2}, Lio/netty/channel/epoll/AbstractEpollChannel;->isFlagSet(I)Z

    move-result v1

    invoke-virtual {v7, v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->edgeTriggered(Z)V

    .line 6
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v3

    .line 7
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    .line 8
    invoke-virtual {v7, v0}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 9
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->epollInBefore()V

    const/4 v2, 0x0

    move-object v4, v2

    :cond_1
    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 10
    :try_start_0
    iget-object v4, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-static {v4}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->access$400(Lio/netty/channel/epoll/AbstractEpollStreamChannel;)Ljava/util/Queue;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 11
    :cond_2
    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;

    if-eqz v6, :cond_4

    .line 12
    invoke-virtual {v6, v7}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->spliceIn(Lio/netty/channel/RecvByteBufAllocator$Handle;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 13
    iget-object v6, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v6}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->isActive()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 14
    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_2

    :cond_3
    :goto_0
    const/4 v9, 0x0

    goto :goto_3

    .line 15
    :cond_4
    invoke-virtual {v7, v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    :try_start_1
    iget-object v8, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v8, v6}, Lio/netty/channel/epoll/AbstractEpollChannel;->doReadBytes(Lio/netty/buffer/ByteBuf;)I

    move-result v8

    invoke-virtual {v7, v8}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->lastBytesRead(I)V

    .line 17
    invoke-virtual {v7}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->lastBytesRead()I

    move-result v8

    const/4 v9, 0x1

    if-gtz v8, :cond_6

    .line 18
    invoke-interface {v6}, Lio/netty/util/ReferenceCounted;->release()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    :try_start_2
    invoke-virtual {v7}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->lastBytesRead()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-gez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_8

    .line 20
    :try_start_3
    iput-boolean v5, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->readPending:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 21
    :cond_6
    :try_start_4
    invoke-virtual {v7, v9}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->incMessagesRead(I)V

    .line 22
    iput-boolean v5, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->readPending:Z

    .line 23
    invoke-interface {v3, v6}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 24
    :try_start_5
    iget-object v6, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v6, v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->shouldBreakEpollInReady(Lio/netty/channel/ChannelConfig;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_0

    .line 25
    :cond_7
    :goto_2
    invoke-virtual {v7}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->continueReading()Z

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v6, :cond_1

    goto :goto_0

    .line 26
    :cond_8
    :goto_3
    :try_start_6
    invoke-virtual {v7}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->readComplete()V

    .line 27
    invoke-interface {v3}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    if-eqz v9, :cond_9

    .line 28
    invoke-virtual {p0, v5}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->shutdownInput(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v4, v2

    move v6, v9

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v4, v6

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v4, v2

    :goto_4
    const/4 v6, 0x0

    :goto_5
    move-object v2, p0

    .line 29
    :try_start_7
    invoke-direct/range {v2 .. v7}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->handleReadException(Lio/netty/channel/ChannelPipeline;Lio/netty/buffer/ByteBuf;Ljava/lang/Throwable;ZLio/netty/channel/epoll/EpollRecvByteAllocatorHandle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 30
    :cond_9
    :goto_6
    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->epollInFinally(Lio/netty/channel/ChannelConfig;)V

    return-void

    :catchall_3
    move-exception v1

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->epollInFinally(Lio/netty/channel/ChannelConfig;)V

    .line 31
    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7
.end method

.method newEpollHandle(Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;)Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    .locals 1

    .line 1
    new-instance v0, Lio/netty/channel/epoll/EpollRecvByteAllocatorStreamingHandle;

    invoke-direct {v0, p1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorStreamingHandle;-><init>(Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;)V

    return-object v0
.end method

.method protected prepareToClose()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    invoke-super {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->prepareToClose()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method
