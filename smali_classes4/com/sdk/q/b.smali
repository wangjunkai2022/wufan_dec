.class public Lcom/sdk/q/b;
.super Lcom/sdk/i/a;
.source ""


# static fields
.field public static a:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sdk/f/g;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sdk/i/a;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/sdk/q/a;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p0}, Lcom/sdk/o/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sdk/r/c;->a(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    sget-object v0, Lcom/sdk/q/b;->a:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance p1, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :catch_0
    new-instance p0, Ljavax/crypto/BadPaddingException;

    const-string p1, "\u5bc6\u6587\u6570\u636e\u5df2\u635f\u574f"

    invoke-direct {p0, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Ljavax/crypto/IllegalBlockSizeException;

    const-string p1, "\u5bc6\u6587\u957f\u5ea6\u975e\u6cd5"

    invoke-direct {p0, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "\u89e3\u5bc6\u516c\u94a5\u975e\u6cd5,\u8bf7\u68c0\u67e5"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3
    new-instance p0, Ljavax/crypto/NoSuchPaddingException;

    const-string p1, "\u89e3\u5bc6\u51fa\u9519\uff01\u4e0d\u652f\u6301\u8be5\u586b\u5145\u673a\u5236"

    invoke-direct {p0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_4
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string p1, "\u65e0\u6b64\u89e3\u5bc6\u7b97\u6cd5"

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "\u89e3\u5bc6\u516c\u94a5\u4e3a\u7a7a, \u8bf7\u8bbe\u7f6e"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "rsaAes key is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/sdk/q/a;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p0

    sget-object v0, Lcom/sdk/q/b;->a:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sdk/r/c;->a([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
