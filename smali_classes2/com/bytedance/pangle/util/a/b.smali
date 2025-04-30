.class public final Lcom/bytedance/pangle/util/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 4

    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    const/4 v3, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 7
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 12
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p1

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 14
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 15
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 16
    throw p1

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "end > capacity: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "end < start: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < 8"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/nio/ByteBuffer;)Z
    .locals 10

    .line 60
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_6

    .line 61
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, -0x18

    invoke-static {p0, v0}, Lcom/bytedance/pangle/util/a/b;->a(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 63
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_4

    .line 64
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    const-wide/16 v5, 0x4

    const-string v7, " size out of range: "

    const-string v8, "APK Signing Block entry #"

    cmp-long v9, v3, v5

    if-ltz v9, :cond_3

    const-wide/32 v5, 0x7fffffff

    cmp-long v9, v3, v5

    if-gtz v9, :cond_3

    long-to-int v4, v3

    .line 65
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v4

    .line 66
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 67
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    const v5, -0xfac9740

    if-ne v4, v5, :cond_0

    const-string p0, "V3"

    .line 68
    sput-object p0, Lcom/bytedance/pangle/util/a/b;->a:Ljava/lang/String;

    return v2

    :cond_0
    const v5, 0x7109871a

    if-ne v4, v5, :cond_1

    const-string p0, "V2"

    .line 69
    sput-object p0, Lcom/bytedance/pangle/util/a/b;->a:Ljava/lang/String;

    return v2

    .line 70
    :cond_1
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 71
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", available: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_4
    new-instance p0, Ljava/lang/Exception;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Insufficient data to read size of APK Signing Block entry #"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return v0

    .line 75
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ByteBuffer byte order must be little endian"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static a(Ljava/io/File;)[Ljava/lang/String;
    .locals 17

    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    move-object/from16 v5, p0

    invoke-direct {v3, v5, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x16

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {v3, v2}, Lcom/bytedance/pangle/util/a/c;->a(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const v4, 0xffff

    .line 22
    invoke-static {v3, v4}, Lcom/bytedance/pangle/util/a/c;->a(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_c

    .line 23
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 24
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x14

    sub-long v8, v6, v8

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-ltz v4, :cond_2

    .line 25
    invoke-virtual {v3, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 26
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    const v8, 0x504b0607

    if-ne v4, v8, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_b

    .line 27
    invoke-static {v5}, Lcom/bytedance/pangle/util/a/c;->a(Ljava/nio/ByteBuffer;)V

    .line 28
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    const/16 v8, 0x10

    add-int/2addr v4, v8

    .line 29
    invoke-static {v5, v4}, Lcom/bytedance/pangle/util/a/c;->a(Ljava/nio/ByteBuffer;I)J

    move-result-wide v12

    cmp-long v4, v12, v6

    if-gtz v4, :cond_a

    .line 30
    invoke-static {v5}, Lcom/bytedance/pangle/util/a/c;->a(Ljava/nio/ByteBuffer;)V

    .line 31
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    .line 32
    invoke-static {v5, v4}, Lcom/bytedance/pangle/util/a/c;->a(Ljava/nio/ByteBuffer;I)J

    move-result-wide v4

    add-long/2addr v4, v12

    cmp-long v9, v4, v6

    if-nez v9, :cond_9

    const-wide/16 v4, 0x20

    cmp-long v6, v12, v4

    if-ltz v6, :cond_8

    const/16 v4, 0x18

    .line 33
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 34
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    int-to-long v6, v6

    sub-long v6, v12, v6

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 36
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    invoke-virtual {v3, v6, v7, v9}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/16 v6, 0x8

    .line 37
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    const-wide v14, 0x20676953204b5041L

    cmp-long v9, v6, v14

    if-nez v9, :cond_7

    .line 38
    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    const-wide v8, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v14, v6, v8

    if-nez v14, :cond_7

    .line 39
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    .line 40
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    int-to-long v8, v4

    cmp-long v4, v6, v8

    if-ltz v4, :cond_6

    const-wide/32 v8, 0x7ffffff7

    cmp-long v4, v6, v8

    if-gtz v4, :cond_6

    const-wide/16 v8, 0x8

    add-long/2addr v8, v6

    long-to-int v4, v8

    int-to-long v8, v4

    sub-long/2addr v12, v8

    cmp-long v8, v12, v10

    if-ltz v8, :cond_5

    .line 41
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 42
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 43
    invoke-virtual {v3, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 44
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    invoke-virtual {v3, v5, v8, v9}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 45
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-nez v3, :cond_4

    .line 46
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 47
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 48
    invoke-static {v3}, Lcom/bytedance/pangle/util/a/b;->a(Ljava/nio/ByteBuffer;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 49
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/pangle/util/e;->a([B)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    move-object v3, v0

    move-object/from16 v0, v16

    goto/16 :goto_2

    :cond_3
    const-string/jumbo v3, "without v2 & v3 signature."

    goto/16 :goto_2

    .line 50
    :cond_4
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "APK Signing Block sizes in header and footer do not match: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " vs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 51
    :cond_5
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "APK Signing Block offset out of range: "

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 52
    :cond_6
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "APK Signing Block size out of range: "

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_7
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 54
    :cond_8
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 55
    :cond_9
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "ZIP Central Directory is not immediately followed by End of Central Directory"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 56
    :cond_a
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ZIP Central Directory offset out of range: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ". ZIP End of Central Directory offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    :cond_b
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "ZIP64 APK not supported"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 58
    :cond_c
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Not an APK file: ZIP End of Central Directory record not found"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object v3, v0

    :goto_2
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v2

    .line 59
    sget-object v0, Lcom/bytedance/pangle/util/a/b;->a:Ljava/lang/String;

    aput-object v0, v4, v1

    const/4 v0, 0x2

    aput-object v3, v4, v0

    return-object v4
.end method
