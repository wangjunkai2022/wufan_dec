.class public final Lcom/tencent/cos/utils/CommonSha1Utils;
.super Ljava/lang/Object;
.source "CommonSha1Utils.java"


# instance fields
.field private block:[I

.field private blockIndex:I

.field private count:J

.field dd:[I

.field public digestBits:[B

.field public digestValid:Z

.field private state:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->state:[I

    const/16 v1, 0x10

    new-array v1, v1, [I

    .line 3
    iput-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->block:[I

    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->state:[I

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->count:J

    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 7
    iput-object v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->digestBits:[B

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->digestValid:Z

    return-void
.end method


# virtual methods
.method final R0([IIIIIII)V
    .locals 3

    .line 1
    aget v0, p1, p6

    aget v1, p1, p3

    aget p4, p1, p4

    aget v2, p1, p5

    xor-int/2addr p4, v2

    and-int/2addr p4, v1

    aget p5, p1, p5

    xor-int/2addr p4, p5

    invoke-virtual {p0, p7}, Lcom/tencent/cos/utils/CommonSha1Utils;->blk0(I)I

    move-result p5

    add-int/2addr p4, p5

    const p5, 0x5a827999

    add-int/2addr p4, p5

    aget p2, p1, p2

    const/4 p5, 0x5

    .line 2
    invoke-virtual {p0, p2, p5}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    move-result p2

    add-int/2addr p4, p2

    add-int/2addr v0, p4

    aput v0, p1, p6

    .line 3
    aget p2, p1, p3

    const/16 p4, 0x1e

    invoke-virtual {p0, p2, p4}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    move-result p2

    aput p2, p1, p3

    return-void
.end method

.method final R1([IIIIIII)V
    .locals 3

    .line 1
    aget v0, p1, p6

    aget v1, p1, p3

    aget p4, p1, p4

    aget v2, p1, p5

    xor-int/2addr p4, v2

    and-int/2addr p4, v1

    aget p5, p1, p5

    xor-int/2addr p4, p5

    .line 2
    invoke-virtual {p0, p7}, Lcom/tencent/cos/utils/CommonSha1Utils;->blk(I)I

    move-result p5

    add-int/2addr p4, p5

    const p5, 0x5a827999

    add-int/2addr p4, p5

    aget p2, p1, p2

    const/4 p5, 0x5

    invoke-virtual {p0, p2, p5}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    move-result p2

    add-int/2addr p4, p2

    add-int/2addr v0, p4

    aput v0, p1, p6

    .line 3
    aget p2, p1, p3

    const/16 p4, 0x1e

    invoke-virtual {p0, p2, p4}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    move-result p2

    aput p2, p1, p3

    return-void
.end method

.method final R2([IIIIIII)V
    .locals 2

    .line 1
    aget v0, p1, p6

    aget v1, p1, p3

    aget p4, p1, p4

    xor-int/2addr p4, v1

    aget p5, p1, p5

    xor-int/2addr p4, p5

    invoke-virtual {p0, p7}, Lcom/tencent/cos/utils/CommonSha1Utils;->blk(I)I

    move-result p5

    add-int/2addr p4, p5

    const p5, 0x6ed9eba1

    add-int/2addr p4, p5

    aget p2, p1, p2

    const/4 p5, 0x5

    invoke-virtual {p0, p2, p5}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    move-result p2

    add-int/2addr p4, p2

    add-int/2addr v0, p4

    aput v0, p1, p6

    .line 2
    aget p2, p1, p3

    const/16 p4, 0x1e

    invoke-virtual {p0, p2, p4}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    move-result p2

    aput p2, p1, p3

    return-void
.end method

.method final R3([IIIIIII)V
    .locals 3

    .line 1
    aget v0, p1, p6

    aget v1, p1, p3

    aget v2, p1, p4

    or-int/2addr v1, v2

    aget p5, p1, p5

    and-int/2addr p5, v1

    aget v1, p1, p3

    aget p4, p1, p4

    and-int/2addr p4, v1

    or-int/2addr p4, p5

    invoke-virtual {p0, p7}, Lcom/tencent/cos/utils/CommonSha1Utils;->blk(I)I

    move-result p5

    add-int/2addr p4, p5

    const p5, -0x70e44324

    add-int/2addr p4, p5

    aget p2, p1, p2

    const/4 p5, 0x5

    .line 2
    invoke-virtual {p0, p2, p5}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    move-result p2

    add-int/2addr p4, p2

    add-int/2addr v0, p4

    aput v0, p1, p6

    .line 3
    aget p2, p1, p3

    const/16 p4, 0x1e

    invoke-virtual {p0, p2, p4}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    move-result p2

    aput p2, p1, p3

    return-void
.end method

.method final R4([IIIIIII)V
    .locals 2

    .line 1
    aget v0, p1, p6

    aget v1, p1, p3

    aget p4, p1, p4

    xor-int/2addr p4, v1

    aget p5, p1, p5

    xor-int/2addr p4, p5

    invoke-virtual {p0, p7}, Lcom/tencent/cos/utils/CommonSha1Utils;->blk(I)I

    move-result p5

    add-int/2addr p4, p5

    const p5, -0x359d3e2a    # -3715189.5f

    add-int/2addr p4, p5

    aget p2, p1, p2

    const/4 p5, 0x5

    invoke-virtual {p0, p2, p5}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    move-result p2

    add-int/2addr p4, p2

    add-int/2addr v0, p4

    aput v0, p1, p6

    .line 2
    aget p2, p1, p3

    const/16 p4, 0x1e

    invoke-virtual {p0, p2, p4}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    move-result p2

    aput p2, p1, p3

    return-void
.end method

.method final blk(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->block:[I

    and-int/lit8 v1, p1, 0xf

    add-int/lit8 v2, p1, 0xd

    and-int/lit8 v2, v2, 0xf

    aget v2, v0, v2

    add-int/lit8 v3, p1, 0x8

    and-int/lit8 v3, v3, 0xf

    aget v3, v0, v3

    xor-int/2addr v2, v3

    add-int/lit8 p1, p1, 0x2

    and-int/lit8 p1, p1, 0xf

    aget p1, v0, p1

    xor-int/2addr p1, v2

    aget v2, v0, v1

    xor-int/2addr p1, v2

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    move-result p1

    aput p1, v0, v1

    .line 2
    iget-object p1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->block:[I

    aget p1, p1, v1

    return p1
.end method

.method final blk0(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->block:[I

    aget v1, v0, p1

    const/16 v2, 0x18

    invoke-virtual {p0, v1, v2}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    move-result v1

    const v2, -0xff0100

    and-int/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->block:[I

    aget v2, v2, p1

    const/16 v3, 0x8

    invoke-virtual {p0, v2, v3}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    move-result v2

    const v3, 0xff00ff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, p1

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->block:[I

    aget p1, v0, p1

    return p1
.end method

.method public digout()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_2

    .line 2
    iget-object v2, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->digestBits:[B

    aget-byte v3, v2, v1

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-char v3, v3

    .line 3
    aget-byte v2, v2, v1

    and-int/lit8 v2, v2, 0xf

    int-to-char v2, v2

    const/16 v4, 0x9

    if-le v3, v4, :cond_0

    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v3, v3, 0x61

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x30

    :goto_1
    int-to-char v3, v3

    if-le v2, v4, :cond_1

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, 0x61

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x30

    :goto_2
    int-to-char v2, v2

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dumpTempState()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 2
    iget-object v5, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->state:[I

    aget v5, v5, v2

    mul-int/lit8 v6, v3, 0x8

    ushr-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%02x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 8

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1
    iget-wide v4, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->count:J

    rsub-int/lit8 v6, v3, 0x7

    mul-int/lit8 v6, v6, 0x8

    ushr-long/2addr v4, v6

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, -0x80

    .line 2
    invoke-virtual {p0, v3}, Lcom/tencent/cos/utils/CommonSha1Utils;->update(B)V

    .line 3
    :goto_1
    iget v3, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->blockIndex:I

    const/16 v4, 0x38

    if-eq v3, v4, :cond_1

    .line 4
    invoke-virtual {p0, v2}, Lcom/tencent/cos/utils/CommonSha1Utils;->update(B)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0, v1}, Lcom/tencent/cos/utils/CommonSha1Utils;->update([B)V

    :goto_2
    const/16 v1, 0x14

    if-ge v2, v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->digestBits:[B

    iget-object v3, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->state:[I

    shr-int/lit8 v4, v2, 0x2

    aget v3, v3, v4

    and-int/lit8 v4, v2, 0x3

    rsub-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x8

    shr-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->digestValid:Z

    return-void
.end method

.method public getAlg()Ljava/lang/String;
    .locals 1

    const-string v0, "SHA1"

    return-object v0
.end method

.method public init()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->state:[I

    const v1, 0x67452301

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const v3, -0x10325477

    .line 2
    aput v3, v0, v1

    const/4 v1, 0x2

    const v3, -0x67452302

    .line 3
    aput v3, v0, v1

    const/4 v1, 0x3

    const v3, 0x10325476

    .line 4
    aput v3, v0, v1

    const/4 v1, 0x4

    const v3, -0x3c2d1e10

    .line 5
    aput v3, v0, v1

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->count:J

    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 7
    iput-object v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->digestBits:[B

    .line 8
    iput-boolean v2, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->digestValid:Z

    .line 9
    iput v2, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->blockIndex:I

    return-void
.end method

.method final rol(II)I
    .locals 1

    shl-int v0, p1, p2

    rsub-int/lit8 p2, p2, 0x20

    ushr-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method transform()V
    .locals 13

    .line 1
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    iget-object v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->state:[I

    const/4 v8, 0x0

    aget v2, v0, v8

    aput v2, v1, v8

    const/4 v9, 0x1

    .line 2
    aget v2, v0, v9

    aput v2, v1, v9

    const/4 v10, 0x2

    .line 3
    aget v2, v0, v10

    aput v2, v1, v10

    const/4 v11, 0x3

    .line 4
    aget v2, v0, v11

    aput v2, v1, v11

    const/4 v12, 0x4

    .line 5
    aget v0, v0, v12

    aput v0, v1, v12

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    .line 6
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 7
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 8
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 9
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x3

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 10
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 11
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x5

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 12
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x6

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 13
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x7

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 14
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x8

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 15
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x9

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 16
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/16 v7, 0xa

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 17
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0xb

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 18
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0xc

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 19
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xd

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 20
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0xe

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 21
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/16 v7, 0xf

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 22
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0x10

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R1([IIIIIII)V

    .line 23
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x11

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R1([IIIIIII)V

    .line 24
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x12

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R1([IIIIIII)V

    .line 25
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x13

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R1([IIIIIII)V

    .line 26
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/16 v7, 0x14

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 27
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0x15

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 28
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x16

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 29
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x17

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 30
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x18

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 31
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/16 v7, 0x19

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 32
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0x1a

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 33
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x1b

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 34
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x1c

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 35
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x1d

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 36
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/16 v7, 0x1e

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 37
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0x1f

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 38
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x20

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 39
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x21

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 40
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x22

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 41
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/16 v7, 0x23

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 42
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0x24

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 43
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x25

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 44
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x26

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 45
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x27

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 46
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/16 v7, 0x28

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 47
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0x29

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 48
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x2a

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 49
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x2b

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 50
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x2c

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 51
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/16 v7, 0x2d

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 52
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0x2e

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 53
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x2f

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 54
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x30

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 55
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x31

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 56
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/16 v7, 0x32

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 57
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0x33

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 58
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x34

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 59
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x35

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 60
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x36

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 61
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/16 v7, 0x37

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 62
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0x38

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 63
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x39

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 64
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x3a

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 65
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x3b

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 66
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/16 v7, 0x3c

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 67
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0x3d

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 68
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x3e

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 69
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x3f

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 70
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x40

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 71
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/16 v7, 0x41

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 72
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0x42

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 73
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x43

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 74
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x44

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 75
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x45

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 76
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/16 v7, 0x46

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 77
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0x47

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 78
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x48

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 79
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x49

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 80
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x4a

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 81
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/16 v7, 0x4b

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 82
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0x4c

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 83
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x4d

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 84
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x4e

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 85
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x4f

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 86
    iget-object v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->state:[I

    aget v1, v0, v8

    iget-object v2, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    aget v3, v2, v8

    add-int/2addr v1, v3

    aput v1, v0, v8

    .line 87
    aget v1, v0, v9

    aget v3, v2, v9

    add-int/2addr v1, v3

    aput v1, v0, v9

    .line 88
    aget v1, v0, v10

    aget v3, v2, v10

    add-int/2addr v1, v3

    aput v1, v0, v10

    .line 89
    aget v1, v0, v11

    aget v3, v2, v11

    add-int/2addr v1, v3

    aput v1, v0, v11

    .line 90
    aget v1, v0, v12

    aget v2, v2, v12

    add-int/2addr v1, v2

    aput v1, v0, v12

    return-void
.end method

.method public declared-synchronized update(B)V
    .locals 7

    monitor-enter p0

    .line 5
    :try_start_0
    iget v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->blockIndex:I

    and-int/lit8 v1, v0, 0x3

    mul-int/lit8 v1, v1, 0x8

    .line 6
    iget-wide v2, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->count:J

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->count:J

    .line 7
    iget-object v2, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->block:[I

    shr-int/lit8 v3, v0, 0x2

    aget v4, v2, v3

    const/16 v5, 0xff

    shl-int v6, v5, v1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v4, v6

    aput v4, v2, v3

    shr-int/lit8 v3, v0, 0x2

    .line 8
    aget v4, v2, v3

    and-int/2addr p1, v5

    shl-int/2addr p1, v1

    or-int/2addr p1, v4

    aput p1, v2, v3

    add-int/lit8 v0, v0, 0x1

    .line 9
    iput v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->blockIndex:I

    const/16 p1, 0x40

    if-ne v0, p1, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/tencent/cos/utils/CommonSha1Utils;->transform()V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->blockIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update([B)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 3
    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/cos/utils/CommonSha1Utils;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update([BII)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, v0, p2

    .line 1
    :try_start_0
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/cos/utils/CommonSha1Utils;->update(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 2
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public updateASCII(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 3
    invoke-virtual {p0, v2}, Lcom/tencent/cos/utils/CommonSha1Utils;->update(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
