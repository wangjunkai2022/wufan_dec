.class public Lcom/tencent/cos/task/UploadTask;
.super Lcom/tencent/cos/task/Task;
.source "UploadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tencent.cos.task.UploadTask"


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

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/cos/task/UploadTask;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public doGetRequest()Lcom/tencent/cos/model/COSResult;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public doPostRequest()Lcom/tencent/cos/model/COSResult;
    .locals 12

    const-string v0, "application/json"

    const/4 v1, 0x0

    .line 1
    iput-object v1, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    const/4 v2, 0x0

    .line 2
    iput-boolean v2, p0, Lcom/tencent/cos/task/Task;->isCancelled:Z

    const/4 v3, 0x1

    .line 3
    :try_start_0
    iget-object v4, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {p0, v4}, Lcom/tencent/cos/task/Task;->getDomainUrl(Lcom/tencent/cos/network/HttpRequest;)Ljava/lang/String;

    move-result-object v4

    .line 4
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    .line 5
    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v5}, Lcom/tencent/cos/network/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 7
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 8
    check-cast v6, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    goto :goto_0

    .line 10
    :cond_0
    iget-object v5, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v5}, Lcom/tencent/cos/network/HttpRequest;->getContentType()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/tencent/cos/common/COSHttpRequestHead;->VALUE:Lcom/tencent/cos/common/HeadValue;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 12
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getBodys()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 13
    check-cast v5, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 15
    :cond_1
    sget-object v2, Lcom/tencent/cos/common/COSHttpRequestHead;->VALUE:Lcom/tencent/cos/common/HeadValue;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 16
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    goto/16 :goto_3

    .line 18
    :cond_2
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v0}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 19
    iget-object v5, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v5}, Lcom/tencent/cos/network/HttpRequest;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v5

    invoke-virtual {v0, v5}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 20
    iget-object v5, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v5}, Lcom/tencent/cos/network/HttpRequest;->getBodys()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 21
    check-cast v6, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v7, v6}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    goto :goto_2

    .line 23
    :cond_3
    iget-object v5, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v5}, Lcom/tencent/cos/network/HttpRequest;->isUploadFlag()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 24
    iget-object v5, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v5}, Lcom/tencent/cos/network/HttpRequest;->getDataFile()Ljava/io/File;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "\""

    const-string v7, "form-data; name=\""

    const-string v8, "Content-Disposition"

    const/4 v9, 0x2

    if-eqz v5, :cond_4

    :try_start_1
    new-array v5, v9, [Ljava/lang/String;

    aput-object v8, v5, v2

    .line 25
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 26
    invoke-virtual {v11}, Lcom/tencent/cos/network/HttpRequest;->getFileContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v3

    invoke-static {v5}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v5

    new-instance v10, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;

    iget-object v11, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 27
    invoke-virtual {v11}, Lcom/tencent/cos/network/HttpRequest;->getDataFile()Ljava/io/File;

    move-result-object v11

    invoke-direct {v10, p0, v11, v1}, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;-><init>(Lcom/tencent/cos/task/UploadTask;Ljava/io/File;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, v5, v10}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 29
    :cond_4
    iget-object v5, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v5}, Lcom/tencent/cos/network/HttpRequest;->getDataByte()[B

    move-result-object v5

    if-eqz v5, :cond_5

    new-array v5, v9, [Ljava/lang/String;

    aput-object v8, v5, v2

    .line 30
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 31
    invoke-virtual {v11}, Lcom/tencent/cos/network/HttpRequest;->getFileContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v3

    invoke-static {v5}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v5

    new-instance v10, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;

    iget-object v11, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 32
    invoke-virtual {v11}, Lcom/tencent/cos/network/HttpRequest;->getDataByte()[B

    move-result-object v11

    invoke-direct {v10, p0, v11, v1}, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;-><init>(Lcom/tencent/cos/task/UploadTask;[BLjava/lang/String;)V

    .line 33
    invoke-virtual {v0, v5, v10}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 34
    :cond_5
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getDataStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_6

    new-array v1, v9, [Ljava/lang/String;

    aput-object v8, v1, v2

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 36
    invoke-virtual {v5}, Lcom/tencent/cos/network/HttpRequest;->getFileContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v1

    new-instance v2, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;

    iget-object v5, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 37
    invoke-virtual {v5}, Lcom/tencent/cos/network/HttpRequest;->getDataStream()Ljava/io/InputStream;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v5}, Lcom/tencent/cos/network/HttpRequest;->getLength()J

    move-result-wide v9

    move-object v5, v2

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;-><init>(Lcom/tencent/cos/task/UploadTask;Ljava/io/InputStream;Ljava/lang/String;J)V

    .line 38
    invoke-virtual {v0, v1, v2}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 39
    :cond_6
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    .line 40
    :goto_3
    invoke-virtual {v4, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    .line 42
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/tencent/cos/network/HttpResponse;

    invoke-direct {v1, v0}, Lcom/tencent/cos/network/HttpResponse;-><init>(Lokhttp3/Response;)V

    .line 44
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getOperatorType()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/cos/network/HttpResponse;->setOperateType(B)V

    .line 45
    invoke-static {v1}, Lcom/tencent/cos/network/HttpResponseHandler;->parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 47
    iget v1, v0, Lcom/tencent/cos/model/COSResult;->code:I

    if-nez v1, :cond_7

    .line 48
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/tencent/cos/task/listener/ITaskListener;->onSuccess(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    goto :goto_4

    .line 49
    :cond_7
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 50
    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v1, :cond_9

    .line 51
    invoke-interface {v1}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onSendFinish()V

    .line 52
    :cond_9
    sget-object v1, Lcom/tencent/cos/task/UploadTask;->TAG:Ljava/lang/String;

    const-string v2, "completed"

    invoke-static {v1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 53
    iget-boolean v1, p0, Lcom/tencent/cos/task/Task;->isCancelled:Z

    const-string v2, "}"

    const-string v4, ",message:"

    const-string v5, "{code:"

    if-eqz v1, :cond_c

    .line 54
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v0, :cond_a

    .line 55
    invoke-interface {v0}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onCancel()V

    .line 56
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    sget-object v1, Lcom/tencent/cos/common/Const;->ERROR_CLIENT_EXCEPTION:Lcom/tencent/cos/common/Const;

    invoke-virtual {v1}, Lcom/tencent/cos/common/Const;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u4efb\u52a1\u53d6\u6d88\u6210\u529f"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    new-instance v1, Lcom/tencent/cos/network/HttpResponse;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/cos/network/HttpResponse;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getOperatorType()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/cos/network/HttpResponse;->setOperateType(B)V

    .line 64
    invoke-static {v1}, Lcom/tencent/cos/network/HttpResponseHandler;->parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 66
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v1

    check-cast v1, Lcom/tencent/cos/task/listener/IUploadTaskListener;

    .line 67
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/tencent/cos/task/listener/IUploadTaskListener;->onCancel(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 68
    :cond_b
    sget-object v1, Lcom/tencent/cos/task/UploadTask;->TAG:Ljava/lang/String;

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

    .line 69
    :cond_c
    iget v1, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    iget-object v6, p0, Lcom/tencent/cos/task/Task;->config:Lcom/tencent/cos/COSConfig;

    invoke-virtual {v6}, Lcom/tencent/cos/COSConfig;->getMaxRetryCount()I

    move-result v6

    invoke-static {v1, v6, v0}, Lcom/tencent/cos/network/COSRetryHandler;->retryRequest(IILjava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 70
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v1, :cond_d

    .line 71
    invoke-interface {v1}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onRetry()V

    .line 72
    :cond_d
    iget v1, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 73
    sget-object v1, Lcom/tencent/cos/task/UploadTask;->TAG:Ljava/lang/String;

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

    .line 74
    invoke-virtual {p0}, Lcom/tencent/cos/task/UploadTask;->doPostRequest()Lcom/tencent/cos/model/COSResult;

    move-result-object v0

    return-object v0

    .line 75
    :cond_e
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v1, :cond_f

    .line 76
    invoke-interface {v1}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onFail()V

    .line 77
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    sget-object v3, Lcom/tencent/cos/common/Const;->ERROR_OTHER_EXCEPTION:Lcom/tencent/cos/common/Const;

    invoke-virtual {v3}, Lcom/tencent/cos/common/Const;->getCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    new-instance v2, Lcom/tencent/cos/network/HttpResponse;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/tencent/cos/network/HttpResponse;-><init>(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getOperatorType()B

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/cos/network/HttpResponse;->setOperateType(B)V

    .line 85
    invoke-static {v2}, Lcom/tencent/cos/network/HttpResponseHandler;->parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 87
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 88
    :cond_10
    sget-object v2, Lcom/tencent/cos/task/UploadTask;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
