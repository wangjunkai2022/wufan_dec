.class public Lcom/join/mgps/dto/GameListAndHeadAdAndCollectionInfoBean;
.super Lcom/join/mgps/dto/PaPaBean;
.source "GameListAndHeadAdAndCollectionInfoBean.java"


# instance fields
.field private head_ad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameHeadAd;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameListAndCollectionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getHead_ad()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameHeadAd;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameListAndHeadAdAndCollectionInfoBean;->head_ad:Ljava/util/List;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameListAndCollectionInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameListAndHeadAdAndCollectionInfoBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public setHead_ad(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameHeadAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameListAndHeadAdAndCollectionInfoBean;->head_ad:Ljava/util/List;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameListAndCollectionInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameListAndHeadAdAndCollectionInfoBean;->list:Ljava/util/List;

    return-void
.end method
