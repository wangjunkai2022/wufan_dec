.class Lorg/apache/http/impl/execchain/ResponseEntityProxy;
.super Lorg/apache/http/entity/HttpEntityWrapperHC4;
.source "ResponseEntityProxy.java"

# interfaces
.implements Lorg/apache/http/conn/EofSensorWatcher;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;


# direct methods
.method constructor <init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/impl/execchain/ConnectionHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapperHC4;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 2
    iput-object p2, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    return-void
.end method

.method private cleanup()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    :cond_0
    return-void
.end method

.method public static enchance(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 3
    new-instance v1, Lorg/apache/http/impl/execchain/ResponseEntityProxy;

    invoke-direct {v1, v0, p1}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;-><init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/impl/execchain/ConnectionHolder;)V

    invoke-interface {p0, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->releaseConnection()V

    return-void
.end method

.method public eofDetected(Ljava/io/InputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->releaseConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw p1
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/http/conn/EofSensorInputStreamHC4;

    iget-object v1, p0, Lorg/apache/http/entity/HttpEntityWrapperHC4;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/http/conn/EofSensorInputStreamHC4;-><init>(Ljava/io/InputStream;Lorg/apache/http/conn/EofSensorWatcher;)V

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public releaseConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/http/impl/execchain/ConnectionHolder;->isReusable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    invoke-virtual {v0}, Lorg/apache/http/impl/execchain/ConnectionHolder;->releaseConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    const/4 p1, 0x0

    return p1
.end method

.method public streamClosed(Ljava/io/InputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/impl/execchain/ConnectionHolder;->isReleased()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 3
    invoke-virtual {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->releaseConnection()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    if-nez v0, :cond_1

    .line 4
    :goto_1
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    return v1

    .line 5
    :cond_1
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResponseEntityProxy{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lorg/apache/http/entity/HttpEntityWrapperHC4;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapperHC4;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 2
    invoke-virtual {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->releaseConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw p1
.end method
