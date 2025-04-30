.class final Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;
.super Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
.source "AbstractKQueueServerChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/kqueue/AbstractKQueueServerChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KQueueServerSocketUnsafe"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final acceptedAddress:[B

.field final synthetic this$0:Lio/netty/channel/kqueue/AbstractKQueueServerChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/kqueue/AbstractKQueueServerChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueServerChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;-><init>(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V

    const/16 p1, 0x1a

    new-array p1, p1, [B

    .line 2
    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->acceptedAddress:[B

    return-void
.end method


# virtual methods
.method readReady(Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueServerChannel;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->config()Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueServerChannel;

    invoke-virtual {v1, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->shouldBreakReadReady(Lio/netty/channel/ChannelConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->clearReadFilter0()V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueServerChannel;

    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    .line 5
    invoke-virtual {p1, v0}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->reset(Lio/netty/channel/ChannelConfig;)V

    const/4 v2, 0x1

    .line 6
    invoke-virtual {p1, v2}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->attemptedBytesRead(I)V

    .line 7
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readReadyBefore()V

    const/4 v3, 0x0

    .line 8
    :cond_1
    :try_start_0
    iget-object v4, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueServerChannel;

    iget-object v4, v4, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    iget-object v5, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->acceptedAddress:[B

    invoke-virtual {v4, v5}, Lio/netty/channel/unix/Socket;->accept([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 9
    invoke-virtual {p1, v5}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead(I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1, v2}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 11
    invoke-virtual {p1, v2}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->incMessagesRead(I)V

    const/4 v5, 0x0

    .line 12
    iput-boolean v5, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readPending:Z

    .line 13
    iget-object v6, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueServerChannel;

    iget-object v7, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->acceptedAddress:[B

    aget-byte v5, v7, v5

    invoke-virtual {v6, v4, v7, v2, v5}, Lio/netty/channel/kqueue/AbstractKQueueServerChannel;->newChildChannel(I[BII)Lio/netty/channel/Channel;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 14
    invoke-virtual {p1}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->continueReading()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v3, v2

    .line 15
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->readComplete()V

    .line 16
    invoke-interface {v1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    if-eqz v3, :cond_3

    .line 17
    invoke-interface {v1, v3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :cond_3
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readReadyFinally(Lio/netty/channel/ChannelConfig;)V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readReadyFinally(Lio/netty/channel/ChannelConfig;)V

    .line 19
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
