.class public Lcom/join/mgps/Util/AESUtils;
.super Ljava/lang/Object;
.source "AESUtils.java"


# static fields
.field public static final a:Ljava/lang/String; = "AESUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_3

    .line 2
    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 4
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(C)B
    .locals 1

    const-string v0, "0123456789ABCDEF"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "625202f9149e061d"

    const-string v1, "5efd3f6060e20330"

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/join/mgps/Util/AESUtils;->g(Ljava/lang/String;)[B

    move-result-object p0

    const-string v2, "AES/ECB/NoPadding"

    .line 2
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 3
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v4, "AES"

    invoke-direct {v3, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 4
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v0, 0x2

    .line 5
    invoke-virtual {v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 6
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "625202f9149e061d"

    const-string v1, "5efd3f6060e20330"

    const-string v2, "AES/ECB/NoPadding"

    .line 1
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 4
    array-length v4, p0

    .line 5
    rem-int v5, v4, v3

    if-eqz v5, :cond_0

    .line 6
    rem-int v5, v4, v3

    sub-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 7
    :cond_0
    new-array v3, v4, [B

    .line 8
    array-length v4, p0

    const/4 v5, 0x0

    invoke-static {p0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v4, "AES"

    invoke-direct {p0, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 10
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v0, 0x1

    .line 11
    invoke-virtual {v2, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 12
    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/join/mgps/Util/AESUtils;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "appcrypt5"

    .line 2
    invoke-static {v0, p0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "#isEncrypted#"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/k;->a(Ljava/lang/String;)[B

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/papa91/pay/core/PapaCore;->nativeDecrypt([B)[B

    move-result-object p0

    const-string v0, "appcrypt7"

    .line 7
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, v2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/join/mgps/Util/k;->a(Ljava/lang/String;)[B

    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1

    :cond_1
    return-object p0
.end method

.method public static decryptBuf(Ljava/lang/String;)[B
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [B

    return-object p0

    :cond_0
    const-string v0, "appcrypt5"

    .line 2
    invoke-static {v0, p0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "#isEncrypted#"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    const-string v2, ""

    .line 4
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/k;->a(Ljava/lang/String;)[B

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/papa91/pay/core/PapaCore;->nativeDecrypt([B)[B

    move-result-object p0

    const-string v0, "appcrypt7"

    .line 7
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, v2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/join/mgps/Util/k;->a(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-array p0, v1, [B

    return-object p0

    :cond_1
    new-array p0, v1, [B

    return-object p0
.end method

.method public static e([B)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p0, :cond_1

    .line 1
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/k;->b([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/papa91/pay/core/PapaCore;->nativeEncrypt([B)[B

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/k;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#isEncrypted#"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v0

    :goto_0
    const-string v0, "appcrypt4"

    .line 7
    invoke-static {v0, p0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/join/mgps/Util/AESUtils;->e([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "625202f9149e061d"

    const-string v1, "AES/ECB/PKCS7Padding"

    .line 1
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 2
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v3, "AES"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {v1, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/AESUtils;->a([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static g(Ljava/lang/String;)[B
    .locals 5

    if-eqz p0, :cond_2

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 5
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 6
    aget-char v4, p0, v3

    invoke-static {v4}, Lcom/join/mgps/Util/AESUtils;->b(C)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-char v3, p0, v3

    invoke-static {v3}, Lcom/join/mgps/Util/AESUtils;->b(C)B

    move-result v3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
