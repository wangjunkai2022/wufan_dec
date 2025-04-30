.class public Lcom/tencent/cos/model/ListDirResult;
.super Lcom/tencent/cos/model/COSResult;
.source "ListDirResult.java"


# instance fields
.field public contentStr:Ljava/lang/String;

.field public context:Ljava/lang/String;

.field public infos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public listover:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/cos/model/COSResult;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/model/ListDirResult;->infos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getResponse(Lcom/tencent/cos/network/HttpResponse;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getRet()I

    move-result v0

    iput v0, p0, Lcom/tencent/cos/model/COSResult;->code:I

    .line 2
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/COSResult;->msg:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getContext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/ListDirResult;->context:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getListOver()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/cos/model/ListDirResult;->listover:Z

    .line 5
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getListDirInfos()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/ListDirResult;->infos:Ljava/util/List;

    .line 6
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/model/ListDirResult;->contentStr:Ljava/lang/String;

    return-void
.end method
