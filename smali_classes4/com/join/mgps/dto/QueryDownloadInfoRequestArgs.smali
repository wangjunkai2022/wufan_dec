.class public Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;
.super Ljava/lang/Object;
.source "QueryDownloadInfoRequestArgs.java"


# instance fields
.field private dataType:Ljava/lang/String;

.field private gameId:Ljava/lang/String;

.field private gameIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isRecommend:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->dataType:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getGameIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->gameIdList:Ljava/util/List;

    return-object v0
.end method

.method public getIsRecommend()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->isRecommend:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setDataType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->dataType:Ljava/lang/String;

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setGameIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->gameIdList:Ljava/util/List;

    return-void
.end method

.method public setIsRecommend(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->isRecommend:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->uid:Ljava/lang/String;

    return-void
.end method
