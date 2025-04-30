.class public Lorg/jboss/netty/buffer/i;
.super Lorg/jboss/netty/buffer/a;
.source "CompositeChannelBuffer.java"


# static fields
.field static final synthetic j:Z


# instance fields
.field private final e:Ljava/nio/ByteOrder;

.field private f:[Lorg/jboss/netty/buffer/e;

.field private g:[I

.field private h:I

.field private final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/jboss/netty/buffer/i;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteOrder;",
            "Ljava/util/List<",
            "Lorg/jboss/netty/buffer/e;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/buffer/a;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/jboss/netty/buffer/i;->e:Ljava/nio/ByteOrder;

    .line 3
    iput-boolean p3, p0, Lorg/jboss/netty/buffer/i;->i:Z

    .line 4
    invoke-direct {p0, p2}, Lorg/jboss/netty/buffer/i;->a0(Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Lorg/jboss/netty/buffer/i;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lorg/jboss/netty/buffer/a;-><init>()V

    .line 6
    iget-object v0, p1, Lorg/jboss/netty/buffer/i;->e:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lorg/jboss/netty/buffer/i;->e:Ljava/nio/ByteOrder;

    .line 7
    iget-boolean v0, p1, Lorg/jboss/netty/buffer/i;->i:Z

    iput-boolean v0, p0, Lorg/jboss/netty/buffer/i;->i:Z

    .line 8
    iget-object v0, p1, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    invoke-virtual {v0}, [Lorg/jboss/netty/buffer/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/buffer/e;

    iput-object v0, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    .line 9
    iget-object v0, p1, Lorg/jboss/netty/buffer/i;->g:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lorg/jboss/netty/buffer/i;->g:[I

    .line 10
    invoke-virtual {p1}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/jboss/netty/buffer/a;->writerIndex()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/a;->r0(II)V

    return-void
.end method

.method private a0(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jboss/netty/buffer/e;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/jboss/netty/buffer/i;->h:I

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jboss/netty/buffer/e;

    iput-object v1, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/buffer/e;

    .line 5
    invoke-interface {v2}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 6
    iget-object v3, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "All buffers must have the same endianness."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    array-length p1, v2

    const/4 v1, 0x1

    add-int/2addr p1, v1

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/jboss/netty/buffer/i;->g:[I

    .line 9
    aput v0, p1, v0

    .line 10
    :goto_1
    iget-object p1, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    array-length v2, p1

    if-gt v1, v2, :cond_2

    .line 11
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[I

    add-int/lit8 v3, v1, -0x1

    aget v4, v2, v3

    aget-object p1, p1, v3

    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result p1

    add-int/2addr v4, p1

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/a;->r0(II)V

    return-void
.end method

.method private s(I)I
    .locals 3

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/i;->h:I

    .line 2
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->g:[I

    aget v2, v1, v0

    if-lt p1, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    .line 3
    aget v1, v1, v2

    if-ge p1, v1, :cond_0

    return v0

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    array-length v0, v0

    if-ge v2, v0, :cond_4

    .line 5
    iget-object v0, p0, Lorg/jboss/netty/buffer/i;->g:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v1

    if-ge p1, v0, :cond_1

    .line 6
    iput v2, p0, Lorg/jboss/netty/buffer/i;->h:I

    return v2

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    .line 7
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->g:[I

    aget v1, v1, v0

    if-lt p1, v1, :cond_3

    .line 8
    iput v0, p0, Lorg/jboss/netty/buffer/i;->h:I

    return v0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 9
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maximum: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jboss/netty/buffer/i;->g:[I

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private x(IIILorg/jboss/netty/buffer/e;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-lez p2, :cond_0

    .line 1
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object v1, v1, p3

    .line 2
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[I

    aget v2, v2, p3

    .line 3
    invoke-interface {v1}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v3

    sub-int v2, p1, v2

    sub-int/2addr v3, v2

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4
    invoke-interface {v1, v2, p4, v0, v3}, Lorg/jboss/netty/buffer/e;->l0(ILorg/jboss/netty/buffer/e;II)V

    add-int/2addr p1, v3

    add-int/2addr v0, v3

    sub-int/2addr p2, v3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p4}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result p1

    invoke-interface {p4, p1}, Lorg/jboss/netty/buffer/e;->u0(I)V

    return-void
.end method


# virtual methods
.method public A(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lorg/jboss/netty/buffer/e;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    add-int v0, p1, p2

    .line 2
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 3
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/jboss/netty/buffer/e;->duplicate()Lorg/jboss/netty/buffer/e;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lorg/jboss/netty/buffer/i;->g:[I

    aget v3, v3, v0

    sub-int/2addr p1, v3

    invoke-interface {v2, p1}, Lorg/jboss/netty/buffer/e;->O(I)V

    .line 7
    :cond_1
    invoke-interface {v2}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    move-result p1

    if-gt p2, p1, :cond_2

    .line 8
    invoke-interface {v2}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    move-result p1

    add-int/2addr p1, p2

    invoke-interface {v2, p1}, Lorg/jboss/netty/buffer/e;->u0(I)V

    .line 9
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr p2, p1

    add-int/lit8 v0, v0, 0x1

    .line 11
    iget-object p1, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object p1, p1, v0

    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->duplicate()Lorg/jboss/netty/buffer/e;

    move-result-object v2

    if-gtz p2, :cond_1

    :goto_0
    const/4 p1, 0x0

    .line 12
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 13
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jboss/netty/buffer/e;

    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->H0()Lorg/jboss/netty/buffer/e;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-object v1

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many bytes to decompose - Need "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", capacity is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public E(ILjava/io/OutputStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result v0

    sub-int/2addr v0, p3

    if-gt p1, v0, :cond_3

    if-ltz p1, :cond_2

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result v0

    :goto_0
    if-lez p3, :cond_1

    .line 3
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object v1, v1, v0

    .line 4
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[I

    aget v2, v2, v0

    .line 5
    invoke-interface {v1}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v3

    sub-int v2, p1, v2

    sub-int/2addr v3, v2

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 6
    invoke-interface {v1, v2, p2, v3}, Lorg/jboss/netty/buffer/e;->E(ILjava/io/OutputStream;I)V

    add-int/2addr p1, v3

    sub-int/2addr p3, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Index must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many bytes to be read - needs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maximum of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public G0(ILjava/nio/ByteBuffer;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result v0

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result v3

    sub-int/2addr v3, v2

    if-gt p1, v3, :cond_1

    :goto_0
    if-lez v2, :cond_0

    .line 5
    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object v3, v3, v0

    .line 6
    iget-object v4, p0, Lorg/jboss/netty/buffer/i;->g:[I

    aget v4, v4, v0

    .line 7
    invoke-interface {v3}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v5

    sub-int v4, p1, v4

    sub-int/2addr v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 8
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 9
    invoke-interface {v3, v4, p2}, Lorg/jboss/netty/buffer/e;->G0(ILjava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr p1, v5

    sub-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw p1

    :cond_0
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void

    .line 11
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many bytes to be written - Needs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maximum is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public M(II)Lorg/jboss/netty/buffer/e;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result v1

    sub-int/2addr v1, p2

    if-gt p1, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->factory()Lorg/jboss/netty/buffer/f;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lorg/jboss/netty/buffer/f;->f(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    move-result-object v1

    .line 4
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jboss/netty/buffer/i;->x(IIILorg/jboss/netty/buffer/e;)V

    return-object v1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to copy - Needs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maximum is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public R(II)Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 2
    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->R(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/i;->W(II)[Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 4
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 5
    array-length v0, p1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v1, p1, v2

    .line 6
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p2
.end method

.method public T(II)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[I

    aget v0, v2, v0

    sub-int/2addr p1, v0

    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/buffer/e;->T(II)V

    return-void
.end method

.method public U(I)Lorg/jboss/netty/buffer/e;
    .locals 3

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - Bytes needed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maximum is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public V(I[BII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_3

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_3

    if-ltz p1, :cond_2

    if-nez p4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result v0

    :goto_0
    if-lez p4, :cond_1

    .line 3
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object v1, v1, v0

    .line 4
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[I

    aget v2, v2, v0

    .line 5
    invoke-interface {v1}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v3

    sub-int v2, p1, v2

    sub-int/2addr v3, v2

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 6
    invoke-interface {v1, v2, p2, p3, v3}, Lorg/jboss/netty/buffer/e;->V(I[BII)V

    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Index must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many bytes to read - Needs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maximum is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p3

    :goto_2
    goto :goto_1
.end method

.method public W(II)[Ljava/nio/ByteBuffer;
    .locals 5

    add-int v0, p1, p2

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result v1

    if-gt v0, v1, :cond_3

    if-ltz p1, :cond_2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/nio/ByteBuffer;

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result v1

    :goto_0
    if-lez p2, :cond_1

    .line 4
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object v2, v2, v1

    .line 5
    iget-object v3, p0, Lorg/jboss/netty/buffer/i;->g:[I

    aget v3, v3, v1

    .line 6
    invoke-interface {v2}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v4

    sub-int v3, p1, v3

    sub-int/2addr v4, v3

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 7
    invoke-interface {v2, v3, v4}, Lorg/jboss/netty/buffer/e;->R(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr p1, v4

    sub-int/2addr p2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/nio/ByteBuffer;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/ByteBuffer;

    return-object p1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Index must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many bytes to convert - Needs"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", maximum is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public X(II)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x3

    .line 2
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[I

    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    if-gt v1, v3, :cond_0

    .line 3
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object v1, v1, v0

    aget v0, v2, v0

    sub-int/2addr p1, v0

    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/buffer/e;->X(II)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    shr-int/lit8 v0, p2, 0x8

    int-to-short v0, v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/i;->q0(II)V

    add-int/lit8 p1, p1, 0x2

    int-to-byte p2, p2

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/i;->T(II)V

    goto :goto_0

    :cond_1
    int-to-short v0, p2

    .line 7
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/i;->q0(II)V

    add-int/lit8 p1, p1, 0x2

    ushr-int/lit8 p2, p2, 0x10

    int-to-byte p2, p2

    .line 8
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/i;->T(II)V

    :goto_0
    return-void
.end method

.method public Y()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    array-length v0, v0

    return v0
.end method

.method public a(II)Lorg/jboss/netty/buffer/e;
    .locals 3

    if-nez p1, :cond_0

    if-nez p2, :cond_1

    .line 1
    sget-object p1, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p1

    :cond_0
    if-ltz p1, :cond_4

    .line 2
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result v0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_4

    if-nez p2, :cond_1

    .line 3
    sget-object p1, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/i;->A(II)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    .line 6
    new-instance p2, Lorg/jboss/netty/buffer/i;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jboss/netty/buffer/i;->i:Z

    invoke-direct {p2, v0, p1, v1}, Lorg/jboss/netty/buffer/i;-><init>(Ljava/nio/ByteOrder;Ljava/util/List;Z)V

    return-object p2

    :cond_2
    const/4 p2, 0x0

    .line 7
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jboss/netty/buffer/e;

    return-object p1

    .line 8
    :cond_3
    sget-object p1, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p1

    .line 9
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - Bytes needed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maximum is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public array()[B
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public arrayOffset()I
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public capacity()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/i;->g:[I

    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    array-length v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public duplicate()Lorg/jboss/netty/buffer/e;
    .locals 3

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/i;

    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/i;-><init>(Lorg/jboss/netty/buffer/i;)V

    .line 2
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->writerIndex()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/buffer/e;->r0(II)V

    return-object v0
.end method

.method public e0()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/jboss/netty/buffer/i;->i:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/jboss/netty/util/internal/d;->e()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->writerIndex()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result v2

    sub-int/2addr v2, v0

    .line 4
    invoke-virtual {p0, v0, v2}, Lorg/jboss/netty/buffer/i;->A(II)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/jboss/netty/buffer/h;->b(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    move-result-object v3

    .line 8
    invoke-interface {v3, v0}, Lorg/jboss/netty/buffer/e;->u0(I)V

    .line 9
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->n0()V

    .line 11
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v3, v0

    .line 12
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->J()V

    .line 13
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->writerIndex()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move v4, v1

    .line 14
    :goto_1
    invoke-direct {p0, v2}, Lorg/jboss/netty/buffer/i;->a0(Ljava/util/List;)V

    sub-int/2addr v3, v0

    const/4 v2, 0x0

    .line 15
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v4, v0

    .line 16
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 17
    invoke-virtual {p0, v3, v4}, Lorg/jboss/netty/buffer/a;->r0(II)V

    .line 18
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->g0()V

    .line 19
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->x0()V

    sub-int/2addr v1, v0

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 21
    invoke-virtual {p0, v2, v0}, Lorg/jboss/netty/buffer/a;->r0(II)V

    return-void
.end method

.method public factory()Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/n;->h(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/f;

    move-result-object v0

    return-object v0
.end method

.method public getByte(I)B
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[I

    aget v0, v2, v0

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Lorg/jboss/netty/buffer/e;->getByte(I)B

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
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p3}, Lorg/jboss/netty/buffer/i;->W(II)[Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide p1

    long-to-int p2, p1

    return p2

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p3}, Lorg/jboss/netty/buffer/i;->R(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    .line 2
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[I

    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    if-gt v1, v3, :cond_0

    .line 3
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object v1, v1, v0

    aget v0, v2, v0

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Lorg/jboss/netty/buffer/e;->getInt(I)I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v2, 0xffff

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getShort(I)S

    move-result v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getShort(I)S

    move-result p1

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    return p1

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getShort(I)S

    move-result v0

    and-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getShort(I)S

    move-result p1

    and-int/2addr p1, v2

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    return p1
.end method

.method public getLong(I)J
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x8

    .line 2
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[I

    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    if-gt v1, v3, :cond_0

    .line 3
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object v1, v1, v0

    aget v0, v2, v0

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Lorg/jboss/netty/buffer/e;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v2, 0x20

    const-wide v3, 0xffffffffL

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v3

    shl-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getInt(I)I

    move-result p1

    int-to-long v5, p1

    and-long/2addr v3, v5

    or-long/2addr v0, v3

    return-wide v0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v3

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getInt(I)I

    move-result p1

    int-to-long v5, p1

    and-long/2addr v3, v5

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getShort(I)S
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x2

    .line 2
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[I

    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    if-gt v1, v3, :cond_0

    .line 3
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object v1, v1, v0

    aget v0, v2, v0

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Lorg/jboss/netty/buffer/e;->getShort(I)S

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getByte(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getByte(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1
.end method

.method public getUnsignedMedium(I)I
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x3

    .line 2
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[I

    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    if-gt v1, v3, :cond_0

    .line 3
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object v1, v1, v0

    aget v0, v2, v0

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Lorg/jboss/netty/buffer/e;->getUnsignedMedium(I)I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v2, 0xffff

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getShort(I)S

    move-result v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getByte(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getShort(I)S

    move-result v0

    and-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/i;->getByte(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    return p1
.end method

.method public hasArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l0(ILorg/jboss/netty/buffer/e;II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_3

    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v0

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_3

    if-ltz p1, :cond_2

    if-nez p4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result v0

    :goto_0
    if-lez p4, :cond_1

    .line 3
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object v1, v1, v0

    .line 4
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[I

    aget v2, v2, v0

    .line 5
    invoke-interface {v1}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v3

    sub-int v2, p1, v2

    sub-int/2addr v3, v2

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 6
    invoke-interface {v1, v2, p2, p3, v3}, Lorg/jboss/netty/buffer/e;->l0(ILorg/jboss/netty/buffer/e;II)V

    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Index must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to be read - Needs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p4

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p3, p4

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", maximum is "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/i;->e:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public p(I[BII)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_1

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_1

    :goto_0
    if-lez p4, :cond_0

    .line 3
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object v1, v1, v0

    .line 4
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[I

    aget v2, v2, v0

    .line 5
    invoke-interface {v1}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v3

    sub-int v2, p1, v2

    sub-int/2addr v3, v2

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 6
    invoke-interface {v1, v2, p2, p3, v3}, Lorg/jboss/netty/buffer/e;->p(I[BII)V

    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to read - needs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p4

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p3, p4

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", maximum is "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public q0(II)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x2

    .line 2
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[I

    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    if-gt v1, v3, :cond_0

    .line 3
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object v1, v1, v0

    aget v0, v2, v0

    sub-int/2addr p1, v0

    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/buffer/e;->q0(II)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/i;->T(II)V

    add-int/lit8 p1, p1, 0x1

    int-to-byte p2, p2

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/i;->T(II)V

    goto :goto_0

    :cond_1
    int-to-byte v0, p2

    .line 7
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/i;->T(II)V

    add-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    .line 8
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/i;->T(II)V

    :goto_0
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
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result v1

    sub-int/2addr v1, p3

    if-gt p1, v1, :cond_4

    const/4 v1, 0x0

    .line 3
    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object v2, v2, v0

    .line 4
    iget-object v3, p0, Lorg/jboss/netty/buffer/i;->g:[I

    aget v3, v3, v0

    .line 5
    invoke-interface {v2}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v4

    sub-int v3, p1, v3

    sub-int/2addr v4, v3

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 6
    invoke-interface {v2, v3, p2, v4}, Lorg/jboss/netty/buffer/e;->setBytes(ILjava/io/InputStream;I)I

    move-result v2

    if-gez v2, :cond_1

    if-nez v1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_1
    if-ne v2, v4, :cond_2

    add-int/2addr p1, v4

    sub-int/2addr p3, v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr p1, v2

    sub-int/2addr p3, v2

    add-int/2addr v1, v2

    :goto_0
    if-gtz p3, :cond_0

    :cond_3
    return v1

    .line 7
    :cond_4
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many bytes to write - Needs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maximum is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result v0

    .line 9
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result v1

    sub-int/2addr v1, p3

    if-gt p1, v1, :cond_5

    const/4 v1, 0x0

    .line 10
    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object v2, v2, v0

    .line 11
    iget-object v3, p0, Lorg/jboss/netty/buffer/i;->g:[I

    aget v3, v3, v0

    .line 12
    invoke-interface {v2}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v4

    sub-int v3, p1, v3

    sub-int/2addr v4, v3

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 13
    invoke-interface {v2, v3, p2, v4}, Lorg/jboss/netty/buffer/e;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-gez v2, :cond_2

    if-nez v1, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_2
    if-ne v2, v4, :cond_3

    add-int/2addr p1, v4

    sub-int/2addr p3, v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr p1, v2

    sub-int/2addr p3, v2

    add-int/2addr v1, v2

    :goto_0
    if-gtz p3, :cond_0

    :cond_4
    :goto_1
    return v1

    .line 14
    :cond_5
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many bytes to write - Needs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maximum is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public setInt(II)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    .line 2
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[I

    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    if-gt v1, v3, :cond_0

    .line 3
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object v1, v1, v0

    aget v0, v2, v0

    sub-int/2addr p1, v0

    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/buffer/e;->setInt(II)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    ushr-int/lit8 v0, p2, 0x10

    int-to-short v0, v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/i;->q0(II)V

    add-int/lit8 p1, p1, 0x2

    int-to-short p2, p2

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/i;->q0(II)V

    goto :goto_0

    :cond_1
    int-to-short v0, p2

    .line 7
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/i;->q0(II)V

    add-int/lit8 p1, p1, 0x2

    ushr-int/lit8 p2, p2, 0x10

    int-to-short p2, p2

    .line 8
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/i;->q0(II)V

    :goto_0
    return-void
.end method

.method public setLong(IJ)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x8

    .line 2
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[I

    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    if-gt v1, v3, :cond_0

    .line 3
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object v1, v1, v0

    aget v0, v2, v0

    sub-int/2addr p1, v0

    invoke-interface {v1, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->setLong(IJ)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v2, 0x20

    if-ne v0, v1, :cond_1

    ushr-long v0, p2, v2

    long-to-int v1, v0

    .line 5
    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/buffer/i;->setInt(II)V

    add-int/lit8 p1, p1, 0x4

    long-to-int p3, p2

    .line 6
    invoke-virtual {p0, p1, p3}, Lorg/jboss/netty/buffer/i;->setInt(II)V

    goto :goto_0

    :cond_1
    long-to-int v0, p2

    .line 7
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/i;->setInt(II)V

    add-int/lit8 p1, p1, 0x4

    ushr-long/2addr p2, v2

    long-to-int p3, p2

    .line 8
    invoke-virtual {p0, p1, p3}, Lorg/jboss/netty/buffer/i;->setInt(II)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/buffer/a;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", components="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w(ILorg/jboss/netty/buffer/e;II)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_1

    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_1

    :goto_0
    if-lez p4, :cond_0

    .line 3
    iget-object v1, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object v1, v1, v0

    .line 4
    iget-object v2, p0, Lorg/jboss/netty/buffer/i;->g:[I

    aget v2, v2, v0

    .line 5
    invoke-interface {v1}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v3

    sub-int v2, p1, v2

    sub-int/2addr v3, v2

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 6
    invoke-interface {v1, v2, p2, p3, v3}, Lorg/jboss/netty/buffer/e;->w(ILorg/jboss/netty/buffer/e;II)V

    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to be written - Needs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p4

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p3, p4

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", maximum is "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public w0(ILjava/nio/ByteBuffer;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/i;->s(I)I

    move-result v0

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result v3

    sub-int/2addr v3, v2

    if-gt p1, v3, :cond_2

    if-ltz p1, :cond_1

    :goto_0
    if-lez v2, :cond_0

    .line 5
    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/buffer/i;->f:[Lorg/jboss/netty/buffer/e;

    aget-object v3, v3, v0

    .line 6
    iget-object v4, p0, Lorg/jboss/netty/buffer/i;->g:[I

    aget v4, v4, v0

    .line 7
    invoke-interface {v3}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v5

    sub-int v4, p1, v4

    sub-int/2addr v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 8
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 9
    invoke-interface {v3, v4, p2}, Lorg/jboss/netty/buffer/e;->w0(ILjava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr p1, v5

    sub-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw p1

    :cond_0
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Index must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many bytes to be read - Needs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maximum is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/i;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method
