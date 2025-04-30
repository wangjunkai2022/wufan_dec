.class final Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;
.super Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;
.source "KQueueDomainSocketChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/kqueue/KQueueDomainSocketChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KQueueDomainUnsafe"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/kqueue/KQueueDomainSocketChannel;


# direct methods
.method private constructor <init>(Lio/netty/channel/kqueue/KQueueDomainSocketChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDomainSocketChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;-><init>(Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/channel/kqueue/KQueueDomainSocketChannel;Lio/netty/channel/kqueue/KQueueDomainSocketChannel$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;-><init>(Lio/netty/channel/kqueue/KQueueDomainSocketChannel;)V

    return-void
.end method

.method private readReadyFd()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDomainSocketChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/unix/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->clearReadFilter0()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDomainSocketChannel;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->config()Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->recvBufAllocHandle()Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDomainSocketChannel;

    invoke-virtual {v2}, Lio/netty/channel/AbstractChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v0}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 7
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readReadyBefore()V

    .line 8
    :cond_1
    :try_start_0
    iget-object v3, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDomainSocketChannel;

    iget-object v3, v3, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v3}, Lio/netty/channel/unix/Socket;->recvFd()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const/4 v5, 0x1

    .line 9
    invoke-virtual {v1, v5}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 10
    invoke-virtual {v1, v5}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->incMessagesRead(I)V

    .line 11
    iput-boolean v4, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readPending:Z

    .line 12
    new-instance v4, Lio/netty/channel/unix/FileDescriptor;

    invoke-direct {v4, v3}, Lio/netty/channel/unix/FileDescriptor;-><init>(I)V

    invoke-interface {v2, v4}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 13
    invoke-virtual {v1}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->continueReading()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v1, v4}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 15
    :goto_0
    invoke-virtual {v1}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->readComplete()V

    .line 16
    invoke-interface {v2}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {v1, v4}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 18
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->close(Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readReadyFinally(Lio/netty/channel/ChannelConfig;)V

    return-void

    :catchall_0
    move-exception v3

    .line 20
    :try_start_1
    invoke-virtual {v1}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->readComplete()V

    .line 21
    invoke-interface {v2}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 22
    invoke-interface {v2, v3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    :goto_1
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readReadyFinally(Lio/netty/channel/ChannelConfig;)V

    return-void

    :catchall_1
    move-exception v1

    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readReadyFinally(Lio/netty/channel/ChannelConfig;)V

    .line 24
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method readReady(Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;)V
    .locals 2

    .line 1
    sget-object v0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$1;->$SwitchMap$io$netty$channel$unix$DomainSocketReadMode:[I

    iget-object v1, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDomainSocketChannel;

    invoke-virtual {v1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->config()Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->getReadMode()Lio/netty/channel/unix/DomainSocketReadMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    .line 2
    invoke-direct {p0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;->readReadyFd()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;->readReady(Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;)V

    :goto_0
    return-void
.end method
