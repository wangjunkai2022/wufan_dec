.class public Lcom/tencent/cos/COSConfig;
.super Ljava/lang/Object;
.source "COSConfig.java"


# static fields
.field private static final DEFAULT_COS_DOMAIN:Ljava/lang/String; = "gz.file.myqcloud.com"

.field private static final DEFAULT_HTTP_PROTOCOL:Ljava/lang/String; = "http://"

.field private static final DEFAULT_SERVER_FLAG:Ljava/lang/String; = "/files/v2"


# instance fields
.field private connectionTimeout:I

.field private cosDomain:Ljava/lang/String;

.field private endPoint:Lcom/tencent/cos/common/COSEndPoint;

.field private httpProtocol:Ljava/lang/String;

.field private maxConnectionsCount:I

.field private maxRetryCount:I

.field private serverFlag:Ljava/lang/String;

.field private socketTimeout:I

.field private threadPoolSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://"

    .line 2
    iput-object v0, p0, Lcom/tencent/cos/COSConfig;->httpProtocol:Ljava/lang/String;

    const-string v0, "gz.file.myqcloud.com"

    .line 3
    iput-object v0, p0, Lcom/tencent/cos/COSConfig;->cosDomain:Ljava/lang/String;

    const-string v0, "/files/v2"

    .line 4
    iput-object v0, p0, Lcom/tencent/cos/COSConfig;->serverFlag:Ljava/lang/String;

    const/16 v0, 0x7530

    .line 5
    iput v0, p0, Lcom/tencent/cos/COSConfig;->connectionTimeout:I

    .line 6
    iput v0, p0, Lcom/tencent/cos/COSConfig;->socketTimeout:I

    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/tencent/cos/COSConfig;->maxConnectionsCount:I

    const/4 v0, 0x3

    .line 8
    iput v0, p0, Lcom/tencent/cos/COSConfig;->maxRetryCount:I

    .line 9
    iput v0, p0, Lcom/tencent/cos/COSConfig;->threadPoolSize:I

    .line 10
    sget-object v0, Lcom/tencent/cos/common/COSEndPoint;->COS_GZ:Lcom/tencent/cos/common/COSEndPoint;

    iput-object v0, p0, Lcom/tencent/cos/COSConfig;->endPoint:Lcom/tencent/cos/common/COSEndPoint;

    return-void
.end method


# virtual methods
.method public getConnectionTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/cos/COSConfig;->connectionTimeout:I

    return v0
.end method

.method public getCosDomain()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/cos/COSConfig$1;->$SwitchMap$com$tencent$cos$common$COSEndPoint:[I

    iget-object v1, p0, Lcom/tencent/cos/COSConfig;->endPoint:Lcom/tencent/cos/common/COSEndPoint;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "tj.file.myqcloud.com"

    .line 2
    iput-object v0, p0, Lcom/tencent/cos/COSConfig;->cosDomain:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "sh.file.myqcloud.com"

    .line 3
    iput-object v0, p0, Lcom/tencent/cos/COSConfig;->cosDomain:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "gz.file.myqcloud.com"

    .line 4
    iput-object v0, p0, Lcom/tencent/cos/COSConfig;->cosDomain:Ljava/lang/String;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/tencent/cos/COSConfig;->cosDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getEndPoint()Lcom/tencent/cos/common/COSEndPoint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSConfig;->endPoint:Lcom/tencent/cos/common/COSEndPoint;

    return-object v0
.end method

.method public getHttpProtocol()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSConfig;->httpProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxConnectionsCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/cos/COSConfig;->maxConnectionsCount:I

    return v0
.end method

.method public getMaxRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/cos/COSConfig;->maxRetryCount:I

    return v0
.end method

.method public getServerFlag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSConfig;->serverFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/cos/COSConfig;->socketTimeout:I

    return v0
.end method

.method public getThreadPoolSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/cos/COSConfig;->threadPoolSize:I

    return v0
.end method

.method public setConnectionTimeout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/cos/COSConfig;->connectionTimeout:I

    return-void
.end method

.method public setCosDomain(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/COSConfig;->cosDomain:Ljava/lang/String;

    return-void
.end method

.method public setEndPoint(Lcom/tencent/cos/common/COSEndPoint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/COSConfig;->endPoint:Lcom/tencent/cos/common/COSEndPoint;

    return-void
.end method

.method public setHttpProtocol(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/COSConfig;->httpProtocol:Ljava/lang/String;

    return-void
.end method

.method public setMaxConnectionsCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/cos/COSConfig;->maxConnectionsCount:I

    return-void
.end method

.method public setMaxRetryCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/cos/COSConfig;->maxRetryCount:I

    return-void
.end method

.method public setServerFlag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/COSConfig;->serverFlag:Ljava/lang/String;

    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/cos/COSConfig;->socketTimeout:I

    return-void
.end method

.method public setThreadPoolSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/cos/COSConfig;->threadPoolSize:I

    return-void
.end method
