.class public Lcom/sdk/r/a;
.super Lcom/sdk/i/a;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "com.sdk.r.a"

.field public static isDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sdk/f/g;->b:Z

    sput-boolean v0, Lcom/sdk/r/a;->isDebug:Z

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_4

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    rem-int/2addr v4, v3

    const-string v5, "char"

    const-string v6, "num"

    if-nez v4, :cond_0

    move-object v4, v5

    goto :goto_1

    :cond_0
    move-object v4, v6

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    rem-int/2addr v4, v3

    if-nez v4, :cond_1

    const/16 v3, 0x41

    goto :goto_2

    :cond_1
    const/16 v3, 0x61

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v3

    int-to-char v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "utf-8"

    if-eqz p0, :cond_4

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Lcom/sdk/r/c;->a(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "AES/CBC/PKCS5Padding"

    :try_start_1
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "AES"

    :try_start_2
    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p2, 0x2

    invoke-virtual {v1, p2, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/Exception;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p1, " iv decrypt key length error"

    :try_start_3
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/Exception;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string p1, "decrypt key length error"

    :try_start_4
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/Exception;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string p1, "decrypt key is null"

    :try_start_5
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "decrypt errot"

    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "utf-8"

    const/4 v1, 0x0

    const-string v2, "EncryptCbcIv"

    if-eqz p0, :cond_4

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    sget-object p0, Lcom/sdk/r/a;->TAG:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "encrypt key is null"

    :try_start_1
    sget-boolean p2, Lcom/sdk/r/a;->isDebug:Z

    invoke-static {p0, v2, p1, p2}, Lcom/sdk/i/a;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_2

    sget-object p0, Lcom/sdk/r/a;->TAG:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p1, "encrypt key length error"

    :try_start_2
    sget-boolean p2, Lcom/sdk/r/a;->isDebug:Z

    invoke-static {p0, v2, p1, p2}, Lcom/sdk/i/a;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object v1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v4, :cond_3

    sget-object p0, Lcom/sdk/r/a;->TAG:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p1, "ivStr length error"

    :try_start_3
    sget-boolean p2, Lcom/sdk/r/a;->isDebug:Z

    invoke-static {p0, v2, p1, p2}, Lcom/sdk/i/a;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v1

    :cond_3
    const-string v3, "AES/CBC/PKCS5Padding"

    :try_start_4
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v5, "AES"

    :try_start_5
    invoke-direct {v4, p1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p2, 0x1

    invoke-virtual {v3, p2, v4, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sdk/r/c;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    sget-object p0, Lcom/sdk/r/a;->TAG:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string p1, "encrypt content is null"

    :try_start_6
    sget-boolean p2, Lcom/sdk/r/a;->isDebug:Z

    invoke-static {p0, v2, p1, p2}, Lcom/sdk/i/a;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/sdk/r/a;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    sget-boolean p2, Lcom/sdk/r/a;->isDebug:Z

    invoke-static {p1, v2, p0, p2}, Lcom/sdk/i/a;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object v1
.end method
