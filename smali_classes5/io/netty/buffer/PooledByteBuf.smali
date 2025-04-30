.class abstract Lio/netty/buffer/PooledByteBuf;
.super Lio/netty/buffer/AbstractReferenceCountedByteBuf;
.source "PooledByteBuf.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/buffer/AbstractReferenceCountedByteBuf;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private allocator:Lio/netty/buffer/ByteBufAllocator;

.field cache:Lio/netty/buffer/PoolThreadCache;

.field protected chunk:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected handle:J

.field protected length:I

.field maxLength:I

.field protected memory:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected offset:I

.field private final recyclerHandle:Lio/netty/util/internal/ObjectPool$Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field tmpNioBuf:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/netty/buffer/PooledByteBuf;

    return-void
.end method

.method protected constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "+",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    .line 2
    iput-object p1, p0, Lio/netty/buffer/PooledByteBuf;->recyclerHandle:Lio/netty/util/internal/ObjectPool$Handle;

    return-void
.end method

.method private init0(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JIIILio/netty/buffer/PoolThreadCache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JIII",
            "Lio/netty/buffer/PoolThreadCache;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    .line 2
    iget-object v0, p1, Lio/netty/buffer/PoolChunk;->memory:Ljava/lang/Object;

    iput-object v0, p0, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    .line 4
    iget-object p1, p1, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object p1, p1, Lio/netty/buffer/PoolArena;->parent:Lio/netty/buffer/PooledByteBufAllocator;

    iput-object p1, p0, Lio/netty/buffer/PooledByteBuf;->allocator:Lio/netty/buffer/ByteBufAllocator;

    .line 5
    iput-object p8, p0, Lio/netty/buffer/PooledByteBuf;->cache:Lio/netty/buffer/PoolThreadCache;

    .line 6
    iput-wide p3, p0, Lio/netty/buffer/PooledByteBuf;->handle:J

    .line 7
    iput p5, p0, Lio/netty/buffer/PooledByteBuf;->offset:I

    .line 8
    iput p6, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    .line 9
    iput p7, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    return-void
.end method

.method private recycle()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->recyclerHandle:Lio/netty/util/internal/ObjectPool$Handle;

    invoke-interface {v0, p0}, Lio/netty/util/internal/ObjectPool$Handle;->recycle(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final _internalNioBuffer(IIZ)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledByteBuf;->idx(I)I

    move-result p1

    if-eqz p3, :cond_0

    .line 2
    iget-object p3, p0, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    invoke-virtual {p0, p3}, Lio/netty/buffer/PooledByteBuf;->newInternalNioBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object p3

    :goto_0
    add-int/2addr p2, p1

    .line 3
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-object p3
.end method

.method public final alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->allocator:Lio/netty/buffer/ByteBufAllocator;

    return-object v0
.end method

.method public final capacity()I
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    return v0
.end method

.method public final capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 2
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->checkNewCapacity(I)V

    .line 5
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    iget-boolean v1, v0, Lio/netty/buffer/PoolChunk;->unpooled:Z

    if-nez v1, :cond_3

    .line 6
    iget v1, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    if-le p1, v1, :cond_1

    .line 7
    iget v1, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    if-gt p1, v1, :cond_3

    .line 8
    iput p1, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    return-object p0

    .line 9
    :cond_1
    iget v1, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    ushr-int/lit8 v2, v1, 0x1

    if-le p1, v2, :cond_3

    const/16 v2, 0x200

    if-gt v1, v2, :cond_2

    add-int/lit8 v1, v1, -0x10

    if-le p1, v1, :cond_3

    .line 10
    :cond_2
    iput p1, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    .line 11
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->trimIndicesToCapacity(I)V

    return-object p0

    .line 12
    :cond_3
    iget-object v0, v0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lio/netty/buffer/PoolArena;->reallocate(Lio/netty/buffer/PooledByteBuf;IZ)V

    return-object p0
.end method

.method protected final deallocate()V
    .locals 8

    .line 1
    iget-wide v3, p0, Lio/netty/buffer/PooledByteBuf;->handle:J

    const-wide/16 v0, 0x0

    cmp-long v2, v3, v0

    if-ltz v2, :cond_0

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lio/netty/buffer/PooledByteBuf;->handle:J

    const/4 v7, 0x0

    .line 3
    iput-object v7, p0, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    iget-object v0, v1, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object v2, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    iget v5, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    iget-object v6, p0, Lio/netty/buffer/PooledByteBuf;->cache:Lio/netty/buffer/PoolThreadCache;

    invoke-virtual/range {v0 .. v6}, Lio/netty/buffer/PoolArena;->free(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JILio/netty/buffer/PoolThreadCache;)V

    .line 5
    iput-object v7, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    .line 6
    iput-object v7, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    .line 7
    invoke-direct {p0}, Lio/netty/buffer/PooledByteBuf;->recycle()V

    :cond_0
    return-void
.end method

.method duplicateInternalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lio/netty/buffer/PooledByteBuf;->_internalNioBuffer(IIZ)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final getBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p5}, Lio/netty/buffer/PooledByteBuf;->duplicateInternalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1, p3, p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result p1

    return p1
.end method

.method public final getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledByteBuf;->duplicateInternalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method protected final idx(I)I
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method init(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JIIILio/netty/buffer/PoolThreadCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JIII",
            "Lio/netty/buffer/PoolThreadCache;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p8}, Lio/netty/buffer/PooledByteBuf;->init0(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JIIILio/netty/buffer/PoolThreadCache;)V

    return-void
.end method

.method initUnpooled(Lio/netty/buffer/PoolChunk;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    iget v5, p1, Lio/netty/buffer/PoolChunk;->offset:I

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lio/netty/buffer/PooledByteBuf;->init0(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JIIILio/netty/buffer/PoolThreadCache;)V

    return-void
.end method

.method protected final internalNioBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/netty/buffer/PooledByteBuf;->newInternalNioBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    return-object v0
.end method

.method public final internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 4
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lio/netty/buffer/PooledByteBuf;->_internalNioBuffer(IIZ)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final isContiguous()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public maxFastWritableBytes()I
    .locals 2

    .line 1
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->maxCapacity()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected abstract newInternalNioBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation
.end method

.method public final nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledByteBuf;->duplicateInternalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final nioBufferCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    return-object v0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public final readBytes(Ljava/nio/channels/FileChannel;JI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p4}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes(I)V

    .line 5
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p4, v1}, Lio/netty/buffer/PooledByteBuf;->_internalNioBuffer(IIZ)Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-virtual {p1, p4, p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result p1

    .line 6
    iget p2, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    add-int/2addr p2, p1

    iput p2, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    return p1
.end method

.method public final readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes(I)V

    .line 2
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lio/netty/buffer/PooledByteBuf;->_internalNioBuffer(IIZ)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 3
    iget p2, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    add-int/2addr p2, p1

    iput p2, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    return p1
.end method

.method public final retainedDuplicate()Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->writerIndex()I

    move-result v1

    invoke-static {p0, p0, v0, v1}, Lio/netty/buffer/PooledDuplicatedByteBuf;->newInstance(Lio/netty/buffer/AbstractByteBuf;Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/PooledDuplicatedByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public final retainedSlice()Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readerIndex()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->writerIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/PooledByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public final retainedSlice(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 3
    invoke-static {p0, p0, p1, p2}, Lio/netty/buffer/PooledSlicedByteBuf;->newInstance(Lio/netty/buffer/AbstractByteBuf;Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/PooledSlicedByteBuf;

    move-result-object p1

    return-object p1
.end method

.method final reuse(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->maxCapacity(I)V

    .line 2
    invoke-virtual {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->resetRefCnt()V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1, p1}, Lio/netty/buffer/AbstractByteBuf;->setIndex0(II)V

    .line 4
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->discardMarks()V

    return-void
.end method

.method public final setBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p5}, Lio/netty/buffer/PooledByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1, p3, p4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result p1
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method public final setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/nio/channels/ScatteringByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method public final unwrap()Lio/netty/buffer/ByteBuf;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
