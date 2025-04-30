.class public Lio/netty/handler/codec/compression/SnappyFrameDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SnappyFrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;
    }
.end annotation


# static fields
.field private static final MAX_UNCOMPRESSED_DATA_SIZE:I = 0x10004

.field private static final SNAPPY_IDENTIFIER_LEN:I = 0x6


# instance fields
.field private corrupted:Z

.field private final snappy:Lio/netty/handler/codec/compression/Snappy;

.field private started:Z

.field private final validateChecksums:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/SnappyFrameDecoder;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 3
    new-instance v0, Lio/netty/handler/codec/compression/Snappy;

    invoke-direct {v0}, Lio/netty/handler/codec/compression/Snappy;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->snappy:Lio/netty/handler/codec/compression/Snappy;

    .line 4
    iput-boolean p1, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->validateChecksums:Z

    return-void
.end method

.method private static checkByte(BB)V
    .locals 0

    if-ne p0, p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Lio/netty/handler/codec/compression/DecompressionException;

    const-string p1, "Unexpected stream identifier contents. Mismatched snappy protocol version?"

    invoke-direct {p0, p1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static mapChunkType(B)Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;->COMPRESSED_DATA:Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 2
    sget-object p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;->UNCOMPRESSED_DATA:Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    .line 3
    sget-object p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;->STREAM_IDENTIFIER:Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;

    return-object p0

    :cond_2
    const/16 v0, 0x80

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_3

    .line 4
    sget-object p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;->RESERVED_SKIPPABLE:Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;->RESERVED_UNSKIPPABLE:Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;

    return-object p0
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->corrupted:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    .line 4
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v4

    int-to-byte v5, v4

    .line 6
    invoke-static {v5}, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->mapChunkType(B)Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;

    move-result-object v5

    add-int/2addr v1, v0

    .line 7
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->getUnsignedMediumLE(I)I

    move-result v1

    .line 8
    sget-object v6, Lio/netty/handler/codec/compression/SnappyFrameDecoder$1;->$SwitchMap$io$netty$handler$codec$compression$SnappyFrameDecoder$ChunkType:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    if-eq v5, v0, :cond_10

    const/4 v6, 0x2

    if-eq v5, v6, :cond_d

    const/4 v6, 0x3

    if-eq v5, v6, :cond_c

    if-eq v5, v3, :cond_7

    const/4 v4, 0x5

    if-eq v5, v4, :cond_2

    goto/16 :goto_2

    .line 9
    :cond_2
    iget-boolean v4, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->started:Z

    if-eqz v4, :cond_6

    add-int/lit8 v4, v1, 0x4

    if-ge v2, v4, :cond_3

    return-void

    .line 10
    :cond_3
    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 11
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readIntLE()I

    move-result v2

    .line 12
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :try_start_1
    iget-boolean v4, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->validateChecksums:Z

    if-eqz v4, :cond_4

    .line 14
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    :try_start_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v5

    add-int/2addr v5, v1

    sub-int/2addr v5, v3

    invoke-virtual {p2, v5}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 16
    iget-object v1, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->snappy:Lio/netty/handler/codec/compression/Snappy;

    invoke-virtual {v1, p2, p1}, Lio/netty/handler/codec/compression/Snappy;->decode(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :try_start_3
    invoke-virtual {p2, v4}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    const/4 p2, 0x0

    .line 18
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    invoke-static {v2, p1, p2, v1}, Lio/netty/handler/codec/compression/Snappy;->validateChecksum(ILio/netty/buffer/ByteBuf;II)V

    goto :goto_0

    :catchall_0
    move-exception p3

    .line 19
    invoke-virtual {p2, v4}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 20
    throw p3

    .line 21
    :cond_4
    iget-object v2, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->snappy:Lio/netty/handler/codec/compression/Snappy;

    sub-int/2addr v1, v3

    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->readSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object p2

    invoke-virtual {v2, p2, p1}, Lio/netty/handler/codec/compression/Snappy;->decode(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    .line 22
    :goto_0
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 23
    :try_start_4
    iget-object p1, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->snappy:Lio/netty/handler/codec/compression/Snappy;

    invoke-virtual {p1}, Lio/netty/handler/codec/compression/Snappy;->reset()V

    goto/16 :goto_2

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_5

    .line 24
    invoke-interface {p1}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 25
    :cond_5
    throw p2

    .line 26
    :cond_6
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    const-string p2, "Received COMPRESSED_DATA tag before STREAM_IDENTIFIER"

    invoke-direct {p1, p2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_7
    iget-boolean p1, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->started:Z

    if-eqz p1, :cond_b

    const p1, 0x10004

    if-gt v1, p1, :cond_a

    add-int/lit8 p1, v1, 0x4

    if-ge v2, p1, :cond_8

    return-void

    .line 28
    :cond_8
    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 29
    iget-boolean p1, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->validateChecksums:Z

    if-eqz p1, :cond_9

    .line 30
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readIntLE()I

    move-result p1

    .line 31
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    add-int/lit8 v4, v1, -0x4

    invoke-static {p1, p2, v2, v4}, Lio/netty/handler/codec/compression/Snappy;->validateChecksum(ILio/netty/buffer/ByteBuf;II)V

    goto :goto_1

    .line 32
    :cond_9
    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    :goto_1
    sub-int/2addr v1, v3

    .line 33
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 34
    :cond_a
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    const-string p2, "Received UNCOMPRESSED_DATA larger than 65540 bytes"

    invoke-direct {p1, p2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_b
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    const-string p2, "Received UNCOMPRESSED_DATA tag before STREAM_IDENTIFIER"

    invoke-direct {p1, p2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_c
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Found reserved unskippable chunk type: 0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_d
    iget-boolean p1, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->started:Z

    if-eqz p1, :cond_f

    add-int/2addr v1, v3

    if-ge v2, v1, :cond_e

    return-void

    .line 39
    :cond_e
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    goto :goto_2

    .line 40
    :cond_f
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    const-string p2, "Received RESERVED_SKIPPABLE tag before STREAM_IDENTIFIER"

    invoke-direct {p1, p2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    const/4 p1, 0x6

    if-ne v1, p1, :cond_12

    const/16 p3, 0xa

    if-ge v2, p3, :cond_11

    goto :goto_2

    .line 41
    :cond_11
    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 42
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p3

    .line 43
    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    add-int/lit8 p1, p3, 0x1

    .line 44
    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result p3

    const/16 v1, 0x73

    invoke-static {p3, v1}, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->checkByte(BB)V

    add-int/lit8 p3, p1, 0x1

    .line 45
    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result p1

    const/16 v1, 0x4e

    invoke-static {p1, v1}, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->checkByte(BB)V

    add-int/lit8 p1, p3, 0x1

    .line 46
    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result p3

    const/16 v1, 0x61

    invoke-static {p3, v1}, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->checkByte(BB)V

    add-int/lit8 p3, p1, 0x1

    .line 47
    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result p1

    const/16 v1, 0x50

    invoke-static {p1, v1}, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->checkByte(BB)V

    add-int/lit8 p1, p3, 0x1

    .line 48
    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result p3

    const/16 v1, 0x70

    invoke-static {p3, v1}, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->checkByte(BB)V

    .line 49
    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result p1

    const/16 p2, 0x59

    invoke-static {p1, p2}, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->checkByte(BB)V

    .line 50
    iput-boolean v0, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->started:Z

    :goto_2
    return-void

    .line 51
    :cond_12
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected length of stream identifier: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 52
    iput-boolean v0, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->corrupted:Z

    .line 53
    throw p1
.end method
