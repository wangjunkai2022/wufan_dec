.class public Lnet/lingala/zip4j/crypto/e;
.super Ljava/lang/Object;
.source "StandardDecrypter.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/c;


# instance fields
.field private a:Le3/h;

.field private b:[B

.field private c:Lnet/lingala/zip4j/crypto/engine/b;


# direct methods
.method public constructor <init>(Le3/h;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/e;->b:[B

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/e;->a:Le3/h;

    .line 4
    new-instance p1, Lnet/lingala/zip4j/crypto/engine/b;

    invoke-direct {p1}, Lnet/lingala/zip4j/crypto/engine/b;-><init>()V

    iput-object p1, p0, Lnet/lingala/zip4j/crypto/e;->c:Lnet/lingala/zip4j/crypto/engine/b;

    .line 5
    invoke-virtual {p0, p2}, Lnet/lingala/zip4j/crypto/e;->c([B)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "one of more of the input parameters were null in StandardDecryptor"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/crypto/e;->b([BII)I

    move-result p1

    return p1
.end method

.method public b([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-lt v0, v1, :cond_0

    return p3

    .line 1
    :cond_0
    :try_start_0
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 2
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/e;->c:Lnet/lingala/zip4j/crypto/engine/b;

    invoke-virtual {v2}, Lnet/lingala/zip4j/crypto/engine/b;->b()B

    move-result v2

    xor-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 3
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/e;->c:Lnet/lingala/zip4j/crypto/engine/b;

    int-to-byte v1, v1

    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/crypto/engine/b;->d(B)V

    .line 4
    aput-byte v1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 6
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "one of the input parameters were null in standard decrpyt data"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public c([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/e;->a:Le3/h;

    invoke-virtual {v0}, Le3/h;->h()[B

    move-result-object v0

    .line 2
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/e;->b:[B

    const/4 v2, 0x3

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 3
    aget-byte v3, v0, v2

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v1, v4

    .line 4
    aget-byte v3, v0, v2

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v5, 0x1

    aput-byte v3, v1, v5

    .line 5
    aget-byte v0, v0, v2

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    .line 6
    aget-byte v0, v1, v4

    if-gtz v0, :cond_3

    aget-byte v0, v1, v5

    if-gtz v0, :cond_3

    aget-byte v0, v1, v2

    if-gtz v0, :cond_3

    .line 7
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/e;->a:Le3/h;

    invoke-virtual {v0}, Le3/h;->v()[C

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/lingala/zip4j/crypto/e;->a:Le3/h;

    invoke-virtual {v0}, Le3/h;->v()[C

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_2

    .line 8
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/e;->c:Lnet/lingala/zip4j/crypto/engine/b;

    iget-object v1, p0, Lnet/lingala/zip4j/crypto/e;->a:Le3/h;

    invoke-virtual {v1}, Le3/h;->v()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/crypto/engine/b;->c([C)V

    .line 9
    :try_start_0
    aget-byte v0, p1, v2

    :cond_0
    :goto_0
    const/16 v1, 0xc

    if-lt v2, v1, :cond_1

    return-void

    .line 10
    :cond_1
    iget-object v3, p0, Lnet/lingala/zip4j/crypto/e;->c:Lnet/lingala/zip4j/crypto/engine/b;

    invoke-virtual {v3}, Lnet/lingala/zip4j/crypto/engine/b;->b()B

    move-result v4

    xor-int/2addr v4, v0

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/crypto/engine/b;->d(B)V

    add-int/lit8 v2, v2, 0x1

    if-eq v2, v1, :cond_0

    .line 11
    aget-byte v0, p1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 13
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const/4 v0, 0x5

    const-string v1, "Wrong password!"

    invoke-direct {p1, v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid CRC in File Header"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
