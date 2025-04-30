.class public Lcom/join/mgps/dto/GameMainV4DataBean;
.super Ljava/lang/Object;
.source "GameMainV4DataBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GameMainV4DataBean$SimulatorCoreBean;,
        Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;,
        Lcom/join/mgps/dto/GameMainV4DataBean$GameRecommendInfoBean;,
        Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;,
        Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;,
        Lcom/join/mgps/dto/GameMainV4DataBean$Surface_bottom_ad;
    }
.end annotation


# instance fields
.field private achieve:Lcom/join/mgps/dto/GameMainachieve;

.field private gameInfo:Lcom/join/mgps/dto/GameMaingameinfo;

.field private gameMasteryLevel:Lcom/join/mgps/dto/GameMasteryLevel;

.field private memberFun:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;",
            ">;"
        }
    .end annotation
.end field

.field private memberInfo:Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;

.field private netBattle:Lcom/join/mgps/dto/GameMainNetBattle;

.field private playGameInfo:Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;

.field private recommendAdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendAd;",
            ">;"
        }
    .end annotation
.end field

.field private simulator_core:Lcom/join/mgps/dto/GameMainV4DataBean$SimulatorCoreBean;

.field private surfaceBottomAd:Lcom/join/mgps/dto/GameMainV4DataBean$Surface_bottom_ad;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAchieve()Lcom/join/mgps/dto/GameMainachieve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean;->achieve:Lcom/join/mgps/dto/GameMainachieve;

    return-object v0
.end method

.method public getGameInfo()Lcom/join/mgps/dto/GameMaingameinfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean;->gameInfo:Lcom/join/mgps/dto/GameMaingameinfo;

    return-object v0
.end method

.method public getGameMasteryLevel()Lcom/join/mgps/dto/GameMasteryLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean;->gameMasteryLevel:Lcom/join/mgps/dto/GameMasteryLevel;

    return-object v0
.end method

.method public getMemberFun()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean;->memberFun:Ljava/util/List;

    return-object v0
.end method

.method public getMemberInfo()Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean;->memberInfo:Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;

    return-object v0
.end method

.method public getNetBattle()Lcom/join/mgps/dto/GameMainNetBattle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean;->netBattle:Lcom/join/mgps/dto/GameMainNetBattle;

    return-object v0
.end method

.method public getPlayGameInfo()Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean;->playGameInfo:Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;

    return-object v0
.end method

.method public getRecommendAdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendAd;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean;->recommendAdList:Ljava/util/List;

    return-object v0
.end method

.method public getSimulator_core()Lcom/join/mgps/dto/GameMainV4DataBean$SimulatorCoreBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean;->simulator_core:Lcom/join/mgps/dto/GameMainV4DataBean$SimulatorCoreBean;

    return-object v0
.end method

.method public getSurfaceBottomAd()Lcom/join/mgps/dto/GameMainV4DataBean$Surface_bottom_ad;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean;->surfaceBottomAd:Lcom/join/mgps/dto/GameMainV4DataBean$Surface_bottom_ad;

    return-object v0
.end method

.method public setAchieve(Lcom/join/mgps/dto/GameMainachieve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean;->achieve:Lcom/join/mgps/dto/GameMainachieve;

    return-void
.end method

.method public setGameInfo(Lcom/join/mgps/dto/GameMaingameinfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean;->gameInfo:Lcom/join/mgps/dto/GameMaingameinfo;

    return-void
.end method

.method public setGameMasteryLevel(Lcom/join/mgps/dto/GameMasteryLevel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean;->gameMasteryLevel:Lcom/join/mgps/dto/GameMasteryLevel;

    return-void
.end method

.method public setMemberFun(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean;->memberFun:Ljava/util/List;

    return-void
.end method

.method public setMemberInfo(Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean;->memberInfo:Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;

    return-void
.end method

.method public setNetBattle(Lcom/join/mgps/dto/GameMainNetBattle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean;->netBattle:Lcom/join/mgps/dto/GameMainNetBattle;

    return-void
.end method

.method public setPlayGameInfo(Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean;->playGameInfo:Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;

    return-void
.end method

.method public setRecommendAdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean;->recommendAdList:Ljava/util/List;

    return-void
.end method

.method public setSimulator_core(Lcom/join/mgps/dto/GameMainV4DataBean$SimulatorCoreBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean;->simulator_core:Lcom/join/mgps/dto/GameMainV4DataBean$SimulatorCoreBean;

    return-void
.end method

.method public setSurfaceBottomAd(Lcom/join/mgps/dto/GameMainV4DataBean$Surface_bottom_ad;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean;->surfaceBottomAd:Lcom/join/mgps/dto/GameMainV4DataBean$Surface_bottom_ad;

    return-void
.end method
