.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/decoder/Decoder$Table;
    }
.end annotation


# static fields
.field private static final DIGIT_TABLE:[Ljava/lang/String;

.field private static final LOWER_TABLE:[Ljava/lang/String;

.field private static final MIXED_TABLE:[Ljava/lang/String;

.field private static final NB_BITS:[I

.field private static final NB_BITS_COMPACT:[I

.field private static final NB_DATABLOCK:[I

.field private static final NB_DATABLOCK_COMPACT:[I

.field private static final PUNCT_TABLE:[Ljava/lang/String;

.field private static final UPPER_TABLE:[Ljava/lang/String;


# instance fields
.field private codewordSize:I

.field private ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

.field private invertedBitCount:I

.field private numCodewords:I


# direct methods
.method static constructor <clinit>()V
    .locals 33

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS_COMPACT:[I

    const/16 v1, 0x21

    new-array v2, v1, [I

    .line 2
    fill-array-data v2, :array_1

    sput-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS:[I

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK_COMPACT:[I

    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK:[I

    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "A"

    const-string v4, "B"

    const-string v5, "C"

    const-string v6, "D"

    const-string v7, "E"

    const-string v8, "F"

    const-string v9, "G"

    const-string v10, "H"

    const-string v11, "I"

    const-string v12, "J"

    const-string v13, "K"

    const-string v14, "L"

    const-string v15, "M"

    const-string v16, "N"

    const-string v17, "O"

    const-string v18, "P"

    const-string v19, "Q"

    const-string v20, "R"

    const-string v21, "S"

    const-string v22, "T"

    const-string v23, "U"

    const-string v24, "V"

    const-string v25, "W"

    const-string v26, "X"

    const-string v27, "Y"

    const-string v28, "Z"

    const-string v29, "CTRL_LL"

    const-string v30, "CTRL_ML"

    const-string v31, "CTRL_DL"

    const-string v32, "CTRL_BS"

    .line 5
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "a"

    const-string v4, "b"

    const-string v5, "c"

    const-string v6, "d"

    const-string v7, "e"

    const-string v8, "f"

    const-string v9, "g"

    const-string v10, "h"

    const-string v11, "i"

    const-string v12, "j"

    const-string v13, "k"

    const-string v14, "l"

    const-string v15, "m"

    const-string v16, "n"

    const-string v17, "o"

    const-string v18, "p"

    const-string v19, "q"

    const-string v20, "r"

    const-string v21, "s"

    const-string v22, "t"

    const-string v23, "u"

    const-string v24, "v"

    const-string/jumbo v25, "w"

    const-string/jumbo v26, "x"

    const-string/jumbo v27, "y"

    const-string/jumbo v28, "z"

    const-string v29, "CTRL_US"

    const-string v30, "CTRL_ML"

    const-string v31, "CTRL_DL"

    const-string v32, "CTRL_BS"

    .line 6
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "\u0001"

    const-string v4, "\u0002"

    const-string v5, "\u0003"

    const-string v6, "\u0004"

    const-string v7, "\u0005"

    const-string v8, "\u0006"

    const-string v9, "\u0007"

    const-string v10, "\u0008"

    const-string v11, "\t"

    const-string v12, "\n"

    const-string v13, "\u000b"

    const-string v14, "\u000c"

    const-string v15, "\r"

    const-string v16, "\u001b"

    const-string v17, "\u001c"

    const-string v18, "\u001d"

    const-string v19, "\u001e"

    const-string v20, "\u001f"

    const-string v21, "@"

    const-string v22, "\\"

    const-string v23, "^"

    const-string v24, "_"

    const-string v25, "`"

    const-string/jumbo v26, "|"

    const-string/jumbo v27, "~"

    const-string/jumbo v28, "\u007f"

    const-string v29, "CTRL_LL"

    const-string v30, "CTRL_UL"

    const-string v31, "CTRL_PL"

    const-string v32, "CTRL_BS"

    .line 7
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    const-string v1, ""

    const-string v2, "\r"

    const-string v3, "\r\n"

    const-string v4, ". "

    const-string v5, ", "

    const-string v6, ": "

    const-string v7, "!"

    const-string v8, "\""

    const-string v9, "#"

    const-string v10, "$"

    const-string v11, "%"

    const-string v12, "&"

    const-string v13, "\'"

    const-string v14, "("

    const-string v15, ")"

    const-string v16, "*"

    const-string v17, "+"

    const-string v18, ","

    const-string v19, "-"

    const-string v20, "."

    const-string v21, "/"

    const-string v22, ":"

    const-string v23, ";"

    const-string v24, "<"

    const-string v25, "="

    const-string v26, ">"

    const-string v27, "?"

    const-string v28, "["

    const-string v29, "]"

    const-string/jumbo v30, "{"

    const-string/jumbo v31, "}"

    const-string v32, "CTRL_UL"

    .line 8
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "0"

    const-string v4, "1"

    const-string v5, "2"

    const-string v6, "3"

    const-string v7, "4"

    const-string v8, "5"

    const-string v9, "6"

    const-string v10, "7"

    const-string v11, "8"

    const-string v12, "9"

    const-string v13, ","

    const-string v14, "."

    const-string v15, "CTRL_UL"

    const-string v16, "CTRL_US"

    .line 9
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x68
        0xf0
        0x198
        0x260
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x80
        0x120
        0x1e0
        0x2c0
        0x3c0
        0x4e0
        0x620
        0x780
        0x900
        0xaa0
        0xc60
        0xe40
        0x1040
        0x1260
        0x14a0
        0x1700
        0x1980
        0x1c20
        0x1ee0
        0x21c0
        0x24c0
        0x27e0
        0x2b20
        0x2e80
        0x3200
        0x35a0
        0x3960
        0x3d40
        0x4140
        0x4560
        0x49a0
        0x4e00
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x11
        0x28
        0x33
        0x4c
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x15
        0x30
        0x3c
        0x58
        0x78
        0x9c
        0xc4
        0xf0
        0xe6
        0x110
        0x13c
        0x16c
        0x1a0
        0x1d6
        0x210
        0x24c
        0x28c
        0x2d0
        0x316
        0x360
        0x3ac
        0x3fc
        0x398
        0x3e0
        0x42a
        0x478
        0x4c8
        0x51a
        0x570
        0x5c8
        0x622
        0x680
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private correctBits([Z)[Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 3
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    .line 5
    iput v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 6
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/16 v1, 0x16

    if-gt v0, v1, :cond_2

    const/16 v0, 0xa

    .line 8
    iput v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 9
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :cond_2
    const/16 v0, 0xc

    .line 10
    iput v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 11
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v1

    .line 13
    iget-object v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS_COMPACT:[I

    iget-object v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v3

    aget v2, v2, v3

    iget v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    iget v4, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    .line 15
    sget-object v3, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK_COMPACT:[I

    iget-object v4, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v4}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v4

    aget v3, v3, v4

    goto :goto_1

    .line 16
    :cond_3
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS:[I

    iget-object v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v3

    aget v2, v2, v3

    iget v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    iget v4, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    .line 17
    sget-object v3, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK:[I

    iget-object v4, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v4}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v4

    aget v3, v3, v4

    :goto_1
    sub-int/2addr v3, v1

    .line 18
    iget v4, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 19
    :goto_2
    iget v7, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    const/4 v8, 0x1

    if-ge v6, v7, :cond_6

    const/4 v7, 0x1

    .line 20
    :goto_3
    iget v9, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    if-gt v8, v9, :cond_5

    mul-int v10, v9, v6

    add-int/2addr v10, v9

    sub-int/2addr v10, v8

    add-int/2addr v10, v2

    .line 21
    aget-boolean v9, p1, v10

    if-eqz v9, :cond_4

    .line 22
    aget v9, v4, v6

    add-int/2addr v9, v7

    aput v9, v4, v6

    :cond_4
    shl-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 23
    :cond_6
    :try_start_0
    new-instance p1, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-direct {p1, v0}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 24
    invoke-virtual {p1, v4, v3}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    iput v5, p0, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    .line 26
    iget p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    mul-int p1, p1, v1

    new-array p1, p1, [Z

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v0, v1, :cond_c

    .line 27
    iget v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    sub-int/2addr v3, v8

    shl-int v3, v8, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 28
    :goto_5
    iget v10, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    if-ge v6, v10, :cond_b

    .line 29
    aget v11, v4, v0

    and-int/2addr v11, v3

    if-ne v11, v3, :cond_7

    const/4 v11, 0x1

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    :goto_6
    add-int/lit8 v12, v10, -0x1

    if-ne v7, v12, :cond_9

    if-eq v11, v9, :cond_8

    add-int/lit8 v2, v2, 0x1

    .line 30
    iget v7, p0, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    goto :goto_8

    .line 31
    :cond_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1

    :cond_9
    if-ne v9, v11, :cond_a

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_a
    move v9, v11

    const/4 v7, 0x1

    :goto_7
    mul-int v10, v10, v0

    add-int/2addr v10, v6

    sub-int/2addr v10, v2

    .line 32
    aput-boolean v11, p1, v10

    :goto_8
    ushr-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    return-object p1

    .line 33
    :catch_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method

.method private extractBits(Lcom/google/zxing/common/BitMatrix;)[Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS_COMPACT:[I

    array-length v2, v1

    if-gt v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    aget v0, v1, v0

    new-array v0, v0, [Z

    .line 4
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK_COMPACT:[I

    iget-object v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v2

    aget v1, v1, v2

    iput v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS:[I

    array-length v2, v1

    if-gt v0, v2, :cond_5

    .line 7
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    aget v0, v1, v0

    new-array v0, v0, [Z

    .line 8
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK:[I

    iget-object v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v2

    aget v1, v1, v2

    iput v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-eqz v1, :cond_4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v9, v8, -0x4

    if-ge v6, v9, :cond_2

    add-int v9, v4, v6

    add-int v10, v5, v7

    .line 11
    div-int/lit8 v11, v6, 0x2

    add-int/2addr v11, v5

    invoke-virtual {p1, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    aput-boolean v10, v0, v9

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, -0x4

    add-int/2addr v8, v6

    add-int v9, v5, v2

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v7

    .line 12
    invoke-virtual {p1, v11, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    aput-boolean v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    .line 13
    rem-int/lit8 v7, v7, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v8, 0x1

    const/4 v7, 0x0

    :goto_3
    const/4 v9, 0x5

    if-le v6, v9, :cond_3

    mul-int/lit8 v9, v2, 0x4

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x8

    sub-int v10, v8, v6

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    add-int v11, v5, v2

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v11, v7

    .line 14
    div-int/lit8 v12, v6, 0x2

    add-int/2addr v12, v5

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {p1, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    aput-boolean v11, v0, v9

    mul-int/lit8 v9, v2, 0x6

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0xc

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    add-int v10, v5, v7

    .line 15
    invoke-virtual {p1, v12, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    aput-boolean v10, v0, v9

    add-int/lit8 v7, v7, 0x1

    .line 16
    rem-int/lit8 v7, v7, 0x2

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v2, 0x8

    add-int/lit8 v6, v6, -0x10

    add-int/2addr v4, v6

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x4

    goto :goto_1

    :cond_4
    return-object v0

    .line 17
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private static getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$1;->$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 6
    :cond_4
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method private getEncodedData([Z)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v1

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    sub-int/2addr v0, v1

    .line 2
    array-length v1, p1

    if-gt v0, v1, :cond_9

    .line 3
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x0

    :cond_0
    if-nez v5, :cond_8

    const/4 v9, 0x1

    if-eqz v6, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 5
    :goto_1
    sget-object v10, Lcom/google/zxing/aztec/decoder/Decoder$1;->$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    if-eq v10, v9, :cond_5

    .line 6
    sget-object v10, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    const/4 v11, 0x5

    if-ne v1, v10, :cond_2

    const/4 v10, 0x4

    goto :goto_2

    :cond_2
    const/4 v10, 0x5

    :goto_2
    sub-int v12, v0, v7

    if-ge v12, v10, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    invoke-static {p1, v7, v10}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v12

    add-int/2addr v7, v10

    .line 8
    invoke-static {v1, v12}, Lcom/google/zxing/aztec/decoder/Decoder;->getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;

    move-result-object v10

    const-string v12, "CTRL_"

    .line 9
    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 10
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/aztec/decoder/Decoder;->getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-result-object v1

    const/4 v11, 0x6

    .line 11
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x53

    if-ne v10, v11, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    .line 12
    :cond_4
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    sub-int v10, v0, v7

    const/16 v11, 0x8

    if-ge v10, v11, :cond_6

    :goto_3
    const/4 v5, 0x1

    goto :goto_4

    .line 13
    :cond_6
    invoke-static {p1, v7, v11}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v9

    add-int/lit8 v7, v7, 0x8

    int-to-char v9, v9

    .line 14
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    :goto_4
    if-eqz v8, :cond_0

    move-object v1, v4

    const/4 v6, 0x0

    goto :goto_0

    .line 15
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 16
    :cond_9
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method private static getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .locals 1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_4

    const/16 v0, 0x44

    if-eq p0, v0, :cond_3

    const/16 v0, 0x50

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4d

    if-eq p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0
.end method

.method private static readCode([ZII)I
    .locals 3

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    shl-int/lit8 v0, v0, 0x1

    .line 1
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static removeDashedLines(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 2
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 4
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v2

    rem-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v4

    rem-int/lit8 v6, v6, 0x10

    if-nez v6, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {p0, v2, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 8
    invoke-virtual {v1, v3, v5}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 2
    invoke-virtual {p1}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {p1}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    invoke-static {p1}, Lcom/google/zxing/aztec/decoder/Decoder;->removeDashedLines(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->extractBits(Lcom/google/zxing/common/BitMatrix;)[Z

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->correctBits([Z)[Z

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/google/zxing/common/DecoderResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1, v1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method
