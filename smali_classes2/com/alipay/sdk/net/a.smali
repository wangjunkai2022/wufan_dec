.class public final Lcom/alipay/sdk/net/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "application/octet-stream;binary/octet-stream"


# instance fields
.field private a:Landroid/content/Context;

.field public b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/alipay/sdk/net/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/alipay/sdk/net/a;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/alipay/sdk/net/a;->b:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/net/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/net/a;->b:Ljava/lang/String;

    return-void
.end method

.method private d()Ljava/net/URL;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/alipay/sdk/net/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private e()Lorg/apache/http/HttpHost;
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-lt v0, v2, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "wap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->d()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    const-string v0, "https.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "https.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :cond_1
    return-object v1

    .line 3
    :cond_2
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->h()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    if-eqz v0, :cond_3

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :cond_3
    return-object v1
.end method

.method private f()Lorg/apache/http/HttpHost;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->h()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    if-eqz v0, :cond_0

    .line 6
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private g()Lorg/apache/http/HttpHost;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "wap"

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->d()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https"

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    const-string v0, "https.proxyHost"

    .line 6
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "https.proxyPort"

    .line 7
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :cond_1
    return-object v1
.end method

.method private h()Landroid/net/NetworkInfo;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/net/a;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 4

    const-string v0, "none"

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->h()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string/jumbo v0, "wifi"

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final b([BLjava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "Keep-Alive"

    const-string v1, "X-ExecuteTime"

    const-string v2, "X-Hostname"

    .line 1
    invoke-static {}, Lcom/alipay/sdk/net/b;->a()Lcom/alipay/sdk/net/b;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 2
    :cond_0
    :try_start_0
    iget-object v5, v3, Lcom/alipay/sdk/net/b;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_3

    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->i()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string/jumbo v7, "wap"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    move-object v8, v4

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->d()Ljava/net/URL;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    const-string v7, "https"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    const-string v6, "https.proxyHost"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "https.proxyPort"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Lorg/apache/http/HttpHost;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v8, v6, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->h()Landroid/net/NetworkInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v7

    if-eqz v6, :cond_1

    new-instance v8, Lorg/apache/http/HttpHost;

    invoke-direct {v8, v6, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :goto_0
    if-eqz v8, :cond_4

    const-string v6, "http.route.default-proxy"

    .line 4
    invoke-interface {v5, v6, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_4
    if-eqz p1, :cond_6

    .line 5
    array-length v5, p1

    if-nez v5, :cond_5

    goto :goto_1

    .line 6
    :cond_5
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    iget-object v6, p0, Lcom/alipay/sdk/net/a;->b:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v6, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string p1, "application/octet-stream;binary/octet-stream"

    .line 8
    invoke-virtual {v6, p1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string p1, "Accept-Charset"

    const-string v6, "UTF-8"

    .line 10
    invoke-interface {v5, p1, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Connection"

    .line 11
    invoke-interface {v5, p1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "timeout=180, max=100"

    .line 12
    invoke-interface {v5, v0, p1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 13
    :cond_6
    :goto_1
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    iget-object p1, p0, Lcom/alipay/sdk/net/a;->b:Ljava/lang/String;

    invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :goto_2
    if-eqz p2, :cond_7

    .line 14
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/http/Header;

    .line 15
    invoke-interface {v5, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_3

    .line 16
    :cond_7
    invoke-virtual {v3, v5}, Lcom/alipay/sdk/net/b;->h(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 17
    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    .line 18
    array-length v5, p2

    if-lez v5, :cond_8

    aget-object p2, p2, v0

    if-eqz p2, :cond_8

    .line 19
    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    :cond_8
    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 21
    array-length v2, p2

    if-lez v2, :cond_9

    aget-object p2, p2, v0

    if-eqz p2, :cond_9

    .line 22
    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    return-object p1

    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    iget-object p2, v3, Lcom/alipay/sdk/net/b;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-interface {p2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    sput-object v4, Lcom/alipay/sdk/net/b;->c:Lcom/alipay/sdk/net/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    :catchall_1
    :cond_a
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
