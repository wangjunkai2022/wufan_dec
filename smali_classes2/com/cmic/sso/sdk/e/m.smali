.class public Lcom/cmic/sso/sdk/e/m;
.super Ljava/lang/Object;
.source "TelephonyUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Z)I
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    .line 2
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_4

    .line 4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    const-string v4, "TelephonyUtils"

    if-ne v2, v3, :cond_3

    :try_start_1
    const-string v2, "WIFI"

    .line 6
    invoke-static {v4, v2}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    .line 7
    invoke-static {p0, v2}, Lcom/cmic/sso/sdk/e/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CHANGE_NETWORK_STATE="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 9
    invoke-static {v1, p0}, Lcom/cmic/sso/sdk/e/m;->a(Landroid/net/ConnectivityManager;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "\u6d41\u91cf\u6570\u636e WIFI \u540c\u5f00"

    .line 10
    invoke-static {v4, p0}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    if-nez v2, :cond_5

    const-string/jumbo p0, "\u6d41\u91cf"

    .line 11
    invoke-static {v4, p0}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :cond_4
    :goto_0
    return v0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "phone"

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 23
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static a(Landroid/net/ConnectivityManager;Landroid/content/Context;)Z
    .locals 4

    const-string v0, "TelephonyUtils"

    const/4 v1, 0x0

    .line 13
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    const-string v2, "phone"

    .line 14
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p0

    return p0

    .line 16
    :cond_0
    const-class p1, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "getMobileDataEnabled"

    :try_start_1
    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v2, 0x1

    .line 17
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v1, [Ljava/lang/Object;

    .line 18
    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data is on ---------"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    const-string p0, "isMobileEnabled ----\u53cd\u5c04\u51fa\u9519-----"

    .line 20
    invoke-static {v0, p0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "brand"

    .line 2
    invoke-static {v1, v0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HUAWEI"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
