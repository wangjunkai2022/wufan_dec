.class final Lcom/bytedance/pangle/f/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/pangle/f/f$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/pangle/f/m;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/pangle/f/f;->a:Ljava/util/HashMap;

    return-void
.end method

.method static a(I)I
    .locals 4

    const/16 v0, 0x201

    if-eq p0, v0, :cond_2

    const/16 v0, 0x202

    if-eq p0, v0, :cond_1

    const/16 v0, 0x301

    if-eq p0, v0, :cond_2

    const/16 v0, 0x421

    if-eq p0, v0, :cond_0

    const/16 v0, 0x423

    if-eq p0, v0, :cond_0

    const/16 v0, 0x425

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown signature algorithm: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 p0, p0, -0x1

    int-to-long v2, p0

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    :pswitch_0
    const/4 p0, 0x2

    return p0

    :cond_2
    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(II)I
    .locals 6

    .line 88
    invoke-static {p0}, Lcom/bytedance/pangle/f/f;->a(I)I

    move-result p0

    .line 89
    invoke-static {p1}, Lcom/bytedance/pangle/f/f;->a(I)I

    move-result p1

    const/4 v0, -0x1

    const-string v1, "Unknown digestAlgorithm2: "

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p0, v5, :cond_8

    if-eq p0, v4, :cond_4

    if-ne p0, v3, :cond_3

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_1

    if-ne p1, v3, :cond_0

    return v2

    .line 90
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v0

    :cond_2
    return v5

    .line 91
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unknown digestAlgorithm1: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_6

    if-ne p1, v3, :cond_5

    goto :goto_0

    .line 92
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return v2

    :cond_7
    :goto_0
    return v5

    :cond_8
    if-eq p1, v5, :cond_b

    if-eq p1, v4, :cond_a

    if-ne p1, v3, :cond_9

    goto :goto_1

    .line 93
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_1
    return v0

    :cond_b
    return v2
.end method

