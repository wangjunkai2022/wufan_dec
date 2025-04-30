.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x1d

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    const/16 v0, 0x19

    new-array v0, v0, [C

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    .line 3
    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 4
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v1, 0x384

    .line 5
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v0, 0x2

    .line 6
    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v0, -0x1

    .line 7
    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 2
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5cs
        0x7ds
        0x5fs
        0x60s
        0x7es
        0x21s
        0xds
        0x9s
        0x2cs
        0x3as
        0xas
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x22s
        0x7cs
        0x2as
        0x28s
        0x29s
        0x3fs
        0x7bs
        0x7ds
        0x27s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x26s
        0xds
        0x9s
        0x2cs
        0x3as
        0x23s
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x2bs
        0x25s
        0x2as
        0x3ds
        0x5es
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteCompaction(I[IILjava/lang/StringBuilder;)I
    .locals 24

    move/from16 v0, p0

    move-object/from16 v1, p3

    const/16 v2, 0x39a

    const/16 v4, 0x39b

    const/16 v5, 0x3a0

    const/16 v6, 0x386

    const-wide/16 v7, 0x384

    const/16 v11, 0x39c

    const/16 v12, 0x385

    const/16 v13, 0x384

    const/4 v14, 0x6

    const/16 v16, 0x0

    if-ne v0, v12, :cond_7

    new-array v0, v14, [C

    new-array v9, v14, [I

    move/from16 v10, p2

    const/4 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    .line 1
    :goto_0
    aget v3, p1, v16

    if-ge v10, v3, :cond_5

    if-nez v19, :cond_5

    add-int/lit8 v3, v10, 0x1

    .line 2
    aget v10, p1, v10

    if-ge v10, v13, :cond_1

    .line 3
    aput v10, v9, v15

    add-int/lit8 v15, v15, 0x1

    mul-long v17, v17, v7

    int-to-long v7, v10

    add-long v17, v17, v7

    :cond_0
    move v10, v3

    goto :goto_1

    :cond_1
    if-eq v10, v13, :cond_2

    if-eq v10, v12, :cond_2

    if-eq v10, v6, :cond_2

    if-eq v10, v11, :cond_2

    if-eq v10, v5, :cond_2

    if-eq v10, v4, :cond_2

    if-ne v10, v2, :cond_0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    move v10, v3

    const/16 v19, 0x1

    .line 4
    :goto_1
    rem-int/lit8 v3, v15, 0x5

    if-nez v3, :cond_4

    if-lez v15, :cond_4

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v14, :cond_3

    rsub-int/lit8 v7, v3, 0x5

    const-wide/16 v22, 0x100

    .line 5
    rem-long v14, v17, v22

    long-to-int v15, v14

    int-to-char v14, v15

    aput-char v14, v0, v7

    const/16 v7, 0x8

    shr-long v17, v17, v7

    add-int/lit8 v3, v3, 0x1

    const/4 v14, 0x6

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    :cond_4
    const-wide/16 v7, 0x384

    const/4 v14, 0x6

    goto :goto_0

    .line 7
    :cond_5
    div-int/lit8 v0, v15, 0x5

    mul-int/lit8 v0, v0, 0x5

    :goto_3
    if-ge v0, v15, :cond_6

    .line 8
    aget v2, v9, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    move v0, v10

    goto/16 :goto_9

    :cond_7
    if-ne v0, v11, :cond_d

    move/from16 v0, p2

    const/4 v3, 0x0

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    .line 9
    :goto_4
    aget v14, p1, v16

    if-ge v0, v14, :cond_e

    if-nez v3, :cond_e

    add-int/lit8 v14, v0, 0x1

    .line 10
    aget v0, p1, v0

    if-ge v0, v13, :cond_8

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v17, 0x384

    mul-long v9, v9, v17

    move/from16 p0, v3

    int-to-long v2, v0

    add-long/2addr v9, v2

    move/from16 v3, p0

    move v0, v14

    const/16 v2, 0x39a

    goto :goto_6

    :cond_8
    move/from16 p0, v3

    const-wide/16 v17, 0x384

    if-eq v0, v13, :cond_a

    if-eq v0, v12, :cond_a

    if-eq v0, v6, :cond_a

    if-eq v0, v11, :cond_a

    if-eq v0, v5, :cond_a

    if-eq v0, v4, :cond_a

    const/16 v2, 0x39a

    if-ne v0, v2, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v3, p0

    move v0, v14

    goto :goto_6

    :cond_a
    const/16 v2, 0x39a

    :goto_5
    add-int/lit8 v14, v14, -0x1

    move v0, v14

    const/4 v3, 0x1

    .line 11
    :goto_6
    rem-int/lit8 v14, v7, 0x5

    if-nez v14, :cond_c

    if-lez v7, :cond_c

    const/4 v8, 0x6

    new-array v14, v8, [C

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v8, :cond_b

    rsub-int/lit8 v19, v15, 0x5

    const-wide/16 v20, 0xff

    move/from16 p0, v3

    and-long v2, v9, v20

    long-to-int v3, v2

    int-to-char v2, v3

    .line 12
    aput-char v2, v14, v19

    const/16 v2, 0x8

    shr-long/2addr v9, v2

    add-int/lit8 v15, v15, 0x1

    move/from16 v3, p0

    const/16 v2, 0x39a

    goto :goto_7

    :cond_b
    move/from16 p0, v3

    const/16 v2, 0x8

    .line 13
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_c
    move/from16 p0, v3

    const/16 v2, 0x8

    const/4 v8, 0x6

    :goto_8
    move/from16 v3, p0

    const/16 v2, 0x39a

    goto :goto_4

    :cond_d
    move/from16 v0, p2

    :cond_e
    :goto_9
    return v0
.end method

.method static decode([I)Lcom/google/zxing/common/DecoderResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x1

    .line 2
    aget v1, p0, v1

    const/4 v2, 0x2

    :goto_0
    const/4 v3, 0x0

    .line 3
    aget v3, p0, v3

    if-ge v2, v3, :cond_3

    const/16 v3, 0x391

    if-eq v1, v3, :cond_1

    const/16 v3, 0x39c

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v2, v2, -0x1

    .line 4
    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_1

    .line 5
    :pswitch_0
    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_1

    .line 6
    :pswitch_1
    invoke-static {v1, p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_1

    .line 7
    :pswitch_2
    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_1

    .line 8
    :cond_0
    invoke-static {v1, p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {v1, p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuilder;)I

    move-result v1

    .line 10
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 11
    aget v1, p0, v1

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 13
    :cond_3
    new-instance p0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, v1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, p1, :cond_0

    .line 2
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v5, p1, v2

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p0, v2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_1

    .line 5
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .locals 15

    move-object/from16 v0, p3

    .line 1
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    const/4 v2, 0x0

    move/from16 v4, p2

    move-object v3, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_17

    .line 2
    aget v6, p0, v5

    .line 3
    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/16 v8, 0x1c

    const/16 v9, 0x1b

    const/16 v10, 0x391

    const/16 v11, 0x20

    const/16 v12, 0x1d

    const/16 v13, 0x1a

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    if-ge v6, v12, :cond_0

    .line 4
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v11, v1, v6

    goto :goto_1

    :cond_0
    if-ne v6, v12, :cond_2

    .line 5
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_4

    :pswitch_1
    if-ge v6, v13, :cond_1

    add-int/lit8 v6, v6, 0x41

    int-to-char v11, v6

    :goto_1
    move-object v1, v3

    goto/16 :goto_5

    :cond_1
    if-ne v6, v13, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v3

    goto/16 :goto_4

    :pswitch_2
    if-ge v6, v12, :cond_3

    .line 6
    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v11, v7, v6

    goto/16 :goto_5

    :cond_3
    if-ne v6, v12, :cond_4

    .line 7
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_4

    :cond_4
    if-ne v6, v10, :cond_15

    .line 8
    aget v6, p1, v5

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :pswitch_3
    const/16 v7, 0x19

    if-ge v6, v7, :cond_5

    .line 9
    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v11, v7, v6

    goto/16 :goto_5

    :cond_5
    if-ne v6, v7, :cond_6

    .line 10
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_4

    :cond_6
    if-ne v6, v13, :cond_7

    goto/16 :goto_5

    :cond_7
    if-ne v6, v9, :cond_8

    .line 11
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_4

    :cond_8
    if-ne v6, v8, :cond_9

    .line 12
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_4

    :cond_9
    if-ne v6, v12, :cond_a

    .line 13
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_2

    :cond_a
    if-ne v6, v10, :cond_15

    .line 14
    aget v6, p1, v5

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_4
    if-ge v6, v13, :cond_b

    add-int/lit8 v6, v6, 0x61

    goto :goto_3

    :cond_b
    if-ne v6, v13, :cond_c

    goto :goto_5

    :cond_c
    if-ne v6, v9, :cond_d

    .line 15
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :goto_2
    const/4 v11, 0x0

    move-object v14, v3

    move-object v3, v1

    move-object v1, v14

    goto :goto_5

    :cond_d
    if-ne v6, v8, :cond_e

    .line 16
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_4

    :cond_e
    if-ne v6, v12, :cond_f

    .line 17
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_2

    :cond_f
    if-ne v6, v10, :cond_15

    .line 18
    aget v6, p1, v5

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_5
    if-ge v6, v13, :cond_10

    add-int/lit8 v6, v6, 0x41

    :goto_3
    int-to-char v11, v6

    goto :goto_5

    :cond_10
    if-ne v6, v13, :cond_11

    goto :goto_5

    :cond_11
    if-ne v6, v9, :cond_12

    .line 19
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_4

    :cond_12
    if-ne v6, v8, :cond_13

    .line 20
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_4

    :cond_13
    if-ne v6, v12, :cond_14

    .line 21
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_2

    :cond_14
    if-ne v6, v10, :cond_15

    .line 22
    aget v6, p1, v5

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_15
    :goto_4
    const/4 v11, 0x0

    :goto_5
    if-eqz v11, :cond_16

    .line 23
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_17
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_0
    aget v4, p0, v1

    if-ge p1, v4, :cond_6

    if-nez v2, :cond_6

    add-int/lit8 v4, p1, 0x1

    .line 2
    aget p1, p0, p1

    .line 3
    aget v5, p0, v1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    const/16 v5, 0x384

    if-ge p1, v5, :cond_1

    .line 4
    aput p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-eq p1, v5, :cond_2

    const/16 v5, 0x385

    if-eq p1, v5, :cond_2

    const/16 v5, 0x39c

    if-eq p1, v5, :cond_2

    const/16 v5, 0x3a0

    if-eq p1, v5, :cond_2

    const/16 v5, 0x39b

    if-eq p1, v5, :cond_2

    const/16 v5, 0x39a

    if-ne p1, v5, :cond_3

    :cond_2
    add-int/lit8 v4, v4, -0x1

    const/4 v2, 0x1

    .line 5
    :cond_3
    :goto_1
    rem-int/lit8 v5, v3, 0xf

    if-eqz v5, :cond_4

    const/16 v5, 0x386

    if-eq p1, v5, :cond_4

    if-eqz v2, :cond_5

    .line 6
    :cond_4
    invoke-static {v0, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :cond_5
    move p1, v4

    goto :goto_0

    :cond_6
    return p1
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .locals 8

    const/4 v0, 0x0

    .line 1
    aget v1, p0, v0

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    new-array v1, v1, [I

    .line 2
    aget v3, p0, v0

    shl-int/2addr v3, v2

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3
    :goto_0
    aget v6, p0, v0

    if-ge p1, v6, :cond_3

    if-nez v4, :cond_3

    add-int/lit8 v6, p1, 0x1

    .line 4
    aget p1, p0, p1

    const/16 v7, 0x384

    if-ge p1, v7, :cond_0

    .line 5
    div-int/lit8 v7, p1, 0x1e

    aput v7, v1, v5

    add-int/lit8 v7, v5, 0x1

    .line 6
    rem-int/lit8 p1, p1, 0x1e

    aput p1, v1, v7

    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_0
    const/16 v7, 0x391

    if-eq p1, v7, :cond_2

    const/16 v7, 0x39c

    if-eq p1, v7, :cond_1

    packed-switch p1, :pswitch_data_0

    :goto_1
    move p1, v6

    goto :goto_0

    :cond_1
    :pswitch_0
    add-int/lit8 v6, v6, -0x1

    move p1, v6

    const/4 v4, 0x1

    goto :goto_0

    .line 7
    :cond_2
    aput v7, v1, v5

    add-int/lit8 p1, v6, 0x1

    .line 8
    aget v6, p0, v6

    .line 9
    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {v1, v3, v5, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    return p1

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
