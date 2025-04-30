.class public Lorg/apache/http/impl/execchain/ServiceUnavailableRetryExec;
.super Ljava/lang/Object;
.source "ServiceUnavailableRetryExec.java"

# interfaces
.implements Lorg/apache/http/impl/execchain/ClientExecChain;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClient"


# instance fields
.field private final requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

.field private final retryStrategy:Lorg/apache/http/client/ServiceUnavailableRetryStrategy;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/execchain/ClientExecChain;Lorg/apache/http/client/ServiceUnavailableRetryStrategy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP request executor"

    .line 2
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Retry strategy"

    .line 3
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lorg/apache/http/impl/execchain/ServiceUnavailableRetryExec;->requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

    .line 5
    iput-object p2, p0, Lorg/apache/http/impl/execchain/ServiceUnavailableRetryExec;->retryStrategy:Lorg/apache/http/client/ServiceUnavailableRetryStrategy;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lorg/apache/http/message/AbstractHttpMessage;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    :goto_0
    iget-object v2, p0, Lorg/apache/http/impl/execchain/ServiceUnavailableRetryExec;->requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/apache/http/impl/execchain/ClientExecChain;->execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;

    move-result-object v2

    .line 3
    :try_start_0
    iget-object v3, p0, Lorg/apache/http/impl/execchain/ServiceUnavailableRetryExec;->retryStrategy:Lorg/apache/http/client/ServiceUnavailableRetryStrategy;

    invoke-interface {v3, v2, v1, p3}, Lorg/apache/http/client/ServiceUnavailableRetryStrategy;->retryRequest(Lorg/apache/http/HttpResponse;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 5
    iget-object v3, p0, Lorg/apache/http/impl/execchain/ServiceUnavailableRetryExec;->retryStrategy:Lorg/apache/http/client/ServiceUnavailableRetryStrategy;

    invoke-interface {v3}, Lorg/apache/http/client/ServiceUnavailableRetryStrategy;->getRetryInterval()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    :try_start_1
    const-string v5, "HttpClient"

    const/4 v6, 0x3

    .line 6
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wait for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 9
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 10
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 11
    :cond_1
    :goto_1
    invoke-virtual {p2, v0}, Lorg/apache/http/message/AbstractHttpMessage;->setHeaders([Lorg/apache/http/Header;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    :catch_1
    move-exception p1

    .line 12
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 13
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
