.class public Lorg/apache/http/client/protocol/RequestAddCookiesHC4;
.super Ljava/lang/Object;
.source "RequestAddCookiesHC4.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP request"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    .line 2
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONNECT"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {p2}, Lorg/apache/http/client/protocol/HttpClientContext;->adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "HttpClient"

    if-nez v1, :cond_1

    .line 7
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void

    .line 8
    :cond_1
    invoke-virtual {v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getCookieSpecRegistry()Lorg/apache/http/config/Lookup;

    move-result-object v4

    if-nez v4, :cond_2

    .line 9
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void

    .line 10
    :cond_2
    invoke-virtual {v0}, Lorg/apache/http/protocol/HttpCoreContext;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v5

    if-nez v5, :cond_3

    .line 11
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void

    .line 12
    :cond_3
    invoke-virtual {v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getHttpRoute()Lorg/apache/http/conn/routing/RouteInfo;

    move-result-object v6

    if-nez v6, :cond_4

    .line 13
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void

    .line 14
    :cond_4
    invoke-virtual {v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v7

    .line 15
    invoke-virtual {v7}, Lorg/apache/http/client/config/RequestConfig;->getCookieSpec()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    const-string v7, "best-match"

    .line 16
    :cond_5
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CookieSpec selected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_6
    instance-of v8, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v9, 0x0

    if-eqz v8, :cond_7

    .line 19
    move-object v8, p1

    check-cast v8, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v8}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v8

    goto :goto_0

    .line 20
    :cond_7
    :try_start_0
    new-instance v8, Ljava/net/URI;

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v8, v9

    :goto_0
    if-eqz v8, :cond_8

    .line 21
    invoke-virtual {v8}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 22
    :cond_8
    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v8

    .line 23
    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v5

    if-gez v5, :cond_9

    .line 24
    invoke-interface {v6}, Lorg/apache/http/conn/routing/RouteInfo;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v5

    .line 25
    :cond_9
    new-instance v10, Lorg/apache/http/cookie/CookieOrigin;

    const/4 v11, 0x0

    if-ltz v5, :cond_a

    goto :goto_1

    :cond_a
    const/4 v5, 0x0

    :goto_1
    invoke-static {v9}, Lorg/apache/http/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    goto :goto_2

    :cond_b
    const-string v9, "/"

    :goto_2
    invoke-interface {v6}, Lorg/apache/http/conn/routing/RouteInfo;->isSecure()Z

    move-result v6

    invoke-direct {v10, v8, v5, v9, v6}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 26
    invoke-interface {v4, v7}, Lorg/apache/http/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/cookie/CookieSpecProvider;

    if-eqz v4, :cond_15

    .line 27
    invoke-interface {v4, v0}, Lorg/apache/http/cookie/CookieSpecProvider;->create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;

    move-result-object v0

    .line 28
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 31
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/cookie/Cookie;

    .line 32
    invoke-interface {v6, v5}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v7

    const-string v8, "Cookie "

    if-nez v7, :cond_e

    .line 33
    invoke-interface {v0, v6, v10}, Lorg/apache/http/cookie/CookieSpec;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 34
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 35
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " match "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    :cond_d
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 37
    :cond_e
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 38
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " expired"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 39
    :cond_f
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 40
    invoke-interface {v0, v1}, Lorg/apache/http/cookie/CookieSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 41
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/Header;

    .line 42
    invoke-interface {p1, v3}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_4

    .line 43
    :cond_10
    invoke-interface {v0}, Lorg/apache/http/cookie/CookieSpec;->getVersion()I

    move-result v2

    if-lez v2, :cond_14

    .line 44
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/cookie/Cookie;

    .line 45
    invoke-interface {v3}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v4

    if-ne v2, v4, :cond_12

    instance-of v3, v3, Lorg/apache/http/cookie/SetCookie2;

    if-nez v3, :cond_11

    :cond_12
    const/4 v3, 0x1

    const/4 v11, 0x1

    goto :goto_5

    :cond_13
    if-eqz v11, :cond_14

    .line 46
    invoke-interface {v0}, Lorg/apache/http/cookie/CookieSpec;->getVersionHeader()Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 47
    invoke-interface {p1, v1}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    :cond_14
    const-string p1, "http.cookie-spec"

    .line 48
    invoke-interface {p2, p1, v0}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "http.cookie-origin"

    .line 49
    invoke-interface {p2, p1, v10}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 50
    :cond_15
    new-instance p1, Lorg/apache/http/HttpException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported cookie policy: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method
