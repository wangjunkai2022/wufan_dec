.class public Lcom/heepay/plugin/a/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(C)B
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    :goto_0
    int-to-byte p0, p0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    :goto_1
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v1, 0x46

    if-gt p0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static a(B)C
    .locals 1

    and-int/lit8 p0, p0, 0xf

    int-to-byte p0, p0

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x30

    :goto_0
    int-to-char p0, p0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x41

    sub-int/2addr p0, v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_0
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string v2, "00"

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x18

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v3, "ToHex16"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    array-length v5, p0

    add-int/2addr v5, v1

    and-int/lit8 v5, v5, -0x8

    array-length v6, p0

    if-eq v5, v6, :cond_2

    new-array v6, v5, [B

    const/4 v7, 0x0

    :goto_0
    array-length v8, p0

    if-ge v7, v8, :cond_0

    aget-byte v8, p0, v7

    aput-byte v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    array-length v7, p0

    :goto_1
    if-ge v7, v5, :cond_1

    array-length v8, p0

    sub-int v8, v5, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move-object p0, v6

    :cond_2
    array-length v5, p0

    new-array v5, v5, [B

    new-array v6, v1, [B

    const/4 v7, 0x0

    :goto_2
    add-int/lit8 v8, v7, 0x8

    array-length v9, p0

    if-gt v8, v9, :cond_7

    new-array v9, v1, [B

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v1, :cond_3

    add-int v11, v7, v10

    aget-byte v11, p0, v11

    aput-byte v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    if-nez v7, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    goto :goto_5

    :cond_4
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v1, :cond_5

    add-int v11, v7, v10

    sub-int/2addr v11, v1

    aget-byte v11, v5, v11

    aput-byte v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    const-string v10, "DES/ECB/NoPadding"

    invoke-static {v9, v2, v10, v6}, Lcom/heepay/plugin/a/d;->b([BLjava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {v9, v4, v10, v11}, Lcom/heepay/plugin/a/d;->a([BLjava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v9

    invoke-static {v9, p1, v10, v11}, Lcom/heepay/plugin/a/d;->b([BLjava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v9

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v1, :cond_6

    add-int v11, v7, v10

    aget-byte v12, v9, v10

    aput-byte v12, v5, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_6
    move v7, v8

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    invoke-static {v5}, Lcom/heepay/plugin/a/d;->a([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_8
    invoke-static {v5}, Lcom/heepay/plugin/a/c;->a([B)Ljava/lang/String;

    move-result-object p0

    :goto_7
    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v2}, Lcom/heepay/plugin/a/d;->a(B)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v3}, Lcom/heepay/plugin/a/d;->a(B)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/security/PublicKey;Ljava/lang/String;)[B
    .locals 2

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string p0, "UTF-8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BLjava/lang/String;Ljava/lang/String;[B)[B
    .locals 3

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/DESKeySpec;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    const-string p1, "DES"

    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    const-string v1, "/CBC/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v1, 0x2

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    :goto_0
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([B[B[B)[B
    .locals 2

    new-instance v0, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v0, p0}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    const-string p0, "desede"

    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    const-string v0, "desede/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v4}, Lcom/heepay/plugin/a/d;->a(C)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    invoke-static {v3}, Lcom/heepay/plugin/a/d;->a(C)B

    move-result v3

    add-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static b([BLjava/lang/String;Ljava/lang/String;[B)[B
    .locals 3

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/DESKeySpec;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    const-string p1, "DES"

    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    const-string v1, "/CBC/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    :goto_0
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 1

    invoke-static {p0}, Lcom/heepay/plugin/a/d;->b(Ljava/lang/String;)[B

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    const-string p0, "X.509"

    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "WebService"

    const-string/jumbo v0, "\u6570\u636e\u5206\u6790\u51fa\u9519"

    invoke-static {p0, v0}, Lcom/heepay/plugin/c/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
