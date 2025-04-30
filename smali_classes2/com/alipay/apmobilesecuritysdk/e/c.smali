.class public final Lcom/alipay/apmobilesecuritysdk/e/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/d;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "device_feature_prefs_name"

    const-string v2, "device_feature_prefs_key"

    invoke-static {p0, v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "device_feature_file_name"

    const-string v1, "device_feature_file_key"

    invoke-static {p0, v1}, Lcom/alipay/apmobilesecuritysdk/f/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/alipay/apmobilesecuritysdk/e/d;

    invoke-direct {p0}, Lcom/alipay/apmobilesecuritysdk/e/d;-><init>()V

    const-string v2, "imei"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/apmobilesecuritysdk/e/d;->a:Ljava/lang/String;

    const-string v2, "imsi"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/apmobilesecuritysdk/e/d;->b:Ljava/lang/String;

    const-string v2, "mac"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/apmobilesecuritysdk/e/d;->c:Ljava/lang/String;

    const-string v2, "bluetoothmac"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/apmobilesecuritysdk/e/d;->d:Ljava/lang/String;

    const-string v2, "gsi"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/apmobilesecuritysdk/e/d;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/d;->c(Ljava/lang/Throwable;)V

    return-object v0
.end method
