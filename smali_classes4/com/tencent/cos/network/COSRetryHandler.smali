.class public Lcom/tencent/cos/network/COSRetryHandler;
.super Ljava/lang/Object;
.source "COSRetryHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized retryRequest(IILjava/lang/Exception;)Z
    .locals 2

    const-class v0, Lcom/tencent/cos/network/COSRetryHandler;

    monitor-enter v0

    const/4 v1, 0x0

    if-lt p0, p1, :cond_0

    .line 1
    monitor-exit v0

    return v1

    .line 2
    :cond_0
    :try_start_0
    instance-of p0, p2, Ljava/net/SocketTimeoutException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    .line 3
    monitor-exit v0

    return p1

    .line 4
    :cond_1
    :try_start_1
    instance-of p0, p2, Ljava/lang/InterruptedException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    .line 5
    monitor-exit v0

    return p1

    .line 6
    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
