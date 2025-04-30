.class public final Lcom/bytedance/pangle/res/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/nio/MappedByteBuffer;ILjava/lang/String;)Lcom/bytedance/pangle/util/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/MappedByteBuffer;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/bytedance/pangle/util/d<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v0

    const v1, 0x4034b50

    if-ne v0, v1, :cond_2

    add-int/lit8 v0, p1, 0x12

    .line 76
    invoke-virtual {p0, v0}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x16

    .line 77
    invoke-virtual {p0, v1}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 78
    new-array p2, v1, [B

    add-int/lit8 v0, p1, 0x1a

    .line 79
    invoke-virtual {p0, v0}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v0

    add-int/lit8 v2, p1, 0x1c

    .line 80
    invoke-virtual {p0, v2}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v2

    add-int/lit8 p1, p1, 0x1e

    add-int/2addr p1, v0

    add-int/2addr p1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, p1, v0

    .line 81
    invoke-virtual {p0, v2}, Ljava/nio/MappedByteBuffer;->get(I)B

    move-result v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    new-instance p0, Lcom/bytedance/pangle/util/d;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/pangle/util/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 83
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is compressed. compressSize:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " size:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected: 0x04034b50, got: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " FileName:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private static a(Ljava/io/File;)Ljava/nio/MappedByteBuffer;
    .locals 10

    .line 85
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 86
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    .line 87
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    move-object v2, p0

    move-wide v6, v8

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    const/high16 v2, 0x400000

    new-array v2, v2, [B

    const-wide/32 v3, 0x400000

    .line 88
    div-long v5, v8, v3

    .line 89
    rem-long/2addr v8, v3

    long-to-int v3, v8

    const/4 v4, 0x0

    :goto_0
    int-to-long v7, v4

    cmp-long v9, v7, v5

    if-gez v9, :cond_0

    .line 90
    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-lez v3, :cond_1

    .line 91
    new-array v2, v3, [B

    .line 92
    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 93
    :cond_1
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 95
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p0, :cond_2

    .line 96
    :try_start_4
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    .line 97
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v1

    .line 98
    :try_start_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method private static a(Ljava/io/File;Ljava/util/HashSet;Lcom/bytedance/pangle/res/a/h;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/pangle/res/a/h;",
            ")V"
        }
    .end annotation

    const-string v0, "AndroidManifest.xml"

    .line 41
    invoke-static {p0}, Lcom/bytedance/pangle/res/a/c;->a(Ljava/io/File;)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0x16

    const/4 v4, 0x0

    if-lt v1, v3, :cond_1

    sub-int/2addr v1, v3

    const v3, 0xffff

    .line 43
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    sub-int v6, v1, v5

    .line 44
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    const v8, 0x6054b50

    if-ne v7, v8, :cond_0

    add-int/lit8 v7, v6, 0x14

    .line 45
    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v7

    if-ne v7, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, -0x1

    :goto_1
    if-eq v6, v2, :cond_c

    add-int/lit8 v1, v6, 0xc

    .line 46
    invoke-virtual {p0, v1}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v1

    add-int/lit8 v6, v6, 0x10

    .line 47
    invoke-virtual {p0, v6}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v2

    add-int/2addr v1, v2

    :goto_2
    if-ge v2, v1, :cond_b

    .line 48
    invoke-virtual {p0, v2}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v3

    const v5, 0x2014b50

    if-ne v3, v5, :cond_a

    add-int/lit8 v3, v2, 0x1c

    .line 49
    invoke-virtual {p0, v3}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v3

    add-int/lit8 v5, v2, 0x1e

    .line 50
    invoke-virtual {p0, v5}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v5

    .line 51
    new-array v6, v3, [B

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v3, :cond_2

    add-int/lit8 v8, v2, 0x2e

    add-int/2addr v8, v7

    .line 52
    invoke-virtual {p0, v8}, Ljava/nio/MappedByteBuffer;->get(I)B

    move-result v8

    aput-byte v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 53
    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    add-int/lit8 v6, v2, 0x14

    .line 54
    invoke-virtual {p0, v6}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v6

    add-int/lit8 v8, v2, 0x18

    .line 55
    invoke-virtual {p0, v8}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v8

    .line 56
    invoke-virtual {p1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-ne v6, v8, :cond_8

    add-int/lit8 v6, v2, 0x2a

    .line 57
    invoke-virtual {p0, v6}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v6

    .line 58
    invoke-static {p0, v6, v7}, Lcom/bytedance/pangle/res/a/c;->a(Ljava/nio/MappedByteBuffer;ILjava/lang/String;)Lcom/bytedance/pangle/util/d;

    move-result-object v6

    .line 59
    :try_start_0
    iget-object v8, v6, Lcom/bytedance/pangle/util/d;->b:Ljava/lang/Object;

    check-cast v8, [B

    .line 60
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 61
    invoke-interface {p2, v7}, Lcom/bytedance/pangle/res/a/h;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 62
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 63
    invoke-static {v8, p2}, Lcom/bytedance/pangle/res/a/k;->a([BLcom/bytedance/pangle/res/a/h;)V

    goto :goto_4

    :cond_3
    const-string v9, ".xml"

    .line 64
    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "res/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 65
    :cond_5
    invoke-static {v8, p2}, Lcom/bytedance/pangle/res/a/k;->a([BLcom/bytedance/pangle/res/a/h;)V

    goto :goto_4

    :cond_6
    const-string v9, "resources.arsc"

    .line 66
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 67
    new-instance v7, Lcom/bytedance/pangle/res/a/a;

    invoke-direct {v7, v8, p2}, Lcom/bytedance/pangle/res/a/a;-><init>([BLcom/bytedance/pangle/res/a/h;)V

    .line 68
    invoke-virtual {v7}, Lcom/bytedance/pangle/res/a/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_4
    const/4 v7, 0x0

    .line 69
    :goto_5
    iget-object v8, v6, Lcom/bytedance/pangle/util/d;->b:Ljava/lang/Object;

    check-cast v8, [B

    array-length v8, v8

    if-ge v7, v8, :cond_9

    .line 70
    iget-object v8, v6, Lcom/bytedance/pangle/util/d;->a:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v7

    iget-object v9, v6, Lcom/bytedance/pangle/util/d;->b:Ljava/lang/Object;

    check-cast v9, [B

    aget-byte v9, v9, v7

    invoke-virtual {p0, v8, v9}, Ljava/nio/MappedByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :catchall_0
    move-exception p0

    .line 71
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 72
    :cond_8
    new-instance p0, Ljava/lang/Throwable;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is compressed."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    add-int/lit8 v3, v3, 0x2e

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    goto/16 :goto_2

    .line 73
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Expected: 0x02014b50, got: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    return-void

    .line 74
    :cond_c
    new-instance p0, Ljava/lang/Throwable;

    const-string p1, "endOfCentralPosition == -1"

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method


# virtual methods
.method public final a(Ljava/io/File;ZLjava/lang/StringBuilder;)I
    .locals 18

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string/jumbo v3, "writeText failed."

    const-string v4, "resMapping"

    const-string v5, "resMappingBakFile is not exists. "

    const-string v6, "Zeus/install"

    const/16 v7, 0x12c

    .line 1
    :try_start_0
    new-instance v8, Ljava/util/zip/ZipFile;

    invoke-direct {v8, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    const-string v9, "assets/ZeusResMapping"

    .line 2
    invoke-virtual {v8, v9}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_0

    .line 3
    :try_start_2
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/16 v0, 0xc8

    return v0

    :cond_0
    const-string v10, "resMappingBak"

    if-eqz v1, :cond_2

    .line 4
    :try_start_3
    new-instance v9, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-direct {v9, v11, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 6
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    .line 8
    sget-object v12, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v13, 0x0

    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v15

    move-object v11, v9

    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v11

    .line 9
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v12

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 10
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    .line 11
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :try_start_4
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    return v7

    .line 15
    :cond_2
    :try_start_5
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    invoke-virtual {v8, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/bytedance/pangle/util/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 17
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v11

    .line 18
    :goto_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v0, "zeusResMappingContent empty, useBakFile:"

    .line 19
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "zeusResMappingContent isEmpty. useBakFile:"

    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 21
    :try_start_6
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    return v7

    .line 22
    :cond_3
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "fileNames"

    .line 24
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONArray;

    .line 25
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    const/16 v17, 0x0

    const/4 v11, 0x0

    .line 26
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_4

    .line 27
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 28
    :cond_4
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lorg/json/JSONObject;

    .line 29
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lorg/json/JSONObject;

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v17, v1, v17

    .line 30
    new-instance v4, Lcom/bytedance/pangle/res/a/c$1;

    move-object v11, v4

    move-object/from16 v12, p0

    move-object v9, v15

    move-object v15, v1

    move-object/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lcom/bytedance/pangle/res/a/c$1;-><init>(Lcom/bytedance/pangle/res/a/c;Lorg/json/JSONObject;Lorg/json/JSONObject;[ILjava/util/HashSet;)V

    invoke-static {v0, v9, v4}, Lcom/bytedance/pangle/res/a/c;->a(Ljava/io/File;Ljava/util/HashSet;Lcom/bytedance/pangle/res/a/h;)V

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "modifyRes count = "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v1, v1, v17

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/bytedance/pangle/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {v4, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Lcom/bytedance/pangle/util/g;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/StringBuilder;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_5

    .line 33
    :try_start_8
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const/16 v0, 0x64

    return v0

    .line 34
    :cond_5
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 36
    :try_start_a
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    return v7

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 37
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    .line 38
    :try_start_c
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catchall_3
    move-exception v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "modifyRes failed. catch: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v7
.end method
