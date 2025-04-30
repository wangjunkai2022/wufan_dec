.class public Lorg/apache/http/client/protocol/RequestAuthCache;
.super Ljava/lang/Object;
.source "RequestAuthCache.java"

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

.method private doPreemptiveAuth(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/client/CredentialsProvider;)V
    .locals 6

    .line 1
    invoke-interface {p2}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpClient"

    const/4 v2, 0x3

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Re-using cached \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' auth scheme for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    new-instance v3, Lorg/apache/http/auth/AuthScope;

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result p1

    sget-object v5, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    invoke-direct {v3, v4, p1, v5, v0}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-interface {p4, v3}, Lorg/apache/http/client/CredentialsProvider;->getCredentials(Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p2}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object p4

    const-string v0, "BASIC"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 7
    sget-object p4, Lorg/apache/http/auth/AuthProtocolState;->CHALLENGED:Lorg/apache/http/auth/AuthProtocolState;

    invoke-virtual {p3, p4}, Lorg/apache/http/auth/AuthStateHC4;->setState(Lorg/apache/http/auth/AuthProtocolState;)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object p4, Lorg/apache/http/auth/AuthProtocolState;->SUCCESS:Lorg/apache/http/auth/AuthProtocolState;

    invoke-virtual {p3, p4}, Lorg/apache/http/auth/AuthStateHC4;->setState(Lorg/apache/http/auth/AuthProtocolState;)V

    .line 9
    :goto_0
    invoke-virtual {p3, p2, p1}, Lorg/apache/http/auth/AuthStateHC4;->update(Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/Credentials;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP request"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "HTTP context"

    .line 2
    invoke-static {p2, p1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lorg/apache/http/client/protocol/HttpClientContext;->adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lorg/apache/http/client/protocol/HttpClientContext;->getAuthCache()Lorg/apache/http/client/AuthCache;

    move-result-object p2

    const/4 v0, 0x3

    const-string v1, "HttpClient"

    if-nez p2, :cond_0

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/client/protocol/HttpClientContext;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    if-nez v2, :cond_1

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void

    .line 8
    :cond_1
    invoke-virtual {p1}, Lorg/apache/http/client/protocol/HttpClientContext;->getHttpRoute()Lorg/apache/http/conn/routing/RouteInfo;

    move-result-object v3

    if-nez v3, :cond_2

    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void

    .line 10
    :cond_2
    invoke-virtual {p1}, Lorg/apache/http/protocol/HttpCoreContext;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v4

    if-nez v4, :cond_3

    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void

    .line 12
    :cond_3
    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v0

    if-gez v0, :cond_4

    .line 13
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Lorg/apache/http/conn/routing/RouteInfo;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v5

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v5, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v4, v0

    .line 14
    :cond_4
    invoke-virtual {p1}, Lorg/apache/http/client/protocol/HttpClientContext;->getTargetAuthState()Lorg/apache/http/auth/AuthStateHC4;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v0}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v1

    sget-object v5, Lorg/apache/http/auth/AuthProtocolState;->UNCHALLENGED:Lorg/apache/http/auth/AuthProtocolState;

    if-ne v1, v5, :cond_5

    .line 16
    invoke-interface {p2, v4}, Lorg/apache/http/client/AuthCache;->get(Lorg/apache/http/HttpHost;)Lorg/apache/http/auth/AuthScheme;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 17
    invoke-direct {p0, v4, v1, v0, v2}, Lorg/apache/http/client/protocol/RequestAuthCache;->doPreemptiveAuth(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/client/CredentialsProvider;)V

    .line 18
    :cond_5
    invoke-interface {v3}, Lorg/apache/http/conn/routing/RouteInfo;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lorg/apache/http/client/protocol/HttpClientContext;->getProxyAuthState()Lorg/apache/http/auth/AuthStateHC4;

    move-result-object p1

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 20
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v1

    sget-object v3, Lorg/apache/http/auth/AuthProtocolState;->UNCHALLENGED:Lorg/apache/http/auth/AuthProtocolState;

    if-ne v1, v3, :cond_6

    .line 21
    invoke-interface {p2, v0}, Lorg/apache/http/client/AuthCache;->get(Lorg/apache/http/HttpHost;)Lorg/apache/http/auth/AuthScheme;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 22
    invoke-direct {p0, v0, p2, p1, v2}, Lorg/apache/http/client/protocol/RequestAuthCache;->doPreemptiveAuth(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/client/CredentialsProvider;)V

    :cond_6
    return-void
.end method
