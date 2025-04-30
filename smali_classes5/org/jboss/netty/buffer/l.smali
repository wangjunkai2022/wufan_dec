.class public Lorg/jboss/netty/buffer/l;
.super Lorg/jboss/netty/buffer/a;
.source "DynamicChannelBuffer.java"


# instance fields
.field private final e:Lorg/jboss/netty/buffer/f;

.field private final f:Ljava/nio/ByteOrder;

.field private g:Lorg/jboss/netty/buffer/e;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/buffer/l;-><init>(Ljava/nio/ByteOrder;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;I)V
    .locals 1

    .line 2
    invoke-static {p1}, Lorg/jboss/netty/buffer/n;->h(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/f;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/buffer/l;-><init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/f;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/jboss/netty/buffer/a;-><init>()V

    if-ltz p2, :cond_0

    const-string v0, "endianness"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "factory"

    .line 5
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lorg/jboss/netty/buffer/l;->e:Lorg/jboss/netty/buffer/f;

    .line 7
    iput-object p1, p0, Lorg/jboss/netty/buffer/l;->f:Ljava/nio/ByteOrder;

    .line 8
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/l;->order()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lorg/jboss/netty/buffer/f;->f(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    iput-object p1, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "estimatedLength: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public A0(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/l;->C0(I)V

    .line 2
    invoke-super {p0, p1}, Lorg/jboss/netty/buffer/a;->A0(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public C0(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->writableBytes()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/l;->capacity()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/l;->capacity()I

    move-result v0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->writerIndex()I

    move-result v1

    add-int/2addr v1, p1

    :goto_1
    if-ge v0, v1, :cond_3

    shl-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Maximum size of 2gb exceeded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_3
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/l;->factory()Lorg/jboss/netty/buffer/f;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/l;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lorg/jboss/netty/buffer/f;->f(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->writerIndex()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lorg/jboss/netty/buffer/e;->L(Lorg/jboss/netty/buffer/e;II)V

    .line 8
    iput-object p1, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    return-void
.end method

.method public E(ILjava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->E(ILjava/io/OutputStream;I)V

    return-void
.end method

.method public G0(ILjava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->G0(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public L(Lorg/jboss/netty/buffer/e;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lorg/jboss/netty/buffer/l;->C0(I)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/a;->L(Lorg/jboss/netty/buffer/e;II)V

    return-void
.end method

.method public M(II)Lorg/jboss/netty/buffer/e;
    .locals 4

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/l;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/l;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/l;->factory()Lorg/jboss/netty/buffer/f;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/buffer/l;-><init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/f;)V

    .line 2
    iget-object v1, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/buffer/e;->M(II)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    iput-object p1, v0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/buffer/a;->r0(II)V

    return-object v0
.end method

.method public R(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->R(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public T(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->T(II)V

    return-void
.end method

.method public V(I[BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->V(I[BII)V

    return-void
.end method

.method public X(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->X(II)V

    return-void
.end method

.method public Z([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lorg/jboss/netty/buffer/l;->C0(I)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/a;->Z([BII)V

    return-void
.end method

.method public a(II)Lorg/jboss/netty/buffer/e;
    .locals 1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    .line 1
    sget-object p1, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lorg/jboss/netty/buffer/r;

    invoke-direct {p1, p0, p2}, Lorg/jboss/netty/buffer/r;-><init>(Lorg/jboss/netty/buffer/e;I)V

    return-object p1

    :cond_1
    if-nez p2, :cond_2

    .line 3
    sget-object p1, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p1

    .line 4
    :cond_2
    new-instance v0, Lorg/jboss/netty/buffer/q;

    invoke-direct {v0, p0, p1, p2}, Lorg/jboss/netty/buffer/q;-><init>(Lorg/jboss/netty/buffer/e;II)V

    return-object v0
.end method

.method public array()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public arrayOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->arrayOffset()I

    move-result v0

    return v0
.end method

.method public capacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v0

    return v0
.end method

.method public duplicate()Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/k;

    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/k;-><init>(Lorg/jboss/netty/buffer/e;)V

    return-object v0
.end method

.method public factory()Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->e:Lorg/jboss/netty/buffer/f;

    return-object v0
.end method

.method public getByte(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getUnsignedMedium(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getUnsignedMedium(I)I

    move-result p1

    return p1
.end method

.method public h0(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/l;->C0(I)V

    .line 2
    invoke-super {p0, p1}, Lorg/jboss/netty/buffer/a;->h0(I)V

    return-void
.end method

.method public hasArray()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->hasArray()Z

    move-result v0

    return v0
.end method

.method public isDirect()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->isDirect()Z

    move-result v0

    return v0
.end method

.method public l0(ILorg/jboss/netty/buffer/e;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->l0(ILorg/jboss/netty/buffer/e;II)V

    return-void
.end method

.method public o0(I)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/l;->C0(I)V

    .line 2
    invoke-super {p0, p1}, Lorg/jboss/netty/buffer/a;->o0(I)V

    return-void
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->f:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public p(I[BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->p(I[BII)V

    return-void
.end method

.method public q0(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

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

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public setInt(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->setInt(II)V

    return-void
.end method

.method public setLong(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->setLong(IJ)V

    return-void
.end method

.method public w(ILorg/jboss/netty/buffer/e;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->w(ILorg/jboss/netty/buffer/e;II)V

    return-void
.end method

.method public w0(ILjava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->w0(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public writeByte(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/l;->C0(I)V

    .line 2
    invoke-super {p0, p1}, Lorg/jboss/netty/buffer/a;->writeByte(I)V

    return-void
.end method

.method public writeBytes(Ljava/io/InputStream;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lorg/jboss/netty/buffer/l;->C0(I)V

    .line 2
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/buffer/a;->writeBytes(Ljava/io/InputStream;I)I

    move-result p1

    return p1
.end method

.method public writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p2}, Lorg/jboss/netty/buffer/l;->C0(I)V

    .line 4
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/buffer/a;->writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public writeInt(I)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/l;->C0(I)V

    .line 2
    invoke-super {p0, p1}, Lorg/jboss/netty/buffer/a;->writeInt(I)V

    return-void
.end method

.method public writeLong(J)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/l;->C0(I)V

    .line 2
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/buffer/a;->writeLong(J)V

    return-void
.end method

.method public writeShort(I)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/l;->C0(I)V

    .line 2
    invoke-super {p0, p1}, Lorg/jboss/netty/buffer/a;->writeShort(I)V

    return-void
.end method
