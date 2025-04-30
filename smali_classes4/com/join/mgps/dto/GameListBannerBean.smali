.class public Lcom/join/mgps/dto/GameListBannerBean;
.super Ljava/lang/Object;
.source "GameListBannerBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;
    }
.end annotation


# instance fields
.field private arcade_battle:I

.field private banner_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private fc_battle:I

.field private game_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private game_match:Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;

.field private lately_battle:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArcade_battle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameListBannerBean;->arcade_battle:I

    return v0
.end method

.method public getBanner_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameListBannerBean;->banner_list:Ljava/util/List;

    return-object v0
.end method

.method public getFc_battle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameListBannerBean;->fc_battle:I

    return v0
.end method

.method public getGame_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameListBannerBean;->game_list:Ljava/util/List;

    return-object v0
.end method

.method public getGame_match()Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameListBannerBean;->game_match:Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;

    return-object v0
.end method

.method public getLately_battle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameListBannerBean;->lately_battle:I

    return v0
.end method

.method public setArcade_battle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameListBannerBean;->arcade_battle:I

    return-void
.end method

.method public setBanner_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameListBannerBean;->banner_list:Ljava/util/List;

    return-void
.end method

.method public setFc_battle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameListBannerBean;->fc_battle:I

    return-void
.end method

.method public setGame_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameListBannerBean;->game_list:Ljava/util/List;

    return-void
.end method

.method public setGame_match(Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameListBannerBean;->game_match:Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;

    return-void
.end method

.method public setLately_battle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameListBannerBean;->lately_battle:I

    return-void
.end method
