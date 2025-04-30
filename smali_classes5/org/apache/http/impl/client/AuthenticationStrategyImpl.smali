.class abstract Lorg/apache/http/impl/client/AuthenticationStrategyImpl;
.super Ljava/lang/Object;
.source "AuthenticationStrategyImpl.java"

# interfaces
.implements Lorg/apache/http/client/AuthenticationStrategy;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final DEFAULT_SCHEME_PRIORITY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "HttpClient"


# instance fields
.field private final challengeCode:I

.field private final headerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "negotiate"

    const-string v1, "Kerberos"

    const-string v2, "NTLM"

    const-string v3, "Digest"

    const-string v4, "Basic"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/AuthenticationStrategyImpl;->DEFAULT_SCHEME_PRIORITY:Ljava/util/List;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/http/impl/client/AuthenticationStrategyImpl;->challengeCode:I

    .line 3
    iput-object p2, p0, Lorg/apache/http/impl/client/AuthenticationStrategyImpl;->headerName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public authFailed(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/protocol/HttpContext;)V
    .locals 1

    const-string p2, "Host"

    .line 1
    invoke-static {p1, p2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "HTTP context"

    .line 2
    invoke-static {p3, p2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lorg/apache/http/client/protocol/HttpClientContext;->getAuthCache()Lorg/apache/http/client/AuthCache;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p3, 0x3

    const-string v0, "HttpClient"

    .line 5
    invoke-static {v0, p3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Clearing cached auth scheme for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    invoke-interface {p2, p1}, Lorg/apache/http/client/AuthCache;->remove(Lorg/apache/http/HttpHost;)V

    :cond_1
    return-void
.end method

.method public authSucceeded(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2

    const-string v0, "Host"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Auth scheme"

    .line 2
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    .line 3
    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object p3

    .line 5
    invoke-virtual {p0, p2}, Lorg/apache/http/impl/client/AuthenticationStrategyImpl;->isCachable(Lorg/apache/http/auth/AuthScheme;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getAuthCache()Lorg/apache/http/client/AuthCache;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lorg/apache/http/impl/client/BasicAuthCache;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicAuthCache;-><init>()V

    .line 8
    invoke-virtual {p3, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->setAuthCache(Lorg/apache/http/client/AuthCache;)V

    :cond_0
    const/4 p3, 0x3

    const-string v1, "HttpClient"

    .line 9
    invoke-static {v1, p3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caching \'"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' auth scheme for "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    :cond_1
    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/AuthCache;->put(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;)V

    :cond_2
    return-void
.end method

.method public getChallenges(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpResponse;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    const-string p1, "HTTP response"

    .line 1
    invoke-static {p2, p1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lorg/apache/http/impl/client/AuthenticationStrategyImpl;->headerName:Ljava/lang/String;

    invoke-interface {p2, p1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object p1

    .line 3
    new-instance p2, Ljava/util/HashMap;

    array-length p3, p1

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 4
    array-length p3, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_4

    aget-object v2, p1, v1

    .line 5
    instance-of v3, v2, Lorg/apache/http/FormattedHeader;

    if-eqz v3, :cond_0

    .line 6
    move-object v3, v2

    check-cast v3, Lorg/apache/http/FormattedHeader;

    invoke-interface {v3}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v4

    .line 7
    invoke-interface {v3}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result v3

    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 9
    new-instance v4, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 10
    invoke-virtual {v4, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 11
    :goto_1
    invoke-virtual {v4}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-virtual {v4, v3}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v5, v3

    .line 12
    :goto_2
    invoke-virtual {v4}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {v4, v3, v5}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 14
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_3
    new-instance p1, Lorg/apache/http/auth/MalformedChallengeException;

    const-string p2, "Header value is null"

    invoke-direct {p1, p2}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object p2
.end method

.method abstract getPreferredAuthSchemes(Lorg/apache/http/client/config/RequestConfig;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/config/RequestConfig;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 0

    const-string p1, "HTTP response"

    .line 1
    invoke-static {p2, p1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    .line 3
    iget p2, p0, Lorg/apache/http/impl/client/AuthenticationStrategyImpl;->challengeCode:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isCachable(Lorg/apache/http/auth/AuthScheme;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Lorg/apache/http/auth/AuthScheme;->isComplete()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Basic"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Digest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public select(Ljava/util/Map;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Queue;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/http/Header;",
            ">;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpResponse;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")",
            "Ljava/util/Queue<",
            "Lorg/apache/http/auth/AuthOption;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    const-string v0, "Map of auth challenges"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Host"

    .line 2
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP response"

    .line 3
    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p3, "HTTP context"

    .line 4
    invoke-static {p4, p3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-static {p4}, Lorg/apache/http/client/protocol/HttpClientContext;->adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object p3

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    invoke-virtual {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getAuthSchemeRegistry()Lorg/apache/http/config/Lookup;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "HttpClient"

    if-nez v1, :cond_0

    .line 8
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v4

    if-nez v4, :cond_1

    .line 10
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-object v0

    .line 11
    :cond_1
    invoke-virtual {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object p3

    .line 12
    invoke-virtual {p0, p3}, Lorg/apache/http/impl/client/AuthenticationStrategyImpl;->getPreferredAuthSchemes(Lorg/apache/http/client/config/RequestConfig;)Ljava/util/Collection;

    move-result-object p3

    if-nez p3, :cond_2

    .line 13
    sget-object p3, Lorg/apache/http/impl/client/AuthenticationStrategyImpl;->DEFAULT_SCHEME_PRIORITY:Ljava/util/List;

    .line 14
    :cond_2
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Authentication schemes in the order of preference: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    :cond_3
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 17
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/Header;

    if-eqz v6, :cond_6

    .line 18
    invoke-interface {v1, v5}, Lorg/apache/http/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/http/auth/AuthSchemeProvider;

    if-nez v7, :cond_5

    const/4 v6, 0x5

    .line 19
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Authentication scheme "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not supported"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 21
    :cond_5
    invoke-interface {v7, p4}, Lorg/apache/http/auth/AuthSchemeProvider;->create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/auth/AuthScheme;

    move-result-object v5

    .line 22
    invoke-interface {v5, v6}, Lorg/apache/http/auth/AuthScheme;->processChallenge(Lorg/apache/http/Header;)V

    .line 23
    new-instance v6, Lorg/apache/http/auth/AuthScope;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v8

    invoke-interface {v5}, Lorg/apache/http/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-interface {v4, v6}, Lorg/apache/http/client/CredentialsProvider;->getCredentials(Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 25
    new-instance v7, Lorg/apache/http/auth/AuthOption;

    invoke-direct {v7, v5, v6}, Lorg/apache/http/auth/AuthOption;-><init>(Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/Credentials;)V

    invoke-interface {v0, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_6
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Challenge for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " authentication scheme not available"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    return-object v0
.end method
