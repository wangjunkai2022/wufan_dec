.class public abstract Lcom/tencent/cos/task/Task;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tencent/cos/model/COSResult;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "com.tencent.cos.task.Task"


# instance fields
.field protected volatile callTask:Lokhttp3/Call;

.field protected config:Lcom/tencent/cos/COSConfig;

.field protected currentRetryCount:I

.field protected future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected httpRequest:Lcom/tencent/cos/network/HttpRequest;

.field protected volatile isCancelled:Z

.field protected okHttpClient:Lokhttp3/OkHttpClient;

.field protected taskState:Lcom/tencent/cos/task/TaskState;

.field protected taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/network/HttpRequest;Lcom/tencent/cos/COSConfig;Lokhttp3/OkHttpClient;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/cos/task/Task;->isCancelled:Z

    .line 3
    iput v0, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 4
    iput-object p1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 5
    iput-object p2, p0, Lcom/tencent/cos/task/Task;->config:Lcom/tencent/cos/COSConfig;

    .line 6
    iput-object p3, p0, Lcom/tencent/cos/task/Task;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 7
    iput v0, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    return-void
.end method


# virtual methods
.method public call()Lcom/tencent/cos/model/COSResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onSendBegin()V

    .line 4
    sget-object v0, Lcom/tencent/cos/task/Task;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/cos/model/COSRequest;->getRequestId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getHttpMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/tencent/cos/task/Task;->doGetRequest()Lcom/tencent/cos/model/COSResult;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getHttpMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/tencent/cos/task/Task;->doPostRequest()Lcom/tencent/cos/model/COSResult;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/cos/task/Task;->call()Lcom/tencent/cos/model/COSResult;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized cancel()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/tencent/cos/task/Task;->isCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract doGetRequest()Lcom/tencent/cos/model/COSResult;
.end method

.method public abstract doPostRequest()Lcom/tencent/cos/model/COSResult;
.end method

.method public getDomainUrl(Lcom/tencent/cos/network/HttpRequest;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->config:Lcom/tencent/cos/COSConfig;

    invoke-virtual {v1}, Lcom/tencent/cos/COSConfig;->getHttpProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->config:Lcom/tencent/cos/COSConfig;

    invoke-virtual {v1}, Lcom/tencent/cos/COSConfig;->getCosDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->config:Lcom/tencent/cos/COSConfig;

    invoke-virtual {v1}, Lcom/tencent/cos/COSConfig;->getServerFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpRequest;->getPathForUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpRequest;->getQueryForUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpRequest;->getQueryForUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :cond_0
    sget-object p1, Lcom/tencent/cos/task/Task;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/cos/utils/QLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 10
    sget-object v0, Lcom/tencent/cos/task/Task;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    throw p1
.end method

.method public declared-synchronized getFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->future:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHttpRequest()Lcom/tencent/cos/network/HttpRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    return-object v0
.end method

.method public getTaskState()Lcom/tencent/cos/task/TaskState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->taskState:Lcom/tencent/cos/task/TaskState;

    return-object v0
.end method

.method public getTaskStateListener()Lcom/tencent/cos/task/listener/ITaskStateListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    return-object v0
.end method

.method public declared-synchronized pause()Z
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 3
    iput-boolean v0, p0, Lcom/tencent/cos/task/Task;->isCancelled:Z

    .line 4
    sget-object v1, Lcom/tencent/cos/task/Task;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/cos/model/COSRequest;->getRequestId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pause"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onPause()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()Z
    .locals 1

    monitor-enter p0

    .line 1
    monitor-exit p0

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized setFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/tencent/cos/task/Task;->future:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTaskState(Lcom/tencent/cos/task/TaskState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/task/Task;->taskState:Lcom/tencent/cos/task/TaskState;

    return-void
.end method

.method public setTaskStateListener(Lcom/tencent/cos/task/listener/ITaskStateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    return-void
.end method
