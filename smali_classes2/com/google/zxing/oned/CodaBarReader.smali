.class public final Lcom/google/zxing/oned/CodaBarReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "CodaBarReader.java"


# static fields
.field static final ALPHABET:[C

.field private static final ALPHABET_STRING:Ljava/lang/String; = "0123456789-$:/.+ABCDTN"

.field static final CHARACTER_ENCODINGS:[I

.field private static final STARTEND_ENCODING:[C

.field private static final minCharacterLength:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789-$:/.+ABCDTN"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    const/16 v0, 0x16

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    const/16 v0, 0x8

    new-array v0, v0, [C

    .line 3
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
        0x1a
        0x29
    .end array-data

    :array_1
    .array-data 2
        0x45s
        0x2as
        0x41s
        0x42s
        0x43s
        0x44s
        0x54s
        0x4es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    return-void
.end method

.method static arrayContains([CC)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v2

    const/4 v3, 0x7

    new-array v3, v3, [I

    move v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    xor-int/2addr v7, v5

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    .line 4
    aget v7, v3, v6

    add-int/2addr v7, v8

    aput v7, v3, v6

    goto :goto_2

    :cond_0
    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    const/4 v9, 0x2

    .line 5
    :try_start_0
    sget-object v10, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    invoke-static {v3}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern([I)C

    move-result v11

    invoke-static {v10, v11}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v10

    if-eqz v10, :cond_1

    sub-int v10, v2, v4

    .line 6
    div-int/2addr v10, v9

    sub-int v10, v4, v10

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {p0, v10, v4, v1}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v10

    if-eqz v10, :cond_1

    new-array v10, v9, [I

    aput v4, v10, v1

    aput v2, v10, v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    .line 7
    :catch_0
    :cond_1
    aget v10, v3, v1

    aget v11, v3, v8

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    const/4 v10, 0x5

    .line 8
    invoke-static {v3, v9, v3, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v1, v3, v10

    aput v1, v3, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 9
    :goto_1
    aput v8, v3, v6

    xor-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method private static toNarrowWidePattern([I)C
    .locals 9

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 2
    aget v5, p0, v3

    if-ge v5, v2, :cond_0

    .line 3
    aget v2, p0, v3

    .line 4
    :cond_0
    aget v5, p0, v3

    if-le v5, v4, :cond_1

    .line 5
    aget v4, p0, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    .line 6
    aget v7, p0, v3

    if-le v7, v4, :cond_3

    add-int/lit8 v7, v0, -0x1

    sub-int/2addr v7, v3

    const/4 v8, 0x1

    shl-int v7, v8, v7

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    if-eq v5, v3, :cond_5

    const/4 v3, 0x3

    if-ne v5, v3, :cond_7

    :cond_5
    const/4 v3, 0x0

    .line 7
    :goto_2
    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    array-length v7, v5

    if-ge v3, v7, :cond_7

    .line 8
    aget v5, v5, v3

    if-ne v5, v6, :cond_6

    .line 9
    sget-object p0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char p0, p0, v3

    return p0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, -0x1

    if-gt v4, v2, :cond_2

    const/16 p0, 0x21

    return p0
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/zxing/oned/CodaBarReader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    aput v1, p3, v0

    .line 3
    aget v2, p3, v0

    invoke-virtual {p2, v2}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v2

    .line 4
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x7

    new-array v6, v5, [I

    :goto_0
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_0

    .line 6
    aput v1, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {p2, v2, v6}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 8
    invoke-static {v6}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern([I)C

    move-result v7

    const/16 v8, 0x21

    if-eq v7, v8, :cond_b

    .line 9
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v8, v2

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_1

    .line 10
    aget v9, v6, v7

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 11
    :cond_1
    invoke-virtual {p2, v8}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v7

    if-lt v7, v3, :cond_a

    const/4 p2, 0x0

    const/4 v8, 0x0

    :goto_3
    if-ge p2, v5, :cond_2

    .line 12
    aget v9, v6, p2

    add-int/2addr v8, v9

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_2
    sub-int p2, v7, v2

    sub-int/2addr p2, v8

    const/4 v5, 0x2

    if-eq v7, v3, :cond_4

    .line 13
    div-int/2addr p2, v5

    if-lt p2, v8, :cond_3

    goto :goto_4

    .line 14
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 15
    :cond_4
    :goto_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lt p2, v5, :cond_9

    .line 16
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p2

    .line 17
    sget-object v3, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    invoke-static {v3, p2}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    .line 18
    :goto_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 19
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, p2, :cond_5

    add-int/lit8 v6, v3, 0x1

    .line 20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eq v6, v8, :cond_5

    .line 21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {v4, v6, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 22
    :cond_6
    :goto_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v3, 0x6

    if-le p2, v3, :cond_7

    .line 23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 25
    aget p2, p3, v0

    aget p3, p3, v1

    add-int/2addr p2, p3

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    add-int/2addr v7, v2

    int-to-float v2, v7

    div-float/2addr v2, p3

    .line 26
    new-instance p3, Lcom/google/zxing/Result;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v5, [Lcom/google/zxing/ResultPoint;

    new-instance v6, Lcom/google/zxing/ResultPoint;

    int-to-float p1, p1

    invoke-direct {v6, p2, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v6, v5, v1

    new-instance p2, Lcom/google/zxing/ResultPoint;

    invoke-direct {p2, v2, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, v5, v0

    sget-object p1, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {p3, v3, v4, v5, p1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object p3

    .line 27
    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 28
    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 29
    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_a
    move v2, v7

    goto/16 :goto_0

    .line 30
    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method