.method static a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4

    .line 113
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 114
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-ltz v0, :cond_1

    .line 115
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 116
    invoke-static {p0, v0}, Lcom/bytedance/pangle/f/f;->b(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 117
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Length-prefixed field longer than remaining buffer. Field length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remaining: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Negative length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 120
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remaining buffer too short to contain length of length-prefixed field. Remaining: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 4

    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    .line 95
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    .line 96
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 97
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 98
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    const/4 v3, 0x0

    .line 99
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 100
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 101
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 103
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 105
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 106
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p1

    :catchall_0
    move-exception p1

    .line 107
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 109
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    throw p1

    .line 111
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

    .line 112
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

.method private static a(I[B)V
    .locals 2

    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x1

    .line 122
    aput-byte v0, p1, v1

    ushr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x2

    .line 123
    aput-byte v0, p1, v1

    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x3

    .line 124
    aput-byte v0, p1, v1

    ushr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v0, 0x4

    .line 125
    aput-byte p0, p1, v0

    return-void
.end method

.method static varargs a(Ljava/lang/String;Ljava/io/RandomAccessFile;[I)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 126
    sget-object v2, Lcom/bytedance/pangle/f/f;->a:Ljava/util/HashMap;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x16

    cmp-long v8, v2, v6

    if-gez v8, :cond_0

    move-object v2, v4

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {v1, v5}, Lcom/bytedance/pangle/f/s;->a(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const v2, 0xffff

    .line 129
    invoke-static {v1, v2}, Lcom/bytedance/pangle/f/s;->a(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_14

    .line 130
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 131
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v6, 0x14

    sub-long v6, v14, v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-ltz v2, :cond_2

    .line 132
    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 133
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const v6, 0x504b0607

    if-ne v2, v6, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_13

    .line 134
    invoke-static {v3}, Lcom/bytedance/pangle/f/s;->a(Ljava/nio/ByteBuffer;)V

    .line 135
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    const/16 v6, 0x10

    add-int/2addr v2, v6

    .line 136
    invoke-static {v3, v2}, Lcom/bytedance/pangle/f/s;->a(Ljava/nio/ByteBuffer;I)J

    move-result-wide v12

    cmp-long v2, v12, v14

    if-gtz v2, :cond_12

    .line 137
    invoke-static {v3}, Lcom/bytedance/pangle/f/s;->a(Ljava/nio/ByteBuffer;)V

    .line 138
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    .line 139
    invoke-static {v3, v2}, Lcom/bytedance/pangle/f/s;->a(Ljava/nio/ByteBuffer;I)J

    move-result-wide v10

    add-long/2addr v10, v12

    cmp-long v2, v10, v14

    if-nez v2, :cond_11

    const-wide/16 v10, 0x20

    cmp-long v2, v12, v10

    if-ltz v2, :cond_10

    const/16 v2, 0x18

    .line 140
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 141
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 142
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    move-object/from16 v16, v3

    int-to-long v2, v11

    sub-long v2, v12, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 143
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    invoke-virtual {v1, v2, v3, v11}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/16 v2, 0x8

    .line 144
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v18

    const-wide v20, 0x20676953204b5041L

    cmp-long v3, v18, v20

    if-nez v3, :cond_7

    .line 145
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v18

    const-wide v20, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v3, v18, v20

    if-eqz v3, :cond_3

    goto/16 :goto_2

    .line 146
    :cond_3
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v3

    .line 147
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    int-to-long v6, v6

    cmp-long v11, v3, v6

    if-ltz v11, :cond_6

    const-wide/32 v6, 0x7ffffff7

    cmp-long v11, v3, v6

    if-gtz v11, :cond_6

    const-wide/16 v6, 0x8

    add-long/2addr v6, v3

    long-to-int v7, v6

    move-wide/from16 v19, v3

    int-to-long v2, v7

    sub-long v2, v12, v2

    cmp-long v4, v2, v8

    if-ltz v4, :cond_5

    .line 148
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 149
    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 150
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 151
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 152
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    cmp-long v1, v6, v19

    if-nez v1, :cond_4

    .line 153
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    goto :goto_2

    .line 154
    :cond_4
    new-instance v0, Lcom/bytedance/pangle/f/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "APK Signing Block sizes in header and footer do not match: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v19

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/pangle/f/n;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_5
    new-instance v0, Lcom/bytedance/pangle/f/n;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "APK Signing Block offset out of range: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/pangle/f/n;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-wide v2, v3

    .line 156
    new-instance v0, Lcom/bytedance/pangle/f/n;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "APK Signing Block size out of range: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/pangle/f/n;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    if-nez v4, :cond_8

    return-void

    .line 157
    :cond_8
    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 158
    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 159
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    if-ne v4, v10, :cond_f

    .line 160
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    const/16 v6, 0x18

    sub-int/2addr v4, v6

    invoke-static {v1, v4}, Lcom/bytedance/pangle/f/f;->a(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 161
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    :goto_3
    const/4 v6, 0x2

    if-ge v5, v6, :cond_9

    .line 162
    aget v6, p2, v5

    .line 163
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 164
    :cond_9
    :goto_4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 165
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/16 v10, 0x8

    if-ge v5, v10, :cond_a

    return-void

    .line 166
    :cond_a
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    const-wide/16 v7, 0x4

    cmp-long v9, v5, v7

    if-ltz v9, :cond_e

    const-wide/32 v7, 0x7fffffff

    cmp-long v9, v5, v7

    if-lez v9, :cond_b

    goto/16 :goto_6

    :cond_b
    long-to-int v6, v5

    .line 167
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v6

    .line 168
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-le v6, v7, :cond_c

    return-void

    .line 169
    :cond_c
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 170
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 171
    sget-object v7, Lcom/bytedance/pangle/f/f;->a:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroid/util/SparseArray;

    new-instance v9, Lcom/bytedance/pangle/f/m;

    add-int/lit8 v6, v6, -0x4

    .line 172
    invoke-static {v1, v6}, Lcom/bytedance/pangle/f/f;->b(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v7

    move-object v6, v9

    move-object/from16 p1, v4

    move-object v0, v8

    move-object v4, v9

    move-wide v8, v2

    move-wide/from16 v17, v2

    move v2, v11

    const/16 v3, 0x8

    move-wide v10, v12

    move-wide/from16 v19, v12

    move-wide v12, v14

    move-wide/from16 v22, v14

    move-object/from16 v14, v16

    invoke-direct/range {v6 .. v14}, Lcom/bytedance/pangle/f/m;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V

    .line 173
    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    :cond_d
    move-wide/from16 v17, v2

    move-object/from16 p1, v4

    move-wide/from16 v19, v12

    move-wide/from16 v22, v14

    const/16 v3, 0x8

    .line 174
    :goto_5
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-wide/from16 v2, v17

    move-wide/from16 v12, v19

    move-wide/from16 v14, v22

    goto :goto_4

    :cond_e
    :goto_6
    return-void

    .line 175
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer byte order must be little endian"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-wide/from16 v19, v12

    .line 176
    new-instance v0, Lcom/bytedance/pangle/f/n;

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/pangle/f/n;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_11
    new-instance v0, Lcom/bytedance/pangle/f/n;

    const-string v1, "ZIP Central Directory is not immediately followed by End of Central Directory"

    invoke-direct {v0, v1}, Lcom/bytedance/pangle/f/n;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move-wide/from16 v19, v12

    move-wide/from16 v22, v14

    .line 178
    new-instance v0, Lcom/bytedance/pangle/f/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ZIP Central Directory offset out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v2, v19

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". ZIP End of Central Directory offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v22

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/pangle/f/n;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_13
    new-instance v0, Lcom/bytedance/pangle/f/n;

    const-string v1, "ZIP64 APK not supported"

    invoke-direct {v0, v1}, Lcom/bytedance/pangle/f/n;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_14
    new-instance v0, Lcom/bytedance/pangle/f/n;

    const-string v1, "Not an APK file: ZIP End of Central Directory record not found"

    invoke-direct {v0, v1}, Lcom/bytedance/pangle/f/n;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method private static a(Ljava/util/Map;Ljava/io/FileDescriptor;Lcom/bytedance/pangle/f/m;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/io/FileDescriptor;",
            "Lcom/bytedance/pangle/f/m;",
            ")V"
        }
    .end annotation

    .line 19
    new-instance v6, Lcom/bytedance/pangle/f/l;

    iget-wide v4, p2, Lcom/bytedance/pangle/f/m;->b:J

    const-wide/16 v2, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/pangle/f/l;-><init>(Ljava/io/FileDescriptor;JJ)V

    .line 20
    new-instance v0, Lcom/bytedance/pangle/f/l;

    iget-wide v9, p2, Lcom/bytedance/pangle/f/m;->c:J

    iget-wide v1, p2, Lcom/bytedance/pangle/f/m;->d:J

    sub-long v11, v1, v9

    move-object v7, v0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/bytedance/pangle/f/l;-><init>(Ljava/io/FileDescriptor;JJ)V

    .line 21
    iget-object p1, p2, Lcom/bytedance/pangle/f/m;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 22
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 23
    iget-wide v1, p2, Lcom/bytedance/pangle/f/m;->b:J

    .line 24
    invoke-static {p1}, Lcom/bytedance/pangle/f/s;->a(Ljava/nio/ByteBuffer;)V

    .line 25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/lit8 p2, p2, 0x10

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    const-wide v3, 0xffffffffL

    cmp-long v5, v1, v3

    if-gtz v5, :cond_3

    .line 26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, p2

    long-to-int p2, v1

    invoke-virtual {p1, v3, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 27
    new-instance p2, Lcom/bytedance/pangle/f/h;

    invoke-direct {p2, p1}, Lcom/bytedance/pangle/f/h;-><init>(Ljava/nio/ByteBuffer;)V

    .line 28
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p1

    new-array v1, p1, [I

    .line 29
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 30
    aput v5, v1, v4

    add-int/2addr v4, v7

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    :try_start_0
    new-array v2, v2, [Lcom/bytedance/pangle/f/k;

    aput-object v6, v2, v3

    aput-object v0, v2, v7

    const/4 v0, 0x2

    aput-object p2, v2, v0

    .line 31
    invoke-static {v1, v2}, Lcom/bytedance/pangle/f/f;->a([I[Lcom/bytedance/pangle/f/k;)[[B

    move-result-object p2
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ge v3, p1, :cond_2

    .line 32
    aget v0, v1, v3

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 34
    aget-object v4, p2, v3

    .line 35
    invoke-static {v2, v4}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 36
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/bytedance/pangle/f/f;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " digest of contents did not verify"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 37
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Failed to compute digest(s) of contents"

    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 38
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "uint32 value of out range: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method static a(Ljava/util/Map;Ljava/io/RandomAccessFile;Lcom/bytedance/pangle/f/m;)V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/io/RandomAccessFile;",
            "Lcom/bytedance/pangle/f/m;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v2, 0x2

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 8
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/bytedance/pangle/f/f;->a(Ljava/util/Map;Ljava/io/FileDescriptor;Lcom/bytedance/pangle/f/m;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Cannot get FD"

    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    :goto_0
    const/4 v0, 0x3

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 12
    :try_start_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    invoke-static {p0, v0, v1, p2}, Lcom/bytedance/pangle/f/f;->a([BJLcom/bytedance/pangle/f/m;)[B

    move-result-object p0

    .line 13
    new-instance v0, Lcom/bytedance/pangle/f/f$1;

    invoke-direct {v0}, Lcom/bytedance/pangle/f/f$1;-><init>()V

    invoke-static {p1, p2, v0}, Lcom/bytedance/pangle/f/g;->a(Ljava/io/RandomAccessFile;Lcom/bytedance/pangle/f/m;Lcom/bytedance/pangle/f/i;)Lcom/bytedance/pangle/f/g$a;

    move-result-object p1

    .line 14
    iget-object p1, p1, Lcom/bytedance/pangle/f/g$a;->b:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "APK verity digest of contents did not verify"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/security/DigestException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    .line 16
    :goto_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Error during verification"

    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    move v3, v1

    :goto_2
    if-nez v3, :cond_5

    return-void

    .line 17
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No known digest exists for integrity check"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No digests provided"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a([BJLcom/bytedance/pangle/f/m;)[B
    .locals 8

    .line 80
    array-length v0, p0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_1

    .line 81
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x20

    .line 82
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 83
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 84
    iget-wide v4, p3, Lcom/bytedance/pangle/f/m;->c:J

    iget-wide v6, p3, Lcom/bytedance/pangle/f/m;->b:J

    sub-long/2addr v4, v6

    sub-long/2addr p1, v4

    cmp-long p3, v2, p1

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 85
    invoke-static {p0, p1, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    .line 86
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "APK content size did not verify"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 87
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Verity digest size is wrong: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a([I[Lcom/bytedance/pangle/f/k;)[[B
    .locals 25

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    const/4 v4, 0x0

    :goto_0
    const/4 v7, 0x3

    const-wide/32 v8, 0x100000

    if-ge v4, v7, :cond_0

    .line 39
    aget-object v7, p1, v4

    .line 40
    invoke-interface {v7}, Lcom/bytedance/pangle/f/k;->a()J

    move-result-wide v10

    add-long/2addr v10, v8

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    .line 41
    div-long/2addr v10, v8

    add-long/2addr v5, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 v10, 0x1fffff

    cmp-long v4, v5, v10

    if-gez v4, :cond_9

    long-to-int v4, v5

    .line 42
    array-length v5, v0

    new-array v5, v5, [[B

    const/4 v6, 0x0

    .line 43
    :goto_1
    array-length v10, v0

    const/4 v11, 0x5

    if-ge v6, v10, :cond_1

    .line 44
    aget v10, v0, v6

    .line 45
    invoke-static {v10}, Lcom/bytedance/pangle/f/f;->e(I)I

    move-result v10

    mul-int v10, v10, v4

    add-int/2addr v10, v11

    .line 46
    new-array v10, v10, [B

    const/16 v11, 0x5a

    .line 47
    aput-byte v11, v10, v3

    .line 48
    invoke-static {v4, v10}, Lcom/bytedance/pangle/f/f;->a(I[B)V

    .line 49
    aput-object v10, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    new-array v4, v11, [B

    const/16 v6, -0x5b

    aput-byte v6, v4, v3

    .line 50
    array-length v6, v0

    new-array v10, v6, [Ljava/security/MessageDigest;

    const/4 v12, 0x0

    .line 51
    :goto_2
    array-length v13, v0

    const-string v14, " digest not supported"

    if-ge v12, v13, :cond_2

    .line 52
    aget v13, v0, v12

    invoke-static {v13}, Lcom/bytedance/pangle/f/f;->b(I)Ljava/lang/String;

    move-result-object v13

    .line 53
    :try_start_0
    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v15

    aput-object v15, v10, v12
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 55
    :cond_2
    new-instance v12, Lcom/bytedance/pangle/f/f$a;

    invoke-direct {v12, v10}, Lcom/bytedance/pangle/f/f$a;-><init>([Ljava/security/MessageDigest;)V

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_3
    if-ge v13, v7, :cond_7

    .line 56
    aget-object v3, p1, v13

    .line 57
    invoke-interface {v3}, Lcom/bytedance/pangle/f/k;->a()J

    move-result-wide v17

    move-wide/from16 v19, v1

    move/from16 v7, v16

    move-wide/from16 v23, v17

    move-object/from16 v17, v12

    move-wide/from16 v11, v23

    :goto_4
    cmp-long v18, v11, v1

    if-lez v18, :cond_6

    .line 58
    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 59
    invoke-static {v2, v4}, Lcom/bytedance/pangle/f/f;->a(I[B)V

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v6, :cond_3

    .line 60
    aget-object v8, v10, v1

    invoke-virtual {v8, v4}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v1, v1, 0x1

    const-wide/32 v8, 0x100000

    goto :goto_5

    :cond_3
    move-object/from16 v1, v17

    move-wide/from16 v8, v19

    .line 61
    :try_start_1
    invoke-interface {v3, v1, v8, v9, v2}, Lcom/bytedance/pangle/f/k;->a(Lcom/bytedance/pangle/f/j;JI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    const/4 v1, 0x0

    .line 62
    :goto_6
    array-length v3, v0

    if-ge v1, v3, :cond_5

    .line 63
    aget v3, v0, v1

    move-object/from16 v19, v4

    .line 64
    aget-object v4, v5, v1

    .line 65
    invoke-static {v3}, Lcom/bytedance/pangle/f/f;->e(I)I

    move-result v3

    move/from16 v20, v6

    .line 66
    aget-object v6, v10, v1

    mul-int v21, v7, v3

    move-object/from16 v22, v10

    const/16 v16, 0x5

    add-int/lit8 v10, v21, 0x5

    .line 67
    invoke-virtual {v6, v4, v10, v3}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v4

    if-ne v4, v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v19

    move/from16 v6, v20

    move-object/from16 v10, v22

    goto :goto_6

    .line 68
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected output size of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object/from16 v19, v4

    move/from16 v20, v6

    move-object/from16 v22, v10

    const/16 v16, 0x5

    int-to-long v1, v2

    add-long v3, v8, v1

    sub-long/2addr v11, v1

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v1, 0x0

    const-wide/32 v8, 0x100000

    move-wide/from16 v23, v3

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-wide/from16 v19, v23

    goto/16 :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 69
    new-instance v0, Ljava/security/DigestException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to digest chunk #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " of section #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    move-object/from16 v19, v4

    move/from16 v20, v6

    move-object/from16 v22, v10

    const/16 v16, 0x5

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v16, v7

    move-object/from16 v12, v17

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x3

    const-wide/32 v8, 0x100000

    const/4 v11, 0x5

    goto/16 :goto_3

    .line 70
    :cond_7
    array-length v1, v0

    new-array v1, v1, [[B

    const/4 v3, 0x0

    .line 71
    :goto_7
    array-length v2, v0

    if-ge v3, v2, :cond_8

    .line 72
    aget v2, v0, v3

    .line 73
    aget-object v4, v5, v3

    .line 74
    invoke-static {v2}, Lcom/bytedance/pangle/f/f;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 75
    :try_start_2
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 76
    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 77
    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    return-object v1

    .line 79
    :cond_9
    new-instance v0, Ljava/security/DigestException;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Too many chunks: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method static b(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unknown content digest algorthm: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "SHA-512"

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "SHA-256"

    return-object p0
.end method

.method private static b(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 3

    if-ltz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr p1, v1

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 9
    throw p1

    .line 10
    :cond_0
    new-instance p0, Ljava/nio/BufferUnderflowException;

    invoke-direct {p0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "size: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static b(Ljava/nio/ByteBuffer;)[B
    .locals 4

    .line 12
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-ltz v0, :cond_1

    .line 13
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 14
    new-array v0, v0, [B

    .line 15
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0

    .line 16
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Underflow while reading length-prefixed value. Length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", available: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Negative length"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static c(I)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x201

    if-eq p0, v0, :cond_2

    const/16 v0, 0x202

    if-eq p0, v0, :cond_2

    const/16 v0, 0x301

    if-eq p0, v0, :cond_1

    const/16 v0, 0x421

    if-eq p0, v0, :cond_0

    const/16 v0, 0x423

    if-eq p0, v0, :cond_2

    const/16 v0, 0x425

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown signature algorithm: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 p0, p0, -0x1

    int-to-long v2, p0

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :pswitch_0
    const-string p0, "RSA"

    return-object p0

    :cond_1
    const-string p0, "DSA"

    return-object p0

    :cond_2
    const-string p0, "EC"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static d(I)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x201

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    const/16 v0, 0x202

    if-eq p0, v0, :cond_2

    const/16 v0, 0x301

    if-eq p0, v0, :cond_1

    const/16 v0, 0x421

    if-eq p0, v0, :cond_0

    const/16 v0, 0x423

    if-eq p0, v0, :cond_3

    const/16 v0, 0x425

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown signature algorithm: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 p0, p0, -0x1

    int-to-long v2, p0

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "SHA512withRSA"

    .line 2
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 3
    :pswitch_1
    new-instance p0, Ljava/security/spec/PSSParameterSpec;

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v4, 0x40

    const/4 v5, 0x1

    const-string v1, "SHA-512"

    const-string v2, "MGF1"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v0, "SHA512withRSA/PSS"

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_2
    new-instance p0, Ljava/security/spec/PSSParameterSpec;

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v4, 0x20

    const/4 v5, 0x1

    const-string v1, "SHA-256"

    const-string v2, "MGF1"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v0, "SHA256withRSA/PSS"

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    :pswitch_3
    const-string p0, "SHA256withRSA"

    .line 5
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "SHA256withDSA"

    .line 6
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "SHA512withECDSA"

    .line 7
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "SHA256withECDSA"

    .line 8
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private static e(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unknown content digest algorthm: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p0, 0x40

    return p0

    :cond_2
    :goto_0
    const/16 p0, 0x20

    return p0
.end method
