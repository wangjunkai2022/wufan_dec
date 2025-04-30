.class public Lcom/join/mgps/dto/PAPAHomeBeanV6;
.super Ljava/lang/Object;
.source "PAPAHomeBeanV6.java"


# instance fields
.field private all_in_play:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation
.end field

.field private banner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private discover_channel:Lcom/join/mgps/dto/GameDiscoverChannelBean;

.field private dynamic_module:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameinterestingBean;",
            ">;"
        }
    .end annotation
.end field

.field public fast_entry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private game_broadcast:Lcom/join/mgps/dto/GamebroadcastBean;

.field private game_ranking:Lcom/join/mgps/dto/GameRankingBean;

.field private guess_you_like:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation
.end field

.field private hot_game_fav:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private new_online_game:Lcom/join/mgps/dto/GameinterestingBean;

.field private simulator_channel:Lcom/join/mgps/dto/GameinterestingBean;

.field private tag_rec_game:Lcom/join/mgps/dto/GameinterestingBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAll_in_play()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->all_in_play:Ljava/util/List;

    return-object v0
.end method

.method public getBanner()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->banner:Ljava/util/List;

    return-object v0
.end method

.method public getDiscover_channel()Lcom/join/mgps/dto/GameDiscoverChannelBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->discover_channel:Lcom/join/mgps/dto/GameDiscoverChannelBean;

    return-object v0
.end method

.method public getDynamic_module()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameinterestingBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->dynamic_module:Ljava/util/List;

    return-object v0
.end method

.method public getFast_entry()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->fast_entry:Ljava/util/List;

    return-object v0
.end method

.method public getGame_broadcast()Lcom/join/mgps/dto/GamebroadcastBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->game_broadcast:Lcom/join/mgps/dto/GamebroadcastBean;

    return-object v0
.end method

.method public getGame_ranking()Lcom/join/mgps/dto/GameRankingBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->game_ranking:Lcom/join/mgps/dto/GameRankingBean;

    return-object v0
.end method

.method public getGuess_you_like()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->guess_you_like:Ljava/util/List;

    return-object v0
.end method

.method public getHot_game_fav()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->hot_game_fav:Ljava/util/List;

    return-object v0
.end method

.method public getNew_online_game()Lcom/join/mgps/dto/GameinterestingBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->new_online_game:Lcom/join/mgps/dto/GameinterestingBean;

    return-object v0
.end method

.method public getSimulator_channel()Lcom/join/mgps/dto/GameinterestingBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->simulator_channel:Lcom/join/mgps/dto/GameinterestingBean;

    return-object v0
.end method

.method public getTag_rec_game()Lcom/join/mgps/dto/GameinterestingBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->tag_rec_game:Lcom/join/mgps/dto/GameinterestingBean;

    return-object v0
.end method

.method public setAll_in_play(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->all_in_play:Ljava/util/List;

    return-void
.end method

.method public setBanner(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->banner:Ljava/util/List;

    return-void
.end method

.method public setDiscover_channel(Lcom/join/mgps/dto/GameDiscoverChannelBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->discover_channel:Lcom/join/mgps/dto/GameDiscoverChannelBean;

    return-void
.end method

.method public setDynamic_module(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameinterestingBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->dynamic_module:Ljava/util/List;

    return-void
.end method

.method public setFast_entry(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->fast_entry:Ljava/util/List;

    return-void
.end method

.method public setGame_broadcast(Lcom/join/mgps/dto/GamebroadcastBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->game_broadcast:Lcom/join/mgps/dto/GamebroadcastBean;

    return-void
.end method

.method public setGame_ranking(Lcom/join/mgps/dto/GameRankingBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->game_ranking:Lcom/join/mgps/dto/GameRankingBean;

    return-void
.end method

.method public setGuess_you_like(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->guess_you_like:Ljava/util/List;

    return-void
.end method

.method public setHot_game_fav(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->hot_game_fav:Ljava/util/List;

    return-void
.end method

.method public setNew_online_game(Lcom/join/mgps/dto/GameinterestingBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->new_online_game:Lcom/join/mgps/dto/GameinterestingBean;

    return-void
.end method

.method public setSimulator_channel(Lcom/join/mgps/dto/GameinterestingBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->simulator_channel:Lcom/join/mgps/dto/GameinterestingBean;

    return-void
.end method

.method public setTag_rec_game(Lcom/join/mgps/dto/GameinterestingBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV6;->tag_rec_game:Lcom/join/mgps/dto/GameinterestingBean;

    return-void
.end method
