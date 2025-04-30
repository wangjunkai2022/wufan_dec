.class public final Lcom/alipay/apmobilesecuritysdk/c/a;
.super Ljava/lang/Object;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/alipay/apmobilesecuritysdk/c/a;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "AA1"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AA2"

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/c/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AA3"

    const-string v3, "security-sdk-token"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AA4"

    const-string v3, "3.0.2.20151027"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AA5"

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/e;->e(Landroid/content/Context;)Lo/a;

    move-result-object v3

    iget-object v4, v3, Lo/a;->d:Ljava/lang/String;

    iget-object v3, v3, Lo/a;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/security/mobile/module/commonutils/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Lcom/alipay/security/mobile/module/commonutils/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/c;->a()Lcom/alipay/security/mobile/module/deviceinfo/c;

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/c;->A(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, v3, v4}, Lcom/alipay/apmobilesecuritysdk/f/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    :goto_1
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "0.0.0"

    return-object p0
.end method
