.class public Lorg/jboss/netty/buffer/d;
.super Lorg/jboss/netty/buffer/a;
.source "ByteBufferBackedChannelBuffer.java"


# instance fields
.field private final e:Ljava/nio/ByteBuffer;

.field private final f:Ljava/nio/ByteOrder;

.field private final g:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/buffer/a;-><init>()V

    const-string v0, "buffer"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/buffer/d;->f:Ljava/nio/ByteOrder;

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    iput p1, p0, Lorg/jboss/netty/buffer/d;->g:I

    .line 6
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/a;->u0(I)V

    return-void
.end method

.method private constructor <init>(Lorg/jboss/netty/buffer/d;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lorg/jboss/netty/buffer/a;-><init>()V

    .line 8
    iget-object v0, p1, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    .line 9
    iget-object v0, p1, Lorg/jboss/netty/buffer/d;->f:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lorg/jboss/netty/buffer/d;->f:Ljava/nio/ByteOrder;

    .line 10
    iget v0, p1, Lorg/jboss/netty/buffer/d;->g:I

    iput v0, p0, Lorg/jboss/netty/buffer/d;->g:I

    .line 11
    invoke-virtual {p1}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/jboss/netty/buffer/a;->writerIndex()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/a;->r0(II)V

    return-void
.end method


# virtual methods
.method public E(ILjava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p2, v0, p1, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 3
    :cond_1
    new-array p3, p3, [B

    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method

.method public G0(ILjava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 3
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public M(II)Lorg/jboss/netty/buffer/e;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object p1, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/d;->order()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 6
    new-instance p2, Lorg/jboss/netty/buffer/d;

    invoke-direct {p2, p1}, Lorg/jboss/netty/buffer/d;-><init>(Ljava/nio/ByteBuffer;)V

    return-object p2

    .line 7
    :catch_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to read - Need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public R(II)Ljava/nio/ByteBuffer;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/d;->capacity()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 2
    iget-object p1, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/d;->order()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/d;->order()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public T(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    int-to-byte p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public V(I[BII)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    add-int v1, p1, p4

    .line 2
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void

    .line 4
    :catch_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many bytes to read - Need "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", maximum is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public X(II)V
    .locals 2

    ushr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/d;->T(II)V

    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 2
    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/d;->T(II)V

    add-int/lit8 p1, p1, 0x2

    int-to-byte p2, p2

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/d;->T(II)V

    return-void
.end method

.method public a(II)Lorg/jboss/netty/buffer/e;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/d;->capacity()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/d;->duplicate()Lorg/jboss/netty/buffer/e;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0, p2}, Lorg/jboss/netty/buffer/e;->r0(II)V

    return-object p1

    :cond_0
    if-ltz p1, :cond_1

    if-nez p2, :cond_1

    .line 4
    sget-object p1, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p1

    .line 5
    :cond_1
    new-instance v0, Lorg/jboss/netty/buffer/d;

    iget-object v1, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    add-int/2addr p1, p2

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/d;->order()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jboss/netty/buffer/d;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public array()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public arrayOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    return v0
.end method

.method public capacity()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/d;->g:I

    return v0
.end method

.method public duplicate()Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/d;

    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/d;-><init>(Lorg/jboss/netty/buffer/d;)V

    return-object v0
.end method

.method public factory()Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/d;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/j;->j(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/f;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/d;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/n;->h(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/f;

    move-result-object v0

    return-object v0
.end method

.method public getByte(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int/2addr p1, p3

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-interface {p2, p1}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getUnsignedMedium(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/d;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/d;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/d;->getByte(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method public hasArray()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    return v0
.end method

.method public isDirect()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public l0(ILorg/jboss/netty/buffer/e;II)V
    .locals 2

    .line 1
    instance-of v0, p2, Lorg/jboss/netty/buffer/d;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lorg/jboss/netty/buffer/d;

    .line 3
    iget-object p2, p2, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p2

    add-int/2addr p4, p3

    .line 4
    invoke-virtual {p2, p4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/d;->w0(ILjava/nio/ByteBuffer;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr p1, v1

    invoke-interface {p2, p3, v0, p1, p4}, Lorg/jboss/netty/buffer/e;->p(I[BII)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p2, p3, p0, p1, p4}, Lorg/jboss/netty/buffer/e;->w(ILorg/jboss/netty/buffer/e;II)V

    :goto_0
    return-void
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->f:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public p(I[BII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    add-int v1, p1, p4

    .line 2
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 3
    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public q0(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    int-to-short p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int/2addr p1, v0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p2, v0, p1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_1

    if-nez v2, :cond_6

    return v1

    :cond_1
    add-int/2addr v2, v0

    add-int/2addr p1, v0

    sub-int/2addr p3, v0

    if-gtz p3, :cond_0

    goto :goto_0

    .line 4
    :cond_2
    new-array v0, p3, [B

    const/4 v3, 0x0

    :cond_3
    sub-int v4, p3, v2

    .line 5
    invoke-virtual {p2, v0, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_4

    if-nez v3, :cond_5

    return v1

    :cond_4
    add-int/2addr v3, v4

    add-int/2addr v2, v3

    if-lt v2, p3, :cond_3

    :cond_5
    move v2, v3

    .line 6
    iget-object p2, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_6
    :goto_0
    return v2
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    add-int v1, p1, p3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    const/4 v1, -0x1

    .line 8
    :try_start_0
    invoke-interface {p2, p1}, Ljava/nio/channels/ScatteringByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v2, -0x1

    :goto_1
    if-gez v2, :cond_1

    if-nez v0, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    :goto_2
    return v0
.end method

.method public setInt(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setLong(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public w(ILorg/jboss/netty/buffer/e;II)V
    .locals 2

    .line 1
    instance-of v0, p2, Lorg/jboss/netty/buffer/d;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lorg/jboss/netty/buffer/d;

    .line 3
    iget-object p2, p2, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p2

    add-int/2addr p4, p3

    .line 4
    invoke-virtual {p2, p4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/d;->G0(ILjava/nio/ByteBuffer;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr p1, v1

    invoke-interface {p2, p3, v0, p1, p4}, Lorg/jboss/netty/buffer/e;->V(I[BII)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p2, p3, p0, p1, p4}, Lorg/jboss/netty/buffer/e;->l0(ILorg/jboss/netty/buffer/e;II)V

    :goto_0
    return-void
.end method

.method public w0(ILjava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/d;->capacity()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, p1

    .line 3
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void

    .line 5
    :catch_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to read - Need "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maximum is "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
