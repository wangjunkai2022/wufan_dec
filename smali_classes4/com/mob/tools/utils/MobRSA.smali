.class public Lcom/mob/tools/utils/MobRSA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/mob/tools/utils/MobRSA;->a:I

    return-void
.end method

.method private a([BI)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 10
    array-length v0, p1

    add-int/lit8 v1, p2, -0x1

    if-gt v0, v1, :cond_0

    .line 11
    new-array v0, p2, [B

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 12
    aput-byte v2, v0, v1

    .line 13
    array-length v3, p1

    shr-int/lit8 v4, v3, 0x18

    int-to-byte v4, v4

    .line 14
    aput-byte v4, v0, v2

    const/4 v2, 0x2

    shr-int/lit8 v4, v3, 0x10

    int-to-byte v4, v4

    .line 15
    aput-byte v4, v0, v2

    const/4 v2, 0x3

    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    .line 16
    aput-byte v4, v0, v2

    const/4 v2, 0x4

    int-to-byte v4, v3

    .line 17
    aput-byte v4, v0, v2

    sub-int/2addr p2, v3

    .line 18
    invoke-static {p1, v1, v0, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "Message too large"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a([BIILjava/math/BigInteger;Ljava/math/BigInteger;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    array-length v0, p1

    if-ne v0, p3, :cond_0

    if-eqz p2, :cond_1

    .line 2
    :cond_0
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 4
    :cond_1
    invoke-direct {p0, p1, p6}, Lcom/mob/tools/utils/MobRSA;->a([BI)[B

    move-result-object p1

    .line 5
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>([B)V

    .line 6
    invoke-virtual {p2, p5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gtz p1, :cond_2

    .line 7
    invoke-virtual {p2, p4, p5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "the message must be smaller than the modulue"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public encode([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v8, p0

    .line 1
    iget v1, v8, Lcom/mob/tools/utils/MobRSA;->a:I

    div-int/lit8 v9, v1, 0x8

    add-int/lit8 v10, v9, -0xb

    .line 2
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v14, Ljava/io/DataOutputStream;

    invoke-direct {v14, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v15, 0x0

    .line 4
    :goto_0
    :try_start_1
    array-length v1, v0

    if-le v1, v15, :cond_0

    .line 5
    array-length v1, v0

    sub-int/2addr v1, v15

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move v7, v9

    .line 6
    invoke-direct/range {v1 .. v7}, Lcom/mob/tools/utils/MobRSA;->a([BIILjava/math/BigInteger;Ljava/math/BigInteger;I)[B

    move-result-object v1

    .line 7
    array-length v2, v1

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 8
    invoke-virtual {v14, v1}, Ljava/io/DataOutputStream;->write([B)V

    add-int v15, v15, v16

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v1, v12, [Ljava/io/Closeable;

    aput-object v14, v1, v13

    .line 10
    invoke-static {v1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v14

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    new-array v2, v12, [Ljava/io/Closeable;

    aput-object v1, v2, v13

    invoke-static {v2}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 11
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
