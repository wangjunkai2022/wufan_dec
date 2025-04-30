.class public abstract Lorg/jboss/netty/buffer/a;
.super Ljava/lang/Object;
.source "AbstractChannelBuffer.java"

# interfaces
.implements Lorg/jboss/netty/buffer/e;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A0(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2
    iget v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    invoke-interface {p0, v1, p1}, Lorg/jboss/netty/buffer/e;->G0(ILjava/nio/ByteBuffer;)V

    .line 3
    iget p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    return-void
.end method

.method public B([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/jboss/netty/buffer/a;->Z([BII)V

    return-void
.end method

.method public B0(Lorg/jboss/netty/buffer/e;I)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->writableBytes()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 2
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->writerIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/jboss/netty/buffer/a;->p0(Lorg/jboss/netty/buffer/e;II)V

    .line 3
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->writerIndex()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/e;->u0(I)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to be read: Need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", maximum is "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->writableBytes()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public C()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->writableBytes()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writable bytes exceeded: Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maximum is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->writableBytes()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public D(ILorg/jboss/netty/buffer/e;I)V
    .locals 2

    .line 1
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    move-result v0

    if-gt p3, v0, :cond_0

    .line 2
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    move-result v0

    invoke-interface {p0, p1, p2, v0, p3}, Lorg/jboss/netty/buffer/e;->w(ILorg/jboss/netty/buffer/e;II)V

    .line 3
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    move-result p1

    add-int/2addr p1, p3

    invoke-interface {p2, p1}, Lorg/jboss/netty/buffer/e;->O(I)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many bytes to write: Need "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", maximum is "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public D0(II)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_5

    ushr-int/lit8 v0, p2, 0x3

    and-int/lit8 p2, p2, 0x7

    :goto_0
    if-lez v0, :cond_1

    const-wide/16 v1, 0x0

    .line 1
    invoke-interface {p0, p1, v1, v2}, Lorg/jboss/netty/buffer/e;->setLong(IJ)V

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 2
    invoke-interface {p0, p1, v0}, Lorg/jboss/netty/buffer/e;->setInt(II)V

    goto :goto_3

    :cond_2
    if-ge p2, v1, :cond_3

    :goto_1
    if-lez p2, :cond_4

    .line 3
    invoke-interface {p0, p1, v0}, Lorg/jboss/netty/buffer/e;->T(II)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 4
    :cond_3
    invoke-interface {p0, p1, v0}, Lorg/jboss/netty/buffer/e;->setInt(II)V

    add-int/2addr p1, v1

    sub-int/2addr p2, v1

    :goto_2
    if-lez p2, :cond_4

    .line 5
    invoke-interface {p0, p1, v0}, Lorg/jboss/netty/buffer/e;->T(II)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length must be 0 or greater than 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public E0(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lorg/jboss/netty/buffer/a;->m(I)V

    .line 2
    iget v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    invoke-interface {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/e;->E(ILjava/io/OutputStream;I)V

    .line 3
    iget p1, p0, Lorg/jboss/netty/buffer/a;->a:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/jboss/netty/buffer/a;->a:I

    return-void
.end method

.method public F(ILorg/jboss/netty/buffer/e;I)V
    .locals 2

    .line 1
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->writableBytes()I

    move-result v0

    if-gt p3, v0, :cond_0

    .line 2
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->writerIndex()I

    move-result v0

    invoke-interface {p0, p1, p2, v0, p3}, Lorg/jboss/netty/buffer/e;->l0(ILorg/jboss/netty/buffer/e;II)V

    .line 3
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->writerIndex()I

    move-result p1

    add-int/2addr p1, p3

    invoke-interface {p2, p1}, Lorg/jboss/netty/buffer/e;->u0(I)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many bytes to be read: Need "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", maximum is "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->writableBytes()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public F0()[Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/a;->W(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public G(IILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/a;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public H(IILorg/jboss/netty/buffer/g;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/h;->R(Lorg/jboss/netty/buffer/e;IILorg/jboss/netty/buffer/g;)I

    move-result p1

    return p1
.end method

.method public H0()Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readableBytes()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lorg/jboss/netty/buffer/e;->a(II)Lorg/jboss/netty/buffer/e;

    move-result-object v0

    return-object v0
.end method

.method public I(Lorg/jboss/netty/buffer/e;I)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 2
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/jboss/netty/buffer/a;->L(Lorg/jboss/netty/buffer/e;II)V

    .line 3
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/e;->O(I)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to write - Need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", maximum is "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public I0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readableBytes()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->d:I

    iput v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    return-void
.end method

.method public J0(Lorg/jboss/netty/buffer/g;)Lorg/jboss/netty/buffer/e;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    iget v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/a;->H(IILorg/jboss/netty/buffer/g;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    iget v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/a;->N(I)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method public K(IILjava/lang/String;Lorg/jboss/netty/buffer/g;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p4, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/a;->G(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int v0, p1, p2

    .line 2
    invoke-virtual {p0, p1, v0, p4}, Lorg/jboss/netty/buffer/a;->H(IILorg/jboss/netty/buffer/g;)I

    move-result p4

    if-gez p4, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/a;->G(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    sub-int/2addr p4, p1

    .line 4
    invoke-virtual {p0, p1, p4, p3}, Lorg/jboss/netty/buffer/a;->G(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public K0(Lorg/jboss/netty/buffer/g;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    .line 2
    iget v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/a;->H(IILorg/jboss/netty/buffer/g;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/a;->O(I)V

    sub-int/2addr p1, v0

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method public L(Lorg/jboss/netty/buffer/e;II)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    invoke-interface {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->w(ILorg/jboss/netty/buffer/e;II)V

    .line 2
    iget p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    return-void
.end method

.method public N(I)Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    invoke-interface {p0, v0, p1}, Lorg/jboss/netty/buffer/e;->a(II)Lorg/jboss/netty/buffer/e;

    move-result-object v0

    .line 2
    iget v1, p0, Lorg/jboss/netty/buffer/a;->a:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jboss/netty/buffer/a;->a:I

    return-object v0
.end method

.method public O(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    if-gt p1, v0, :cond_0

    .line 2
    iput p1, p0, Lorg/jboss/netty/buffer/a;->a:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public P(IILorg/jboss/netty/buffer/g;)I
    .locals 0

    add-int/2addr p2, p1

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/a;->H(IILorg/jboss/netty/buffer/g;)I

    move-result p2

    if-gez p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sub-int/2addr p2, p1

    return p2
.end method

.method public S(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/a;->m(I)V

    .line 3
    iget v1, p0, Lorg/jboss/netty/buffer/a;->a:I

    invoke-interface {p0, v1, p1}, Lorg/jboss/netty/buffer/e;->w0(ILjava/nio/ByteBuffer;)V

    .line 4
    iget p1, p0, Lorg/jboss/netty/buffer/a;->a:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/jboss/netty/buffer/a;->a:I

    return-void
.end method

.method public W(II)[Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    .line 1
    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/buffer/e;->R(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    return-object v0
.end method

.method public Z([BII)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    invoke-interface {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->p(I[BII)V

    .line 2
    iget p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    return-void
.end method

.method public b0(Lorg/jboss/netty/buffer/g;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/a;->P(IILorg/jboss/netty/buffer/g;)I

    move-result p1

    return p1
.end method

.method public bytesBefore(B)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/a;->bytesBefore(IIB)I

    move-result p1

    return p1
.end method

.method public bytesBefore(IB)I
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/a;->m(I)V

    .line 3
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/a;->bytesBefore(IIB)I

    move-result p1

    return p1
.end method

.method public bytesBefore(IIB)I
    .locals 0

    add-int/2addr p2, p1

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/a;->indexOf(IIB)I

    move-result p2

    if-gez p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sub-int/2addr p2, p1

    return p2
.end method

.method public c(II)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/buffer/e;->q0(II)V

    return-void
.end method

.method public c0()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readableBytes()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lorg/jboss/netty/buffer/e;->R(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    iput v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/jboss/netty/buffer/e;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/a;->d0(Lorg/jboss/netty/buffer/e;)I

    move-result p1

    return p1
.end method

.method public copy()Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readableBytes()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lorg/jboss/netty/buffer/e;->M(II)Lorg/jboss/netty/buffer/e;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lorg/jboss/netty/buffer/e;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/h;->c(Lorg/jboss/netty/buffer/e;Lorg/jboss/netty/buffer/e;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/jboss/netty/buffer/e;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Lorg/jboss/netty/buffer/e;

    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/h;->J(Lorg/jboss/netty/buffer/e;Lorg/jboss/netty/buffer/e;)Z

    move-result p1

    return p1
.end method

.method public f()V
    .locals 3

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-interface {p0, v2, p0, v0, v1}, Lorg/jboss/netty/buffer/e;->w(ILorg/jboss/netty/buffer/e;II)V

    .line 3
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    iget v1, p0, Lorg/jboss/netty/buffer/a;->a:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 4
    iget v0, p0, Lorg/jboss/netty/buffer/a;->c:I

    sub-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 5
    iget v0, p0, Lorg/jboss/netty/buffer/a;->d:I

    iget v1, p0, Lorg/jboss/netty/buffer/a;->a:I

    sub-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/buffer/a;->d:I

    .line 6
    iput v2, p0, Lorg/jboss/netty/buffer/a;->a:I

    return-void
.end method

.method public f0(ILorg/jboss/netty/buffer/g;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/a;->m(I)V

    .line 2
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/a;->P(IILorg/jboss/netty/buffer/g;)I

    move-result p1

    return p1
.end method

.method public g0()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    iput v0, p0, Lorg/jboss/netty/buffer/a;->c:I

    return-void
.end method

.method public getChar(I)C
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/e;->getShort(I)S

    move-result p1

    int-to-char p1, p1

    return p1
.end method

.method public getDouble(I)D
    .locals 2

    .line 1
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/e;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/e;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public getMedium(I)I
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/e;->getUnsignedMedium(I)I

    move-result p1

    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method public getUnsignedByte(I)S
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/e;->getByte(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    return p1
.end method

.method public getUnsignedInt(I)J
    .locals 4

    .line 1
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/e;->getInt(I)I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getUnsignedShort(I)I
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/e;->getShort(I)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public h0(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_5

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    :goto_0
    if-lez v0, :cond_1

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v1, v2}, Lorg/jboss/netty/buffer/a;->writeLong(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 2
    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/a;->writeInt(I)V

    goto :goto_3

    :cond_2
    if-ge p1, v0, :cond_3

    :goto_1
    if-lez p1, :cond_4

    .line 3
    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/a;->writeByte(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 4
    :cond_3
    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/a;->writeInt(I)V

    sub-int/2addr p1, v0

    :goto_2
    if-lez p1, :cond_4

    .line 5
    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/a;->writeByte(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "length must be 0 or greater than 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/jboss/netty/buffer/h;->M(Lorg/jboss/netty/buffer/e;)I

    move-result v0

    return v0
.end method

.method public i0(I[B)V
    .locals 2

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    invoke-interface {p0, p1, p2, v1, v0}, Lorg/jboss/netty/buffer/e;->p(I[BII)V

    return-void
.end method

.method public indexOf(IIB)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/h;->Q(Lorg/jboss/netty/buffer/e;IIB)I

    move-result p1

    return p1
.end method

.method public j(Ljava/lang/String;Lorg/jboss/netty/buffer/g;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/jboss/netty/buffer/a;->K(IILjava/lang/String;Lorg/jboss/netty/buffer/g;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j0(ILorg/jboss/netty/buffer/e;)V
    .locals 1

    .line 1
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jboss/netty/buffer/a;->D(ILorg/jboss/netty/buffer/e;I)V

    return-void
.end method

.method public l(Lorg/jboss/netty/buffer/g;)Lorg/jboss/netty/buffer/e;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    iget v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/a;->H(IILorg/jboss/netty/buffer/g;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    iget v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/a;->o(I)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method protected m(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readableBytes()I

    move-result v0

    if-lt v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough readable bytes - Need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maximum is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readableBytes()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n(I[B)V
    .locals 2

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    invoke-interface {p0, p1, p2, v1, v0}, Lorg/jboss/netty/buffer/e;->V(I[BII)V

    return-void
.end method

.method public n0()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->c:I

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/a;->O(I)V

    return-void
.end method

.method public o(I)Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/a;->m(I)V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->factory()Lorg/jboss/netty/buffer/f;

    move-result-object v0

    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/jboss/netty/buffer/f;->f(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    move-result-object v0

    .line 4
    iget v1, p0, Lorg/jboss/netty/buffer/a;->a:I

    invoke-interface {v0, p0, v1, p1}, Lorg/jboss/netty/buffer/e;->L(Lorg/jboss/netty/buffer/e;II)V

    .line 5
    iget v1, p0, Lorg/jboss/netty/buffer/a;->a:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jboss/netty/buffer/a;->a:I

    return-object v0
.end method

.method public o0(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    invoke-interface {p0, v0, p1}, Lorg/jboss/netty/buffer/e;->X(II)V

    .line 2
    iget p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    return-void
.end method

.method public p0(Lorg/jboss/netty/buffer/e;II)V
    .locals 1

    .line 1
    invoke-virtual {p0, p3}, Lorg/jboss/netty/buffer/a;->m(I)V

    .line 2
    iget v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    invoke-interface {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->l0(ILorg/jboss/netty/buffer/e;II)V

    .line 3
    iget p1, p0, Lorg/jboss/netty/buffer/a;->a:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/jboss/netty/buffer/a;->a:I

    return-void
.end method

.method public q(Lorg/jboss/netty/buffer/e;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/a;->I(Lorg/jboss/netty/buffer/e;I)V

    return-void
.end method

.method public r0(II)V
    .locals 3

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 2
    iput p1, p0, Lorg/jboss/netty/buffer/a;->a:I

    .line 3
    iput p2, p0, Lorg/jboss/netty/buffer/a;->b:I

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid writerIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " - Maximum is "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByte()B
    .locals 3

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    iget v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 2
    iput v1, p0, Lorg/jboss/netty/buffer/a;->a:I

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/e;->getByte(I)B

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Readable byte limit exceeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/jboss/netty/buffer/a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lorg/jboss/netty/buffer/a;->m(I)V

    .line 2
    iget v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    invoke-interface {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/e;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result p1

    .line 3
    iget p2, p0, Lorg/jboss/netty/buffer/a;->a:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/jboss/netty/buffer/a;->a:I

    return p1
.end method

.method public readChar()C
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 3

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/a;->m(I)V

    .line 2
    iget v1, p0, Lorg/jboss/netty/buffer/a;->a:I

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/e;->getInt(I)I

    move-result v1

    .line 3
    iget v2, p0, Lorg/jboss/netty/buffer/a;->a:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/jboss/netty/buffer/a;->a:I

    return v1
.end method

.method public readLong()J
    .locals 4

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/a;->m(I)V

    .line 2
    iget v1, p0, Lorg/jboss/netty/buffer/a;->a:I

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/e;->getLong(I)J

    move-result-wide v1

    .line 3
    iget v3, p0, Lorg/jboss/netty/buffer/a;->a:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/jboss/netty/buffer/a;->a:I

    return-wide v1
.end method

.method public readMedium()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readUnsignedMedium()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public readShort()S
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/a;->m(I)V

    .line 2
    iget v1, p0, Lorg/jboss/netty/buffer/a;->a:I

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/e;->getShort(I)S

    move-result v1

    .line 3
    iget v2, p0, Lorg/jboss/netty/buffer/a;->a:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/jboss/netty/buffer/a;->a:I

    return v1
.end method

.method public readUnsignedByte()S
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public readUnsignedInt()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedMedium()I
    .locals 3

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/a;->m(I)V

    .line 2
    iget v1, p0, Lorg/jboss/netty/buffer/a;->a:I

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/e;->getUnsignedMedium(I)I

    move-result v1

    .line 3
    iget v2, p0, Lorg/jboss/netty/buffer/a;->a:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/jboss/netty/buffer/a;->a:I

    return v1
.end method

.method public readUnsignedShort()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public readableBytes()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    iget v1, p0, Lorg/jboss/netty/buffer/a;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readerIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    return v0
.end method

.method public s0([BII)V
    .locals 1

    .line 1
    invoke-virtual {p0, p3}, Lorg/jboss/netty/buffer/a;->m(I)V

    .line 2
    iget v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    invoke-interface {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->V(I[BII)V

    .line 3
    iget p1, p0, Lorg/jboss/netty/buffer/a;->a:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/jboss/netty/buffer/a;->a:I

    return-void
.end method

.method public setDouble(ID)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->setLong(IJ)V

    return-void
.end method

.method public setFloat(IF)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/buffer/e;->setInt(II)V

    return-void
.end method

.method public skipBytes(I)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    add-int/2addr v0, p1

    .line 2
    iget p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    if-gt v0, p1, :cond_0

    .line 3
    iput v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Readable bytes exceeded - Need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", maximum is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "ridx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jboss/netty/buffer/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "widx="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/jboss/netty/buffer/a;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    const-string p1, ""

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/buffer/e;->R(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/jboss/netty/buffer/h;->z(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/a;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public u([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/jboss/netty/buffer/a;->s0([BII)V

    return-void
.end method

.method public u0(I)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->a:I

    if-lt p1, v0, :cond_0

    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 2
    iput p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid readerIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/jboss/netty/buffer/a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - Maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public v(Lorg/jboss/netty/buffer/e;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->writableBytes()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/a;->B0(Lorg/jboss/netty/buffer/e;I)V

    return-void
.end method

.method public writableBytes()I
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public writeByte(I)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    invoke-interface {p0, v0, p1}, Lorg/jboss/netty/buffer/e;->T(II)V

    return-void
.end method

.method public writeBytes(Ljava/io/InputStream;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    invoke-interface {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/e;->setBytes(ILjava/io/InputStream;I)I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget p2, p0, Lorg/jboss/netty/buffer/a;->b:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/jboss/netty/buffer/a;->b:I

    :cond_0
    return p1
.end method

.method public writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    invoke-interface {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/e;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    iget p2, p0, Lorg/jboss/netty/buffer/a;->b:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/jboss/netty/buffer/a;->b:I

    :cond_0
    return p1
.end method

.method public writeChar(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/a;->writeShort(I)V

    return-void
.end method

.method public writeDouble(D)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/a;->writeLong(J)V

    return-void
.end method

.method public writeFloat(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/a;->writeInt(I)V

    return-void
.end method

.method public writeInt(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    invoke-interface {p0, v0, p1}, Lorg/jboss/netty/buffer/e;->setInt(II)V

    .line 2
    iget p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    return-void
.end method

.method public writeLong(J)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    invoke-interface {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/e;->setLong(IJ)V

    .line 2
    iget p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    return-void
.end method

.method public writeShort(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    invoke-interface {p0, v0, p1}, Lorg/jboss/netty/buffer/e;->q0(II)V

    .line 2
    iget p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    return-void
.end method

.method public writerIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    return v0
.end method

.method public x0()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    iput v0, p0, Lorg/jboss/netty/buffer/a;->d:I

    return-void
.end method

.method public z(ILorg/jboss/netty/buffer/e;)V
    .locals 1

    .line 1
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->writableBytes()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jboss/netty/buffer/a;->F(ILorg/jboss/netty/buffer/e;I)V

    return-void
.end method

.method public z0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/a;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
