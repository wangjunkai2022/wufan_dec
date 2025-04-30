.class public final Lcom/sina/weibo/sdk/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/b/a$a;
    }
.end annotation


# direct methods
.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/b/a$a;
    .locals 7

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x2

    .line 11
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, "weibo_for_sdk.json"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1000

    new-array v3, v2, [B

    :goto_0
    const/4 v4, 0x0

    .line 14
    invoke-virtual {p0, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 15
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 16
    :cond_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/sina/weibo/sdk/b/a$a;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/b/a$a;-><init>()V

    const-string v2, "support_api"

    .line 18
    invoke-virtual {p0, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 19
    iput v2, v0, Lcom/sina/weibo/sdk/b/a$a;->ah:I

    const-string v2, "authActivityName"

    .line 20
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 21
    iput-object p0, v0, Lcom/sina/weibo/sdk/b/a$a;->ag:Ljava/lang/String;

    .line 22
    iput-object p1, v0, Lcom/sina/weibo/sdk/b/a$a;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 25
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 3
    :cond_2
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v1, 0x40

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 5
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez p0, :cond_3

    return v0

    .line 6
    :cond_3
    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_5

    aget-object v2, p0, v1

    .line 7
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/sina/weibo/sdk/b/d;->a([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "18da2bf10352443a00a5e046d9fca6bd"

    .line 8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method

.method public static c(Landroid/content/Context;)Lcom/sina/weibo/sdk/b/a$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sina/weibo/sdk/b/a;->e(Landroid/content/Context;)Lcom/sina/weibo/sdk/b/a$a;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/sina/weibo/sdk/b/a;->e(Landroid/content/Context;)Lcom/sina/weibo/sdk/b/a$a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    iget p0, p0, Lcom/sina/weibo/sdk/b/a$a;->ah:I

    const/16 v0, 0x2a27

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Landroid/content/Context;)Lcom/sina/weibo/sdk/b/a$a;
    .locals 8

    const-string v0, "com.sina.weibo"

    const-string v1, "com.sina.weibog3"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 2
    aget-object v3, v0, v2

    .line 3
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sina.weibo.action.sdkidentity"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "android.intent.category.DEFAULT"

    .line 5
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 9
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_0

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_0

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 10
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 11
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 12
    invoke-static {p0, v5}, Lcom/sina/weibo/sdk/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/b/a$a;

    move-result-object v5

    if-eqz v5, :cond_0

    return-object v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
