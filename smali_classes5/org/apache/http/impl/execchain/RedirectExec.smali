.class public Lorg/apache/http/impl/execchain/RedirectExec;
.super Ljava/lang/Object;
.source "RedirectExec.java"

# interfaces
.implements Lorg/apache/http/impl/execchain/ClientExecChain;


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClient"


# instance fields
.field private final redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

.field private final requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

.field private final routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/execchain/ClientExecChain;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/client/RedirectStrategy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP client request executor"

    .line 2
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP route planner"

    .line 3
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP redirect strategy"

    .line 4
    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lorg/apache/http/impl/execchain/RedirectExec;->requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

    .line 6
    iput-object p2, p0, Lorg/apache/http/impl/execchain/RedirectExec;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    .line 7
    iput-object p3, p0, Lorg/apache/http/impl/execchain/RedirectExec;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    const-string v0, "HttpClient"

    const-string v1, "HTTP route"

    .line 1
    invoke-static {p1, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "HTTP request"

    .line 2
    invoke-static {p2, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "HTTP context"

    .line 3
    invoke-static {p3, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getRedirectLocations()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    :cond_0
    invoke-virtual {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lorg/apache/http/client/config/RequestConfig;->getMaxRedirects()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/http/client/config/RequestConfig;->getMaxRedirects()I

    move-result v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x32

    :goto_0
    const/4 v3, 0x0

    move-object v4, p2

    .line 8
    :goto_1
    iget-object v5, p0, Lorg/apache/http/impl/execchain/RedirectExec;->requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

    invoke-interface {v5, p1, v4, p3, p4}, Lorg/apache/http/impl/execchain/ClientExecChain;->execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;

    move-result-object v5

    const/4 v6, 0x3

    .line 9
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/http/client/config/RequestConfig;->isRedirectsEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lorg/apache/http/impl/execchain/RedirectExec;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    invoke-interface {v7, v4, v5, p3}, Lorg/apache/http/client/RedirectStrategy;->isRedirected(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v7

    if-eqz v7, :cond_9

    if-ge v3, v2, :cond_8

    add-int/lit8 v3, v3, 0x1

    .line 10
    iget-object v7, p0, Lorg/apache/http/impl/execchain/RedirectExec;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    invoke-interface {v7, v4, v5, p3}, Lorg/apache/http/client/RedirectStrategy;->getRedirect(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v4

    .line 11
    invoke-interface {v4}, Lorg/apache/http/HttpRequest;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 12
    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v7

    .line 13
    invoke-interface {v7}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/http/HttpRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 14
    :cond_2
    invoke-static {v4}, Lorg/apache/http/client/methods/HttpRequestWrapper;->wrap(Lorg/apache/http/HttpRequest;)Lorg/apache/http/client/methods/HttpRequestWrapper;

    move-result-object v4

    .line 15
    instance-of v7, v4, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v7, :cond_3

    .line 16
    move-object v7, v4

    check-cast v7, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-static {v7}, Lorg/apache/http/impl/execchain/RequestEntityProxy;->enhance(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 17
    :cond_3
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v7

    .line 18
    invoke-static {v7}, Lorg/apache/http/client/utils/URIUtilsHC4;->extractHost(Ljava/net/URI;)Lorg/apache/http/HttpHost;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 19
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object p1

    invoke-virtual {p1, v8}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 20
    invoke-virtual {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getTargetAuthState()Lorg/apache/http/auth/AuthStateHC4;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 21
    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    .line 22
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthStateHC4;->reset()V

    .line 23
    :cond_4
    invoke-virtual {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getProxyAuthState()Lorg/apache/http/auth/AuthStateHC4;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 24
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 25
    invoke-interface {v9}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 26
    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    .line 27
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthStateHC4;->reset()V

    .line 28
    :cond_5
    iget-object p1, p0, Lorg/apache/http/impl/execchain/RedirectExec;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    invoke-interface {p1, v8, v4, p3}, Lorg/apache/http/conn/routing/HttpRoutePlanner;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object p1

    .line 29
    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 30
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Redirecting to \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\' via "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    :cond_6
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtilsHC4;->consume(Lorg/apache/http/HttpEntity;)V

    .line 32
    invoke-interface {v5}, Ljava/io/Closeable;->close()V

    goto/16 :goto_1

    .line 33
    :cond_7
    new-instance p1, Lorg/apache/http/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Redirect URI does not specify a valid host name: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_8
    new-instance p1, Lorg/apache/http/client/RedirectException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Maximum redirects ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") exceeded"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-object v5

    :catch_0
    move-exception p1

    .line 35
    :try_start_1
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/http/util/EntityUtilsHC4;->consume(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :goto_2
    invoke-interface {v5}, Ljava/io/Closeable;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 37
    :catch_1
    :try_start_2
    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 38
    :goto_3
    throw p1

    .line 39
    :goto_4
    invoke-interface {v5}, Ljava/io/Closeable;->close()V

    throw p1

    :catch_2
    move-exception p1

    .line 40
    invoke-interface {v5}, Ljava/io/Closeable;->close()V

    .line 41
    throw p1

    :catch_3
    move-exception p1

    .line 42
    invoke-interface {v5}, Ljava/io/Closeable;->close()V

    .line 43
    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method
