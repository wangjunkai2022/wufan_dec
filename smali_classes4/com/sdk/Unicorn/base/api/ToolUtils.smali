.class public Lcom/sdk/Unicorn/base/api/ToolUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Base64_Decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sdk/r/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static RsaDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/sdk/q/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static clearCache(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/sdk/b/a;->a:Ljava/lang/String;

    sget-object v1, Lcom/sdk/b/a;->b:Ljava/lang/Boolean;

    const-string v2, "cache clear"

    invoke-static {v0, v2, v1}, Lcom/sdk/o/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    const-string v0, "accessCode"

    invoke-static {p0, v0}, Lcom/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getAppMd5(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->getAppMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
