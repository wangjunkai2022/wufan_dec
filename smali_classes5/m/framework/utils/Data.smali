.class public Lm/framework/utils/Data;
.super Ljava/lang/Object;
.source "Data.java"


# static fields
.field private static final CHAT_SET:Ljava/lang/String; = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field private static hashon:Lm/framework/utils/Hashon;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lm/framework/utils/Hashon;

    invoke-direct {v0}, Lm/framework/utils/Hashon;-><init>()V

    sput-object v0, Lm/framework/utils/Data;->hashon:Lm/framework/utils/Hashon;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AES128Decode(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 2
    invoke-static {p0, p1}, Lm/framework/utils/Data;->AES128Decode([B[B)[B

    move-result-object p0

    .line 3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method public static AES128Decode([B[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 4
    array-length v2, p0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p0, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "AES/ECB/NoPadding"

    const-string v1, "BC"

    .line 6
    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 8
    array-length p0, p1

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p0

    new-array p0, p0, [B

    .line 9
    array-length v5, p1

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v6, p0

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result p1

    .line 10
    invoke-virtual {v0, p0, p1}, Ljavax/crypto/Cipher;->doFinal([BI)I

    return-object p0
.end method

.method public static AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 2
    array-length v3, p0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 4
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string p1, "AES"

    invoke-direct {p0, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p1, "AES/ECB/PKCS7Padding"

    const-string v0, "BC"

    .line 5
    invoke-static {p1, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 7
    array-length p0, v5

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p0

    new-array p0, p0, [B

    .line 8
    array-length v7, v5

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    move-object v8, p0

    invoke-virtual/range {v4 .. v9}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v0

    .line 9
    invoke-virtual {p1, p0, v0}, Ljavax/crypto/Cipher;->doFinal([BI)I

    return-object p0
.end method

.method public static AES128Encode([BLjava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 11
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p0, "AES/ECB/PKCS7Padding"

    const-string v0, "BC"

    .line 12
    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 14
    array-length p1, v2

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p1

    new-array p1, p1, [B

    .line 15
    array-length v4, v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v0

    .line 16
    invoke-virtual {p0, p1, v0}, Ljavax/crypto/Cipher;->doFinal([BI)I

    return-object p1
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {p0}, Lm/framework/utils/Data;->rawMD5(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-static {p0}, Lm/framework/utils/HEX;->toHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static SHA1(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "utf-8"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "SHA-1"

    .line 2
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 4
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0
.end method

.method public static base62(J)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string v2, "0"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    cmp-long v3, p0, v0

    if-gtz v3, :cond_1

    return-object v2

    :cond_1
    const-wide/16 v3, 0x3e

    .line 1
    rem-long v5, p0, v3

    long-to-int v6, v5

    .line 2
    div-long/2addr p0, v3

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static byteToHex([B)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    aget-byte v4, p0, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static parseJson(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    sget-object v0, Lm/framework/utils/Data;->hashon:Lm/framework/utils/Hashon;

    invoke-virtual {v0, p0}, Lm/framework/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseJson(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lm/framework/utils/Data;->hashon:Lm/framework/utils/Hashon;

    invoke-virtual {v0, p0}, Lm/framework/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static rawMD5(Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "MD5"

    .line 1
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "utf-8"

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\+"

    const-string v0, "%20"

    .line 2
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
