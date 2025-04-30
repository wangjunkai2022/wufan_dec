.class public Lorg/jboss/netty/buffer/r;
.super Lorg/jboss/netty/buffer/a;
.source "TruncatedChannelBuffer.java"

# interfaces
.implements Lorg/jboss/netty/buffer/s;


# instance fields
.field private final e:Lorg/jboss/netty/buffer/e;

.field private final f:I


# direct methods
.method public constructor <init>(Lorg/jboss/netty/buffer/e;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/buffer/a;-><init>()V

    .line 2
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 3
    iput-object p1, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    .line 4
    iput p2, p0, Lorg/jboss/netty/buffer/r;->f:I

    .line 5
    invoke-virtual {p0, p2}, Lorg/jboss/netty/buffer/a;->u0(I)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length is too large, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but can\'t go higher than "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private s(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/r;->capacity()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maximum is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/r;->capacity()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private x(II)V
    .locals 2

    if-ltz p2, :cond_1

    add-int/2addr p1, p2

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/r;->capacity()I

    move-result p2

    if-gt p1, p2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid index of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maximum is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/r;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "length is negative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public E(ILjava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/r;->x(II)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->E(ILjava/io/OutputStream;I)V

    return-void
.end method

.method public G0(ILjava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/r;->x(II)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->G0(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public M(II)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/buffer/r;->x(II)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->M(II)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    return-object p1
.end method

.method public R(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/buffer/r;->x(II)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->R(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public T(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/r;->s(I)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->T(II)V

    return-void
.end method

.method public V(I[BII)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/r;->x(II)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->V(I[BII)V

    return-void
.end method

.method public X(II)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/r;->x(II)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->X(II)V

    return-void
.end method

.method public a(II)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/buffer/r;->x(II)V

    if-nez p2, :cond_0

    .line 2
    sget-object p1, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->a(II)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    return-object p1
.end method

.method public array()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public arrayOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->arrayOffset()I

    move-result v0

    return v0
.end method

.method public capacity()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/r;->f:I

    return v0
.end method

.method public duplicate()Lorg/jboss/netty/buffer/e;
    .locals 3

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/r;

    iget-object v1, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    iget v2, p0, Lorg/jboss/netty/buffer/r;->f:I

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/buffer/r;-><init>(Lorg/jboss/netty/buffer/e;I)V

    .line 2
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->writerIndex()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/buffer/e;->r0(II)V

    return-object v0
.end method

.method public factory()Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->factory()Lorg/jboss/netty/buffer/f;

    move-result-object v0

    return-object v0
.end method

.method public getByte(I)B
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/r;->s(I)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getByte(I)B

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

    .line 1
    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/r;->x(II)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/r;->x(II)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/r;->x(II)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/r;->x(II)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getUnsignedMedium(I)I
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/r;->x(II)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getUnsignedMedium(I)I

    move-result p1

    return p1
.end method

.method public hasArray()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->hasArray()Z

    move-result v0

    return v0
.end method

.method public isDirect()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->isDirect()Z

    move-result v0

    return v0
.end method

.method public l0(ILorg/jboss/netty/buffer/e;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/r;->x(II)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->l0(ILorg/jboss/netty/buffer/e;II)V

    return-void
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public p(I[BII)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/r;->x(II)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->p(I[BII)V

    return-void
.end method

.method public q0(II)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/r;->x(II)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->q0(II)V

    return-void
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/r;->x(II)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->setBytes(ILjava/io/InputStream;I)I

    move-result p1

    return p1
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/r;->x(II)V

    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public setInt(II)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/r;->x(II)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->setInt(II)V

    return-void
.end method

.method public setLong(IJ)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/r;->x(II)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->setLong(IJ)V

    return-void
.end method

.method public w(ILorg/jboss/netty/buffer/e;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/r;->x(II)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->w(ILorg/jboss/netty/buffer/e;II)V

    return-void
.end method

.method public w0(ILjava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/r;->x(II)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->w0(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public y()Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->e:Lorg/jboss/netty/buffer/e;

    return-object v0
.end method
