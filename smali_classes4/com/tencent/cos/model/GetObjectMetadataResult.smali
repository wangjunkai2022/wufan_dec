.class public Lcom/tencent/cos/model/GetObjectMetadataResult;
.super Lcom/tencent/cos/model/COSResult;
.source "GetObjectMetadataResult.java"


# instance fields
.field public access_url:Ljava/lang/String;

.field public authority:Ljava/lang/String;

.field public biz_attr:Ljava/lang/String;

.field public ctime:J

.field public custom_headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public filelen:I

.field public filesize:I

.field public mtime:J

.field public name:Ljava/lang/String;

.field public sha:Ljava/lang/String;

.field private source_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/tencent/cos/model/COSResult;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->name:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->biz_attr:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->filelen:I

    .line 5
    iput v1, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->filesize:I

    .line 6
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->sha:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->ctime:J

    .line 8
    iput-wide v1, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->mtime:J

    .line 9
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->access_url:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->authority:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->source_url:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->custom_headers:Ljava/util/Map;

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
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->name:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getBizattr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->biz_attr:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getFileSize()I

    move-result v0

    iput v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->filesize:I

    .line 6
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getFileLen()I

    move-result v0

    iput v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->filelen:I

    .line 7
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getSha()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->sha:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getMtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->mtime:J

    .line 9
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getCtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->ctime:J

    .line 10
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getAccessUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->access_url:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->authority:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getCustomHeaders()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->custom_headers:Ljava/util/Map;

    .line 13
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getSourceUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/model/GetObjectMetadataResult;->source_url:Ljava/lang/String;

    return-void
.end method
