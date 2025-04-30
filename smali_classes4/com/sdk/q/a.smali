.class public Lcom/sdk/q/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "a"

.field public static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sdk/f/g;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sdk/q/a;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/sdk/h/a;

    invoke-direct {v0}, Lcom/sdk/h/a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sdk/h/d;->a(Ljava/lang/String;)[B

    move-result-object p0

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "RSA"

    :try_start_1
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/sdk/q/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/sdk/q/a;->b:Ljava/lang/Boolean;

    invoke-static {v0, p0, v1}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
