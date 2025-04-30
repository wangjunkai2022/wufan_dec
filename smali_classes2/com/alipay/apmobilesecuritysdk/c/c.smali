.class public final Lcom/alipay/apmobilesecuritysdk/c/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 14
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

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/c;->a()Lcom/alipay/security/mobile/module/deviceinfo/c;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/c;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/d;

    move-result-object v2

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/c;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/c;->p()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/c;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v2, :cond_4

    invoke-static {v3}, Lcom/alipay/security/mobile/module/commonutils/a;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v3, v2, Lcom/alipay/apmobilesecuritysdk/e/d;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/security/mobile/module/commonutils/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-static {v4}, Lcom/alipay/security/mobile/module/commonutils/a;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v4, v2, Lcom/alipay/apmobilesecuritysdk/e/d;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/security/mobile/module/commonutils/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-static {v5}, Lcom/alipay/security/mobile/module/commonutils/a;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v5, v2, Lcom/alipay/apmobilesecuritysdk/e/d;->c:Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/security/mobile/module/commonutils/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-static {v6}, Lcom/alipay/security/mobile/module/commonutils/a;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v6, v2, Lcom/alipay/apmobilesecuritysdk/e/d;->d:Ljava/lang/String;

    invoke-static {v6}, Lcom/alipay/security/mobile/module/commonutils/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_3
    invoke-static {v7}, Lcom/alipay/security/mobile/module/commonutils/a;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v2, v2, Lcom/alipay/apmobilesecuritysdk/e/d;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_4
    new-instance v2, Lcom/alipay/apmobilesecuritysdk/e/d;

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/alipay/apmobilesecuritysdk/e/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_5

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "imei"

    iget-object v10, v2, Lcom/alipay/apmobilesecuritysdk/e/d;->a:Ljava/lang/String;

    invoke-static {v10}, Lcom/alipay/security/mobile/module/commonutils/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "imsi"

    iget-object v10, v2, Lcom/alipay/apmobilesecuritysdk/e/d;->b:Ljava/lang/String;

    invoke-static {v10}, Lcom/alipay/security/mobile/module/commonutils/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "mac"

    iget-object v10, v2, Lcom/alipay/apmobilesecuritysdk/e/d;->c:Ljava/lang/String;

    invoke-static {v10}, Lcom/alipay/security/mobile/module/commonutils/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "bluetoothmac"

    iget-object v10, v2, Lcom/alipay/apmobilesecuritysdk/e/d;->d:Ljava/lang/String;

    invoke-static {v10}, Lcom/alipay/security/mobile/module/commonutils/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "gsi"

    iget-object v2, v2, Lcom/alipay/apmobilesecuritysdk/e/d;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "device_feature_file_name"

    const-string v9, "device_feature_file_key"

    invoke-static {v8, v9, v2}, Lcom/alipay/apmobilesecuritysdk/f/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "device_feature_prefs_name"

    const-string v9, "device_feature_prefs_key"

    invoke-static {p0, v8, v9, v2}, Lcom/alipay/apmobilesecuritysdk/f/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/d;->c(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    const-string v2, "AD1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AD2"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AD3"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/c;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AD5"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/c;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AD6"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/c;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AD7"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AD8"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/c;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AD9"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AD10"

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/c;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AD11"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/c;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AD12"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/c;->h()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AD13"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/c;->j()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AD14"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/c;->l()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AD15"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/c;->n()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AD16"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD17"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD18"

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/c;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "AD19"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/c;->r()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AD20"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "AD21"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD22"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/c;->t()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AD23"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/c;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "AL3"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
