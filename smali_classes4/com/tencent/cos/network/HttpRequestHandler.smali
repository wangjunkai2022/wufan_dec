.class public Lcom/tencent/cos/network/HttpRequestHandler;
.super Ljava/lang/Object;
.source "HttpRequestHandler.java"


# instance fields
.field private cosRequest:Lcom/tencent/cos/model/COSRequest;

.field private operatorType:B


# direct methods
.method public constructor <init>(Lcom/tencent/cos/model/COSRequest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    .line 3
    iput-object p1, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    .line 4
    invoke-virtual {p0, p1}, Lcom/tencent/cos/network/HttpRequestHandler;->setOperatorType(Lcom/tencent/cos/model/COSRequest;)V

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getAppid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBodys()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getBodys()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBucket()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getBucket()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCosPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getCosPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataByte()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    instance-of v1, v0, Lcom/tencent/cos/model/PutObjectRequest;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/tencent/cos/model/PutObjectRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/model/PutObjectRequest;->getDataByte()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataFile()Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    instance-of v1, v0, Lcom/tencent/cos/model/PutObjectRequest;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/tencent/cos/model/PutObjectRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/model/PutObjectRequest;->getDataFile()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    instance-of v1, v0, Lcom/tencent/cos/model/PutObjectRequest;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/tencent/cos/model/PutObjectRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/model/PutObjectRequest;->getDataStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    instance-of v0, v0, Lcom/tencent/cos/model/PutObjectRequest;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "filecontent"

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getHttpMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    instance-of v1, v0, Lcom/tencent/cos/model/PutObjectRequest;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/tencent/cos/model/PutObjectRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/model/PutObjectRequest;->getFilesize()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getListener()Lcom/tencent/cos/task/listener/ITaskListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v0

    return-object v0
.end method

.method public getOperatorType()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    return v0
.end method

.method public getPathForUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/exception/COSClientException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getPathForUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryForUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/exception/COSClientException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getQueryForUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/model/COSRequest;->getSign()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSrcPath()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    instance-of v1, v0, Lcom/tencent/cos/model/PutObjectRequest;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/tencent/cos/model/PutObjectRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/model/PutObjectRequest;->getSrcPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSliceUpload()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    instance-of v1, v0, Lcom/tencent/cos/model/PutObjectRequest;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/tencent/cos/model/PutObjectRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/model/PutObjectRequest;->isSliceFlag()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUploadFlag()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/network/HttpRequestHandler;->cosRequest:Lcom/tencent/cos/model/COSRequest;

    instance-of v0, v0, Lcom/tencent/cos/model/PutObjectRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOperatorType(Lcom/tencent/cos/model/COSRequest;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/tencent/cos/model/CreateDirRequest;

    if-eqz v0, :cond_0

    const/16 p1, 0x9

    .line 2
    iput-byte p1, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    return-void

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/tencent/cos/model/DeleteObjectRequest;

    if-eqz v0, :cond_1

    const/4 p1, 0x4

    .line 4
    iput-byte p1, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    return-void

    .line 5
    :cond_1
    instance-of v0, p1, Lcom/tencent/cos/model/GetObjectMetadataRequest;

    if-eqz v0, :cond_2

    const/4 p1, 0x5

    .line 6
    iput-byte p1, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    return-void

    .line 7
    :cond_2
    instance-of v0, p1, Lcom/tencent/cos/model/GetObjectRequest;

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    .line 8
    iput-byte p1, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    return-void

    .line 9
    :cond_3
    instance-of v0, p1, Lcom/tencent/cos/model/HeadBucketRequest;

    if-eqz v0, :cond_4

    const/16 p1, 0xd

    .line 10
    iput-byte p1, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    return-void

    .line 11
    :cond_4
    instance-of v0, p1, Lcom/tencent/cos/model/ListDirRequest;

    if-eqz v0, :cond_5

    const/16 p1, 0x8

    .line 12
    iput-byte p1, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    return-void

    .line 13
    :cond_5
    instance-of v0, p1, Lcom/tencent/cos/model/PutObjectRequest;

    if-eqz v0, :cond_7

    .line 14
    check-cast p1, Lcom/tencent/cos/model/PutObjectRequest;

    invoke-virtual {p1}, Lcom/tencent/cos/model/PutObjectRequest;->isSliceFlag()Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0xb

    .line 15
    iput-byte p1, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    .line 16
    iput-byte p1, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    :goto_0
    return-void

    .line 17
    :cond_7
    instance-of v0, p1, Lcom/tencent/cos/model/RemoveEmptyDirRequest;

    if-eqz v0, :cond_8

    const/4 p1, 0x6

    .line 18
    iput-byte p1, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    return-void

    .line 19
    :cond_8
    instance-of p1, p1, Lcom/tencent/cos/model/UpdateObjectRequest;

    if-eqz p1, :cond_9

    const/4 p1, 0x2

    .line 20
    iput-byte p1, p0, Lcom/tencent/cos/network/HttpRequestHandler;->operatorType:B

    :cond_9
    return-void
.end method
