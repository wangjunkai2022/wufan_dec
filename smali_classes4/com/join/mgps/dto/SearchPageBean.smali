.class public Lcom/join/mgps/dto/SearchPageBean;
.super Ljava/lang/Object;
.source "SearchPageBean.java"


# instance fields
.field private ad_info:Lcom/join/mgps/dto/SearchResultAdinfo;

.field game_favorites_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FavoriteBean;",
            ">;"
        }
    .end annotation
.end field

.field game_list:Lcom/join/mgps/dto/SearchGameListBean;

.field tag_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TagInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field today_hot_search:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field val:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAd_info()Lcom/join/mgps/dto/SearchResultAdinfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchPageBean;->ad_info:Lcom/join/mgps/dto/SearchResultAdinfo;

    return-object v0
.end method

.method public getGame_favorites_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FavoriteBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchPageBean;->game_favorites_list:Ljava/util/List;

    return-object v0
.end method

.method public getGame_list()Lcom/join/mgps/dto/SearchGameListBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchPageBean;->game_list:Lcom/join/mgps/dto/SearchGameListBean;

    return-object v0
.end method

.method public getTag_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TagInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchPageBean;->tag_info:Ljava/util/List;

    return-object v0
.end method

.method public getToday_hot_search()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/dto/SearchPageBean;->today_hot_search:Ljava/util/List;

    return-object v0
.end method

.method public isVal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/SearchPageBean;->val:Z

    return v0
.end method

.method public setAd_info(Lcom/join/mgps/dto/SearchResultAdinfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchPageBean;->ad_info:Lcom/join/mgps/dto/SearchResultAdinfo;

    return-void
.end method

.method public setGame_favorites_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FavoriteBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchPageBean;->game_favorites_list:Ljava/util/List;

    return-void
.end method

.method public setGame_list(Lcom/join/mgps/dto/SearchGameListBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchPageBean;->game_list:Lcom/join/mgps/dto/SearchGameListBean;

    return-void
.end method

.method public setTag_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TagInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchPageBean;->tag_info:Ljava/util/List;

    return-void
.end method

.method public setToday_hot_search(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchPageBean;->today_hot_search:Ljava/util/List;

    return-void
.end method

.method public setVal(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/SearchPageBean;->val:Z

    return-void
.end method
