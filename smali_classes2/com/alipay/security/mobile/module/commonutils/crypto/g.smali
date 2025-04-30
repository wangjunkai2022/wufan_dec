.class public final Lcom/alipay/security/mobile/module/commonutils/crypto/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B

.field public static final b:[B

.field public static final c:I = 0x8

.field public static final d:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "7B726A5DDD72CBF8D1700FB6EB278AFD7559C40A3761E5A71614D0AC9461ED8EE9F6AAEB443CD648"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/e;->d(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/commonutils/crypto/g;->a:[B

    const-string v0, "C9582A82777392CAA65AD7F5228150E3F966C09D6A00288B5C6E0CFB441E111B713B4E0822A8C830"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/e;->d(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/commonutils/crypto/g;->b:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)[B
    .locals 8

    const/16 v0, 0x14

    new-array v1, v0, [B

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/crypto/b;->a([B)Z

    move-result v2

    if-eqz v2, :cond_1

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/b;->a([B)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/alipay/security/mobile/module/commonutils/crypto/g;->a:[B

    invoke-static {p0, v2}, Lcom/alipay/security/mobile/module/commonutils/crypto/c;->b([B[B)[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v2, Lcom/alipay/security/mobile/module/commonutils/crypto/g;->b:[B

    invoke-static {p0, v2}, Lcom/alipay/security/mobile/module/commonutils/crypto/c;->b([B[B)[B

    move-result-object p0

    array-length v2, p0

    invoke-static {p0, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p0, 0x8

    new-array p0, p0, [B

    const/16 v2, 0x13

    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0xf

    aget-byte v5, v1, v3

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    const/4 v6, 0x3

    aput-byte v5, p0, v6

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v7, 0x2

    aput-byte v5, p0, v7

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v7, 0x1

    aput-byte v5, p0, v7

    add-int/2addr v3, v6

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v4

    aget-byte v1, v0, v2

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x4

    aget-byte v3, v0, v1

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    const/4 v2, 0x5

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    const/4 v2, 0x6

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    const/4 v2, 0x7

    add-int/2addr v1, v6

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "failed to init hash2."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "failed to init hash1."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b([BI)[B
    .locals 9

    const/16 v0, 0x14

    new-array v1, v0, [B

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/crypto/b;->a([B)Z

    move-result v2

    if-eqz v2, :cond_4

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/b;->a([B)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/alipay/security/mobile/module/commonutils/crypto/g;->a:[B

    invoke-static {p0, v2}, Lcom/alipay/security/mobile/module/commonutils/crypto/c;->b([B[B)[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v2, Lcom/alipay/security/mobile/module/commonutils/crypto/g;->b:[B

    invoke-static {p0, v2}, Lcom/alipay/security/mobile/module/commonutils/crypto/c;->b([B[B)[B

    move-result-object p0

    array-length v2, p0

    invoke-static {p0, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p0, 0x8

    new-array v2, p0, [B

    const/16 v3, 0x13

    aget-byte v5, v1, v3

    and-int/lit8 v5, v5, 0xf

    aget-byte v6, v1, v5

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    const/4 v7, 0x3

    aput-byte v6, v2, v7

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    const/4 v8, 0x2

    aput-byte v6, v2, v8

    add-int/lit8 v6, v5, 0x2

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    const/4 v8, 0x1

    aput-byte v6, v2, v8

    add-int/2addr v5, v7

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    aget-byte v1, v0, v3

    and-int/lit8 v1, v1, 0xf

    const/4 v3, 0x4

    aget-byte v5, v0, v1

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    const/4 v3, 0x5

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    const/4 v3, 0x6

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    const/4 v3, 0x7

    add-int/2addr v1, v7

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-lt p1, p0, :cond_1

    return-object v2

    :cond_1
    new-array p0, p1, [B

    :goto_0
    if-ge v4, p1, :cond_2

    aget-byte v0, v2, v4

    aput-byte v0, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "failed to init hash2."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "failed to init hash1."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method
