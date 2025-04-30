.class public abstract Lorg/springframework/util/Base64Utils;
.super Ljava/lang/Object;
.source "Base64Utils.java"


# static fields
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/springframework/util/Base64Utils;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([B)[B
    .locals 1

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeFromString(Ljava/lang/String;)[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lorg/springframework/util/Base64Utils;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/springframework/util/Base64Utils;->decode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeFromUrlSafeString(Ljava/lang/String;)[B
    .locals 1

    .line 1
    sget-object v0, Lorg/springframework/util/Base64Utils;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/springframework/util/Base64Utils;->decodeUrlSafe([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeUrlSafe([B)[B
    .locals 1

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/Base64;->getUrlDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encode([B)[B
    .locals 1

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Encoder;->encode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeToString([B)Ljava/lang/String;
    .locals 2

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/springframework/util/Base64Utils;->encode([B)[B

    move-result-object p0

    sget-object v1, Lorg/springframework/util/Base64Utils;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static encodeToUrlSafeString([B)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/springframework/util/Base64Utils;->encodeUrlSafe([B)[B

    move-result-object p0

    sget-object v1, Lorg/springframework/util/Base64Utils;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static encodeUrlSafe([B)[B
    .locals 1

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Encoder;->encode([B)[B

    move-result-object p0

    return-object p0
.end method
