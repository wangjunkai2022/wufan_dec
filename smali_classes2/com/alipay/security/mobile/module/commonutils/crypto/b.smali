.class public final Lcom/alipay/security/mobile/module/commonutils/crypto/b;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    add-int/lit8 v3, v1, 0x0

    aput-byte v0, p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static b([BI[BII)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-eqz p2, :cond_5

    if-gtz p4, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p0

    add-int v2, p1, p4

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    array-length v1, p2

    add-int v2, p3, p4

    if-ge v1, v2, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_4

    add-int v2, p1, v1

    aget-byte v2, p0, v2

    add-int v3, p3, v1

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    return v0
.end method

.method private static c([B[BI)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    if-lt p2, v1, :cond_1

    return v2

    :cond_1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    add-int v1, v0, p2

    add-int/lit8 v3, v1, 0x1

    array-length v4, p0

    if-gt v3, v4, :cond_2

    aget-byte v3, p1, v0

    aput-byte v3, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v0
.end method
