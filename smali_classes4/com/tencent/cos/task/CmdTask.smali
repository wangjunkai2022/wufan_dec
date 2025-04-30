.class public Lcom/tencent/cos/task/CmdTask;
.super Lcom/tencent/cos/task/Task;
.source "CmdTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tencent.cos.task.CmdTask"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/network/HttpRequest;Lcom/tencent/cos/COSConfig;Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/cos/task/Task;-><init>(Lcom/tencent/cos/network/HttpRequest;Lcom/tencent/cos/COSConfig;Lokhttp3/OkHttpClient;)V

    return-void
.end method


# virtual methods
.method public doGetRequest()Lcom/tencent/cos/model/COSResult;
    .locals 6

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/tencent/cos/task/Task;->isCancelled:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {p0, v0}, Lcom/tencent/cos/task/Task;->getDomainUrl(Lcom/tencent/cos/network/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 5
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    .line 12
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 13
    new-instance v1, Lcom/tencent/cos/network/HttpResponse;

    invoke-direct {v1, v0}, Lcom/tencent/cos/network/HttpResponse;-><init>(Lokhttp3/Response;)V

    .line 14
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getOperatorType()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/cos/network/HttpResponse;->setOperateType(B)V

    .line 15
    invoke-static {v1}, Lcom/tencent/cos/network/HttpResponseHandler;->parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 17
    iget v1, v0, Lcom/tencent/cos/model/COSResult;->code:I

    if-nez v1, :cond_1

    .line 18
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/tencent/cos/task/listener/ITaskListener;->onSuccess(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    goto :goto_1

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 20
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v1, :cond_3

    .line 21
    invoke-interface {v1}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onSendFinish()V

    .line 22
    :cond_3
    sget-object v1, Lcom/tencent/cos/task/CmdTask;->TAG:Ljava/lang/String;

    const-string v2, "completed"

    invoke-static {v1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 23
    iget-boolean v1, p0, Lcom/tencent/cos/task/Task;->isCancelled:Z

    const-string v2, "}"

    const-string v3, ",message:"

    const-string v4, "{code:"

    if-eqz v1, :cond_6

    .line 24
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v0, :cond_4

    .line 25
    invoke-interface {v0}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onCancel()V

    .line 26
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    sget-object v1, Lcom/tencent/cos/common/Const;->ERROR_CLIENT_EXCEPTION:Lcom/tencent/cos/common/Const;

    invoke-virtual {v1}, Lcom/tencent/cos/common/Const;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "canceled"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    new-instance v1, Lcom/tencent/cos/network/HttpResponse;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/cos/network/HttpResponse;-><init>(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getOperatorType()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/cos/network/HttpResponse;->setOperateType(B)V

    .line 34
    invoke-static {v1}, Lcom/tencent/cos/network/HttpResponseHandler;->parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 36
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 37
    :cond_5
    sget-object v1, Lcom/tencent/cos/task/CmdTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/cos/model/COSRequest;->getRequestId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  is canceled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 38
    :cond_6
    iget v1, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    iget-object v5, p0, Lcom/tencent/cos/task/Task;->config:Lcom/tencent/cos/COSConfig;

    invoke-virtual {v5}, Lcom/tencent/cos/COSConfig;->getMaxRetryCount()I

    move-result v5

    invoke-static {v1, v5, v0}, Lcom/tencent/cos/network/COSRetryHandler;->retryRequest(IILjava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 39
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v1, :cond_7

    .line 40
    invoke-interface {v1}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onRetry()V

    .line 41
    :cond_7
    iget v1, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 42
    sget-object v1, Lcom/tencent/cos/task/CmdTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";retry ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    invoke-virtual {p0}, Lcom/tencent/cos/task/CmdTask;->doGetRequest()Lcom/tencent/cos/model/COSResult;

    move-result-object v0

    return-object v0

    .line 44
    :cond_8
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v1, :cond_9

    .line 45
    invoke-interface {v1}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onFail()V

    .line 46
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    sget-object v4, Lcom/tencent/cos/common/Const;->ERROR_OTHER_EXCEPTION:Lcom/tencent/cos/common/Const;

    invoke-virtual {v4}, Lcom/tencent/cos/common/Const;->getCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    new-instance v2, Lcom/tencent/cos/network/HttpResponse;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/tencent/cos/network/HttpResponse;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getOperatorType()B

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/cos/network/HttpResponse;->setOperateType(B)V

    .line 54
    invoke-static {v2}, Lcom/tencent/cos/network/HttpResponseHandler;->parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 56
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 57
    :cond_a
    sget-object v2, Lcom/tencent/cos/task/CmdTask;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public doPostRequest()Lcom/tencent/cos/model/COSResult;
    .locals 6

    const-string v0, "application/json"

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, p0, Lcom/tencent/cos/task/Task;->isCancelled:Z

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {p0, v1}, Lcom/tencent/cos/task/Task;->getDomainUrl(Lcom/tencent/cos/network/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 5
    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 8
    check-cast v3, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getContentType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tencent/cos/common/COSHttpRequestHead;->VALUE:Lcom/tencent/cos/common/HeadValue;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 12
    iget-object v3, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getBodys()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 13
    check-cast v4, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 15
    :cond_1
    sget-object v3, Lcom/tencent/cos/common/COSHttpRequestHead;->VALUE:Lcom/tencent/cos/common/HeadValue;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 16
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-static {v0, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    goto :goto_3

    .line 18
    :cond_2
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v0}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 19
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 20
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getBodys()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 21
    check-cast v3, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    goto :goto_2

    .line 23
    :cond_3
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    .line 24
    :goto_3
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    .line 26
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/tencent/cos/network/HttpResponse;

    invoke-direct {v1, v0}, Lcom/tencent/cos/network/HttpResponse;-><init>(Lokhttp3/Response;)V

    .line 28
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getOperatorType()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/cos/network/HttpResponse;->setOperateType(B)V

    .line 29
    invoke-static {v1}, Lcom/tencent/cos/network/HttpResponseHandler;->parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 31
    iget v1, v0, Lcom/tencent/cos/model/COSResult;->code:I

    if-nez v1, :cond_4

    .line 32
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/tencent/cos/task/listener/ITaskListener;->onSuccess(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    goto :goto_4

    .line 33
    :cond_4
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 34
    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v1, :cond_6

    .line 35
    invoke-interface {v1}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onSendFinish()V

    .line 36
    :cond_6
    sget-object v1, Lcom/tencent/cos/task/CmdTask;->TAG:Ljava/lang/String;

    const-string v2, "completed"

    invoke-static {v1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 37
    iget-boolean v1, p0, Lcom/tencent/cos/task/Task;->isCancelled:Z

    const-string v2, "}"

    const-string v3, ",message:"

    const-string v4, "{code:"

    if-eqz v1, :cond_8

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    sget-object v4, Lcom/tencent/cos/common/Const;->ERROR_CLIENT_EXCEPTION:Lcom/tencent/cos/common/Const;

    invoke-virtual {v4}, Lcom/tencent/cos/common/Const;->getCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "canceled"

    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    new-instance v2, Lcom/tencent/cos/network/HttpResponse;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/tencent/cos/network/HttpResponse;-><init>(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getOperatorType()B

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/cos/network/HttpResponse;->setOperateType(B)V

    .line 46
    invoke-static {v2}, Lcom/tencent/cos/network/HttpResponseHandler;->parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 48
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 49
    :cond_7
    sget-object v2, Lcom/tencent/cos/task/CmdTask;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 50
    :cond_8
    iget v1, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    iget-object v5, p0, Lcom/tencent/cos/task/Task;->config:Lcom/tencent/cos/COSConfig;

    invoke-virtual {v5}, Lcom/tencent/cos/COSConfig;->getMaxRetryCount()I

    move-result v5

    invoke-static {v1, v5, v0}, Lcom/tencent/cos/network/COSRetryHandler;->retryRequest(IILjava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 51
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v1, :cond_9

    .line 52
    invoke-interface {v1}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onRetry()V

    .line 53
    :cond_9
    iget v1, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 54
    sget-object v1, Lcom/tencent/cos/task/CmdTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";retry ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    invoke-virtual {p0}, Lcom/tencent/cos/task/CmdTask;->doPostRequest()Lcom/tencent/cos/model/COSResult;

    move-result-object v0

    return-object v0

    .line 56
    :cond_a
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v1, :cond_b

    .line 57
    invoke-interface {v1}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onFail()V

    .line 58
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    sget-object v4, Lcom/tencent/cos/common/Const;->ERROR_OTHER_EXCEPTION:Lcom/tencent/cos/common/Const;

    invoke-virtual {v4}, Lcom/tencent/cos/common/Const;->getCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    new-instance v2, Lcom/tencent/cos/network/HttpResponse;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/tencent/cos/network/HttpResponse;-><init>(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getOperatorType()B

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/cos/network/HttpResponse;->setOperateType(B)V

    .line 66
    invoke-static {v2}, Lcom/tencent/cos/network/HttpResponseHandler;->parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 68
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 69
    :cond_c
    sget-object v2, Lcom/tencent/cos/task/CmdTask;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
