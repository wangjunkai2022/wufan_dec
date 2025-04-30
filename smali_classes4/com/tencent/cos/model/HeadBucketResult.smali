.class public Lcom/tencent/cos/model/HeadBucketResult;
.super Lcom/tencent/cos/model/COSResult;
.source "HeadBucketResult.java"


# instance fields
.field public CORSConfiguration:Ljava/lang/String;

.field public authority:Ljava/lang/String;

.field public biz_attr:Ljava/lang/String;

.field public blackRefers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public cname:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ctime:J

.field public migrate_source_domain:Ljava/lang/String;

.field public mtime:J

.field public need_preview:I

.field public refers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getRefers()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/HeadBucketResult;->refers:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getCname()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/HeadBucketResult;->cname:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getBlackRefers()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/HeadBucketResult;->blackRefers:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/HeadBucketResult;->authority:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getCtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/model/HeadBucketResult;->ctime:J

    .line 8
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getMtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/model/HeadBucketResult;->mtime:J

    .line 9
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getBizattr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/HeadBucketResult;->biz_attr:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getMigrateSourceDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/model/HeadBucketResult;->migrate_source_domain:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getNeedPreview()I

    move-result v0

    iput v0, p0, Lcom/tencent/cos/model/HeadBucketResult;->need_preview:I

    .line 12
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getCORSConfiguration()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/model/HeadBucketResult;->CORSConfiguration:Ljava/lang/String;

    return-void
.end method
