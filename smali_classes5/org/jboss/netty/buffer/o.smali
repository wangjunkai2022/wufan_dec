.class public Lorg/jboss/netty/buffer/o;
.super Lorg/jboss/netty/buffer/m;
.source "LittleEndianHeapChannelBuffer.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/m;-><init>(I)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/m;-><init>([B)V

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/m;-><init>([BII)V

    return-void
.end method


# virtual methods
.method public M(II)Lorg/jboss/netty/buffer/e;
    .locals 3

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    add-int v0, p1, p2

    .line 1
    iget-object v1, p0, Lorg/jboss/netty/buffer/m;->e:[B

    array-length v2, v1

    if-gt v0, v2, :cond_0

    .line 2
    new-array v0, p2, [B

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    new-instance p1, Lorg/jboss/netty/buffer/o;

    invoke-direct {p1, v0}, Lorg/jboss/netty/buffer/o;-><init>([B)V

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to copy - Need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maximum is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jboss/netty/buffer/m;->e:[B

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public X(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->e:[B

    int-to-byte v1, p2

    aput-byte v1, v0, p1

    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    .line 2
    aput-byte v2, v0, v1

    add-int/lit8 p1, p1, 0x2

    ushr-int/lit8 p2, p2, 0x10

    int-to-byte p2, p2

    .line 3
    aput-byte p2, v0, p1

    return-void
.end method

.method public duplicate()Lorg/jboss/netty/buffer/e;
    .locals 4

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/o;

    iget-object v1, p0, Lorg/jboss/netty/buffer/m;->e:[B

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    move-result v2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->writerIndex()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/buffer/o;-><init>([BII)V

    return-object v0
.end method

.method public factory()Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0}, Lorg/jboss/netty/buffer/n;->h(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/f;

    move-result-object v0

    return-object v0
.end method

.method public getInt(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->e:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v1

    return p1
.end method

.method public getLong(I)J
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->e:[B

    aget-byte v1, v0, p1

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x8

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v5, p1, 0x2

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v5, p1, 0x3

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x18

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v5, p1, 0x4

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v5, p1, 0x5

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v5, p1, 0x6

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x30

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 p1, p1, 0x7

    aget-byte p1, v0, p1

    int-to-long v5, p1

    and-long/2addr v3, v5

    const/16 p1, 0x38

    shl-long/2addr v3, p1

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public getShort(I)S
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->e:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v1

    int-to-short p1, p1

    return p1
.end method

.method public getUnsignedMedium(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->e:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x2

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v1

    return p1
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public q0(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->e:[B

    int-to-byte v1, p2

    aput-byte v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    .line 2
    aput-byte p2, v0, p1

    return-void
.end method

.method public setInt(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->e:[B

    int-to-byte v1, p2

    aput-byte v1, v0, p1

    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    .line 2
    aput-byte v2, v0, v1

    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    .line 3
    aput-byte v2, v0, v1

    add-int/lit8 p1, p1, 0x3

    ushr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    .line 4
    aput-byte p2, v0, p1

    return-void
.end method

.method public setLong(IJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->e:[B

    long-to-int v1, p2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x8

    ushr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 2
    aput-byte v2, v0, v1

    add-int/lit8 v1, p1, 0x2

    const/16 v2, 0x10

    ushr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 3
    aput-byte v2, v0, v1

    add-int/lit8 v1, p1, 0x3

    const/16 v2, 0x18

    ushr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 4
    aput-byte v2, v0, v1

    add-int/lit8 v1, p1, 0x4

    const/16 v2, 0x20

    ushr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 5
    aput-byte v2, v0, v1

    add-int/lit8 v1, p1, 0x5

    const/16 v2, 0x28

    ushr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 6
    aput-byte v2, v0, v1

    add-int/lit8 v1, p1, 0x6

    const/16 v2, 0x30

    ushr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 7
    aput-byte v2, v0, v1

    add-int/lit8 p1, p1, 0x7

    const/16 v1, 0x38

    ushr-long/2addr p2, v1

    long-to-int p3, p2

    int-to-byte p2, p3

    .line 8
    aput-byte p2, v0, p1

    return-void
.end method
