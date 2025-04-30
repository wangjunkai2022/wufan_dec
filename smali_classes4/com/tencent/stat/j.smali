.class Lcom/tencent/stat/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/stat/j;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/stat/j;->b:Ljava/util/Map;

    iput-object p1, p0, Lcom/tencent/stat/j;->a:Landroid/content/Context;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/tencent/stat/j;->b:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)Lcom/tencent/stat/NetworkMonitor;
    .locals 5

    new-instance v0, Lcom/tencent/stat/NetworkMonitor;

    invoke-direct {v0}, Lcom/tencent/stat/NetworkMonitor;-><init>()V

    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/tencent/stat/NetworkMonitor;->setDomain(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/tencent/stat/NetworkMonitor;->setPort(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 p1, 0x7530

    invoke-virtual {v1, v4, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Lcom/tencent/stat/NetworkMonitor;->setMillisecondsConsume(J)V

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/stat/NetworkMonitor;->setRemoteIp(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    const/4 p2, -0x1

    :try_start_2
    invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    :goto_1
    const/4 p1, -0x1

    :goto_2
    invoke-virtual {v0, p1}, Lcom/tencent/stat/NetworkMonitor;->setStatusCode(I)V

    return-object v0

    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p2

    invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    :goto_4
    throw p1
.end method

.method private a()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "__MTA_TEST_SPEED__"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/stat/StatConfig;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_1
    aget-object v6, v5, v3

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    :try_start_0
    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/tencent/stat/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/stat/common/k;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/stat/j;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/stat/j;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/stat/j;->b:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lcom/tencent/stat/j;->b:Ljava/util/Map;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    :cond_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/tencent/stat/j;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_4

    invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "port is null for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v3, v2}, Lcom/tencent/stat/j;->a(Ljava/lang/String;I)Lcom/tencent/stat/NetworkMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/stat/NetworkMonitor;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_5
    :goto_2
    invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v2

    const-string v3, "empty domain name."

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    new-instance v1, Lcom/tencent/stat/a/i;

    iget-object v2, p0, Lcom/tencent/stat/j;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Z)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/stat/a/i;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/stat/a/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/stat/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/stat/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/tencent/stat/k;

    invoke-direct {v2, v1}, Lcom/tencent/stat/k;-><init>(Lcom/tencent/stat/a/e;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_8
    :goto_3
    invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "empty domain list."

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    :cond_9
    :goto_4
    return-void
.end method
