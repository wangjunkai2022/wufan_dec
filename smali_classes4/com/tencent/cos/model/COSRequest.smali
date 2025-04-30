.class public abstract Lcom/tencent/cos/model/COSRequest;
.super Ljava/lang/Object;
.source "COSRequest.java"


# instance fields
.field protected appid:Ljava/lang/String;

.field protected bodys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected bucket:Ljava/lang/String;

.field protected cosPath:Ljava/lang/String;

.field protected downloadPath:Ljava/lang/String;

.field protected downloadUrl:Ljava/lang/String;

.field protected headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected httpContentType:Ljava/lang/String;

.field protected httpMethod:Ljava/lang/String;

.field protected listener:Lcom/tencent/cos/task/listener/ITaskListener;

.field protected op:Ljava/lang/String;

.field protected requestId:I

.field protected sign:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/tencent/cos/model/COSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/task/listener/ITaskListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/tencent/cos/model/COSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/task/listener/ITaskListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/task/listener/ITaskListener;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/tencent/cos/model/COSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/task/listener/ITaskListener;)V

    .line 19
    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->downloadUrl:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/tencent/cos/model/COSRequest;->downloadPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/task/listener/ITaskListener;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/cos/model/COSRequest;->appid:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bucket:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/tencent/cos/model/COSRequest;->cosPath:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/tencent/cos/model/COSRequest;->sign:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/tencent/cos/model/COSRequest;->op:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/tencent/cos/model/COSRequest;->httpMethod:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/tencent/cos/model/COSRequest;->httpContentType:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/tencent/cos/model/COSRequest;->headers:Ljava/util/Map;

    .line 11
    iput-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bodys:Ljava/util/Map;

    .line 12
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/tencent/cos/model/COSRequest;->requestId:I

    .line 13
    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->appid:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/tencent/cos/model/COSRequest;->bucket:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/tencent/cos/model/COSRequest;->cosPath:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/tencent/cos/model/COSRequest;->sign:Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lcom/tencent/cos/model/COSRequest;->listener:Lcom/tencent/cos/task/listener/ITaskListener;

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
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->appid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bucket:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->cosPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->cosPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/cos/utils/FolderUtils;->isValidPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/tencent/cos/exception/COSClientException;

    const-string v1, "COS\u76ee\u5f55\u4e2d\u542b\u6709\u4fdd\u7559\u5b57\u7b26"

    invoke-direct {v0, v1}, Lcom/tencent/cos/exception/COSClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Lcom/tencent/cos/exception/COSClientException;

    const-string v1, "COS\u8fdc\u7a0b\u8def\u5f84\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/tencent/cos/exception/COSClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    new-instance v0, Lcom/tencent/cos/exception/COSClientException;

    const-string v1, "bucket\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/tencent/cos/exception/COSClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_3
    new-instance v0, Lcom/tencent/cos/exception/COSClientException;

    const-string v1, "appid\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/tencent/cos/exception/COSClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAppid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->appid:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bodys:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/cos/model/COSRequest;->setBodys()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bodys:Ljava/util/Map;

    return-object v0
.end method

.method public getBucket()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->httpContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCosPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->cosPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->downloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->downloadUrl:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/cos/model/COSRequest;->setHeaders()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/tencent/cos/task/listener/ITaskListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->listener:Lcom/tencent/cos/task/listener/ITaskListener;

    return-object v0
.end method

.method public getPathForUrl()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/exception/COSClientException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/cos/model/COSRequest;->checkParams()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/tencent/cos/model/COSRequest;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/cos/model/COSRequest;->bucket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/tencent/cos/model/COSRequest;->cosPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/cos/utils/COSPathUtils;->encodeRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryForUrl()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/exception/COSClientException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->httpMethod:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bodys:Ljava/util/Map;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/cos/model/COSRequest;->setBodys()V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->httpMethod:Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bodys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "&"

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0

    :cond_4
    return-object v1
.end method

.method public getRequestId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/cos/model/COSRequest;->requestId:I

    return v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->appid:Ljava/lang/String;

    return-void
.end method

.method public abstract setBodys()V
.end method

.method public setBucket(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->bucket:Ljava/lang/String;

    return-void
.end method

.method public setCosPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->cosPath:Ljava/lang/String;

    return-void
.end method

.method public setDownloadPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->downloadPath:Ljava/lang/String;

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public abstract setHeaders()V
.end method

.method public setListener(Lcom/tencent/cos/task/listener/ITaskListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->listener:Lcom/tencent/cos/task/listener/ITaskListener;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->sign:Ljava/lang/String;

    return-void
.end method
