.class public Lcom/tencent/cos/task/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tencent.cos.task.TaskManager"


# instance fields
.field protected cmdExecutor:Ljava/util/concurrent/ExecutorService;

.field protected cmdTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/task/Task;",
            ">;"
        }
    .end annotation
.end field

.field protected config:Lcom/tencent/cos/COSConfig;

.field protected context:Landroid/content/Context;

.field protected downloadExecutor:Ljava/util/concurrent/ExecutorService;

.field protected downloadTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/task/Task;",
            ">;"
        }
    .end annotation
.end field

.field protected maxPoolSize:I

.field protected okHttpClient:Lokhttp3/OkHttpClient;

.field protected storageHelper:Lcom/tencent/cos/task/storage/StorageHelper;

.field protected uploadExecutor:Ljava/util/concurrent/ExecutorService;

.field protected uploadTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/task/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/cos/COSConfig;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/tencent/cos/task/TaskManager;->maxPoolSize:I

    .line 3
    invoke-virtual {p2}, Lcom/tencent/cos/COSConfig;->getThreadPoolSize()I

    move-result v0

    iput v0, p0, Lcom/tencent/cos/task/TaskManager;->maxPoolSize:I

    .line 4
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/task/TaskManager;->cmdExecutor:Ljava/util/concurrent/ExecutorService;

    .line 5
    iget v0, p0, Lcom/tencent/cos/task/TaskManager;->maxPoolSize:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/task/TaskManager;->uploadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 6
    iget v0, p0, Lcom/tencent/cos/task/TaskManager;->maxPoolSize:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/task/TaskManager;->downloadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/task/TaskManager;->cmdTaskList:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/task/TaskManager;->uploadTaskList:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/task/TaskManager;->downloadTaskList:Ljava/util/List;

    .line 10
    iput-object p2, p0, Lcom/tencent/cos/task/TaskManager;->config:Lcom/tencent/cos/COSConfig;

    .line 11
    iput-object p1, p0, Lcom/tencent/cos/task/TaskManager;->context:Landroid/content/Context;

    .line 12
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/tencent/cos/task/TaskManager$1;

    invoke-direct {v1, p0, p2}, Lcom/tencent/cos/task/TaskManager$1;-><init>(Lcom/tencent/cos/task/TaskManager;Lcom/tencent/cos/COSConfig;)V

    .line 17
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 18
    new-instance v1, Lokhttp3/Dispatcher;

    invoke-direct {v1}, Lokhttp3/Dispatcher;-><init>()V

    .line 19
    invoke-virtual {p2}, Lcom/tencent/cos/COSConfig;->getMaxConnectionsCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lokhttp3/Dispatcher;->setMaxRequests(I)V

    .line 20
    invoke-virtual {p2}, Lcom/tencent/cos/COSConfig;->getConnectionTimeout()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 21
    invoke-virtual {p2}, Lcom/tencent/cos/COSConfig;->getSocketTimeout()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v2, v5, v6, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 22
    invoke-virtual {p2}, Lcom/tencent/cos/COSConfig;->getSocketTimeout()I

    move-result p2

    int-to-long v5, p2

    invoke-virtual {v2, v5, v6, v4}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    .line 23
    invoke-virtual {p2, v1}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    .line 24
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/cos/task/TaskManager;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 25
    new-instance p2, Lcom/tencent/cos/task/storage/StorageHelper;

    invoke-direct {p2, p1, p3}, Lcom/tencent/cos/task/storage/StorageHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/tencent/cos/task/TaskManager;->storageHelper:Lcom/tencent/cos/task/storage/StorageHelper;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cancelTask(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager;->uploadTaskList:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/task/TaskManager;->getTask(Ljava/util/List;I)Lcom/tencent/cos/task/Task;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/tencent/cos/task/TaskType;->UPLOAD_TASK:Lcom/tencent/cos/task/TaskType;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager;->downloadTaskList:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/task/TaskManager;->getTask(Ljava/util/List;I)Lcom/tencent/cos/task/Task;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/tencent/cos/task/TaskType;->DOWNLOAD_TASK:Lcom/tencent/cos/task/TaskType;

    :cond_0
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager;->cmdTaskList:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/task/TaskManager;->getTask(Ljava/util/List;I)Lcom/tencent/cos/task/Task;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/tencent/cos/task/TaskType;->CMD_TASK:Lcom/tencent/cos/task/TaskType;

    :cond_1
    const/4 p1, 0x0

    if-nez v0, :cond_2

    .line 7
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    const-string v1, "\u53d6\u6d88\u4efb\u52a1\u5931\u8d25\uff1a\u4e0d\u5b58\u5728\u8be5\u4efb\u52a1"

    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/cos/task/Task;->getTaskState()Lcom/tencent/cos/task/TaskState;

    move-result-object v2

    .line 9
    sget-object v3, Lcom/tencent/cos/task/TaskState;->SUCCEED:Lcom/tencent/cos/task/TaskState;

    if-eq v2, v3, :cond_9

    sget-object v3, Lcom/tencent/cos/task/TaskState;->FAILED:Lcom/tencent/cos/task/TaskState;

    if-eq v2, v3, :cond_9

    sget-object v3, Lcom/tencent/cos/task/TaskState;->CANCEL:Lcom/tencent/cos/task/TaskState;

    if-ne v2, v3, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {v0}, Lcom/tencent/cos/task/Task;->cancel()Z

    .line 11
    invoke-virtual {v0}, Lcom/tencent/cos/task/Task;->getFuture()Ljava/util/concurrent/Future;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 12
    invoke-interface {p1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_8

    .line 13
    sget-object v4, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    const-string v5, "\u53d6\u6d88\u4efb\u52a1\u6210\u529f\uff01"

    invoke-static {v4, v5}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v3}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 15
    sget-object v3, Lcom/tencent/cos/task/TaskManager$2;->$SwitchMap$com$tencent$cos$task$TaskType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-eq v1, v2, :cond_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    goto :goto_1

    .line 16
    :cond_5
    iget-object v1, p0, Lcom/tencent/cos/task/TaskManager;->uploadTaskList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_6
    iget-object v1, p0, Lcom/tencent/cos/task/TaskManager;->downloadTaskList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_7
    iget-object v1, p0, Lcom/tencent/cos/task/TaskManager;->cmdTaskList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_8
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    const-string v1, "\u53d6\u6d88\u4efb\u52a1\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return p1

    .line 20
    :cond_9
    :goto_2
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    const-string v1, "\u4efb\u52a1\u53d6\u6d88\u5931\u8d25\uff1a\u4efb\u52a1\u72b6\u6001\u4e0d\u5141\u8bb8\u53d6\u6d88"

    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public getListTask()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/cos/task/Task;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/tencent/cos/task/TaskManager;->cmdTaskList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/tencent/cos/task/TaskManager;->downloadTaskList:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/tencent/cos/task/TaskManager;->uploadTaskList:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public getTask(Ljava/util/List;I)Lcom/tencent/cos/task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/cos/task/Task;",
            ">;I)",
            "Lcom/tencent/cos/task/Task;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/cos/task/Task;

    .line 4
    invoke-virtual {v0}, Lcom/tencent/cos/task/Task;->getHttpRequest()Lcom/tencent/cos/network/HttpRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/cos/model/COSRequest;->getRequestId()I

    move-result v1

    if-ne v1, p2, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public pauseTask(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager;->uploadTaskList:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/task/TaskManager;->getTask(Ljava/util/List;I)Lcom/tencent/cos/task/Task;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager;->downloadTaskList:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/task/TaskManager;->getTask(Ljava/util/List;I)Lcom/tencent/cos/task/Task;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager;->cmdTaskList:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/task/TaskManager;->getTask(Ljava/util/List;I)Lcom/tencent/cos/task/Task;

    move-result-object v0

    :cond_1
    const/4 p1, 0x0

    if-nez v0, :cond_2

    .line 4
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    const-string v1, "\u6682\u505c\u4efb\u52a1\u5931\u8d25\uff1a\u4e0d\u5b58\u5728\u8be5\u4efb\u52a1"

    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/cos/task/Task;->getTaskState()Lcom/tencent/cos/task/TaskState;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/tencent/cos/task/TaskState;->SUCCEED:Lcom/tencent/cos/task/TaskState;

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/tencent/cos/task/TaskState;->FAILED:Lcom/tencent/cos/task/TaskState;

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/tencent/cos/task/TaskState;->PAUSE:Lcom/tencent/cos/task/TaskState;

    if-eq v1, v2, :cond_6

    sget-object v3, Lcom/tencent/cos/task/TaskState;->CANCEL:Lcom/tencent/cos/task/TaskState;

    if-eq v1, v3, :cond_6

    sget-object v3, Lcom/tencent/cos/task/TaskState;->DISABLE:Lcom/tencent/cos/task/TaskState;

    if-ne v1, v3, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {v0}, Lcom/tencent/cos/task/Task;->pause()Z

    .line 8
    invoke-virtual {v0}, Lcom/tencent/cos/task/Task;->getFuture()Ljava/util/concurrent/Future;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 9
    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v1

    :cond_4
    if-eqz v1, :cond_5

    .line 10
    sget-object p1, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    const-string v3, "\u6682\u505c\u4efb\u52a1\u6210\u529f\uff01"

    invoke-static {p1, v3}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v2}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    goto :goto_0

    .line 12
    :cond_5
    sget-object p1, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    const-string v0, "\u6682\u505c\u4efb\u52a1\u5931\u8d25\uff01"

    invoke-static {p1, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    .line 13
    :cond_6
    :goto_1
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    const-string v1, "\u4efb\u52a1\u6682\u505c\u5931\u8d25\uff1a\u4efb\u52a1\u72b6\u6001\u4e0d\u5141\u8bb8\u6682\u505c"

    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public resumeTask(I)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/tencent/cos/task/TaskType;->UPLOAD_TASK:Lcom/tencent/cos/task/TaskType;

    .line 2
    iget-object v1, p0, Lcom/tencent/cos/task/TaskManager;->uploadTaskList:Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Lcom/tencent/cos/task/TaskManager;->getTask(Ljava/util/List;I)Lcom/tencent/cos/task/Task;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager;->downloadTaskList:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/task/TaskManager;->getTask(Ljava/util/List;I)Lcom/tencent/cos/task/Task;

    move-result-object v1

    .line 4
    sget-object v0, Lcom/tencent/cos/task/TaskType;->DOWNLOAD_TASK:Lcom/tencent/cos/task/TaskType;

    :cond_0
    if-nez v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager;->cmdTaskList:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/task/TaskManager;->getTask(Ljava/util/List;I)Lcom/tencent/cos/task/Task;

    move-result-object v1

    .line 6
    sget-object v0, Lcom/tencent/cos/task/TaskType;->CMD_TASK:Lcom/tencent/cos/task/TaskType;

    :cond_1
    const/4 p1, 0x0

    if-nez v1, :cond_2

    .line 7
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    const-string v1, "\u6062\u590d\u4efb\u52a1\u5931\u8d25\uff1a\u4e0d\u5b58\u5728\u8be5\u4efb\u52a1"

    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 8
    :cond_2
    invoke-virtual {v1}, Lcom/tencent/cos/task/Task;->getTaskState()Lcom/tencent/cos/task/TaskState;

    move-result-object v2

    .line 9
    sget-object v3, Lcom/tencent/cos/task/TaskState;->PAUSE:Lcom/tencent/cos/task/TaskState;

    if-eq v2, v3, :cond_3

    .line 10
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    const-string v1, "\u4efb\u52a1\u6062\u590d\u5931\u8d25\uff1a\u4efb\u52a1\u72b6\u6001\u4e0d\u5141\u8bb8\u6062\u590d"

    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 11
    :cond_3
    invoke-virtual {v1}, Lcom/tencent/cos/task/Task;->resume()Z

    .line 12
    sget-object p1, Lcom/tencent/cos/task/TaskState;->WAITING:Lcom/tencent/cos/task/TaskState;

    invoke-virtual {v1, p1}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 13
    sget-object p1, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    const-string v2, "\u6062\u590d\u4efb\u52a1\u6210\u529f\uff01"

    invoke-static {p1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object p1, Lcom/tencent/cos/task/TaskManager$2;->$SwitchMap$com$tencent$cos$task$TaskType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    goto :goto_0

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->uploadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tencent/cos/task/Task;->setFuture(Ljava/util/concurrent/Future;)V

    goto :goto_0

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->downloadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tencent/cos/task/Task;->setFuture(Ljava/util/concurrent/Future;)V

    goto :goto_0

    .line 17
    :cond_6
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->cmdExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tencent/cos/task/Task;->setFuture(Ljava/util/concurrent/Future;)V

    :goto_0
    return v0
.end method

.method public sendCmdRequest(Lcom/tencent/cos/model/COSRequest;)Lcom/tencent/cos/model/COSResult;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/cos/task/CmdTask;

    new-instance v1, Lcom/tencent/cos/network/HttpRequest;

    invoke-direct {v1, p1}, Lcom/tencent/cos/network/HttpRequest;-><init>(Lcom/tencent/cos/model/COSRequest;)V

    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->config:Lcom/tencent/cos/COSConfig;

    iget-object v2, p0, Lcom/tencent/cos/task/TaskManager;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v1, p1, v2}, Lcom/tencent/cos/task/CmdTask;-><init>(Lcom/tencent/cos/network/HttpRequest;Lcom/tencent/cos/COSConfig;Lokhttp3/OkHttpClient;)V

    .line 2
    sget-object p1, Lcom/tencent/cos/task/TaskState;->WAITING:Lcom/tencent/cos/task/TaskState;

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 3
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->cmdTaskList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p1, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;

    iget-object v1, p0, Lcom/tencent/cos/task/TaskManager;->cmdTaskList:Ljava/util/List;

    invoke-direct {p1, p0, v1, v0}, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;-><init>(Lcom/tencent/cos/task/TaskManager;Ljava/util/List;Lcom/tencent/cos/task/Task;)V

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setTaskStateListener(Lcom/tencent/cos/task/listener/ITaskStateListener;)V

    .line 5
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->cmdExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setFuture(Ljava/util/concurrent/Future;)V

    .line 6
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/cos/task/Task;->getFuture()Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/model/COSResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    const-string v1, "cancellationException"

    invoke-static {v0, v1, p1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public sendDownloadRequest(Lcom/tencent/cos/model/GetObjectRequest;)Lcom/tencent/cos/model/COSResult;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/cos/task/DownloadTask;

    new-instance v1, Lcom/tencent/cos/network/HttpRequest;

    invoke-direct {v1, p1}, Lcom/tencent/cos/network/HttpRequest;-><init>(Lcom/tencent/cos/model/COSRequest;)V

    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->config:Lcom/tencent/cos/COSConfig;

    iget-object v2, p0, Lcom/tencent/cos/task/TaskManager;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v1, p1, v2}, Lcom/tencent/cos/task/DownloadTask;-><init>(Lcom/tencent/cos/network/HttpRequest;Lcom/tencent/cos/COSConfig;Lokhttp3/OkHttpClient;)V

    .line 2
    sget-object p1, Lcom/tencent/cos/task/TaskState;->WAITING:Lcom/tencent/cos/task/TaskState;

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 3
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->downloadTaskList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p1, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;

    iget-object v1, p0, Lcom/tencent/cos/task/TaskManager;->downloadTaskList:Ljava/util/List;

    invoke-direct {p1, p0, v1, v0}, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;-><init>(Lcom/tencent/cos/task/TaskManager;Ljava/util/List;Lcom/tencent/cos/task/Task;)V

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setTaskStateListener(Lcom/tencent/cos/task/listener/ITaskStateListener;)V

    .line 5
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->downloadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setFuture(Ljava/util/concurrent/Future;)V

    .line 6
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/cos/task/Task;->getFuture()Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/model/COSResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    const-string v1, "cancellationException"

    invoke-static {v0, v1, p1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public sendUploadRequest(Lcom/tencent/cos/model/PutObjectRequest;)Lcom/tencent/cos/model/COSResult;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/cos/task/UploadTask;

    new-instance v1, Lcom/tencent/cos/network/HttpRequest;

    invoke-direct {v1, p1}, Lcom/tencent/cos/network/HttpRequest;-><init>(Lcom/tencent/cos/model/COSRequest;)V

    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->config:Lcom/tencent/cos/COSConfig;

    iget-object v2, p0, Lcom/tencent/cos/task/TaskManager;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v1, p1, v2}, Lcom/tencent/cos/task/UploadTask;-><init>(Lcom/tencent/cos/network/HttpRequest;Lcom/tencent/cos/COSConfig;Lokhttp3/OkHttpClient;)V

    .line 2
    sget-object p1, Lcom/tencent/cos/task/TaskState;->WAITING:Lcom/tencent/cos/task/TaskState;

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 3
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->uploadTaskList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p1, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;

    iget-object v1, p0, Lcom/tencent/cos/task/TaskManager;->uploadTaskList:Ljava/util/List;

    invoke-direct {p1, p0, v1, v0}, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;-><init>(Lcom/tencent/cos/task/TaskManager;Ljava/util/List;Lcom/tencent/cos/task/Task;)V

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setTaskStateListener(Lcom/tencent/cos/task/listener/ITaskStateListener;)V

    .line 5
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->uploadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setFuture(Ljava/util/concurrent/Future;)V

    .line 6
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/cos/task/Task;->getFuture()Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/model/COSResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    const-string v1, "cancellationException"

    invoke-static {v0, v1, p1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public sendUploadSliceRequest(Lcom/tencent/cos/model/PutObjectRequest;)Lcom/tencent/cos/model/COSResult;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/cos/task/SliceUploadTask;

    new-instance v1, Lcom/tencent/cos/network/HttpRequest;

    invoke-direct {v1, p1}, Lcom/tencent/cos/network/HttpRequest;-><init>(Lcom/tencent/cos/model/COSRequest;)V

    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->config:Lcom/tencent/cos/COSConfig;

    iget-object v2, p0, Lcom/tencent/cos/task/TaskManager;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v1, p1, v2}, Lcom/tencent/cos/task/SliceUploadTask;-><init>(Lcom/tencent/cos/network/HttpRequest;Lcom/tencent/cos/COSConfig;Lokhttp3/OkHttpClient;)V

    .line 2
    sget-object p1, Lcom/tencent/cos/task/TaskState;->WAITING:Lcom/tencent/cos/task/TaskState;

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 3
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->uploadTaskList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p1, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;

    iget-object v1, p0, Lcom/tencent/cos/task/TaskManager;->uploadTaskList:Ljava/util/List;

    invoke-direct {p1, p0, v1, v0}, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;-><init>(Lcom/tencent/cos/task/TaskManager;Ljava/util/List;Lcom/tencent/cos/task/Task;)V

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setTaskStateListener(Lcom/tencent/cos/task/listener/ITaskStateListener;)V

    .line 5
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->uploadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setFuture(Ljava/util/concurrent/Future;)V

    .line 6
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/cos/task/Task;->getFuture()Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/model/COSResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    const-string v1, "cancellationException"

    invoke-static {v0, v1, p1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
