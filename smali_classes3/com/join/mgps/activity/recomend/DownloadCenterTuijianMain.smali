.class public Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;
.super Ljava/lang/Object;
.source "DownloadCenterTuijianMain.java"


# instance fields
.field private collectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private gameid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollectionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;->collectionList:Ljava/util/List;

    return-object v0
.end method

.method public getGameid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;->gameid:Ljava/lang/String;

    return-object v0
.end method

.method public setCollectionList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;->collectionList:Ljava/util/List;

    return-void
.end method

.method public setGameid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;->gameid:Ljava/lang/String;

    return-void
.end method
