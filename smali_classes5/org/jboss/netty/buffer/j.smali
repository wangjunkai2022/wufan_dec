.class public Lorg/jboss/netty/buffer/j;
.super Lorg/jboss/netty/buffer/b;
.source "DirectChannelBufferFactory.java"


# static fields
.field private static final i:Lorg/jboss/netty/buffer/j;

.field private static final j:Lorg/jboss/netty/buffer/j;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private final d:I

.field private e:Lorg/jboss/netty/buffer/e;

.field private f:I

.field private g:Lorg/jboss/netty/buffer/e;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/j;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/j;-><init>(Ljava/nio/ByteOrder;)V

    sput-object v0, Lorg/jboss/netty/buffer/j;->i:Lorg/jboss/netty/buffer/j;

    .line 2
    new-instance v0, Lorg/jboss/netty/buffer/j;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/j;-><init>(Ljava/nio/ByteOrder;)V

    sput-object v0, Lorg/jboss/netty/buffer/j;->j:Lorg/jboss/netty/buffer/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0}, Lorg/jboss/netty/buffer/j;-><init>(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/buffer/j;-><init>(Ljava/nio/ByteOrder;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    const/high16 v0, 0x100000

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/j;-><init>(Ljava/nio/ByteOrder;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;I)V
    .locals 2

    .line 4
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/b;-><init>(Ljava/nio/ByteOrder;)V

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/buffer/j;->b:Ljava/lang/Object;

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/buffer/j;->c:Ljava/lang/Object;

    if-lez p2, :cond_0

    .line 7
    iput p2, p0, Lorg/jboss/netty/buffer/j;->d:I

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preallocatedBufCapacity must be greater than 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private g(I)Lorg/jboss/netty/buffer/e;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/buffer/j;->e:Lorg/jboss/netty/buffer/e;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iget v3, p0, Lorg/jboss/netty/buffer/j;->d:I

    invoke-static {v1, v3}, Lorg/jboss/netty/buffer/h;->B(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/buffer/j;->e:Lorg/jboss/netty/buffer/e;

    .line 4
    invoke-interface {v1, v2, p1}, Lorg/jboss/netty/buffer/e;->a(II)Lorg/jboss/netty/buffer/e;

    move-result-object v1

    .line 5
    iput p1, p0, Lorg/jboss/netty/buffer/j;->f:I

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v1}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v1

    iget v3, p0, Lorg/jboss/netty/buffer/j;->f:I

    sub-int/2addr v1, v3

    if-lt v1, p1, :cond_1

    .line 7
    iget-object v1, p0, Lorg/jboss/netty/buffer/j;->e:Lorg/jboss/netty/buffer/e;

    invoke-interface {v1, v3, p1}, Lorg/jboss/netty/buffer/e;->a(II)Lorg/jboss/netty/buffer/e;

    move-result-object v1

    .line 8
    iget v2, p0, Lorg/jboss/netty/buffer/j;->f:I

    add-int/2addr v2, p1

    iput v2, p0, Lorg/jboss/netty/buffer/j;->f:I

    goto :goto_0

    .line 9
    :cond_1
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iget v3, p0, Lorg/jboss/netty/buffer/j;->d:I

    invoke-static {v1, v3}, Lorg/jboss/netty/buffer/h;->B(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/buffer/j;->e:Lorg/jboss/netty/buffer/e;

    .line 10
    invoke-interface {v1, v2, p1}, Lorg/jboss/netty/buffer/e;->a(II)Lorg/jboss/netty/buffer/e;

    move-result-object v1

    .line 11
    iput p1, p0, Lorg/jboss/netty/buffer/j;->f:I

    .line 12
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private h(I)Lorg/jboss/netty/buffer/e;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/j;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/buffer/j;->g:Lorg/jboss/netty/buffer/e;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iget v3, p0, Lorg/jboss/netty/buffer/j;->d:I

    invoke-static {v1, v3}, Lorg/jboss/netty/buffer/h;->B(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/buffer/j;->g:Lorg/jboss/netty/buffer/e;

    .line 4
    invoke-interface {v1, v2, p1}, Lorg/jboss/netty/buffer/e;->a(II)Lorg/jboss/netty/buffer/e;

    move-result-object v1

    .line 5
    iput p1, p0, Lorg/jboss/netty/buffer/j;->h:I

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v1}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v1

    iget v3, p0, Lorg/jboss/netty/buffer/j;->h:I

    sub-int/2addr v1, v3

    if-lt v1, p1, :cond_1

    .line 7
    iget-object v1, p0, Lorg/jboss/netty/buffer/j;->g:Lorg/jboss/netty/buffer/e;

    invoke-interface {v1, v3, p1}, Lorg/jboss/netty/buffer/e;->a(II)Lorg/jboss/netty/buffer/e;

    move-result-object v1

    .line 8
    iget v2, p0, Lorg/jboss/netty/buffer/j;->h:I

    add-int/2addr v2, p1

    iput v2, p0, Lorg/jboss/netty/buffer/j;->h:I

    goto :goto_0

    .line 9
    :cond_1
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iget v3, p0, Lorg/jboss/netty/buffer/j;->d:I

    invoke-static {v1, v3}, Lorg/jboss/netty/buffer/h;->B(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/buffer/j;->g:Lorg/jboss/netty/buffer/e;

    .line 10
    invoke-interface {v1, v2, p1}, Lorg/jboss/netty/buffer/e;->a(II)Lorg/jboss/netty/buffer/e;

    move-result-object v1

    .line 11
    iput p1, p0, Lorg/jboss/netty/buffer/j;->h:I

    .line 12
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static i()Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/j;->i:Lorg/jboss/netty/buffer/j;

    return-object v0
.end method

.method public static j(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Lorg/jboss/netty/buffer/j;->i:Lorg/jboss/netty/buffer/j;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_1

    .line 4
    sget-object p0, Lorg/jboss/netty/buffer/j;->j:Lorg/jboss/netty/buffer/j;

    return-object p0

    :cond_1
    const-string v0, "defaultEndianness"

    .line 5
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should not reach here"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/e;
    .locals 2

    const-string v0, "array"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p3, :cond_2

    if-nez p4, :cond_0

    .line 2
    sget-object p1, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p1

    :cond_0
    add-int v0, p3, p4

    .line 3
    array-length v1, p2

    if-gt v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, p1, p4}, Lorg/jboss/netty/buffer/j;->f(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    .line 5
    invoke-interface {p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->Z([BII)V

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "length: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "offset: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lorg/jboss/netty/buffer/h;->Z(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/j;->f(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 5
    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->A0(Ljava/nio/ByteBuffer;)V

    .line 6
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public f(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;
    .locals 2

    const-string v0, "order"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_3

    if-nez p2, :cond_0

    .line 2
    sget-object p1, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p1

    .line 3
    :cond_0
    iget v0, p0, Lorg/jboss/netty/buffer/j;->d:I

    if-lt p2, v0, :cond_1

    .line 4
    invoke-static {p1, p2}, Lorg/jboss/netty/buffer/h;->B(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_2

    .line 6
    invoke-direct {p0, p2}, Lorg/jboss/netty/buffer/j;->g(I)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0, p2}, Lorg/jboss/netty/buffer/j;->h(I)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->clear()V

    return-object p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capacity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
