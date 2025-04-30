.class public Lcom/join/mgps/dto/SimulatorExitPlayResponseData;
.super Ljava/lang/Object;
.source "SimulatorExitPlayResponseData.java"


# instance fields
.field private adInfo:Lcom/join/mgps/dto/RecomDatabean;

.field private buddyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private gameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GamedetialModleFourBean;",
            ">;"
        }
    .end annotation
.end field

.field private gameMasteryLevel:Lcom/join/mgps/dto/GameMasteryLevel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdInfo()Lcom/join/mgps/dto/RecomDatabean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->adInfo:Lcom/join/mgps/dto/RecomDatabean;

    return-object v0
.end method

.method public getBuddyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->buddyList:Ljava/util/List;

    return-object v0
.end method

.method public getGameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GamedetialModleFourBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->gameList:Ljava/util/List;

    return-object v0
.end method

.method public getGameMasteryLevel()Lcom/join/mgps/dto/GameMasteryLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->gameMasteryLevel:Lcom/join/mgps/dto/GameMasteryLevel;

    return-object v0
.end method

.method public setAdInfo(Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->adInfo:Lcom/join/mgps/dto/RecomDatabean;

    return-void
.end method

.method public setBuddyList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->buddyList:Ljava/util/List;

    return-void
.end method

.method public setGameList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GamedetialModleFourBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->gameList:Ljava/util/List;

    return-void
.end method

.method public setGameMasteryLevel(Lcom/join/mgps/dto/GameMasteryLevel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->gameMasteryLevel:Lcom/join/mgps/dto/GameMasteryLevel;

    return-void
.end method
