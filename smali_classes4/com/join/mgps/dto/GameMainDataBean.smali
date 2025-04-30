.class public Lcom/join/mgps/dto/GameMainDataBean;
.super Ljava/lang/Object;
.source "GameMainDataBean.java"


# instance fields
.field private achieve:Lcom/join/mgps/dto/GameMainachieve;

.field private ad_position:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private game_info:Lcom/join/mgps/dto/GameMaingameinfo;

.field private jump_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private local_battle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private net_battle:Lcom/join/mgps/dto/GameMainNetBattle;

.field private post_id:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainPostBean;",
            ">;"
        }
    .end annotation
.end field


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
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainDataBean;->achieve:Lcom/join/mgps/dto/GameMainachieve;

    return-object v0
.end method

.method public getAd_position()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainDataBean;->ad_position:Ljava/util/List;

    return-object v0
.end method

.method public getGame_info()Lcom/join/mgps/dto/GameMaingameinfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainDataBean;->game_info:Lcom/join/mgps/dto/GameMaingameinfo;

    return-object v0
.end method

.method public getJump_info()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainDataBean;->jump_info:Ljava/util/List;

    return-object v0
.end method

.method public getLocal_battle()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainDataBean;->local_battle:Ljava/util/List;

    return-object v0
.end method

.method public getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainDataBean;->net_battle:Lcom/join/mgps/dto/GameMainNetBattle;

    return-object v0
.end method

.method public getPost_id()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainPostBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainDataBean;->post_id:Ljava/util/List;

    return-object v0
.end method

.method public setAchieve(Lcom/join/mgps/dto/GameMainachieve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainDataBean;->achieve:Lcom/join/mgps/dto/GameMainachieve;

    return-void
.end method

.method public setAd_position(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainDataBean;->ad_position:Ljava/util/List;

    return-void
.end method

.method public setGame_info(Lcom/join/mgps/dto/GameMaingameinfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainDataBean;->game_info:Lcom/join/mgps/dto/GameMaingameinfo;

    return-void
.end method

.method public setJump_info(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainDataBean;->jump_info:Ljava/util/List;

    return-void
.end method

.method public setLocal_battle(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainDataBean;->local_battle:Ljava/util/List;

    return-void
.end method

.method public setNet_battle(Lcom/join/mgps/dto/GameMainNetBattle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainDataBean;->net_battle:Lcom/join/mgps/dto/GameMainNetBattle;

    return-void
.end method

.method public setPost_id(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainPostBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainDataBean;->post_id:Ljava/util/List;

    return-void
.end method
