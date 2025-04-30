.class Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;
.super Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;
.source "UnpooledUnsafeNoCleanerDirectByteBuf.java"


# direct methods
.method constructor <init>(Lio/netty/buffer/ByteBufAllocator;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    return-void
.end method


# virtual methods
.method protected allocateDirect(I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->allocateDirectNoCleaner(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->checkNewCapacity(I)V

    .line 2
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledDirectByteBuf;->capacity()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->trimIndicesToCapacity(I)V

    .line 4
    iget-object v0, p0, Lio/netty/buffer/UnpooledDirectByteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;->reallocateDirect(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->setByteBuffer(Ljava/nio/ByteBuffer;Z)V

    return-object p0
.end method

.method protected freeDirect(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->freeDirectNoCleaner(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method reallocateDirect(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/netty/util/internal/PlatformDependent;->reallocateDirectNoCleaner(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method
