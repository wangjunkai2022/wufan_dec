.class public abstract Lorg/jboss/netty/buffer/m;
.super Lorg/jboss/netty/buffer/a;
.source "HeapChannelBuffer.java"


# instance fields
.field protected final e:[B


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    .line 1
    new-array p1, p1, [B

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/jboss/netty/buffer/m;-><init>([BII)V

    return-void
.end method

.method protected constructor <init>([B)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/jboss/netty/buffer/m;-><init>([BII)V

    return-void
.end method

.method protected constructor <init>([BII)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/jboss/netty/buffer/a;-><init>()V

    const-string v0, "array"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lorg/jboss/netty/buffer/m;->e:[B

    .line 6
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/buffer/a;->r0(II)V

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->e:[B

    invoke-virtual {p2, v0, p1, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public G0(ILjava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->e:[B

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p2, v0, p1, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public R(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->e:[B

    invoke-static {v0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public T(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->e:[B

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void
.end method

.method public V(I[BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->e:[B

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public a(II)Lorg/jboss/netty/buffer/e;
    .locals 1

    if-nez p1, :cond_2

    if-nez p2, :cond_0

    .line 1
    sget-object p1, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p1

    .line 2
    :cond_0
    iget-object p1, p0, Lorg/jboss/netty/buffer/m;->e:[B

    array-length p1, p1

    if-ne p2, p1, :cond_1

    .line 3
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->duplicate()Lorg/jboss/netty/buffer/e;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0, p2}, Lorg/jboss/netty/buffer/e;->r0(II)V

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Lorg/jboss/netty/buffer/r;

    invoke-direct {p1, p0, p2}, Lorg/jboss/netty/buffer/r;-><init>(Lorg/jboss/netty/buffer/e;I)V

    return-object p1

    :cond_2
    if-nez p2, :cond_3

    .line 6
    sget-object p1, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p1

    .line 7
    :cond_3
    new-instance v0, Lorg/jboss/netty/buffer/q;

    invoke-direct {v0, p0, p1, p2}, Lorg/jboss/netty/buffer/q;-><init>(Lorg/jboss/netty/buffer/e;II)V

    return-object v0
.end method

.method public array()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->e:[B

    return-object v0
.end method

.method public arrayOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public capacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->e:[B

    array-length v0, v0

    return v0
.end method

.method public getByte(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->e:[B

    aget-byte p1, v0, p1

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->e:[B

    invoke-static {v0, p1, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public hasArray()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l0(ILorg/jboss/netty/buffer/e;II)V
    .locals 1

    .line 1
    instance-of v0, p2, Lorg/jboss/netty/buffer/m;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lorg/jboss/netty/buffer/m;

    iget-object p2, p2, Lorg/jboss/netty/buffer/m;->e:[B

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/m;->V(I[BII)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->e:[B

    invoke-interface {p2, p3, v0, p1, p4}, Lorg/jboss/netty/buffer/e;->p(I[BII)V

    :goto_0
    return-void
.end method

.method public p(I[BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->e:[B

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/buffer/m;->e:[B

    invoke-virtual {p2, v1, p1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_1

    if-nez v0, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_1
    add-int/2addr v0, v1

    add-int/2addr p1, v1

    sub-int/2addr p3, v1

    if-gtz p3, :cond_0

    :cond_2
    return v0
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->e:[B

    invoke-static {v0, p1, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    const/4 v1, -0x1

    .line 3
    :try_start_0
    invoke-interface {p2, p1}, Ljava/nio/channels/ScatteringByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, -0x1

    :goto_0
    if-gez v2, :cond_1

    if-nez v0, :cond_3

    return v1

    :cond_1
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v0, v2

    if-lt v0, p3, :cond_0

    :cond_3
    :goto_1
    return v0
.end method

.method public w(ILorg/jboss/netty/buffer/e;II)V
    .locals 1

    .line 1
    instance-of v0, p2, Lorg/jboss/netty/buffer/m;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lorg/jboss/netty/buffer/m;

    iget-object p2, p2, Lorg/jboss/netty/buffer/m;->e:[B

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/m;->p(I[BII)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->e:[B

    invoke-interface {p2, p3, v0, p1, p4}, Lorg/jboss/netty/buffer/e;->V(I[BII)V

    :goto_0
    return-void
.end method

.method public w0(ILjava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->e:[B

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/m;->capacity()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2, v0, p1, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method
