.class public Lcom/tencent/cos/task/DownloadTask;
.super Lcom/tencent/cos/task/Task;
.source "DownloadTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tencent.cos.task.DownloadTask"


# instance fields
.field private break_download_flag:Z

.field private downloadUrl:Ljava/lang/String;

.field private localPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/network/HttpRequest;Lcom/tencent/cos/COSConfig;Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/cos/task/Task;-><init>(Lcom/tencent/cos/network/HttpRequest;Lcom/tencent/cos/COSConfig;Lokhttp3/OkHttpClient;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/tencent/cos/task/DownloadTask;->break_download_flag:Z

    .line 3
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/cos/task/DownloadTask;->downloadUrl:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpRequest;->getSavePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/task/DownloadTask;->localPath:Ljava/lang/String;

    return-void
.end method

.method private makeDir(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public doGetRequest()Lcom/tencent/cos/model/COSResult;
    .locals 9

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/cos/task/Task;->isCancelled:Z

    const/4 v0, 0x1

    .line 3
    :try_start_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/tencent/cos/task/DownloadTask;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v4, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    .line 13
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    .line 15
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V

    .line 16
    iget-object v1, p0, Lcom/tencent/cos/task/DownloadTask;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tencent/cos/task/DownloadTask;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/tencent/cos/task/DownloadTask;->localPath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/tencent/cos/task/DownloadTask;->makeDir(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "/"

    if-eqz v1, :cond_1

    .line 18
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/cos/task/DownloadTask;->localPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v8, v1

    goto :goto_2

    .line 19
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/cos/task/DownloadTask;->localPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 21
    :goto_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v3, 0x0

    if-nez v2, :cond_2

    .line 23
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 24
    invoke-virtual {v1, v0}, Ljava/io/File;->setReadable(Z)Z

    .line 25
    invoke-virtual {v1, v0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 26
    :try_start_3
    sget-object v2, Lcom/tencent/cos/task/DownloadTask;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    move-wide v1, v3

    goto :goto_4

    .line 27
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 28
    :goto_4
    iget-boolean v5, p0, Lcom/tencent/cos/task/DownloadTask;->break_download_flag:Z

    if-nez v5, :cond_3

    move-wide v4, v3

    goto :goto_5

    :cond_3
    move-wide v4, v1

    .line 29
    :goto_5
    sget-object v1, Lcom/tencent/cos/task/DownloadTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offset ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ;path ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; filelen ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p0

    .line 30
    invoke-virtual/range {v3 .. v8}, Lcom/tencent/cos/task/DownloadTask;->downloadSlice(JJLjava/lang/String;)Lcom/tencent/cos/model/COSResult;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v0

    :catch_1
    move-exception v1

    .line 31
    sget-object v2, Lcom/tencent/cos/task/DownloadTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connection exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    iget-boolean v3, p0, Lcom/tencent/cos/task/Task;->isCancelled:Z

    if-eqz v3, :cond_6

    .line 33
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v0, :cond_4

    .line 34
    invoke-interface {v0}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onCancel()V

    .line 35
    :cond_4
    new-instance v0, Lcom/tencent/cos/model/GetObjectResult;

    invoke-direct {v0}, Lcom/tencent/cos/model/GetObjectResult;-><init>()V

    .line 36
    sget-object v3, Lcom/tencent/cos/common/Const;->ERROR_CLIENT_EXCEPTION:Lcom/tencent/cos/common/Const;

    invoke-virtual {v3}, Lcom/tencent/cos/common/Const;->getCode()I

    move-result v3

    iput v3, v0, Lcom/tencent/cos/model/COSResult;->code:I

    const-string v3, " task is canceled"

    .line 37
    iput-object v3, v0, Lcom/tencent/cos/model/COSResult;->msg:Ljava/lang/String;

    .line 38
    iget-object v3, p0, Lcom/tencent/cos/task/DownloadTask;->downloadUrl:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/cos/model/GetObjectResult;->downloadUrl:Ljava/lang/String;

    .line 39
    iget-object v3, p0, Lcom/tencent/cos/task/DownloadTask;->localPath:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/cos/model/GetObjectResult;->localPath:Ljava/lang/String;

    .line 40
    iget-object v3, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 41
    iget-object v3, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v3

    check-cast v3, Lcom/tencent/cos/task/listener/IDownloadTaskListener;

    .line 42
    iget-object v4, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v4}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/tencent/cos/task/listener/IDownloadTaskListener;->onCancel(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 43
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v4}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/cos/model/COSRequest;->getRequestId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " canceled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 44
    :cond_6
    iget v3, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    iget-object v4, p0, Lcom/tencent/cos/task/Task;->config:Lcom/tencent/cos/COSConfig;

    invoke-virtual {v4}, Lcom/tencent/cos/COSConfig;->getMaxRetryCount()I

    move-result v4

    invoke-static {v3, v4, v1}, Lcom/tencent/cos/network/COSRetryHandler;->retryRequest(IILjava/lang/Exception;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 45
    iget-object v3, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v3, :cond_7

    .line 46
    invoke-interface {v3}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onRetry()V

    .line 47
    :cond_7
    iget v3, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";retry ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    invoke-virtual {p0}, Lcom/tencent/cos/task/DownloadTask;->doGetRequest()Lcom/tencent/cos/model/COSResult;

    move-result-object v0

    return-object v0

    .line 50
    :cond_8
    new-instance v0, Lcom/tencent/cos/model/GetObjectResult;

    invoke-direct {v0}, Lcom/tencent/cos/model/GetObjectResult;-><init>()V

    .line 51
    sget-object v3, Lcom/tencent/cos/common/Const;->ERROR_OTHER_EXCEPTION:Lcom/tencent/cos/common/Const;

    invoke-virtual {v3}, Lcom/tencent/cos/common/Const;->getCode()I

    move-result v3

    iput v3, v0, Lcom/tencent/cos/model/COSResult;->code:I

    .line 52
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/cos/model/COSResult;->msg:Ljava/lang/String;

    .line 53
    iget-object v3, p0, Lcom/tencent/cos/task/DownloadTask;->downloadUrl:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/cos/model/GetObjectResult;->downloadUrl:Ljava/lang/String;

    .line 54
    iget-object v3, p0, Lcom/tencent/cos/task/DownloadTask;->localPath:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/cos/model/GetObjectResult;->localPath:Ljava/lang/String;

    .line 55
    iget-object v3, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 56
    iget-object v3, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v4}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 57
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public doPostRequest()Lcom/tencent/cos/model/COSResult;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected downloadSlice(JJLjava/lang/String;)Lcom/tencent/cos/model/COSResult;
    .locals 19

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    const/4 v4, 0x0

    .line 1
    iput-object v4, v1, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, v1, Lcom/tencent/cos/task/Task;->isCancelled:Z

    .line 3
    :try_start_0
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    iget-object v6, v1, Lcom/tencent/cos/task/DownloadTask;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 5
    iget-object v6, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v6}, Lcom/tencent/cos/network/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 6
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 7
    check-cast v7, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v8, v7}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v6, "Range"

    .line 9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual {v5, v6, v7}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 11
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 12
    iget-object v6, v1, Lcom/tencent/cos/task/Task;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v6, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    iput-object v5, v1, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    .line 13
    iget-object v5, v1, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    invoke-interface {v5}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v5

    const/16 v6, 0x400

    new-array v7, v6, [B

    const-wide/16 v8, 0x0

    .line 14
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 15
    :try_start_1
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v11, "rw"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v12, p5

    :try_start_2
    invoke-direct {v10, v12, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    :try_start_3
    invoke-virtual {v10, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 17
    iget-object v4, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v4}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v4

    check-cast v4, Lcom/tencent/cos/task/listener/IDownloadTaskListener;

    .line 18
    :cond_1
    :goto_1
    invoke-virtual {v5, v7, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    const/4 v13, -0x1

    if-eq v11, v13, :cond_2

    cmp-long v13, v8, p3

    if-gtz v13, :cond_2

    .line 19
    invoke-virtual {v10, v7, v0, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v13, v11

    add-long/2addr v8, v13

    if-eqz v4, :cond_1

    .line 20
    iget-object v11, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v11}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v14

    add-long v15, v8, v2

    move-object v13, v4

    move-wide/from16 v17, p3

    invoke-interface/range {v13 .. v18}, Lcom/tencent/cos/task/listener/IDownloadTaskListener;->onProgress(Lcom/tencent/cos/model/COSRequest;JJ)V

    goto :goto_1

    .line 21
    :cond_2
    new-instance v4, Lcom/tencent/cos/model/GetObjectResult;

    invoke-direct {v4}, Lcom/tencent/cos/model/GetObjectResult;-><init>()V

    .line 22
    iput v0, v4, Lcom/tencent/cos/model/COSResult;->code:I

    const-string v0, "success"

    .line 23
    iput-object v0, v4, Lcom/tencent/cos/model/COSResult;->msg:Ljava/lang/String;

    .line 24
    iget-object v0, v1, Lcom/tencent/cos/task/DownloadTask;->downloadUrl:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/cos/model/GetObjectResult;->downloadUrl:Ljava/lang/String;

    .line 25
    iget-object v0, v1, Lcom/tencent/cos/task/DownloadTask;->localPath:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/cos/model/GetObjectResult;->localPath:Ljava/lang/String;

    .line 26
    iget-object v0, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 27
    iget-object v0, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v0

    iget-object v6, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v6}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v6

    invoke-interface {v0, v6, v4}, Lcom/tencent/cos/task/listener/ITaskListener;->onSuccess(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 28
    :cond_3
    iget-object v0, v1, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v0, :cond_4

    .line 29
    invoke-interface {v0}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onSendFinish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    :cond_4
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 31
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 32
    :goto_2
    :try_start_5
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 33
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    :goto_3
    return-object v4

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v10, v4

    :goto_4
    move-object v4, v5

    goto/16 :goto_e

    :catch_4
    move-exception v0

    move-object/from16 v12, p5

    :goto_5
    move-object v10, v4

    :goto_6
    move-object v4, v5

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v10, v4

    goto/16 :goto_e

    :catch_5
    move-exception v0

    move-object/from16 v12, p5

    move-object v10, v4

    .line 34
    :goto_7
    :try_start_6
    sget-object v5, Lcom/tencent/cos/task/DownloadTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connection exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iget-boolean v6, v1, Lcom/tencent/cos/task/Task;->isCancelled:Z

    if-eqz v6, :cond_9

    .line 36
    iget-object v2, v1, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v2, :cond_5

    .line 37
    invoke-interface {v2}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onCancel()V

    .line 38
    :cond_5
    new-instance v2, Lcom/tencent/cos/model/GetObjectResult;

    invoke-direct {v2}, Lcom/tencent/cos/model/GetObjectResult;-><init>()V

    .line 39
    sget-object v3, Lcom/tencent/cos/common/Const;->ERROR_CLIENT_EXCEPTION:Lcom/tencent/cos/common/Const;

    invoke-virtual {v3}, Lcom/tencent/cos/common/Const;->getCode()I

    move-result v3

    iput v3, v2, Lcom/tencent/cos/model/COSResult;->code:I

    const-string v3, "task is canceled"

    .line 40
    iput-object v3, v2, Lcom/tencent/cos/model/COSResult;->msg:Ljava/lang/String;

    .line 41
    iget-object v3, v1, Lcom/tencent/cos/task/DownloadTask;->downloadUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/cos/model/GetObjectResult;->downloadUrl:Ljava/lang/String;

    .line 42
    iget-object v3, v1, Lcom/tencent/cos/task/DownloadTask;->localPath:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/cos/model/GetObjectResult;->localPath:Ljava/lang/String;

    .line 43
    iget-object v3, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 44
    iget-object v3, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v3

    check-cast v3, Lcom/tencent/cos/task/listener/IDownloadTaskListener;

    .line 45
    iget-object v6, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v6}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v6

    invoke-interface {v3, v6, v2}, Lcom/tencent/cos/task/listener/IDownloadTaskListener;->onCancel(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 46
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "task: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v6}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/cos/model/COSRequest;->getRequestId()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " canceled"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v5, v3, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v4, :cond_7

    .line 47
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v3, v0

    .line 48
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    :cond_7
    :goto_8
    if-eqz v10, :cond_8

    .line 49
    :try_start_8
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v3, v0

    .line 50
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    :cond_8
    :goto_9
    return-object v2

    .line 51
    :cond_9
    :try_start_9
    iget v6, v1, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    iget-object v7, v1, Lcom/tencent/cos/task/Task;->config:Lcom/tencent/cos/COSConfig;

    invoke-virtual {v7}, Lcom/tencent/cos/COSConfig;->getMaxRetryCount()I

    move-result v7

    invoke-static {v6, v7, v0}, Lcom/tencent/cos/network/COSRetryHandler;->retryRequest(IILjava/lang/Exception;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 52
    iget-object v6, v1, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v6, :cond_a

    .line 53
    invoke-interface {v6}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onRetry()V

    .line 54
    :cond_a
    iget v6, v1, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";retry ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    invoke-virtual/range {p0 .. p5}, Lcom/tencent/cos/task/DownloadTask;->downloadSlice(JJLjava/lang/String;)Lcom/tencent/cos/model/COSResult;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v4, :cond_b

    .line 57
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_a

    :catch_8
    move-exception v0

    move-object v3, v0

    .line 58
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    :cond_b
    :goto_a
    if-eqz v10, :cond_c

    .line 59
    :try_start_b
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_b

    :catch_9
    move-exception v0

    move-object v3, v0

    .line 60
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    :cond_c
    :goto_b
    return-object v2

    .line 61
    :cond_d
    :try_start_c
    new-instance v2, Lcom/tencent/cos/model/GetObjectResult;

    invoke-direct {v2}, Lcom/tencent/cos/model/GetObjectResult;-><init>()V

    .line 62
    sget-object v3, Lcom/tencent/cos/common/Const;->ERROR_OTHER_EXCEPTION:Lcom/tencent/cos/common/Const;

    invoke-virtual {v3}, Lcom/tencent/cos/common/Const;->getCode()I

    move-result v3

    iput v3, v2, Lcom/tencent/cos/model/COSResult;->code:I

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/cos/model/COSResult;->msg:Ljava/lang/String;

    .line 64
    iget-object v3, v1, Lcom/tencent/cos/task/DownloadTask;->downloadUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/cos/model/GetObjectResult;->downloadUrl:Ljava/lang/String;

    .line 65
    iget-object v3, v1, Lcom/tencent/cos/task/DownloadTask;->localPath:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/cos/model/GetObjectResult;->localPath:Ljava/lang/String;

    .line 66
    iget-object v3, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 67
    iget-object v3, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v3

    iget-object v6, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v6}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v6

    invoke-interface {v3, v6, v2}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 68
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v4, :cond_f

    .line 69
    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_c

    :catch_a
    move-exception v0

    move-object v3, v0

    .line 70
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    :cond_f
    :goto_c
    if-eqz v10, :cond_10

    .line 71
    :try_start_e
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_d

    :catch_b
    move-exception v0

    move-object v3, v0

    .line 72
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    :cond_10
    :goto_d
    return-object v2

    :catchall_3
    move-exception v0

    move-object v2, v0

    :goto_e
    if-eqz v4, :cond_11

    .line 73
    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    goto :goto_f

    :catch_c
    move-exception v0

    move-object v3, v0

    .line 74
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    :cond_11
    :goto_f
    if-eqz v10, :cond_12

    .line 75
    :try_start_10
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    goto :goto_10

    :catch_d
    move-exception v0

    move-object v3, v0

    .line 76
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 77
    :cond_12
    :goto_10
    goto :goto_12

    :goto_11
    throw v2

    :goto_12
    goto :goto_11
.end method

.method protected getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "?"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public pause()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tencent/cos/task/DownloadTask;->break_download_flag:Z

    return v0
.end method
