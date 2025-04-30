.class public final Lcom/alipay/security/mobile/module/commonutils/crypto/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/alipay/security/mobile/module/commonutils/crypto/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;

    invoke-direct {v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/f;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/module/commonutils/crypto/e;->a:Lcom/alipay/security/mobile/module/commonutils/crypto/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 1

    sget-object v0, Lcom/alipay/security/mobile/module/commonutils/crypto/e;->a:Lcom/alipay/security/mobile/module/commonutils/crypto/f;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->a(Ljava/lang/String;Ljava/io/OutputStream;)I

    move-result p0

    return p0
.end method

.method private static b([BIILjava/io/OutputStream;)I
    .locals 1

    sget-object v0, Lcom/alipay/security/mobile/module/commonutils/crypto/e;->a:Lcom/alipay/security/mobile/module/commonutils/crypto/f;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->b([BIILjava/io/OutputStream;)I

    move-result p0

    return p0
.end method

.method private static c([BLjava/io/OutputStream;)I
    .locals 3

    sget-object v0, Lcom/alipay/security/mobile/module/commonutils/crypto/e;->a:Lcom/alipay/security/mobile/module/commonutils/crypto/f;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1, p1}, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->b([BIILjava/io/OutputStream;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    sget-object v1, Lcom/alipay/security/mobile/module/commonutils/crypto/e;->a:Lcom/alipay/security/mobile/module/commonutils/crypto/f;

    invoke-virtual {v1, p0, v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->a(Ljava/lang/String;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception decoding Hex string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static e([B)[B
    .locals 1

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/e;->f([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private static f([BI)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    sget-object v1, Lcom/alipay/security/mobile/module/commonutils/crypto/e;->a:Lcom/alipay/security/mobile/module/commonutils/crypto/f;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1, v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->b([BIILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception encoding Hex string: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static g([B)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    sget-object v1, Lcom/alipay/security/mobile/module/commonutils/crypto/e;->a:Lcom/alipay/security/mobile/module/commonutils/crypto/f;

    array-length v2, p0

    invoke-virtual {v1, p0, v2, v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->c([BILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception decoding Hex string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
