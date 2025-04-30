.class public Lcom/join/mgps/Util/v1;
.super Ljava/lang/Object;
.source "SignUtils.java"


# static fields
.field private static final a:Ljava/lang/String; = "RSA"

.field private static final b:Ljava/lang/String; = "SHA1WithRSA"

.field private static final c:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/k;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string p1, "RSA"

    .line 3
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    const-string v0, "SHA1WithRSA"

    .line 5
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    const-string p1, "UTF-8"

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 8
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/k;->b([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
