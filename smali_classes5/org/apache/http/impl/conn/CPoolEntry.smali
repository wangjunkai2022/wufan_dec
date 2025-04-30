.class Lorg/apache/http/impl/conn/CPoolEntry;
.super Lorg/apache/http/pool/PoolEntry;
.source "CPoolEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/http/pool/PoolEntry<",
        "Lorg/apache/http/conn/routing/HttpRoute;",
        "Lorg/apache/http/conn/ManagedHttpClientConnection;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClient"


# instance fields
.field private volatile routeComplete:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/conn/ManagedHttpClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lorg/apache/http/pool/PoolEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolEntry;->closeConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x3

    const-string v1, "HttpClient"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method

.method public closeConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/http/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpClientConnection;

    .line 2
    invoke-interface {v0}, Lorg/apache/http/HttpClientConnection;->close()V

    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/http/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpClientConnection;

    .line 2
    invoke-interface {v0}, Lorg/apache/http/HttpClientConnection;->isOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isExpired(J)Z
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lorg/apache/http/pool/PoolEntry;->isExpired(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x3

    const-string v0, "HttpClient"

    .line 2
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Connection "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " expired @ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/apache/http/pool/PoolEntry;->getExpiry()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    return p1
.end method

.method public isRouteComplete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/CPoolEntry;->routeComplete:Z

    return v0
.end method

.method public markRouteComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/apache/http/impl/conn/CPoolEntry;->routeComplete:Z

    return-void
.end method

.method public shutdownConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/http/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpClientConnection;

    .line 2
    invoke-interface {v0}, Lorg/apache/http/HttpClientConnection;->shutdown()V

    return-void
.end method
