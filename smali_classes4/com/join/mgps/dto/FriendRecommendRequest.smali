.class public Lcom/join/mgps/dto/FriendRecommendRequest;
.super Ljava/lang/Object;
.source "FriendRecommendRequest.java"


# instance fields
.field private gameId:Ljava/lang/String;

.field private gameSeries:Ljava/lang/String;

.field private localDownloadGameIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private locationPageType:Ljava/lang/String;

.field private page:I

.field private token:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendRecommendRequest;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getGameSeries()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendRecommendRequest;->gameSeries:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalDownloadGameIds()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/dto/FriendRecommendRequest;->localDownloadGameIds:Ljava/util/List;

    return-object v0
.end method

.method public getLocationPageType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendRecommendRequest;->locationPageType:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendRecommendRequest;->page:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendRecommendRequest;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendRecommendRequest;->uid:I

    return v0
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendRecommendRequest;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setGameSeries(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendRecommendRequest;->gameSeries:Ljava/lang/String;

    return-void
.end method

.method public setLocalDownloadGameIds(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/FriendRecommendRequest;->localDownloadGameIds:Ljava/util/List;

    return-void
.end method

.method public setLocationPageType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendRecommendRequest;->locationPageType:Ljava/lang/String;

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendRecommendRequest;->page:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendRecommendRequest;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendRecommendRequest;->uid:I

    return-void
.end method
