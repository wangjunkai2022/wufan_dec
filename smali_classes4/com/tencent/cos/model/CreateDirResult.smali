.class public Lcom/tencent/cos/model/CreateDirResult;
.super Lcom/tencent/cos/model/COSResult;
.source "CreateDirResult.java"


# instance fields
.field public ctime:J

.field public resource_path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/cos/model/COSResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse(Lcom/tencent/cos/network/HttpResponse;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getRet()I

    move-result v0

    iput v0, p0, Lcom/tencent/cos/model/COSResult;->code:I

    .line 2
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/COSResult;->msg:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getCtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/model/CreateDirResult;->ctime:J

    .line 4
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getSourcePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/model/CreateDirResult;->resource_path:Ljava/lang/String;

    return-void
.end method
