.class public Lcom/tencent/cos/model/ListDirRequest;
.super Lcom/tencent/cos/model/COSRequest;
.source "ListDirRequest.java"


# instance fields
.field private content:Ljava/lang/String;

.field private num:I

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x64

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/tencent/cos/model/ListDirRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/cos/task/listener/ICmdTaskListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/cos/task/listener/ICmdTaskListener;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/tencent/cos/model/COSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/task/listener/ITaskListener;)V

    const/16 p1, 0x64

    .line 3
    iput p1, p0, Lcom/tencent/cos/model/ListDirRequest;->num:I

    const-string p1, ""

    .line 4
    iput-object p1, p0, Lcom/tencent/cos/model/ListDirRequest;->content:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/tencent/cos/model/ListDirRequest;->prefix:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/tencent/cos/model/ListDirRequest;->num:I

    .line 7
    sget-object p1, Lcom/tencent/cos/common/COSHttpRequstBody;->OP:Lcom/tencent/cos/common/BodyValue;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "list"

    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->op:Ljava/lang/String;

    const-string p1, "GET"

    .line 8
    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->httpMethod:Ljava/lang/String;

    .line 9
    sget-object p1, Lcom/tencent/cos/common/COSHttpRequestHead;->VALUE:Lcom/tencent/cos/common/HeadValue;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "application/json"

    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->httpContentType:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lcom/tencent/cos/model/ListDirRequest;->content:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 11
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 12
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

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/ListDirRequest;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/cos/model/ListDirRequest;->num:I

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/model/ListDirRequest;->prefix:Ljava/lang/String;

    return-object v0
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

    iget v1, p0, Lcom/tencent/cos/model/ListDirRequest;->num:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "num"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/tencent/cos/model/COSRequest;->bodys:Ljava/util/Map;

    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/tencent/cos/model/ListDirRequest;->content:Ljava/lang/String;

    const-string v2, "context"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/model/ListDirRequest;->content:Ljava/lang/String;

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

    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/cos/model/ListDirRequest;->num:I

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/model/ListDirRequest;->prefix:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/cos/model/COSRequest;->cosPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/model/COSRequest;->cosPath:Ljava/lang/String;

    :cond_0
    return-void
.end method
