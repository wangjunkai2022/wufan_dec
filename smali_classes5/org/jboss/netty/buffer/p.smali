.class public Lorg/jboss/netty/buffer/p;
.super Lorg/jboss/netty/buffer/a;
.source "ReadOnlyChannelBuffer.java"

# interfaces
.implements Lorg/jboss/netty/buffer/s;


# instance fields
.field private final e:Lorg/jboss/netty/buffer/e;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/buffer/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/buffer/a;-><init>()V

    const-string v0, "buffer"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lorg/jboss/netty/buffer/p;->e:Lorg/jboss/netty/buffer/e;

    .line 4
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    move-result v0

    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->writerIndex()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/a;->r0(II)V

    return-void
.end method

.method private constructor <init>(Lorg/jboss/netty/buffer/p;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lorg/jboss/netty/buffer/a;-><init>()V

    .line 6
    iget-object v0, p1, Lorg/jboss/netty/buffer/p;->e:Lorg/jboss/netty/buffer/e;

    iput-object v0, p0, Lorg/jboss/netty/buffer/p;->e:Lorg/jboss/netty/buffer/e;

    .line 7
    invoke-virtual {p1}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/jboss/netty/buffer/a;->writerIndex()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/a;->r0(II)V

    return-void
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
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->E(ILjava/io/OutputStream;I)V

    return-void
.end method

.method public G0(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public M(II)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->M(II)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    return-object p1
.end method

.method public R(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->R(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public T(II)V
    .locals 0

    .line 1
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public V(I[BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->V(I[BII)V

    return-void
.end method

.method public W(II)[Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->W(II)[Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 3
    aget-object v0, p1, p2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public X(II)V
    .locals 0

    .line 1
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public a(II)Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/p;

    iget-object v1, p0, Lorg/jboss/netty/buffer/p;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/buffer/e;->a(II)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jboss/netty/buffer/p;-><init>(Lorg/jboss/netty/buffer/e;)V

    return-object v0
.end method

.method public array()[B
    .locals 1

    .line 1
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public arrayOffset()I
    .locals 1

    .line 1
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public capacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v0

    return v0
.end method

.method public duplicate()Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/p;

    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/p;-><init>(Lorg/jboss/netty/buffer/p;)V

    return-object v0
.end method

.method public f()V
    .locals 1

    .line 1
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public factory()Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->factory()Lorg/jboss/netty/buffer/f;

    move-result-object v0

    return-object v0
.end method

.method public getByte(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->e:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getUnsignedMedium(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getUnsignedMedium(I)I

    move-result p1

    return p1
.end method

.method public hasArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDirect()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->isDirect()Z

    move-result v0

    return v0
.end method

.method public l0(ILorg/jboss/netty/buffer/e;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->l0(ILorg/jboss/netty/buffer/e;II)V

    return-void
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public p(I[BII)V
    .locals 0

    .line 1
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public q0(II)V
    .locals 0

    .line 1
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public setInt(II)V
    .locals 0

    .line 1
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public setLong(IJ)V
    .locals 0

    .line 1
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public w(ILorg/jboss/netty/buffer/e;II)V
    .locals 0

    .line 1
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public w0(ILjava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->w0(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public y()Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->e:Lorg/jboss/netty/buffer/e;

    return-object v0
.end method
