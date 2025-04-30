.class public Lcom/join/mgps/dto/RequestModGameRecommendAdArgs;
.super Ljava/lang/Object;
.source "RequestModGameRecommendAdArgs.java"


# instance fields
.field private downloadedGameIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private gameId:J

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;IJ)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/RequestModGameRecommendAdArgs;->downloadedGameIdList:Ljava/util/ArrayList;

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/RequestModGameRecommendAdArgs;->uid:I

    .line 5
    iput-wide p3, p0, Lcom/join/mgps/dto/RequestModGameRecommendAdArgs;->gameId:J

    return-void
.end method


# virtual methods
.method public getDownloadedGameIdList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestModGameRecommendAdArgs;->downloadedGameIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/RequestModGameRecommendAdArgs;->gameId:J

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestModGameRecommendAdArgs;->uid:I

    return v0
.end method

.method public setDownloadedGameIdList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestModGameRecommendAdArgs;->downloadedGameIdList:Ljava/util/ArrayList;

    return-void
.end method

.method public setGameId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/RequestModGameRecommendAdArgs;->gameId:J

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestModGameRecommendAdArgs;->uid:I

    return-void
.end method
