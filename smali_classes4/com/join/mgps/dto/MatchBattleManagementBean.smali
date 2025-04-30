.class public Lcom/join/mgps/dto/MatchBattleManagementBean;
.super Ljava/lang/Object;
.source "MatchBattleManagementBean.java"


# instance fields
.field private game_id:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private jump_info:Lcom/join/mgps/dto/BannerBean;

.field private match_title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MatchBattleManagementBean;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MatchBattleManagementBean;->game_name:Ljava/lang/String;

    return-object v0
.end method

.method public getJump_info()Lcom/join/mgps/dto/BannerBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MatchBattleManagementBean;->jump_info:Lcom/join/mgps/dto/BannerBean;

    return-object v0
.end method

.method public getMatch_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MatchBattleManagementBean;->match_title:Ljava/lang/String;

    return-object v0
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MatchBattleManagementBean;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MatchBattleManagementBean;->game_name:Ljava/lang/String;

    return-void
.end method

.method public setJump_info(Lcom/join/mgps/dto/BannerBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MatchBattleManagementBean;->jump_info:Lcom/join/mgps/dto/BannerBean;

    return-void
.end method

.method public setMatch_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MatchBattleManagementBean;->match_title:Ljava/lang/String;

    return-void
.end method
