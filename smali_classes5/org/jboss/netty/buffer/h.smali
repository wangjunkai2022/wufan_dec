.class public final Lorg/jboss/netty/buffer/h;
.super Ljava/lang/Object;
.source "ChannelBuffers.java"


# static fields
.field public static final a:Ljava/nio/ByteOrder;

.field public static final b:Ljava/nio/ByteOrder;

.field public static final c:Lorg/jboss/netty/buffer/e;

.field private static final d:[C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lorg/jboss/netty/buffer/h;->b:Ljava/nio/ByteOrder;

    .line 3
    new-instance v0, Lorg/jboss/netty/buffer/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/c;-><init>(I)V

    sput-object v0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    const/16 v0, 0x400

    new-array v0, v0, [C

    .line 4
    sput-object v0, Lorg/jboss/netty/buffer/h;->d:[C

    const-string v0, "0123456789abcdef"

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 6
    sget-object v2, Lorg/jboss/netty/buffer/h;->d:[C

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    aput-char v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v4, v1, 0xf

    .line 7
    aget-char v4, v0, v4

    aput-char v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(I)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/h;->B(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method public static B(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;
    .locals 1

    const-string v0, "endianness"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 2
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lorg/jboss/netty/buffer/d;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/d;-><init>(Ljava/nio/ByteBuffer;)V

    .line 4
    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->clear()V

    return-object v0
.end method

.method public static C()Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lorg/jboss/netty/buffer/h;->F(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    move-result-object v0

    return-object v0
.end method

.method public static D(I)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/h;->F(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method public static E(ILorg/jboss/netty/buffer/f;)Lorg/jboss/netty/buffer/e;
    .locals 2

    const-string v0, "factory"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lorg/jboss/netty/buffer/l;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/f;->d()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lorg/jboss/netty/buffer/l;-><init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/f;)V

    return-object v0
.end method

.method public static F(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/l;

    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/buffer/l;-><init>(Ljava/nio/ByteOrder;I)V

    return-object v0
.end method

.method public static G(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/f;)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/l;

    invoke-direct {v0, p0, p1, p2}, Lorg/jboss/netty/buffer/l;-><init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/f;)V

    return-object v0
.end method

.method public static H(Lorg/jboss/netty/buffer/f;)Lorg/jboss/netty/buffer/e;
    .locals 3

    const-string v0, "factory"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lorg/jboss/netty/buffer/l;

    invoke-interface {p0}, Lorg/jboss/netty/buffer/f;->d()Ljava/nio/ByteOrder;

    move-result-object v1

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2, p0}, Lorg/jboss/netty/buffer/l;-><init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/f;)V

    return-object v0
.end method

.method static I(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/jboss/netty/util/a;->b(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p1, p0, v0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 6
    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0

    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static J(Lorg/jboss/netty/buffer/e;Lorg/jboss/netty/buffer/e;)Z
    .locals 10

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    move-result v0

    .line 2
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    .line 3
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    move-result v3

    .line 4
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    move-result v4

    .line 5
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    if-ne v5, v6, :cond_2

    :goto_0
    if-lez v1, :cond_4

    .line 6
    invoke-interface {p0, v3}, Lorg/jboss/netty/buffer/e;->getLong(I)J

    move-result-wide v5

    invoke-interface {p1, v4}, Lorg/jboss/netty/buffer/e;->getLong(I)J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-lez v1, :cond_4

    .line 7
    invoke-interface {p0, v3}, Lorg/jboss/netty/buffer/e;->getLong(I)J

    move-result-wide v5

    invoke-interface {p1, v4}, Lorg/jboss/netty/buffer/e;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/jboss/netty/buffer/h;->V(J)J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-eqz v9, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-lez v0, :cond_6

    .line 8
    invoke-interface {p0, v3}, Lorg/jboss/netty/buffer/e;->getByte(I)B

    move-result v1

    invoke-interface {p1, v4}, Lorg/jboss/netty/buffer/e;->getByte(I)B

    move-result v5

    if-eq v1, v5, :cond_5

    return v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method private static K(Lorg/jboss/netty/buffer/e;IIB)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, -0x1

    if-ge p1, p2, :cond_2

    .line 2
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-ge p1, p2, :cond_2

    .line 3
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/e;->getByte(I)B

    move-result v1

    if-ne v1, p3, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static L(Lorg/jboss/netty/buffer/e;IILorg/jboss/netty/buffer/g;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, -0x1

    if-ge p1, p2, :cond_2

    .line 2
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-ge p1, p2, :cond_2

    .line 3
    invoke-interface {p3, p0, p1}, Lorg/jboss/netty/buffer/g;->a(Lorg/jboss/netty/buffer/e;I)Z

    move-result v1

    if-eqz v1, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static M(Lorg/jboss/netty/buffer/e;)I
    .locals 6

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x2

    and-int/lit8 v0, v0, 0x3

    .line 2
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    move-result v2

    .line 3
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v4, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-lez v1, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    .line 4
    invoke-interface {p0, v2}, Lorg/jboss/netty/buffer/e;->getInt(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_1
    if-lez v1, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    .line 5
    invoke-interface {p0, v2}, Lorg/jboss/netty/buffer/e;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lorg/jboss/netty/buffer/h;->U(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-lez v0, :cond_2

    mul-int/lit8 v3, v3, 0x1f

    add-int/lit8 v1, v2, 0x1

    .line 6
    invoke-interface {p0, v2}, Lorg/jboss/netty/buffer/e;->getByte(I)B

    move-result v2

    add-int/2addr v3, v2

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    return v5
.end method

.method public static N(Lorg/jboss/netty/buffer/e;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    move-result v0

    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    move-result v1

    invoke-static {p0, v0, v1}, Lorg/jboss/netty/buffer/h;->O(Lorg/jboss/netty/buffer/e;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static O(Lorg/jboss/netty/buffer/e;II)Ljava/lang/String;
    .locals 5

    if-ltz p2, :cond_2

    if-nez p2, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    add-int v0, p1, p2

    shl-int/lit8 p2, p2, 0x1

    .line 1
    new-array p2, p2, [C

    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 2
    sget-object v2, Lorg/jboss/netty/buffer/h;->d:[C

    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/e;->getUnsignedByte(I)S

    move-result v3

    shl-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    invoke-static {v2, v3, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v1, v4

    goto :goto_0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static P(Ljava/lang/String;)Lorg/jboss/netty/buffer/e;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v1}, Lorg/jboss/netty/buffer/h;->g0([B)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method public static Q(Lorg/jboss/netty/buffer/e;IIB)I
    .locals 0

    if-gt p1, p2, :cond_0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/h;->K(Lorg/jboss/netty/buffer/e;IIB)I

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/h;->S(Lorg/jboss/netty/buffer/e;IIB)I

    move-result p0

    return p0
.end method

.method public static R(Lorg/jboss/netty/buffer/e;IILorg/jboss/netty/buffer/g;)I
    .locals 0

    if-gt p1, p2, :cond_0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/h;->L(Lorg/jboss/netty/buffer/e;IILorg/jboss/netty/buffer/g;)I

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/h;->T(Lorg/jboss/netty/buffer/e;IILorg/jboss/netty/buffer/g;)I

    move-result p0

    return p0
.end method

.method private static S(Lorg/jboss/netty/buffer/e;IIB)I
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, -0x1

    if-ltz p1, :cond_2

    .line 2
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-lt p1, p2, :cond_2

    .line 3
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/e;->getByte(I)B

    move-result v1

    if-ne v1, p3, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static T(Lorg/jboss/netty/buffer/e;IILorg/jboss/netty/buffer/g;)I
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, -0x1

    if-ltz p1, :cond_2

    .line 2
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-lt p1, p2, :cond_2

    .line 3
    invoke-interface {p3, p0, p1}, Lorg/jboss/netty/buffer/g;->a(Lorg/jboss/netty/buffer/e;I)Z

    move-result v1

    if-eqz v1, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static U(I)I
    .locals 2

    int-to-short v0, p0

    .line 1
    invoke-static {v0}, Lorg/jboss/netty/buffer/h;->X(S)S

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    ushr-int/lit8 p0, p0, 0x10

    int-to-short p0, p0

    invoke-static {p0}, Lorg/jboss/netty/buffer/h;->X(S)S

    move-result p0

    const v1, 0xffff

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public static V(J)J
    .locals 4

    long-to-int v0, p0

    .line 1
    invoke-static {v0}, Lorg/jboss/netty/buffer/h;->U(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    ushr-long/2addr p0, v2

    long-to-int p1, p0

    invoke-static {p1}, Lorg/jboss/netty/buffer/h;->U(I)I

    move-result p0

    int-to-long p0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static W(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0x10

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static X(S)S
    .locals 1

    shl-int/lit8 v0, p0, 0x8

    ushr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static Y(Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/jboss/netty/buffer/p;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lorg/jboss/netty/buffer/p;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/p;->y()Lorg/jboss/netty/buffer/e;

    move-result-object p0

    .line 3
    :cond_0
    new-instance v0, Lorg/jboss/netty/buffer/p;

    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/p;-><init>(Lorg/jboss/netty/buffer/e;)V

    return-object v0
.end method

.method public static Z(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Lorg/jboss/netty/buffer/h;->b0(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance v0, Lorg/jboss/netty/buffer/d;

    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/d;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static a(I)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/h;->b(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method public static a0(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_1

    .line 2
    array-length p0, p1

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Lorg/jboss/netty/buffer/c;

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/c;-><init>([B)V

    return-object p0

    .line 5
    :cond_1
    sget-object v0, Lorg/jboss/netty/buffer/h;->b:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_3

    .line 6
    array-length p0, p1

    if-nez p0, :cond_2

    .line 7
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0

    .line 8
    :cond_2
    new-instance p0, Lorg/jboss/netty/buffer/o;

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/o;-><init>([B)V

    return-object p0

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "endianness"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_1

    if-nez p1, :cond_0

    .line 2
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lorg/jboss/netty/buffer/c;

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/c;-><init>(I)V

    return-object p0

    .line 4
    :cond_1
    sget-object v0, Lorg/jboss/netty/buffer/h;->b:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_3

    if-nez p1, :cond_2

    .line 5
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0

    .line 6
    :cond_2
    new-instance p0, Lorg/jboss/netty/buffer/o;

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/o;-><init>(I)V

    return-object p0

    .line 7
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "endianness"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b0(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/e;
    .locals 1

    const-string v0, "endianness"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p2, :cond_2

    .line 2
    array-length p2, p1

    if-ne p3, p2, :cond_0

    .line 3
    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/h;->a0(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p3, :cond_1

    .line 4
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0

    .line 5
    :cond_1
    new-instance p2, Lorg/jboss/netty/buffer/r;

    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/h;->a0(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    invoke-direct {p2, p0, p3}, Lorg/jboss/netty/buffer/r;-><init>(Lorg/jboss/netty/buffer/e;I)V

    return-object p2

    :cond_2
    if-nez p3, :cond_3

    .line 6
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0

    .line 7
    :cond_3
    new-instance v0, Lorg/jboss/netty/buffer/q;

    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/h;->a0(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    invoke-direct {v0, p0, p2, p3}, Lorg/jboss/netty/buffer/q;-><init>(Lorg/jboss/netty/buffer/e;II)V

    return-object v0
.end method

.method public static c(Lorg/jboss/netty/buffer/e;Lorg/jboss/netty/buffer/e;)I
    .locals 14

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    move-result v0

    .line 2
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    move-result v1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    ushr-int/lit8 v3, v2, 0x2

    and-int/lit8 v2, v2, 0x3

    .line 4
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    move-result v4

    .line 5
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    move-result v5

    .line 6
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, -0x1

    if-ne v6, v7, :cond_2

    :goto_0
    if-lez v3, :cond_5

    .line 7
    invoke-interface {p0, v4}, Lorg/jboss/netty/buffer/e;->getUnsignedInt(I)J

    move-result-wide v6

    .line 8
    invoke-interface {p1, v5}, Lorg/jboss/netty/buffer/e;->getUnsignedInt(I)J

    move-result-wide v10

    cmp-long v12, v6, v10

    if-lez v12, :cond_0

    return v8

    :cond_0
    cmp-long v12, v6, v10

    if-gez v12, :cond_1

    return v9

    :cond_1
    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-lez v3, :cond_5

    .line 9
    invoke-interface {p0, v4}, Lorg/jboss/netty/buffer/e;->getUnsignedInt(I)J

    move-result-wide v6

    .line 10
    invoke-interface {p1, v5}, Lorg/jboss/netty/buffer/e;->getInt(I)I

    move-result v10

    invoke-static {v10}, Lorg/jboss/netty/buffer/h;->U(I)I

    move-result v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    cmp-long v12, v6, v10

    if-lez v12, :cond_3

    return v8

    :cond_3
    cmp-long v12, v6, v10

    if-gez v12, :cond_4

    return v9

    :cond_4
    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-lez v2, :cond_8

    .line 11
    invoke-interface {p0, v4}, Lorg/jboss/netty/buffer/e;->getUnsignedByte(I)S

    move-result v3

    .line 12
    invoke-interface {p1, v5}, Lorg/jboss/netty/buffer/e;->getUnsignedByte(I)S

    move-result v6

    if-le v3, v6, :cond_6

    return v8

    :cond_6
    if-ge v3, v6, :cond_7

    return v9

    :cond_7
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_8
    sub-int/2addr v0, v1

    return v0
.end method

.method public static varargs c0(Ljava/nio/ByteOrder;[[B)Lorg/jboss/netty/buffer/e;
    .locals 6

    .line 1
    array-length v0, p1

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    if-nez v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    array-length v5, v4

    if-lez v5, :cond_1

    .line 5
    invoke-static {p0, v4}, Lorg/jboss/netty/buffer/h;->a0(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_2
    :goto_1
    invoke-static {p0, v0, v2}, Lorg/jboss/netty/buffer/h;->d(Ljava/nio/ByteOrder;Ljava/util/List;Z)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0

    .line 7
    :cond_3
    aget-object v0, p1, v2

    array-length v0, v0

    if-eqz v0, :cond_4

    .line 8
    aget-object p1, p1, v2

    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/h;->a0(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0

    .line 9
    :cond_4
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0
.end method

.method private static d(Ljava/nio/ByteOrder;Ljava/util/List;Z)Lorg/jboss/netty/buffer/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteOrder;",
            "Ljava/util/List<",
            "Lorg/jboss/netty/buffer/e;",
            ">;Z)",
            "Lorg/jboss/netty/buffer/e;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lorg/jboss/netty/buffer/i;

    invoke-direct {v0, p0, p1, p2}, Lorg/jboss/netty/buffer/i;-><init>(Ljava/nio/ByteOrder;Ljava/util/List;Z)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    .line 3
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jboss/netty/buffer/e;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0
.end method

.method public static d0(Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->H0()Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0
.end method

.method public static e(Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    invoke-static {v0, p0, p1, p2, p3}, Lorg/jboss/netty/buffer/h;->i(Ljava/nio/ByteOrder;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method public static varargs e0(Z[Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;
    .locals 6

    .line 1
    array-length v0, p1

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v0, 0x0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v4, p1, v2

    if-nez v4, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "inconsistent byte order"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 8
    :goto_1
    invoke-static {v4}, Lorg/jboss/netty/buffer/h;->Z(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_4
    :goto_2
    invoke-static {v0, v1, p0}, Lorg/jboss/netty/buffer/h;->d(Ljava/nio/ByteOrder;Ljava/util/List;Z)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0

    .line 10
    :cond_5
    aget-object p0, p1, v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 11
    aget-object p0, p1, v2

    invoke-static {p0}, Lorg/jboss/netty/buffer/h;->Z(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0

    .line 12
    :cond_6
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0
.end method

.method public static f(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    invoke-static {v0, p0, p1}, Lorg/jboss/netty/buffer/h;->j(Ljava/nio/ByteOrder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method public static varargs f0(Z[Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;
    .locals 7

    .line 1
    array-length v0, p1

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v0, 0x0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v4, p1, v2

    if-nez v4, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    invoke-interface {v4}, Lorg/jboss/netty/buffer/e;->I0()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v4}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "inconsistent byte order"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    invoke-interface {v4}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 8
    :goto_1
    instance-of v5, v4, Lorg/jboss/netty/buffer/i;

    if-eqz v5, :cond_3

    .line 9
    move-object v5, v4

    check-cast v5, Lorg/jboss/netty/buffer/i;

    invoke-interface {v4}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    move-result v6

    invoke-interface {v4}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    move-result v4

    invoke-virtual {v5, v6, v4}, Lorg/jboss/netty/buffer/i;->A(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 10
    :cond_3
    invoke-interface {v4}, Lorg/jboss/netty/buffer/e;->H0()Lorg/jboss/netty/buffer/e;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_5
    :goto_3
    invoke-static {v0, v1, p0}, Lorg/jboss/netty/buffer/h;->d(Ljava/nio/ByteOrder;Ljava/util/List;Z)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0

    .line 12
    :cond_6
    aget-object p0, p1, v2

    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->I0()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 13
    aget-object p0, p1, v2

    invoke-static {p0}, Lorg/jboss/netty/buffer/h;->d0(Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0

    .line 14
    :cond_7
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/buffer/e;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/h;->f(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method public static g0([B)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/h;->a0(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0

    .line 3
    :cond_0
    new-array v0, v0, [B

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 5
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-static {p0, v0}, Lorg/jboss/netty/buffer/h;->a0(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    .line 8
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0
.end method

.method public static h0([BII)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    invoke-static {v0, p0, p1, p2}, Lorg/jboss/netty/buffer/h;->b0(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/nio/ByteOrder;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;
    .locals 2

    const-string v0, "string"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p3, :cond_0

    .line 2
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_2

    .line 4
    check-cast p1, Ljava/nio/CharBuffer;

    .line 5
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result p1

    add-int/2addr v1, p1

    add-int/2addr v1, p2

    invoke-static {p0, v0, v1, p3, p4}, Lorg/jboss/netty/buffer/h;->o(Ljava/nio/ByteOrder;[CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->slice()Ljava/nio/CharBuffer;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p3}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 9
    invoke-virtual {p1, p2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 10
    invoke-static {p0, p1, p4}, Lorg/jboss/netty/buffer/h;->l(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/2addr p3, p2

    .line 11
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lorg/jboss/netty/buffer/h;->l(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method public static varargs i0([Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/h;->e0(Z[Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/nio/ByteOrder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;
    .locals 1

    const-string v0, "string"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/nio/CharBuffer;

    invoke-static {p0, p1, p2}, Lorg/jboss/netty/buffer/h;->l(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/jboss/netty/buffer/h;->l(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method public static varargs j0([Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/h;->f0(Z[Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/nio/ByteOrder;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/buffer/e;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/jboss/netty/buffer/h;->j(Ljava/nio/ByteOrder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method public static varargs k0([[B)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/h;->c0(Ljava/nio/ByteOrder;[[B)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method private static l(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/jboss/netty/buffer/h;->I(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-static {p0, p2}, Lorg/jboss/netty/buffer/h;->a0(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/e;->u0(I)V

    return-object p0
.end method

.method public static m(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_1

    .line 2
    array-length p0, p1

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Lorg/jboss/netty/buffer/c;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/c;-><init>([B)V

    return-object p0

    .line 5
    :cond_1
    sget-object v0, Lorg/jboss/netty/buffer/h;->b:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_3

    .line 6
    array-length p0, p1

    if-nez p0, :cond_2

    .line 7
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0

    .line 8
    :cond_2
    new-instance p0, Lorg/jboss/netty/buffer/o;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/o;-><init>([B)V

    return-object p0

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "endianness"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static n(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/e;
    .locals 2

    const-string v0, "endianness"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p3, :cond_0

    .line 2
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0

    .line 3
    :cond_0
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    invoke-static {p0, v0}, Lorg/jboss/netty/buffer/h;->a0(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/nio/ByteOrder;[CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;
    .locals 1

    const-string v0, "array"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p3, :cond_0

    .line 2
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0

    .line 3
    :cond_0
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lorg/jboss/netty/buffer/h;->l(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/nio/ByteOrder;[CLjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lorg/jboss/netty/buffer/h;->o(Ljava/nio/ByteOrder;[CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method public static varargs q(Ljava/nio/ByteOrder;[[B)Lorg/jboss/netty/buffer/e;
    .locals 7

    .line 1
    array-length v0, p1

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v4, p1, v1

    const v5, 0x7fffffff

    sub-int/2addr v5, v3

    .line 3
    array-length v6, v4

    if-lt v5, v6, :cond_0

    .line 4
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The total length of the specified arrays is too big."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-nez v3, :cond_2

    .line 6
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0

    .line 7
    :cond_2
    new-array v0, v3, [B

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 8
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 9
    aget-object v4, p1, v1

    .line 10
    array-length v5, v4

    invoke-static {v4, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {p0, v0}, Lorg/jboss/netty/buffer/h;->a0(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0

    .line 13
    :cond_4
    aget-object v0, p1, v2

    array-length v0, v0

    if-nez v0, :cond_5

    .line 14
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0

    .line 15
    :cond_5
    aget-object p1, p1, v2

    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/h;->m(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0

    .line 16
    :cond_6
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0
.end method

.method public static r(Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->copy()Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0
.end method

.method public static s([B)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/h;->m(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method public static t([BII)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    invoke-static {v0, p0, p1, p2}, Lorg/jboss/netty/buffer/h;->n(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method public static u([CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    invoke-static {v0, p0, p1, p2, p3}, Lorg/jboss/netty/buffer/h;->o(Ljava/nio/ByteOrder;[CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method public static v([CLjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;
    .locals 3

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1, p1}, Lorg/jboss/netty/buffer/h;->o(Ljava/nio/ByteOrder;[CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method public static varargs w([Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;
    .locals 4

    .line 1
    array-length v0, p0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 2
    array-length v0, p0

    new-array v0, v0, [Lorg/jboss/netty/buffer/e;

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 4
    aget-object v3, p0, v1

    invoke-static {v3}, Lorg/jboss/netty/buffer/h;->h(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v2, v0}, Lorg/jboss/netty/buffer/h;->f0(Z[Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    aget-object p0, p0, v2

    invoke-static {p0}, Lorg/jboss/netty/buffer/h;->h(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0
.end method

.method public static varargs x([Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;
    .locals 4

    .line 1
    array-length v0, p0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 2
    array-length v0, p0

    new-array v0, v0, [Lorg/jboss/netty/buffer/e;

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 4
    aget-object v3, p0, v1

    invoke-static {v3}, Lorg/jboss/netty/buffer/h;->r(Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v2, v0}, Lorg/jboss/netty/buffer/h;->f0(Z[Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    aget-object p0, p0, v2

    invoke-static {p0}, Lorg/jboss/netty/buffer/h;->r(Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    return-object p0
.end method

.method public static varargs y([[B)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/h;->q(Ljava/nio/ByteOrder;[[B)Lorg/jboss/netty/buffer/e;

    move-result-object p0

    return-object p0
.end method

.method static z(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/jboss/netty/util/a;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p1, p0, v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 6
    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
