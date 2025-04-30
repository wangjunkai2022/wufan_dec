.class public Lcom/tencent/stat/common/e;
.super Ljava/lang/Object;


# static fields
.field static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "03a976511e2cbe3a7f26808fb7af3c05"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/common/e;->a:[B

    return-void
.end method

.method public static a([B)[B
    .locals 1

    sget-object v0, Lcom/tencent/stat/common/e;->a:[B

    invoke-static {p0, v0}, Lcom/tencent/stat/common/e;->a([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method static a([B[B)[B
    .locals 8

    const/16 v0, 0x100

    new-array v1, v0, [I

    new-array v2, v0, [I

    array-length v3, p1

    const/4 v4, 0x1

    if-lt v3, v4, :cond_3

    if-gt v3, v0, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_0

    aput v6, v1, v6

    rem-int v7, v6, v3

    aget-byte v7, p1, v7

    aput v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge p1, v0, :cond_1

    aget v6, v1, p1

    add-int/2addr v3, v6

    aget v6, v2, p1

    add-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xff

    aget v6, v1, p1

    aget v7, v1, v3

    aput v7, v1, p1

    aput v6, v1, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    array-length p1, p0

    new-array p1, p1, [B

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_2
    array-length v3, p0

    if-ge v5, v3, :cond_2

    add-int/2addr v0, v4

    and-int/lit16 v0, v0, 0xff

    aget v3, v1, v0

    add-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    aget v3, v1, v0

    aget v6, v1, v2

    aput v6, v1, v0

    aput v3, v1, v2

    aget v3, v1, v0

    aget v6, v1, v2

    add-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xff

    aget v3, v1, v3

    aget-byte v6, p0, v5

    xor-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    return-object p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key must be between 1 and 256 bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static b([B)[B
    .locals 1

    sget-object v0, Lcom/tencent/stat/common/e;->a:[B

    invoke-static {p0, v0}, Lcom/tencent/stat/common/e;->b([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method static b([B[B)[B
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/stat/common/e;->a([B[B)[B

    move-result-object p0

    return-object p0
.end method
