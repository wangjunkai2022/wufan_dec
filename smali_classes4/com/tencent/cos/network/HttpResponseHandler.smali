.class public Lcom/tencent/cos/network/HttpResponseHandler;
.super Ljava/lang/Object;
.source "HttpResponseHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tencent.cos.network.HttpResponseHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;
    .locals 2

    if-eqz p0, :cond_a

    .line 1
    invoke-virtual {p0}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {p0}, Lcom/tencent/cos/network/HttpResponseHandler;->parseDeleteObject(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 5
    invoke-static {p0}, Lcom/tencent/cos/network/HttpResponseHandler;->parseGetObject(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 7
    invoke-static {p0}, Lcom/tencent/cos/network/HttpResponseHandler;->parseUpdateObject(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object p0

    return-object p0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 9
    invoke-static {p0}, Lcom/tencent/cos/network/HttpResponseHandler;->parseGetObjectMetadata(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object p0

    return-object p0

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    .line 11
    invoke-static {p0}, Lcom/tencent/cos/network/HttpResponseHandler;->parseCreateDir(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object p0

    return-object p0

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 13
    invoke-static {p0}, Lcom/tencent/cos/network/HttpResponseHandler;->parseListDir(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object p0

    return-object p0

    .line 14
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    .line 15
    invoke-static {p0}, Lcom/tencent/cos/network/HttpResponseHandler;->parseHeadBucket(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object p0

    return-object p0

    .line 16
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    .line 17
    invoke-static {p0}, Lcom/tencent/cos/network/HttpResponseHandler;->parseRemoveEmptyDir(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object p0

    return-object p0

    .line 18
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/cos/network/HttpResponseHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \uff1a\u672a\u77e5\u7684\u64cd\u4f5c\u7c7b\u578b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_9
    :goto_0
    invoke-static {p0}, Lcom/tencent/cos/network/HttpResponseHandler;->parsePutObject(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    move-result-object p0

    return-object p0

    .line 20
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u7f51\u7edc\u8fd4\u56de\u5185\u5bb9\u4e3a\u7a7a"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static parseCreateDir(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/cos/model/CreateDirResult;

    invoke-direct {v0}, Lcom/tencent/cos/model/CreateDirResult;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/tencent/cos/model/CreateDirResult;->getResponse(Lcom/tencent/cos/network/HttpResponse;)V

    return-object v0
.end method

.method protected static parseDeleteObject(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/cos/model/DeleteObjectResult;

    invoke-direct {v0}, Lcom/tencent/cos/model/DeleteObjectResult;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/tencent/cos/model/DeleteObjectResult;->getResponse(Lcom/tencent/cos/network/HttpResponse;)V

    return-object v0
.end method

.method protected static parseGetObject(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/cos/model/GetObjectResult;

    invoke-direct {v0}, Lcom/tencent/cos/model/GetObjectResult;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/tencent/cos/model/GetObjectResult;->getResponse(Lcom/tencent/cos/network/HttpResponse;)V

    return-object v0
.end method

.method protected static parseGetObjectMetadata(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/cos/model/GetObjectMetadataResult;

    invoke-direct {v0}, Lcom/tencent/cos/model/GetObjectMetadataResult;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/tencent/cos/model/GetObjectMetadataResult;->getResponse(Lcom/tencent/cos/network/HttpResponse;)V

    return-object v0
.end method

.method protected static parseHeadBucket(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/cos/model/HeadBucketResult;

    invoke-direct {v0}, Lcom/tencent/cos/model/HeadBucketResult;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/tencent/cos/model/HeadBucketResult;->getResponse(Lcom/tencent/cos/network/HttpResponse;)V

    return-object v0
.end method

.method protected static parseListDir(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/cos/model/ListDirResult;

    invoke-direct {v0}, Lcom/tencent/cos/model/ListDirResult;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/tencent/cos/model/ListDirResult;->getResponse(Lcom/tencent/cos/network/HttpResponse;)V

    return-object v0
.end method

.method protected static parsePutObject(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/cos/model/PutObjectResult;

    invoke-direct {v0}, Lcom/tencent/cos/model/PutObjectResult;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/tencent/cos/model/PutObjectResult;->getResponse(Lcom/tencent/cos/network/HttpResponse;)V

    return-object v0
.end method

.method protected static parseRemoveEmptyDir(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/cos/model/RemoveEmptyDirResult;

    invoke-direct {v0}, Lcom/tencent/cos/model/RemoveEmptyDirResult;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/tencent/cos/model/RemoveEmptyDirResult;->getResponse(Lcom/tencent/cos/network/HttpResponse;)V

    return-object v0
.end method

.method protected static parseUpdateObject(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/cos/model/UpdateObjectResult;

    invoke-direct {v0}, Lcom/tencent/cos/model/UpdateObjectResult;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/tencent/cos/model/UpdateObjectResult;->getResponse(Lcom/tencent/cos/network/HttpResponse;)V

    return-object v0
.end method
