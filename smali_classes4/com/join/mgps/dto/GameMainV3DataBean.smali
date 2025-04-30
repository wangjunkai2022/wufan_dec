.class public Lcom/join/mgps/dto/GameMainV3DataBean;
.super Ljava/lang/Object;
.source "GameMainV3DataBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GameMainV3DataBean$MemberFunBean;,
        Lcom/join/mgps/dto/GameMainV3DataBean$GameRecommendInfoBean;,
        Lcom/join/mgps/dto/GameMainV3DataBean$MemberInfoBean;,
        Lcom/join/mgps/dto/GameMainV3DataBean$PlayGameInfoBean;,
        Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;
    }
.end annotation


# instance fields
.field private achieve:Lcom/join/mgps/dto/GameMainachieve;

.field private game_info:Lcom/join/mgps/dto/GameMaingameinfo;

.field private game_recommend_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainV3DataBean$GameRecommendInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private member_fun:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainV3DataBean$MemberFunBean;",
            ">;"
        }
    .end annotation
.end field

.field private member_info:Lcom/join/mgps/dto/GameMainV3DataBean$MemberInfoBean;

.field private net_battle:Lcom/join/mgps/dto/GameMainNetBattle;

.field private play_game_info:Lcom/join/mgps/dto/GameMainV3DataBean$PlayGameInfoBean;

.field private surface_bottom_ad:Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;


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
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV3DataBean;->achieve:Lcom/join/mgps/dto/GameMainachieve;

    return-object v0
.end method

.method public getGame_info()Lcom/join/mgps/dto/GameMaingameinfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV3DataBean;->game_info:Lcom/join/mgps/dto/GameMaingameinfo;

    return-object v0
.end method

.method public getGame_recommend_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainV3DataBean$GameRecommendInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV3DataBean;->game_recommend_info:Ljava/util/List;

    return-object v0
.end method

.method public getMember_fun()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainV3DataBean$MemberFunBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV3DataBean;->member_fun:Ljava/util/List;

    return-object v0
.end method

.method public getMember_info()Lcom/join/mgps/dto/GameMainV3DataBean$MemberInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV3DataBean;->member_info:Lcom/join/mgps/dto/GameMainV3DataBean$MemberInfoBean;

    return-object v0
.end method

.method public getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV3DataBean;->net_battle:Lcom/join/mgps/dto/GameMainNetBattle;

    return-object v0
.end method

.method public getPlay_game_info()Lcom/join/mgps/dto/GameMainV3DataBean$PlayGameInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV3DataBean;->play_game_info:Lcom/join/mgps/dto/GameMainV3DataBean$PlayGameInfoBean;

    return-object v0
.end method

.method public getSurface_bottom_ad()Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV3DataBean;->surface_bottom_ad:Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;

    return-object v0
.end method

.method public setAchieve(Lcom/join/mgps/dto/GameMainachieve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV3DataBean;->achieve:Lcom/join/mgps/dto/GameMainachieve;

    return-void
.end method

.method public setGame_info(Lcom/join/mgps/dto/GameMaingameinfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV3DataBean;->game_info:Lcom/join/mgps/dto/GameMaingameinfo;

    return-void
.end method

.method public setGame_recommend_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainV3DataBean$GameRecommendInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV3DataBean;->game_recommend_info:Ljava/util/List;

    return-void
.end method

.method public setMember_fun(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainV3DataBean$MemberFunBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV3DataBean;->member_fun:Ljava/util/List;

    return-void
.end method

.method public setMember_info(Lcom/join/mgps/dto/GameMainV3DataBean$MemberInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV3DataBean;->member_info:Lcom/join/mgps/dto/GameMainV3DataBean$MemberInfoBean;

    return-void
.end method

.method public setNet_battle(Lcom/join/mgps/dto/GameMainNetBattle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV3DataBean;->net_battle:Lcom/join/mgps/dto/GameMainNetBattle;

    return-void
.end method

.method public setPlay_game_info(Lcom/join/mgps/dto/GameMainV3DataBean$PlayGameInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV3DataBean;->play_game_info:Lcom/join/mgps/dto/GameMainV3DataBean$PlayGameInfoBean;

    return-void
.end method

.method public setSurface_bottom_ad(Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV3DataBean;->surface_bottom_ad:Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;

    return-void
.end method
