.class public Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;
.super Ljava/lang/Object;
.source "SpecialZoneResultbean.java"


# instance fields
.field banner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field collection_game_list:Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;

.field ranking_game_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field

.field screening_condition:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;->banner:Ljava/util/List;

    return-object v0
.end method

.method public getCollection_game_list()Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;->collection_game_list:Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;

    return-object v0
.end method

.method public getRanking_game_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;->ranking_game_list:Ljava/util/List;

    return-object v0
.end method

.method public getScreening_condition()Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;->screening_condition:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    return-object v0
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
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;->banner:Ljava/util/List;

    return-void
.end method

.method public setCollection_game_list(Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;->collection_game_list:Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;

    return-void
.end method

.method public setRanking_game_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;->ranking_game_list:Ljava/util/List;

    return-void
.end method

.method public setScreening_condition(Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;->screening_condition:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    return-void
.end method
