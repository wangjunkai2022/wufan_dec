.class public Lcom/sdk/u/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-class v0, Lcom/sdk/u/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sdk/u/a;->a:Ljava/lang/String;

    sget-boolean v0, Lcom/sdk/f/g;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sdk/u/a;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "aesKey"

    :try_start_1
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "data"

    :try_start_2
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v3, "sign"

    :try_start_3
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1
    sget v4, Lcom/sdk/v/a;->d:I

    if-nez v4, :cond_0

    .line 2
    sget-object v1, Lcom/sdk/v/a;->b:Ljava/lang/String;

    .line 3
    invoke-static {p0, v1}, Lcom/sdk/q/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_0
    const-string p0, "key"

    :try_start_4
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sdk/r/f;->a()Lcom/sdk/r/f;

    move-result-object v1

    .line 4
    iget-object v4, v1, Lcom/sdk/r/f;->b:Lcom/sdk/s/a;

    iget-object v1, v1, Lcom/sdk/r/f;->c:Ljava/lang/String;

    invoke-interface {v4, v1, p0, p0, v3}, Lcom/sdk/s/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/sdk/o/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sdk/r/f;->a()Lcom/sdk/r/f;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lcom/sdk/r/f;->b:Lcom/sdk/s/a;

    invoke-interface {v1, p0, v2}, Lcom/sdk/s/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sdk/o/c;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/sdk/u/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDK\u89e3\u5bc6\u5f02\u5e38\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/sdk/u/a;->b:Ljava/lang/Boolean;

    invoke-static {v1, p0, v2}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    return-object v0
.end method

.method public static a()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/sdk/a/b;

    invoke-direct {v0}, Lcom/sdk/a/b;-><init>()V

    const-string v1, "connectivity"

    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    iput-object p0, v0, Lcom/sdk/a/b;->g:Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sdk/a/b;->e:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/sdk/a/b;->d:Z

    const/4 p0, 0x0

    sput-object p0, Lcom/sdk/a/b;->e:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "exp"

    :try_start_1
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    cmp-long p0, v1, v3

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/sdk/u/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "out data error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/sdk/u/a;->b:Ljava/lang/Boolean;

    invoke-static {v1, p0, v2}, Lcom/sdk/o/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    return v0
.end method
