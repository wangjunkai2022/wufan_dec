.class public Lcom/tencent/cos/model/HeadBucketRequest;
.super Lcom/tencent/cos/model/COSRequest;
.source "HeadBucketRequest.java"


# instance fields
.field private flag:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0xffff

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/tencent/cos/model/HeadBucketRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/tencent/cos/task/listener/ICmdTaskListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/tencent/cos/task/listener/ICmdTaskListener;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/tencent/cos/model/COSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/task/listener/ITaskListener;)V

    const p1, 0xffff

    .line 3
    iput p1, p0, Lcom/tencent/cos/model/HeadBucketRequest;->flag:I

    .line 4
    sget-object p1, Lcom/tencent/cos/common/COSHttpRequstBody;->OP:Lcom/tencent/cos/common/BodyValue;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "stat"

    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->op:Ljava/lang/String;

    const-string p1, "GET"

    .line 5
    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->httpMethod:Ljava/lang/String;

    .line 6
    sget-object p1, Lcom/tencent/cos/common/COSHttpRequestHead;->VALUE:Lcom/tencent/cos/common/HeadValue;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "application/json"

    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->httpContentType:Ljava/lang/String;

    .line 7
    iput p4, p0, Lcom/tencent/cos/model/HeadBucketRequest;->flag:I

    return-void
.end method


# virtual methods
.method public checkParams()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/exception/COSClientException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/tencent/cos/model/COSRequest;->checkParams()V

    return-void
.end method

.method public setBodys()V
    .locals 3

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
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bodys:Ljava/util/Map;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lcom/tencent/cos/model/HeadBucketRequest;->flag:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "flag"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
