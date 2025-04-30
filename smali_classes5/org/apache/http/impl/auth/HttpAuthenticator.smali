.class public Lorg/apache/http/impl/auth/HttpAuthenticator;
.super Ljava/lang/Object;
.source "HttpAuthenticator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doAuth(Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lorg/apache/http/auth/ContextAwareAuthScheme;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/apache/http/auth/ContextAwareAuthScheme;

    invoke-interface {p1, p2, p3, p4}, Lorg/apache/http/auth/ContextAwareAuthScheme;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/http/auth/AuthScheme;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;

    move-result-object p1

    return-object p1
.end method

.method private ensureAuthScheme(Lorg/apache/http/auth/AuthScheme;)V
    .locals 1

    const-string v0, "Auth scheme"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/http/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateAuthResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lorg/apache/http/auth/AuthStateHC4;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v1

    .line 3
    sget-object v2, Lorg/apache/http/impl/auth/HttpAuthenticator$1;->$SwitchMap$org$apache$http$auth$AuthProtocolState:[I

    invoke-virtual {p2}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const-string v4, " authentication error: "

    const/4 v5, 0x3

    const-string v6, "HttpClient"

    if-eq v2, v3, :cond_2

    if-eq v2, v5, :cond_1

    const/4 p2, 0x4

    if-eq v2, p2, :cond_0

    goto :goto_2

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/http/impl/auth/HttpAuthenticator;->ensureAuthScheme(Lorg/apache/http/auth/AuthScheme;)V

    .line 5
    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    .line 6
    :cond_2
    invoke-virtual {p2}, Lorg/apache/http/auth/AuthStateHC4;->getAuthOptions()Ljava/util/Queue;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 7
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 8
    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/auth/AuthOption;

    .line 9
    invoke-virtual {v0}, Lorg/apache/http/auth/AuthOption;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Lorg/apache/http/auth/AuthOption;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v0

    .line 11
    invoke-virtual {p2, v1, v0}, Lorg/apache/http/auth/AuthStateHC4;->update(Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/Credentials;)V

    .line 12
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Generating response to an authentication challenge using "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " scheme"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_4
    :try_start_0
    invoke-direct {p0, v1, v0, p1, p3}, Lorg/apache/http/impl/auth/HttpAuthenticator;->doAuth(Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;

    move-result-object v0

    .line 15
    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_0
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v3, 0x5

    .line 16
    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    :goto_1
    return-void

    .line 18
    :cond_6
    invoke-direct {p0, v0}, Lorg/apache/http/impl/auth/HttpAuthenticator;->ensureAuthScheme(Lorg/apache/http/auth/AuthScheme;)V

    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    .line 19
    :try_start_1
    invoke-direct {p0, v0, v1, p1, p3}, Lorg/apache/http/impl/auth/HttpAuthenticator;->doAuth(Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;

    move-result-object p2

    .line 20
    invoke-interface {p1, p2}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_1
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    const/4 p2, 0x6

    .line 21
    invoke-static {v6, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_3
    return-void
.end method

.method public handleAuthChallenge(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 9

    const-string v0, "HttpClient"

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 1
    :try_start_0
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " requested authentication"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    invoke-interface {p3, p1, p2, p5}, Lorg/apache/http/client/AuthenticationStrategy;->getChallenges(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v4

    .line 4
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return v2

    .line 6
    :cond_1
    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v5

    .line 7
    sget-object v6, Lorg/apache/http/impl/auth/HttpAuthenticator$1;->$SwitchMap$org$apache$http$auth$AuthProtocolState:[I

    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    const/4 v8, 0x2

    if-eq v6, v8, :cond_4

    if-eq v6, v3, :cond_3

    const/4 v8, 0x4

    if-eq v6, v8, :cond_2

    if-eq v6, v1, :cond_5

    goto :goto_0

    :cond_2
    return v2

    .line 8
    :cond_3
    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->reset()V

    goto :goto_0

    :cond_4
    if-nez v5, :cond_5

    .line 9
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    const/4 p2, 0x0

    .line 10
    invoke-interface {p3, p1, p2, p5}, Lorg/apache/http/client/AuthenticationStrategy;->authFailed(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/protocol/HttpContext;)V

    .line 11
    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->reset()V

    .line 12
    sget-object p1, Lorg/apache/http/auth/AuthProtocolState;->FAILURE:Lorg/apache/http/auth/AuthProtocolState;

    invoke-virtual {p4, p1}, Lorg/apache/http/auth/AuthStateHC4;->setState(Lorg/apache/http/auth/AuthProtocolState;)V

    return v2

    :cond_5
    if-eqz v5, :cond_8

    .line 13
    invoke-interface {v5}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    .line 14
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/Header;

    if-eqz v6, :cond_7

    .line 15
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    .line 16
    invoke-interface {v5, v6}, Lorg/apache/http/auth/AuthScheme;->processChallenge(Lorg/apache/http/Header;)V

    .line 17
    invoke-interface {v5}, Lorg/apache/http/auth/AuthScheme;->isComplete()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 18
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    .line 19
    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object p2

    invoke-interface {p3, p1, p2, p5}, Lorg/apache/http/client/AuthenticationStrategy;->authFailed(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/protocol/HttpContext;)V

    .line 20
    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->reset()V

    .line 21
    sget-object p1, Lorg/apache/http/auth/AuthProtocolState;->FAILURE:Lorg/apache/http/auth/AuthProtocolState;

    invoke-virtual {p4, p1}, Lorg/apache/http/auth/AuthStateHC4;->setState(Lorg/apache/http/auth/AuthProtocolState;)V

    return v2

    .line 22
    :cond_6
    sget-object p1, Lorg/apache/http/auth/AuthProtocolState;->HANDSHAKE:Lorg/apache/http/auth/AuthProtocolState;

    invoke-virtual {p4, p1}, Lorg/apache/http/auth/AuthStateHC4;->setState(Lorg/apache/http/auth/AuthProtocolState;)V

    return v7

    .line 23
    :cond_7
    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->reset()V

    .line 24
    :cond_8
    :goto_0
    invoke-interface {p3, v4, p1, p2, p5}, Lorg/apache/http/client/AuthenticationStrategy;->select(Ljava/util/Map;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Queue;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 25
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    .line 26
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Selected authentication options: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    :cond_9
    sget-object p2, Lorg/apache/http/auth/AuthProtocolState;->CHALLENGED:Lorg/apache/http/auth/AuthProtocolState;

    invoke-virtual {p4, p2}, Lorg/apache/http/auth/AuthStateHC4;->setState(Lorg/apache/http/auth/AuthProtocolState;)V

    .line 29
    invoke-virtual {p4, p1}, Lorg/apache/http/auth/AuthStateHC4;->update(Ljava/util/Queue;)V
    :try_end_0
    .catch Lorg/apache/http/auth/MalformedChallengeException; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :cond_a
    return v2

    :catch_0
    move-exception p1

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Malformed challenge: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/http/auth/MalformedChallengeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_b
    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->reset()V

    return v2
.end method

.method public isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 4

    .line 1
    invoke-interface {p3, p1, p2, p5}, Lorg/apache/http/client/AuthenticationStrategy;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result p2

    const-string v0, "HttpClient"

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz p2, :cond_1

    .line 2
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 3
    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object p2

    sget-object v0, Lorg/apache/http/auth/AuthProtocolState;->SUCCESS:Lorg/apache/http/auth/AuthProtocolState;

    if-ne p2, v0, :cond_0

    .line 4
    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object p2

    invoke-interface {p3, p1, p2, p5}, Lorg/apache/http/client/AuthenticationStrategy;->authFailed(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/protocol/HttpContext;)V

    :cond_0
    return v1

    .line 5
    :cond_1
    sget-object p2, Lorg/apache/http/impl/auth/HttpAuthenticator$1;->$SwitchMap$org$apache$http$auth$AuthProtocolState:[I

    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p2, p2, v3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    if-eq p2, v2, :cond_3

    .line 6
    sget-object p1, Lorg/apache/http/auth/AuthProtocolState;->UNCHALLENGED:Lorg/apache/http/auth/AuthProtocolState;

    invoke-virtual {p4, p1}, Lorg/apache/http/auth/AuthStateHC4;->setState(Lorg/apache/http/auth/AuthProtocolState;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 8
    sget-object p2, Lorg/apache/http/auth/AuthProtocolState;->SUCCESS:Lorg/apache/http/auth/AuthProtocolState;

    invoke-virtual {p4, p2}, Lorg/apache/http/auth/AuthStateHC4;->setState(Lorg/apache/http/auth/AuthProtocolState;)V

    .line 9
    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object p2

    invoke-interface {p3, p1, p2, p5}, Lorg/apache/http/client/AuthenticationStrategy;->authSucceeded(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/protocol/HttpContext;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
