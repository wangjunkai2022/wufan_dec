.class public Lcom/tencent/cos/task/SliceUploadTask;
.super Lcom/tencent/cos/task/Task;
.source "SliceUploadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/task/SliceUploadTask$SimpleUploadRequestBody;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tencent.cos.task.SliceUploadTask"


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
    sget-object v0, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public doGetRequest()Lcom/tencent/cos/model/COSResult;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public doPostRequest()Lcom/tencent/cos/model/COSResult;
    .locals 19

    move-object/from16 v8, p0

    .line 1
    new-instance v0, Lcom/tencent/cos/task/slice/FileSlicePart;

    invoke-direct {v0}, Lcom/tencent/cos/task/slice/FileSlicePart;-><init>()V

    const/4 v7, 0x0

    .line 2
    iput-boolean v7, v8, Lcom/tencent/cos/task/Task;->isCancelled:Z

    .line 3
    :try_start_0
    iget-object v1, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/tencent/cos/model/PutObjectRequest;

    .line 4
    invoke-virtual {v10}, Lcom/tencent/cos/model/PutObjectRequest;->getSrcPath()Ljava/lang/String;

    move-result-object v11

    .line 5
    invoke-virtual {v10}, Lcom/tencent/cos/model/PutObjectRequest;->getsha()Ljava/lang/String;

    move-result-object v12

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/cos/task/slice/FileSlicePart;->getDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/tencent/cos/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 9
    sget-object v1, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    const-string v2, "\u5f00\u59cb\u5206\u7247\u4e0a\u4f20"

    invoke-static {v1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/cos/task/SliceUploadTask;->sliceUpload(Lcom/tencent/cos/network/HttpRequest;JJ)Lcom/tencent/cos/model/COSResult;

    move-result-object v1

    check-cast v1, Lcom/tencent/cos/model/PutObjectResult;

    .line 11
    iget v2, v1, Lcom/tencent/cos/model/COSResult;->code:I

    if-eqz v2, :cond_1

    .line 12
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v0

    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    :cond_0
    return-object v1

    :cond_1
    if-nez v2, :cond_3

    .line 14
    iget-object v2, v1, Lcom/tencent/cos/model/PutObjectResult;->session:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 15
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v0

    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/tencent/cos/task/listener/ITaskListener;->onSuccess(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    :cond_2
    return-object v1

    .line 17
    :cond_3
    invoke-virtual {v8, v10, v1, v0}, Lcom/tencent/cos/task/SliceUploadTask;->prepareFileSlice(Lcom/tencent/cos/model/PutObjectRequest;Lcom/tencent/cos/model/PutObjectResult;Lcom/tencent/cos/task/slice/FileSlicePart;)V

    .line 18
    invoke-virtual {v0, v13}, Lcom/tencent/cos/task/slice/FileSlicePart;->saveFileSlicePart(Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {v0, v13}, Lcom/tencent/cos/task/slice/FileSlicePart;->loadFileSlicePart(Ljava/lang/String;)V

    .line 20
    iget-boolean v2, v0, Lcom/tencent/cos/task/slice/FileSlicePart;->slice_init_flag:Z

    if-eqz v2, :cond_11

    .line 21
    :goto_1
    sget-object v1, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    const-string v2, "\u5f00\u59cb\u4e0a\u4f20data\u5206\u7247"

    invoke-static {v1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v14, v0, Lcom/tencent/cos/task/slice/FileSlicePart;->session:Ljava/lang/String;

    .line 23
    invoke-virtual {v10}, Lcom/tencent/cos/model/PutObjectRequest;->getFilesize()J

    move-result-wide v15

    :goto_2
    move-object v6, v12

    .line 24
    :goto_3
    iget-object v1, v0, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceParts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_a

    .line 25
    iget-object v1, v0, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceParts:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/cos/task/slice/SlicePart;

    invoke-virtual {v1}, Lcom/tencent/cos/task/slice/SlicePart;->getOverFlag()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 26
    :cond_5
    iget-object v1, v0, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceParts:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/cos/task/slice/SlicePart;

    invoke-virtual {v1}, Lcom/tencent/cos/task/slice/SlicePart;->getOffset()J

    move-result-wide v1

    .line 27
    iget-object v3, v0, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceParts:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/cos/task/slice/SlicePart;

    invoke-virtual {v3}, Lcom/tencent/cos/task/slice/SlicePart;->getSliceSize()I

    move-result v10

    .line 28
    iget-object v12, v0, Lcom/tencent/cos/task/slice/FileSlicePart;->sha:Ljava/lang/String;

    move-wide v5, v1

    :goto_4
    cmp-long v1, v5, v15

    if-gez v1, :cond_9

    .line 29
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-static {v11, v5, v6, v10}, Lcom/tencent/cos/utils/FileUtils;->getFileContentByte(Ljava/lang/String;JI)[B

    move-result-object v3

    move-object/from16 v1, p0

    move-object v4, v14

    move-wide/from16 v17, v5

    move v9, v7

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/cos/task/SliceUploadTask;->uploadSliceDataRequset_4(Lcom/tencent/cos/network/HttpRequest;[BLjava/lang/String;JLjava/lang/String;)Lcom/tencent/cos/network/HttpRequest;

    move-result-object v2

    iput-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    move-object/from16 v1, p0

    move-wide/from16 v3, v17

    move-wide v5, v15

    .line 30
    invoke-virtual/range {v1 .. v6}, Lcom/tencent/cos/task/SliceUploadTask;->sliceUpload(Lcom/tencent/cos/network/HttpRequest;JJ)Lcom/tencent/cos/model/COSResult;

    move-result-object v1

    check-cast v1, Lcom/tencent/cos/model/PutObjectResult;

    .line 31
    iget v2, v1, Lcom/tencent/cos/model/COSResult;->code:I

    if-eqz v2, :cond_8

    .line 32
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 33
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v0

    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 34
    :cond_6
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v0, :cond_7

    .line 35
    invoke-interface {v0}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onFail()V

    :cond_7
    return-object v1

    :cond_8
    int-to-long v1, v10

    add-long v5, v17, v1

    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v9, v1}, Lcom/tencent/cos/task/slice/FileSlicePart;->updateSlicePart(IZ)V

    .line 37
    invoke-virtual {v0, v13}, Lcom/tencent/cos/task/slice/FileSlicePart;->saveFileSlicePart(Ljava/lang/String;)V

    add-int/lit8 v7, v9, 0x1

    goto :goto_4

    :cond_9
    move v9, v7

    goto/16 :goto_2

    .line 38
    :cond_a
    sget-object v7, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    const-string v1, "\u4e0a\u4f20finish\u5206\u7247"

    invoke-static {v7, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    move-object/from16 v1, p0

    move-object v3, v14

    move-wide v4, v15

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/cos/task/SliceUploadTask;->uploadSliceFinishRequset_4(Lcom/tencent/cos/network/HttpRequest;Ljava/lang/String;JLjava/lang/String;)Lcom/tencent/cos/network/HttpRequest;

    move-result-object v2

    iput-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v1, p0

    .line 40
    invoke-virtual/range {v1 .. v6}, Lcom/tencent/cos/task/SliceUploadTask;->sliceUpload(Lcom/tencent/cos/network/HttpRequest;JJ)Lcom/tencent/cos/model/COSResult;

    move-result-object v1

    check-cast v1, Lcom/tencent/cos/model/PutObjectResult;

    .line 41
    iget v2, v1, Lcom/tencent/cos/model/COSResult;->code:I

    if-eqz v2, :cond_d

    .line 42
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 43
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v0

    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 44
    :cond_b
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v0, :cond_c

    .line 45
    invoke-interface {v0}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onFail()V

    :cond_c
    return-object v1

    :cond_d
    const-string v1, "\u4e0a\u4f20list\u5206\u7247"

    .line 46
    invoke-static {v7, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v1, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v8, v1}, Lcom/tencent/cos/task/SliceUploadTask;->uploadSliceListRequset_4(Lcom/tencent/cos/network/HttpRequest;)Lcom/tencent/cos/network/HttpRequest;

    move-result-object v2

    iput-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v1, p0

    .line 48
    invoke-virtual/range {v1 .. v6}, Lcom/tencent/cos/task/SliceUploadTask;->sliceUpload(Lcom/tencent/cos/network/HttpRequest;JJ)Lcom/tencent/cos/model/COSResult;

    move-result-object v1

    check-cast v1, Lcom/tencent/cos/model/PutObjectResult;

    .line 49
    iget v2, v1, Lcom/tencent/cos/model/COSResult;->code:I

    if-nez v2, :cond_e

    .line 50
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 51
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v2

    iget-object v3, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/tencent/cos/task/listener/ITaskListener;->onSuccess(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    goto :goto_5

    .line 52
    :cond_e
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 53
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v2

    iget-object v3, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 54
    :cond_f
    :goto_5
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v2, :cond_10

    .line 55
    invoke-interface {v2}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onSendFinish()V

    .line 56
    :cond_10
    invoke-virtual {v0, v13}, Lcom/tencent/cos/task/slice/FileSlicePart;->deleteFile(Ljava/lang/String;)V

    return-object v1

    .line 57
    :cond_11
    invoke-virtual {v0, v13}, Lcom/tencent/cos/task/slice/FileSlicePart;->deleteFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 58
    iget-boolean v1, v8, Lcom/tencent/cos/task/Task;->isCancelled:Z

    const-string v2, "}"

    const-string v3, ",message:"

    const-string v4, "{code:"

    if-eqz v1, :cond_14

    .line 59
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v0, :cond_12

    .line 60
    invoke-interface {v0}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onCancel()V

    .line 61
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    sget-object v1, Lcom/tencent/cos/common/Const;->ERROR_CLIENT_EXCEPTION:Lcom/tencent/cos/common/Const;

    invoke-virtual {v1}, Lcom/tencent/cos/common/Const;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u4efb\u52a1\u53d6\u6d88\u6210\u529f"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    new-instance v1, Lcom/tencent/cos/network/HttpResponse;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/cos/network/HttpResponse;-><init>(Ljava/lang/String;)V

    .line 68
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getOperatorType()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/cos/network/HttpResponse;->setOperateType(B)V

    .line 69
    invoke-static {v1}, Lcom/tencent/cos/network/HttpResponseHandler;->parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object v0

    .line 70
    iget-object v1, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 71
    iget-object v1, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v1

    check-cast v1, Lcom/tencent/cos/task/listener/IUploadTaskListener;

    .line 72
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/tencent/cos/task/listener/IUploadTaskListener;->onCancel(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 73
    :cond_13
    sget-object v1, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

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

    .line 74
    :cond_14
    iget v1, v8, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    iget-object v5, v8, Lcom/tencent/cos/task/Task;->config:Lcom/tencent/cos/COSConfig;

    invoke-virtual {v5}, Lcom/tencent/cos/COSConfig;->getMaxRetryCount()I

    move-result v5

    invoke-static {v1, v5, v0}, Lcom/tencent/cos/network/COSRetryHandler;->retryRequest(IILjava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 75
    iget-object v1, v8, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v1, :cond_15

    .line 76
    invoke-interface {v1}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onRetry()V

    .line 77
    :cond_15
    iget v1, v8, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v8, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 78
    sget-object v1, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";retry ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/cos/task/SliceUploadTask;->doGetRequest()Lcom/tencent/cos/model/COSResult;

    move-result-object v0

    return-object v0

    .line 80
    :cond_16
    iget-object v1, v8, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v1, :cond_17

    .line 81
    invoke-interface {v1}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onFail()V

    .line 82
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    sget-object v4, Lcom/tencent/cos/common/Const;->ERROR_OTHER_EXCEPTION:Lcom/tencent/cos/common/Const;

    invoke-virtual {v4}, Lcom/tencent/cos/common/Const;->getCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    new-instance v2, Lcom/tencent/cos/network/HttpResponse;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/tencent/cos/network/HttpResponse;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v1, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getOperatorType()B

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/cos/network/HttpResponse;->setOperateType(B)V

    .line 90
    invoke-static {v2}, Lcom/tencent/cos/network/HttpResponseHandler;->parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object v1

    .line 91
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 92
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v2

    iget-object v3, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 93
    :cond_18
    sget-object v2, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method protected prepareFileSlice(Lcom/tencent/cos/model/PutObjectRequest;Lcom/tencent/cos/model/PutObjectResult;Lcom/tencent/cos/task/slice/FileSlicePart;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/tencent/cos/model/COSRequest;->getAppid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->appid:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/tencent/cos/model/COSRequest;->getBucket()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->bucket:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/tencent/cos/model/COSRequest;->getCosPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->cosPath:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/tencent/cos/model/PutObjectRequest;->getSrcPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->srcPath:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/tencent/cos/model/PutObjectRequest;->getBiz_attr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->biz_attr:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/tencent/cos/model/PutObjectRequest;->getInsertOnly()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->insertOnly:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/tencent/cos/model/PutObjectRequest;->getsha()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->sha:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/tencent/cos/model/COSRequest;->getSign()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->sign:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/tencent/cos/model/COSRequest;->getRequestId()I

    move-result v0

    iput v0, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->requestId:I

    .line 10
    iget v0, p2, Lcom/tencent/cos/model/PutObjectResult;->slice_size:I

    iput v0, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceSize:I

    .line 11
    iget-object p2, p2, Lcom/tencent/cos/model/PutObjectResult;->session:Ljava/lang/String;

    iput-object p2, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->session:Ljava/lang/String;

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->slice_init_flag:Z

    .line 13
    invoke-virtual {p1}, Lcom/tencent/cos/model/PutObjectRequest;->getFilesize()J

    move-result-wide p1

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iget v1, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceSize:I

    add-int/lit8 v2, v1, -0x1

    int-to-long v2, v2

    add-long/2addr p1, v2

    int-to-long v1, v1

    div-long/2addr p1, v1

    long-to-int p2, p1

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 16
    new-instance v2, Lcom/tencent/cos/task/slice/SlicePart;

    invoke-direct {v2}, Lcom/tencent/cos/task/slice/SlicePart;-><init>()V

    .line 17
    iget v3, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceSize:I

    mul-int v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/cos/task/slice/SlicePart;->setOffset(J)V

    .line 18
    iget v3, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceSize:I

    invoke-virtual {v2, v3}, Lcom/tencent/cos/task/slice/SlicePart;->setSliceSize(I)V

    .line 19
    invoke-virtual {v2, p1}, Lcom/tencent/cos/task/slice/SlicePart;->setOverFlag(Z)V

    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_0
    iput-object v0, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceParts:Ljava/util/ArrayList;

    return-void
.end method

.method protected sliceUpload(Lcom/tencent/cos/network/HttpRequest;JJ)Lcom/tencent/cos/model/COSResult;
    .locals 16

    move-object/from16 v11, p0

    const-string v0, "application/json"

    const/4 v1, 0x0

    .line 1
    iput-object v1, v11, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    const/4 v12, 0x1

    .line 2
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/tencent/cos/task/Task;->getDomainUrl(Lcom/tencent/cos/network/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v13, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v13, v3, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v13

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/cos/common/COSHttpRequestHead;->VALUE:Lcom/tencent/cos/common/HeadValue;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getBodys()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 12
    check-cast v3, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 14
    :cond_1
    sget-object v2, Lcom/tencent/cos/common/COSHttpRequestHead;->VALUE:Lcom/tencent/cos/common/HeadValue;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 15
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    goto/16 :goto_4

    .line 17
    :cond_2
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v0}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getBodys()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 20
    check-cast v2, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    goto :goto_2

    .line 22
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->isUploadFlag()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_6

    .line 23
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getDataFile()Ljava/io/File;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v9, "\""

    const-string v10, "form-data; name=\""

    const-string v14, "Content-Disposition"

    const/4 v15, 0x0

    const/4 v7, 0x2

    if-eqz v1, :cond_4

    .line 24
    :try_start_2
    sget-object v1, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    const-string v2, "datafile"

    invoke-static {v1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v7, [Ljava/lang/String;

    aput-object v14, v1, v15

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getFileContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-static {v1}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v8

    new-instance v5, Lcom/tencent/cos/task/SliceUploadTask$SimpleUploadRequestBody;

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getDataFile()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v12, v5

    move-wide/from16 v5, p2

    move-object v15, v8

    const/4 v11, 0x2

    move-wide/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/tencent/cos/task/SliceUploadTask$SimpleUploadRequestBody;-><init>(Lcom/tencent/cos/task/SliceUploadTask;Ljava/io/File;Ljava/lang/String;JJ)V

    .line 28
    invoke-virtual {v0, v15, v12}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    goto :goto_3

    :cond_4
    const/4 v11, 0x2

    .line 29
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getDataByte()[B

    move-result-object v1

    if-eqz v1, :cond_5

    .line 30
    sget-object v1, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    const-string v2, "getDataByte"

    invoke-static {v1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v11, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v14, v1, v2

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getFileContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v12

    new-instance v15, Lcom/tencent/cos/task/SliceUploadTask$SimpleUploadRequestBody;

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getDataByte()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/tencent/cos/task/SliceUploadTask$SimpleUploadRequestBody;-><init>(Lcom/tencent/cos/task/SliceUploadTask;[BLjava/lang/String;JJ)V

    .line 34
    invoke-virtual {v0, v12, v15}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 35
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getDataStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 36
    sget-object v1, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    const-string v2, "getDataStream"

    invoke-static {v1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v11, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v14, v1, v2

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getFileContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v11

    new-instance v12, Lcom/tencent/cos/task/SliceUploadTask$SimpleUploadRequestBody;

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getDataStream()Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getLength()J

    move-result-wide v5

    move-object v1, v12

    move-object/from16 v2, p0

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v1 .. v10}, Lcom/tencent/cos/task/SliceUploadTask$SimpleUploadRequestBody;-><init>(Lcom/tencent/cos/task/SliceUploadTask;Ljava/io/InputStream;Ljava/lang/String;JJJ)V

    .line 40
    invoke-virtual {v0, v11, v12}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 41
    :cond_6
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    .line 42
    :goto_4
    invoke-virtual {v13, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v1, p0

    .line 43
    :try_start_3
    iget-object v2, v1, Lcom/tencent/cos/task/Task;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    .line 44
    iget-object v0, v1, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 45
    new-instance v2, Lcom/tencent/cos/network/HttpResponse;

    invoke-direct {v2, v0}, Lcom/tencent/cos/network/HttpResponse;-><init>(Lokhttp3/Response;)V

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getOperatorType()B

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tencent/cos/network/HttpResponse;->setOperateType(B)V

    .line 47
    invoke-static {v2}, Lcom/tencent/cos/network/HttpResponseHandler;->parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v11

    .line 48
    :goto_5
    iget-boolean v2, v1, Lcom/tencent/cos/task/Task;->isCancelled:Z

    const-string v3, "}"

    const-string v4, ",message:"

    const-string v5, "{code:"

    if-eqz v2, :cond_8

    .line 49
    iget-object v0, v1, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v0, :cond_7

    .line 50
    invoke-interface {v0}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onCancel()V

    .line 51
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    sget-object v2, Lcom/tencent/cos/common/Const;->ERROR_CLIENT_EXCEPTION:Lcom/tencent/cos/common/Const;

    invoke-virtual {v2}, Lcom/tencent/cos/common/Const;->getCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u4efb\u52a1\u53d6\u6d88\u6210\u529f"

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    new-instance v2, Lcom/tencent/cos/network/HttpResponse;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tencent/cos/network/HttpResponse;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getOperatorType()B

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tencent/cos/network/HttpResponse;->setOperateType(B)V

    .line 59
    invoke-static {v2}, Lcom/tencent/cos/network/HttpResponseHandler;->parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object v0

    .line 60
    sget-object v2, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/cos/model/COSRequest;->getRequestId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  is canceled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 61
    :cond_8
    iget v2, v1, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    iget-object v6, v1, Lcom/tencent/cos/task/Task;->config:Lcom/tencent/cos/COSConfig;

    invoke-virtual {v6}, Lcom/tencent/cos/COSConfig;->getMaxRetryCount()I

    move-result v6

    invoke-static {v2, v6, v0}, Lcom/tencent/cos/network/COSRetryHandler;->retryRequest(IILjava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 62
    iget-object v2, v1, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v2, :cond_9

    .line 63
    invoke-interface {v2}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onRetry()V

    .line 64
    :cond_9
    iget v2, v1, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 65
    sget-object v2, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";retry ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    invoke-virtual/range {p0 .. p5}, Lcom/tencent/cos/task/SliceUploadTask;->sliceUpload(Lcom/tencent/cos/network/HttpRequest;JJ)Lcom/tencent/cos/model/COSResult;

    move-result-object v0

    return-object v0

    .line 67
    :cond_a
    iget-object v2, v1, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    if-eqz v2, :cond_b

    .line 68
    invoke-interface {v2}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onFail()V

    .line 69
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    sget-object v5, Lcom/tencent/cos/common/Const;->ERROR_OTHER_EXCEPTION:Lcom/tencent/cos/common/Const;

    invoke-virtual {v5}, Lcom/tencent/cos/common/Const;->getCode()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    new-instance v3, Lcom/tencent/cos/network/HttpResponse;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/tencent/cos/network/HttpResponse;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getOperatorType()B

    move-result v2

    invoke-virtual {v3, v2}, Lcom/tencent/cos/network/HttpResponse;->setOperateType(B)V

    .line 77
    invoke-static {v3}, Lcom/tencent/cos/network/HttpResponseHandler;->parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object v2

    .line 78
    sget-object v3, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method protected uploadSliceDataRequset_4(Lcom/tencent/cos/network/HttpRequest;[BLjava/lang/String;JLjava/lang/String;)Lcom/tencent/cos/network/HttpRequest;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/model/PutObjectRequest;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/PutObjectRequest;->setSliceFlag(Z)V

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->OP:Lcom/tencent/cos/common/BodyValue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "op"

    const-string v2, "upload_slice_data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "session"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p3, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string p4, "offset"

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_0

    .line 7
    sget-object p3, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "sha"

    invoke-interface {v0, p3, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/PutObjectRequest;->setBodys(Ljava/util/Map;)V

    .line 9
    invoke-virtual {p1, p2}, Lcom/tencent/cos/model/PutObjectRequest;->setDataByte([B)V

    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p2}, Lcom/tencent/cos/model/PutObjectRequest;->setDataFile(Ljava/io/File;)V

    .line 11
    invoke-virtual {p1, p2}, Lcom/tencent/cos/model/PutObjectRequest;->setDataInputStream(Ljava/io/InputStream;)V

    .line 12
    new-instance p2, Lcom/tencent/cos/network/HttpRequest;

    invoke-direct {p2, p1}, Lcom/tencent/cos/network/HttpRequest;-><init>(Lcom/tencent/cos/model/COSRequest;)V

    return-object p2
.end method

.method protected uploadSliceFinishRequset_4(Lcom/tencent/cos/network/HttpRequest;Ljava/lang/String;JLjava/lang/String;)Lcom/tencent/cos/network/HttpRequest;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/model/PutObjectRequest;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/PutObjectRequest;->setSliceFlag(Z)V

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->OP:Lcom/tencent/cos/common/BodyValue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "op"

    const-string v2, "upload_slice_finish"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "session"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p2, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "filesize"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_0

    .line 7
    sget-object p2, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "sha"

    invoke-interface {v0, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/PutObjectRequest;->setBodys(Ljava/util/Map;)V

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2}, Lcom/tencent/cos/model/PutObjectRequest;->setDataByte([B)V

    .line 10
    invoke-virtual {p1, p2}, Lcom/tencent/cos/model/PutObjectRequest;->setDataFile(Ljava/io/File;)V

    .line 11
    invoke-virtual {p1, p2}, Lcom/tencent/cos/model/PutObjectRequest;->setDataInputStream(Ljava/io/InputStream;)V

    .line 12
    new-instance p2, Lcom/tencent/cos/network/HttpRequest;

    invoke-direct {p2, p1}, Lcom/tencent/cos/network/HttpRequest;-><init>(Lcom/tencent/cos/model/COSRequest;)V

    return-object p2
.end method

.method protected uploadSliceListRequset_4(Lcom/tencent/cos/network/HttpRequest;)Lcom/tencent/cos/network/HttpRequest;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/model/PutObjectRequest;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/PutObjectRequest;->setSliceFlag(Z)V

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->OP:Lcom/tencent/cos/common/BodyValue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "op"

    const-string v2, "upload_slice_list"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/PutObjectRequest;->setBodys(Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/PutObjectRequest;->setDataByte([B)V

    .line 7
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/PutObjectRequest;->setDataFile(Ljava/io/File;)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/PutObjectRequest;->setDataInputStream(Ljava/io/InputStream;)V

    .line 9
    new-instance v0, Lcom/tencent/cos/network/HttpRequest;

    invoke-direct {v0, p1}, Lcom/tencent/cos/network/HttpRequest;-><init>(Lcom/tencent/cos/model/COSRequest;)V

    return-object v0
.end method
