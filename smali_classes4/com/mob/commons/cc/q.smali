.class public Lcom/mob/commons/cc/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/cc/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mob/commons/cc/t<",
        "Lcom/mob/commons/cc/q;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([BI)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 46
    array-length v0, p1

    add-int/lit8 v1, p2, -0x1

    if-gt v0, v1, :cond_0

    .line 47
    new-array v0, p2, [B

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 48
    aput-byte v2, v0, v1

    .line 49
    array-length v3, p1

    shr-int/lit8 v4, v3, 0x18

    int-to-byte v4, v4

    .line 50
    aput-byte v4, v0, v2

    const/4 v2, 0x2

    shr-int/lit8 v4, v3, 0x10

    int-to-byte v4, v4

    .line 51
    aput-byte v4, v0, v2

    const/4 v2, 0x3

    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    .line 52
    aput-byte v4, v0, v2

    const/4 v2, 0x4

    int-to-byte v4, v3

    .line 53
    aput-byte v4, v0, v2

    sub-int/2addr p2, v3

    .line 54
    invoke-static {p1, v1, v0, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 55
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

    .line 37
    array-length v0, p1

    if-ne v0, p3, :cond_0

    if-eqz p2, :cond_1

    .line 38
    :cond_0
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 39
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 40
    :cond_1
    invoke-direct {p0, p1, p6}, Lcom/mob/commons/cc/q;->a([BI)[B

    move-result-object p1

    .line 41
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>([B)V

    .line 42
    invoke-virtual {p2, p5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gtz p1, :cond_2

    .line 43
    invoke-virtual {p2, p4, p5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    return-object p1

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "the message must be smaller than the modulue"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B

    const-string v2, "003Legdgfc"

    .line 6
    invoke-static {v2}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 7
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v2, v1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 9
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :catchall_0
    invoke-virtual {p0, v0}, Lcom/mob/commons/cc/q;->b([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a([B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    array-length v1, p1

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 4
    invoke-virtual {p0, v2}, Lcom/mob/commons/cc/q;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    :catchall_0
    return-object v0
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 14
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 15
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 16
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 17
    invoke-virtual {v5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    :cond_3
    if-nez v3, :cond_0

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public a(Lcom/mob/commons/cc/q;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/cc/q;",
            "Ljava/lang/Class<",
            "Lcom/mob/commons/cc/q;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[Z[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    const-string p2, "bm5"

    .line 56
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length p2, p4

    if-ne p2, p5, :cond_0

    .line 57
    aget-object p2, p4, v0

    check-cast p2, [B

    invoke-virtual {p1, p2}, Lcom/mob/commons/cc/q;->a([B)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p6, v0

    return p5

    :cond_0
    const-string p2, "sm5"

    .line 58
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 59
    aget-object p2, p4, v0

    check-cast p2, Ljava/io/InputStream;

    invoke-virtual {p1, p2}, Lcom/mob/commons/cc/q;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p6, v0

    return p5

    :cond_1
    const-string p2, "thx"

    .line 60
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 61
    aget-object p2, p4, v0

    check-cast p2, [B

    invoke-virtual {p1, p2}, Lcom/mob/commons/cc/q;->b([B)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p6, v0

    return p5

    :cond_2
    const-string p2, "fnil"

    .line 62
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eqz p2, :cond_3

    array-length p2, p4

    if-ne p2, v2, :cond_3

    .line 63
    aget-object p2, p4, v0

    check-cast p2, Ljava/util/ArrayList;

    aget-object p3, p4, p5

    check-cast p3, Ljava/util/ArrayList;

    aget-object p4, p4, v1

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p4}, Lcom/mob/commons/cc/q;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    aput-object p1, p6, v0

    return p5

    :cond_3
    const-string p1, "aesen"

    .line 64
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v3, 0x4

    if-eqz p1, :cond_4

    array-length p1, p4

    if-ne p1, v3, :cond_4

    .line 65
    :try_start_0
    aget-object p1, p4, v0

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, p5

    check-cast p3, Ljava/lang/String;

    aget-object v1, p4, v1

    check-cast v1, [B

    aget-object p4, p4, v2

    check-cast p4, [B

    invoke-virtual {p0, p1, p3, v1, p4}, Lcom/mob/commons/cc/q;->a(Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object p1

    aput-object p1, p6, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 66
    aput-object p2, p6, v0

    .line 67
    aput-object p1, p7, v0

    :goto_0
    return p5

    :cond_4
    const-string p1, "005%bdJg;de>fg"

    .line 68
    invoke-static {p1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    array-length p1, p4

    if-ne p1, v3, :cond_5

    .line 69
    :try_start_1
    aget-object p1, p4, v0

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, p5

    check-cast p3, Ljava/lang/String;

    aget-object v1, p4, v1

    check-cast v1, [B

    aget-object p4, p4, v2

    check-cast p4, [B

    invoke-virtual {p0, p1, p3, v1, p4}, Lcom/mob/commons/cc/q;->b(Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object p1

    aput-object p1, p6, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 70
    aput-object p2, p6, v0

    .line 71
    aput-object p1, p7, v0

    :goto_1
    return p5

    :cond_5
    const-string p1, "006(bdUg\'deMf5db+c"

    .line 72
    invoke-static {p1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    array-length p1, p4

    if-ne p1, v3, :cond_6

    .line 73
    :try_start_2
    aget-object p1, p4, v0

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, p5

    check-cast p3, Ljava/lang/String;

    aget-object v1, p4, v1

    check-cast v1, [B

    aget-object p4, p4, v2

    check-cast p4, [B

    invoke-virtual {p0, p1, p3, v1, p4}, Lcom/mob/commons/cc/q;->c(Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object p1

    aput-object p1, p6, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 74
    aput-object p2, p6, v0

    .line 75
    aput-object p1, p7, v0

    :goto_2
    return p5

    :cond_6
    const-string p1, "enc"

    .line 76
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    array-length p1, p4

    if-ne p1, v3, :cond_7

    .line 77
    :try_start_3
    aget-object p1, p4, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p3, p4, p5

    check-cast p3, [B

    aget-object v1, p4, v1

    check-cast v1, Ljava/math/BigInteger;

    aget-object p4, p4, v2

    check-cast p4, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p3, v1, p4}, Lcom/mob/commons/cc/q;->a(I[BLjava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object p1

    aput-object p1, p6, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    .line 78
    aput-object p2, p6, v0

    .line 79
    aput-object p1, p7, v0

    :goto_3
    return p5

    :cond_7
    const-string p1, "d"

    .line 80
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 81
    array-length p1, p4

    const-string p2, "%s"

    if-ne p1, p5, :cond_8

    aget-object p1, p4, v0

    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 82
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p3, p5, [Ljava/lang/Object;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "[sasa] "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p4, p4, v0

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v0

    invoke-virtual {p1, p2, p3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_4

    .line 83
    :cond_8
    array-length p1, p4

    if-ne p1, p5, :cond_9

    aget-object p1, p4, v0

    instance-of p1, p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_9

    .line 84
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    aget-object p3, p4, v0

    check-cast p3, Ljava/lang/Throwable;

    new-array p4, p5, [Ljava/lang/Object;

    const-string p6, "[sasa]"

    aput-object p6, p4, v0

    invoke-virtual {p1, p3, p2, p4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_9
    :goto_4
    return p5

    :cond_a
    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/mob/commons/cc/q;

    invoke-virtual/range {p0 .. p7}, Lcom/mob/commons/cc/q;->a(Lcom/mob/commons/cc/q;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public a(I[BLjava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 26
    div-int/lit8 v8, p1, 0x8

    add-int/lit8 v9, v8, -0xb

    .line 27
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v1, 0x0

    .line 28
    :try_start_0
    new-instance v13, Ljava/io/DataOutputStream;

    invoke-direct {v13, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v14, 0x0

    .line 29
    :goto_0
    :try_start_1
    array-length v1, v0

    if-le v1, v14, :cond_0

    .line 30
    array-length v1, v0

    sub-int/2addr v1, v14

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v15

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v3, v14

    move v4, v15

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move v7, v8

    .line 31
    invoke-direct/range {v1 .. v7}, Lcom/mob/commons/cc/q;->a([BIILjava/math/BigInteger;Ljava/math/BigInteger;I)[B

    move-result-object v1

    .line 32
    array-length v2, v1

    invoke-virtual {v13, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 33
    invoke-virtual {v13, v1}, Ljava/io/DataOutputStream;->write([B)V

    add-int/2addr v14, v15

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v1, v11, [Ljava/io/Closeable;

    aput-object v13, v1, v12

    .line 35
    invoke-static {v1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v13

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    new-array v2, v11, [Ljava/io/Closeable;

    aput-object v1, v2, v12

    invoke-static {v2}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 36
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 19
    array-length v2, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {p3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "003:chebcf"

    invoke-static {v0}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 21
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->getCipher(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 p2, 0x1

    .line 22
    invoke-virtual {p1, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 23
    array-length p2, p4

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p2

    new-array p2, p2, [B

    const/4 v4, 0x0

    .line 24
    array-length v5, p4

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p4

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result p3

    .line 25
    invoke-virtual {p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BI)I

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b([B)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    array-length v0, p1

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 3
    aget-byte v5, p1, v3

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%02x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 5
    array-length v2, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {p3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "003>chebcf"

    invoke-static {v0}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 7
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->getCipher(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 p2, 0x2

    .line 8
    invoke-virtual {p1, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 9
    array-length p2, p4

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    .line 10
    array-length p2, p4

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p2

    new-array p2, p2, [B

    const/4 v4, 0x0

    .line 11
    array-length v5, p4

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p4

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result p3

    .line 12
    invoke-virtual {p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BI)I

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 1
    array-length v2, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {p3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "003Pchebcf"

    invoke-static {v0}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->getCipher(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 p2, 0x2

    .line 4
    invoke-virtual {p1, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 5
    invoke-virtual {p1, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
