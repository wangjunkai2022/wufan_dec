.class public abstract Lio/netty/channel/unix/SocketWritableByteChannel;
.super Ljava/lang/Object;
.source "SocketWritableByteChannel.java"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# instance fields
.field private final fd:Lio/netty/channel/unix/FileDescriptor;


# direct methods
.method protected constructor <init>(Lio/netty/channel/unix/FileDescriptor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "fd"

    .line 2
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/unix/FileDescriptor;

    iput-object p1, p0, Lio/netty/channel/unix/SocketWritableByteChannel;->fd:Lio/netty/channel/unix/FileDescriptor;

    return-void
.end method


# virtual methods
.method protected abstract alloc()Lio/netty/buffer/ByteBufAllocator;
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/channel/unix/SocketWritableByteChannel;->fd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v0}, Lio/netty/channel/unix/FileDescriptor;->close()V

    return-void
.end method

.method public final isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/channel/unix/SocketWritableByteChannel;->fd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v0}, Lio/netty/channel/unix/FileDescriptor;->isOpen()Z

    move-result v0

    return v0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v1, p0, Lio/netty/channel/unix/SocketWritableByteChannel;->fd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Lio/netty/channel/unix/FileDescriptor;->write(Ljava/nio/ByteBuffer;II)I

    move-result v1

    goto :goto_1

    :cond_0
    sub-int/2addr v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 5
    :try_start_0
    sget-object v2, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/unix/SocketWritableByteChannel;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v3

    .line 7
    invoke-interface {v3}, Lio/netty/buffer/ByteBufAllocator;->isDirectBufferPooled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    invoke-interface {v3, v1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lio/netty/buffer/ByteBufUtil;->threadLocalDirectBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    if-nez v2, :cond_3

    .line 10
    invoke-static {v1}, Lio/netty/buffer/Unpooled;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 11
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 12
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 13
    iget-object v3, p0, Lio/netty/channel/unix/SocketWritableByteChannel;->fd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Lio/netty/channel/unix/FileDescriptor;->write(Ljava/nio/ByteBuffer;II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-interface {v2}, Lio/netty/util/ReferenceCounted;->release()Z

    :goto_1
    if-lez v1, :cond_4

    add-int/2addr v0, v1

    .line 15
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_4
    return v1

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_5

    .line 16
    invoke-interface {v2}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 17
    :cond_5
    throw p1
.end method
