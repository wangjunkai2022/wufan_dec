.class public final Lj/a;
.super Ljava/lang/Object;


# direct methods
.method public static declared-synchronized a()Ljava/lang/String;
    .locals 5

    const-class v0, Lj/a;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lj/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->b(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v3

    :cond_0
    :try_start_1
    const-string v2, "`"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    aget-object v1, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_2
    :goto_0
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v0, Lj/a;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lj/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lj/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(Lcom/alipay/apmobilesecuritysdk/e/b;)V
    .locals 3

    const-class v0, Lj/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/e/b;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/e/b;->a:Ljava/lang/String;

    invoke-static {}, Lj/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/e/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alipay/apmobilesecuritysdk/e/b;->d:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_2

    :try_start_3
    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "device"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "deviceid_v2"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Ls/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-void

    :catch_0
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static d()Ljava/lang/String;
    .locals 2

    const-string v0, "deviceid_v2"

    invoke-static {v0}, Ls/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "device"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized e(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-class v0, Lj/a;

    monitor-enter v0

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "profiles"

    const-string v3, "deviceid"

    const-string v4, ""

    invoke-static {p0, v2, v3, v4}, Ls/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/a;->b(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object p0, v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/a;->b(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit v0

    return-object v3

    :cond_1
    :try_start_2
    new-instance v2, Lj/b;

    invoke-direct {v2}, Lj/b;-><init>()V

    invoke-static {p0}, Lj/b;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v2, "deviceId"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, p0

    :catchall_0
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
