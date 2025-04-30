.class public final Lorg/apache/http/client/params/HttpClientParamConfig;
.super Ljava/lang/Object;
.source "HttpClientParamConfig.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRequestConfig(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/config/RequestConfig;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "parameters"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    :cond_1
    return-object v0

    .line 5
    :catch_0
    :cond_2
    invoke-static {}, Lorg/apache/http/client/config/RequestConfig;->custom()Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string v2, "http.socket.timeout"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/http/client/config/RequestConfig$Builder;->setSocketTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string v2, "http.connection.stalecheck"

    invoke-interface {p0, v2, v1}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/http/client/config/RequestConfig$Builder;->setStaleConnectionCheckEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string v2, "http.connection.timeout"

    invoke-interface {p0, v2, v3}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/http/client/config/RequestConfig$Builder;->setConnectTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string v2, "http.protocol.expect-continue"

    invoke-interface {p0, v2, v3}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/http/client/config/RequestConfig$Builder;->setExpectContinueEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string v2, "http.route.default-proxy"

    invoke-interface {p0, v2}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpHost;

    invoke-virtual {v0, v2}, Lorg/apache/http/client/config/RequestConfig$Builder;->setProxy(Lorg/apache/http/HttpHost;)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string v2, "http.route.local-address"

    invoke-interface {p0, v2}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v0, v2}, Lorg/apache/http/client/config/RequestConfig$Builder;->setLocalAddress(Ljava/net/InetAddress;)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string v2, "http.protocol.handle-authentication"

    invoke-interface {p0, v2, v1}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/http/client/config/RequestConfig$Builder;->setAuthenticationEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string v2, "http.protocol.allow-circular-redirects"

    invoke-interface {p0, v2, v3}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/http/client/config/RequestConfig$Builder;->setCircularRedirectsAllowed(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string v2, "http.protocol.cookie-policy"

    invoke-interface {p0, v2}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/apache/http/client/config/RequestConfig$Builder;->setCookieSpec(Ljava/lang/String;)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    const/16 v2, 0x32

    const-string v4, "http.protocol.max-redirects"

    invoke-interface {p0, v4, v2}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/http/client/config/RequestConfig$Builder;->setMaxRedirects(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string v2, "http.protocol.handle-redirects"

    invoke-interface {p0, v2, v1}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/http/client/config/RequestConfig$Builder;->setRedirectsEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string v2, "http.protocol.reject-relative-redirect"

    invoke-interface {p0, v2, v3}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, v1

    invoke-virtual {v0, p0}, Lorg/apache/http/client/config/RequestConfig$Builder;->setRelativeRedirectsAllowed(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/http/client/config/RequestConfig$Builder;->build()Lorg/apache/http/client/config/RequestConfig;

    move-result-object p0

    return-object p0
.end method
