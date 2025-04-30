.class public Lcom/tencent/cos/model/GetObjectResult;
.super Lcom/tencent/cos/model/COSResult;
.source "GetObjectResult.java"


# instance fields
.field public downloadUrl:Ljava/lang/String;

.field public localPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/cos/model/COSResult;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectResult;->downloadUrl:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectResult;->localPath:Ljava/lang/String;

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
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectResult;->downloadUrl:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getLocalPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/model/GetObjectResult;->localPath:Ljava/lang/String;

    return-void
.end method
