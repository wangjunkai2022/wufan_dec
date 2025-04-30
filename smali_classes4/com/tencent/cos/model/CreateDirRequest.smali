.class public Lcom/tencent/cos/model/CreateDirRequest;
.super Lcom/tencent/cos/model/COSRequest;
.source "CreateDirRequest.java"


# instance fields
.field private biz_attr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/tencent/cos/model/CreateDirRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/task/listener/ICmdTaskListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/task/listener/ICmdTaskListener;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/tencent/cos/model/COSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/task/listener/ITaskListener;)V

    .line 3
    iput-object p4, p0, Lcom/tencent/cos/model/CreateDirRequest;->biz_attr:Ljava/lang/String;

    const-string p1, "POST"

    .line 4
    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->httpMethod:Ljava/lang/String;

    .line 5
    sget-object p1, Lcom/tencent/cos/common/COSHttpRequstBody;->OP:Lcom/tencent/cos/common/BodyValue;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "create"

    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->op:Ljava/lang/String;

    .line 6
    sget-object p1, Lcom/tencent/cos/common/COSHttpRequestHead;->VALUE:Lcom/tencent/cos/common/HeadValue;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "application/json"

    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->httpContentType:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->cosPath:Ljava/lang/String;

    :cond_0
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

.method public getBizAttr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/CreateDirRequest;->biz_attr:Ljava/lang/String;

    return-object v0
.end method

.method public setBizAttr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/model/CreateDirRequest;->biz_attr:Ljava/lang/String;

    return-void
.end method

.method public setBodys()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bodys:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bodys:Ljava/util/Map;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bodys:Ljava/util/Map;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/tencent/cos/model/COSRequest;->op:Ljava/lang/String;

    const-string v2, "op"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/tencent/cos/model/CreateDirRequest;->biz_attr:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bodys:Ljava/util/Map;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/tencent/cos/model/CreateDirRequest;->biz_attr:Ljava/lang/String;

    const-string v2, "biz_attr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public setCosPath(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->cosPath:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->cosPath:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setHeaders()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/model/COSRequest;->headers:Ljava/util/Map;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->headers:Ljava/util/Map;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequestHead;->KEY:Lcom/tencent/cos/common/HeadKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/tencent/cos/model/COSRequest;->sign:Ljava/lang/String;

    const-string v2, "Authorization"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->headers:Ljava/util/Map;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequestHead;->KEY:Lcom/tencent/cos/common/HeadKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/tencent/cos/model/COSRequest;->httpContentType:Ljava/lang/String;

    const-string v2, "Content-Type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
