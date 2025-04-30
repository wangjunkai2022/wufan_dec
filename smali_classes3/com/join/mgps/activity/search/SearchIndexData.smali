.class public Lcom/join/mgps/activity/search/SearchIndexData;
.super Ljava/lang/Object;
.source "SearchIndexData.java"


# instance fields
.field private ad_info:Lcom/join/mgps/dto/SearchResultAdinfo;

.field private guess_you_like_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private hot_search_ranking:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private net_search_ranking:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private search_key:Ljava/lang/String;

.field private simulator_search_ranking:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private standalone_search_ranking:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
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
.method public getAd_info()Lcom/join/mgps/dto/SearchResultAdinfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchIndexData;->ad_info:Lcom/join/mgps/dto/SearchResultAdinfo;

    return-object v0
.end method

.method public getGuess_you_like_info()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchIndexData;->guess_you_like_info:Ljava/util/List;

    return-object v0
.end method

.method public getHot_search_ranking()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchIndexData;->hot_search_ranking:Ljava/util/List;

    return-object v0
.end method

.method public getNet_search_ranking()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchIndexData;->net_search_ranking:Ljava/util/List;

    return-object v0
.end method

.method public getSearch_key()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchIndexData;->search_key:Ljava/lang/String;

    return-object v0
.end method

.method public getSimulator_search_ranking()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchIndexData;->simulator_search_ranking:Ljava/util/List;

    return-object v0
.end method

.method public getStandalone_search_ranking()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchIndexData;->standalone_search_ranking:Ljava/util/List;

    return-object v0
.end method

.method public setAd_info(Lcom/join/mgps/dto/SearchResultAdinfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchIndexData;->ad_info:Lcom/join/mgps/dto/SearchResultAdinfo;

    return-void
.end method

.method public setGuess_you_like_info(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchIndexData;->guess_you_like_info:Ljava/util/List;

    return-void
.end method

.method public setHot_search_ranking(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchIndexData;->hot_search_ranking:Ljava/util/List;

    return-void
.end method

.method public setNet_search_ranking(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchIndexData;->net_search_ranking:Ljava/util/List;

    return-void
.end method

.method public setSearch_key(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchIndexData;->search_key:Ljava/lang/String;

    return-void
.end method

.method public setSimulator_search_ranking(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchIndexData;->simulator_search_ranking:Ljava/util/List;

    return-void
.end method

.method public setStandalone_search_ranking(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchIndexData;->standalone_search_ranking:Ljava/util/List;

    return-void
.end method
