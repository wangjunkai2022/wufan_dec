.class final Lio/netty/handler/codec/dns/DnsCodecUtil;
.super Ljava/lang/Object;
.source "DnsCodecUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decodeDomainName(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    const-string v2, "."

    if-nez v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    shl-int/2addr v1, v4

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v8

    const/16 v9, 0x2e

    if-eqz v8, :cond_8

    .line 5
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v8

    and-int/lit16 v10, v8, 0xc0

    const/16 v11, 0xc0

    if-ne v10, v11, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_6

    if-ne v6, v5, :cond_2

    .line 6
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    add-int/2addr v6, v4

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v9

    if-eqz v9, :cond_5

    and-int/lit8 v8, v8, 0x3f

    shl-int/lit8 v8, v8, 0x8

    .line 8
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v9

    or-int/2addr v8, v9

    if-ge v8, v0, :cond_4

    .line 9
    invoke-virtual {p0, v8}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v7, v7, 0x2

    if-ge v7, v0, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    new-instance p0, Lio/netty/handler/codec/CorruptedFrameException;

    const-string v0, "name contains a loop."

    invoke-direct {p0, v0}, Lio/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_4
    new-instance p0, Lio/netty/handler/codec/CorruptedFrameException;

    const-string v0, "name has an out-of-range pointer"

    invoke-direct {p0, v0}, Lio/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_5
    new-instance p0, Lio/netty/handler/codec/CorruptedFrameException;

    const-string v0, "truncated pointer in a name"

    invoke-direct {p0, v0}, Lio/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-eqz v8, :cond_8

    .line 13
    invoke-virtual {p0, v8}, Lio/netty/buffer/ByteBuf;->isReadable(I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 14
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v10

    sget-object v11, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v10, v8, v11}, Lio/netty/buffer/ByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p0, v8}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 16
    :cond_7
    new-instance p0, Lio/netty/handler/codec/CorruptedFrameException;

    const-string v0, "truncated label in a name"

    invoke-direct {p0, v0}, Lio/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-eq v6, v5, :cond_9

    .line 17
    invoke-virtual {p0, v6}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 18
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_a

    return-object v2

    .line 19
    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    if-eq p0, v9, :cond_b

    .line 20
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static decompressDomainName(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 1
    invoke-static {p0}, Lio/netty/handler/codec/dns/DnsCodecUtil;->decodeDomainName(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    invoke-interface {p0, v1}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    .line 3
    invoke-static {v0, p0}, Lio/netty/handler/codec/dns/DnsCodecUtil;->encodeDomainName(Ljava/lang/String;Lio/netty/buffer/ByteBuf;)V

    return-object p0
.end method

.method static encodeDomainName(Ljava/lang/String;Lio/netty/buffer/ByteBuf;)V
    .locals 5

    const-string v0, "."

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    return-void

    :cond_0
    const-string v0, "\\."

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4
    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 7
    invoke-static {p1, v3}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method
