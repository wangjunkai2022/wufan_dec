.class public final Lcom/alipay/apmobilesecuritysdk/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/File;

.field private b:Lcom/alipay/security/mobile/module/a/c/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alipay/security/mobile/module/a/c/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->a:Ljava/io/File;

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->b:Lcom/alipay/security/mobile/module/a/c/a;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->b:Lcom/alipay/security/mobile/module/a/c/a;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "error"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/e/e;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/b/c;

    invoke-direct {v0, p0}, Lcom/alipay/apmobilesecuritysdk/b/c;-><init>(Lcom/alipay/apmobilesecuritysdk/b/b;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method private static synthetic d(Lcom/alipay/apmobilesecuritysdk/b/b;)V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/b/b;->b()V

    return-void
.end method


# virtual methods
.method final declared-synchronized b()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->a:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyyMMdd"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".log"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x2

    if-ge v1, v4, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    add-int/lit8 v2, v2, -0x1

    :cond_4
    iget-object v4, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->a:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/alipay/security/mobile/module/commonutils/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->b:Lcom/alipay/security/mobile/module/a/c/a;

    invoke-interface {v4, v1}, Lcom/alipay/security/mobile/module/a/c/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v2, v2, -0x1

    :cond_5
    :goto_1
    if-ge v3, v2, :cond_6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->a:Ljava/io/File;

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    monitor-exit p0

    return-void

    :cond_7
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
