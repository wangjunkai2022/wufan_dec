.class public Lcom/tencent/cos/model/PutObjectRequest;
.super Lcom/tencent/cos/model/COSRequest;
.source "PutObjectRequest.java"


# instance fields
.field private biz_attr:Ljava/lang/String;

.field private checkSha:Z

.field private dataByte:[B

.field private dataFile:Ljava/io/File;

.field private dataInputStream:Ljava/io/InputStream;

.field private filesize:J

.field private insertOnly:Ljava/lang/String;

.field private sha:Ljava/lang/String;

.field private sliceFlag:Z

.field private slice_size:I

.field private srcPath:Ljava/lang/String;

.field private uploadparts:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x100000

    const-string v8, "1"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/tencent/cos/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/cos/task/listener/IUploadTaskListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/cos/task/listener/IUploadTaskListener;)V
    .locals 10

    move-object v7, p0

    move-object v0, p4

    move v8, p5

    move/from16 v9, p7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/tencent/cos/model/COSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/task/listener/ITaskListener;)V

    const/4 v1, 0x0

    .line 3
    iput-object v1, v7, Lcom/tencent/cos/model/PutObjectRequest;->sha:Ljava/lang/String;

    .line 4
    iput-object v1, v7, Lcom/tencent/cos/model/PutObjectRequest;->biz_attr:Ljava/lang/String;

    const-string v2, "1"

    .line 5
    iput-object v2, v7, Lcom/tencent/cos/model/PutObjectRequest;->insertOnly:Ljava/lang/String;

    .line 6
    iput-object v1, v7, Lcom/tencent/cos/model/PutObjectRequest;->srcPath:Ljava/lang/String;

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, v7, Lcom/tencent/cos/model/PutObjectRequest;->checkSha:Z

    const-wide/16 v3, -0x1

    .line 8
    iput-wide v3, v7, Lcom/tencent/cos/model/PutObjectRequest;->filesize:J

    .line 9
    iput-object v1, v7, Lcom/tencent/cos/model/PutObjectRequest;->uploadparts:Ljava/lang/String;

    .line 10
    iput-boolean v2, v7, Lcom/tencent/cos/model/PutObjectRequest;->sliceFlag:Z

    .line 11
    sget-object v2, Lcom/tencent/cos/common/COSHttpRequstBody;->OP:Lcom/tencent/cos/common/BodyValue;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "upload"

    iput-object v2, v7, Lcom/tencent/cos/model/COSRequest;->op:Ljava/lang/String;

    const-string v2, "POST"

    .line 12
    iput-object v2, v7, Lcom/tencent/cos/model/COSRequest;->httpMethod:Ljava/lang/String;

    .line 13
    sget-object v2, Lcom/tencent/cos/common/COSHttpRequestHead;->VALUE:Lcom/tencent/cos/common/HeadValue;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "multipart/form-data"

    iput-object v2, v7, Lcom/tencent/cos/model/COSRequest;->httpContentType:Ljava/lang/String;

    .line 14
    iput-object v0, v7, Lcom/tencent/cos/model/PutObjectRequest;->srcPath:Ljava/lang/String;

    move-object/from16 v2, p6

    .line 15
    iput-object v2, v7, Lcom/tencent/cos/model/PutObjectRequest;->biz_attr:Ljava/lang/String;

    move-object/from16 v2, p8

    .line 16
    iput-object v2, v7, Lcom/tencent/cos/model/PutObjectRequest;->insertOnly:Ljava/lang/String;

    .line 17
    iput v9, v7, Lcom/tencent/cos/model/PutObjectRequest;->slice_size:I

    .line 18
    iput-boolean v8, v7, Lcom/tencent/cos/model/PutObjectRequest;->checkSha:Z

    if-eqz v8, :cond_0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {p4}, Lcom/tencent/cos/utils/SHA1Utils;->getFileSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/tencent/cos/model/PutObjectRequest;->sha:Ljava/lang/String;

    goto :goto_0

    .line 20
    :cond_0
    iput-object v1, v7, Lcom/tencent/cos/model/PutObjectRequest;->sha:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    .line 21
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, v7, Lcom/tencent/cos/model/PutObjectRequest;->filesize:J

    const-wide/32 v3, 0x1400000

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 23
    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->OP:Lcom/tencent/cos/common/BodyValue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "upload_slice_init"

    iput-object v1, v7, Lcom/tencent/cos/model/COSRequest;->op:Ljava/lang/String;

    const/4 v1, 0x1

    .line 24
    iput-boolean v1, v7, Lcom/tencent/cos/model/PutObjectRequest;->sliceFlag:Z

    .line 25
    iget-object v1, v7, Lcom/tencent/cos/model/PutObjectRequest;->sha:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 26
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4, v9, v1}, Lcom/tencent/cos/utils/SHA1Utils;->getSlicePartSha1(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/tencent/cos/model/PutObjectRequest;->uploadparts:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public checkParams()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/exception/COSClientException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/tencent/cos/model/COSRequest;->checkParams()V

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->srcPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/tencent/cos/exception/COSClientException;

    const-string v1, "srcPath\uff0c\u5373\u672c\u5730\u8def\u5f84\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/tencent/cos/exception/COSClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkSha()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->checkSha:Z

    return-void
.end method

.method public getBiz_attr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->biz_attr:Ljava/lang/String;

    return-object v0
.end method

.method public getDataByte()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->dataByte:[B

    return-object v0
.end method

.method public getDataFile()Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->dataFile:Ljava/io/File;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->srcPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->op:Ljava/lang/String;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->OP:Lcom/tencent/cos/common/BodyValue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "upload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/cos/model/PutObjectRequest;->srcPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->dataFile:Ljava/io/File;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->dataFile:Ljava/io/File;

    return-object v0
.end method

.method public getDataStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->dataInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getFilesize()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->filesize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/cos/model/PutObjectRequest;->srcPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->filesize:J

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->filesize:J

    return-wide v0
.end method

.method public getInsertOnly()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->insertOnly:Ljava/lang/String;

    return-object v0
.end method

.method public getSlice_size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->slice_size:I

    return v0
.end method

.method public getSrcPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->srcPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadparts()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->uploadparts:Ljava/lang/String;

    return-object v0
.end method

.method public getsha()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->checkSha:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->sha:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->srcPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/cos/utils/SHA1Utils;->getFileSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->sha:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->sha:Ljava/lang/String;

    return-object v0
.end method

.method public isSliceFlag()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->sliceFlag:Z

    return v0
.end method

.method public setBiz_attr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/model/PutObjectRequest;->biz_attr:Ljava/lang/String;

    return-void
.end method

.method public setBodys()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bodys:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bodys:Ljava/util/Map;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bodys:Ljava/util/Map;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/tencent/cos/model/COSRequest;->op:Ljava/lang/String;

    const-string v2, "op"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->sha:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bodys:Ljava/util/Map;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/tencent/cos/model/PutObjectRequest;->sha:Ljava/lang/String;

    const-string v2, "sha"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->biz_attr:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bodys:Ljava/util/Map;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/tencent/cos/model/PutObjectRequest;->biz_attr:Ljava/lang/String;

    const-string v2, "biz_attr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->insertOnly:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bodys:Ljava/util/Map;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/tencent/cos/model/PutObjectRequest;->insertOnly:Ljava/lang/String;

    const-string v2, "insertOnly"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_3
    iget-boolean v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->sliceFlag:Z

    if-eqz v0, :cond_7

    .line 10
    iget v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->slice_size:I

    if-gez v0, :cond_4

    const/high16 v0, 0x100000

    .line 11
    iput v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->slice_size:I

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bodys:Ljava/util/Map;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lcom/tencent/cos/model/PutObjectRequest;->slice_size:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "slice_size"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-wide v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->filesize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/tencent/cos/model/PutObjectRequest;->getFilesize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->filesize:J

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bodys:Ljava/util/Map;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, Lcom/tencent/cos/model/PutObjectRequest;->filesize:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "filesize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->sha:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 17
    iget-object v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->uploadparts:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->srcPath:Ljava/lang/String;

    iget v1, p0, Lcom/tencent/cos/model/PutObjectRequest;->slice_size:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/tencent/cos/utils/SHA1Utils;->getSlicePartSha1(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectRequest;->uploadparts:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bodys:Ljava/util/Map;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/tencent/cos/model/PutObjectRequest;->uploadparts:Ljava/lang/String;

    const-string v2, "uploadparts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public setBodys(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->bodys:Ljava/util/Map;

    return-void
.end method

.method public setDataByte([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/model/PutObjectRequest;->dataByte:[B

    return-void
.end method

.method public setDataFile(Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/model/PutObjectRequest;->dataFile:Ljava/io/File;

    return-void
.end method

.method public setDataInputStream(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/model/PutObjectRequest;->dataInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setHeaders()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/model/COSRequest;->headers:Ljava/util/Map;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->headers:Ljava/util/Map;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequestHead;->KEY:Lcom/tencent/cos/common/HeadKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/tencent/cos/model/COSRequest;->sign:Ljava/lang/String;

    const-string v2, "Authorization"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->headers:Ljava/util/Map;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequestHead;->KEY:Lcom/tencent/cos/common/HeadKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/tencent/cos/model/COSRequest;->httpContentType:Ljava/lang/String;

    const-string v2, "Content-Type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->headers:Ljava/util/Map;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequestHead;->KEY:Lcom/tencent/cos/common/HeadKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequestHead;->VALUE:Lcom/tencent/cos/common/HeadValue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->headers:Ljava/util/Map;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequestHead;->KEY:Lcom/tencent/cos/common/HeadKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequestHead;->VALUE:Lcom/tencent/cos/common/HeadValue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setInsertOnly(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/model/PutObjectRequest;->insertOnly:Ljava/lang/String;

    return-void
.end method

.method public setSha(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/model/PutObjectRequest;->sha:Ljava/lang/String;

    return-void
.end method

.method public setSliceFlag(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/tencent/cos/common/COSHttpRequstBody;->OP:Lcom/tencent/cos/common/BodyValue;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "upload_slice_init"

    iput-object v0, p0, Lcom/tencent/cos/model/COSRequest;->op:Ljava/lang/String;

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/cos/model/PutObjectRequest;->sliceFlag:Z

    return-void
.end method

.method public setSlice_size(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/cos/model/PutObjectRequest;->slice_size:I

    return-void
.end method

.method public setSrcPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/model/PutObjectRequest;->srcPath:Ljava/lang/String;

    return-void
.end method

.method public setUploadparts(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/model/PutObjectRequest;->uploadparts:Ljava/lang/String;

    return-void
.end method
