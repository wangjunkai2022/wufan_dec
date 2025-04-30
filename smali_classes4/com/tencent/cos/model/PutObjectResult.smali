.class public Lcom/tencent/cos/model/PutObjectResult;
.super Lcom/tencent/cos/model/COSResult;
.source "PutObjectResult.java"


# instance fields
.field public access_url:Ljava/lang/String;

.field public datalen:I

.field public offset:J

.field public preview_url:Ljava/lang/String;

.field public resource_path:Ljava/lang/String;

.field public serial_upload:I

.field public session:Ljava/lang/String;

.field public slice_size:I

.field public source_url:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/cos/model/COSResult;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->session:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/tencent/cos/model/PutObjectResult;->slice_size:I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/tencent/cos/model/PutObjectResult;->serial_upload:I

    .line 5
    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->url:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->access_url:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->source_url:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->resource_path:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->preview_url:Ljava/lang/String;

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
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->url:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getAccessUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->access_url:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getSourceUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->source_url:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getSourcePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->resource_path:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getPreviewUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/model/PutObjectResult;->preview_url:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getOperatorType()B

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getSliceSize()I

    move-result v0

    iput v0, p0, Lcom/tencent/cos/model/PutObjectResult;->slice_size:I

    .line 11
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getSerialUpload()I

    move-result v0

    iput v0, p0, Lcom/tencent/cos/model/PutObjectResult;->serial_upload:I

    .line 12
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getSession()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->session:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getOffSet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/model/PutObjectResult;->offset:J

    .line 14
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getDataLen()I

    move-result v0

    iput v0, p0, Lcom/tencent/cos/model/PutObjectResult;->datalen:I

    .line 15
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->url:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getAccessUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->access_url:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getSourcePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->resource_path:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getSourceUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/PutObjectResult;->source_url:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getPreviewUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/model/PutObjectResult;->preview_url:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method
