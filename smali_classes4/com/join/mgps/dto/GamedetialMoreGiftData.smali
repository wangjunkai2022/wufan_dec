.class public Lcom/join/mgps/dto/GamedetialMoreGiftData;
.super Ljava/lang/Object;
.source "GamedetialMoreGiftData.java"


# instance fields
.field private game_info:Lcom/join/mgps/dto/DetialMoreGameInfo;

.field private gift_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
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
.method public getGame_info()Lcom/join/mgps/dto/DetialMoreGameInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialMoreGiftData;->game_info:Lcom/join/mgps/dto/DetialMoreGameInfo;

    return-object v0
.end method

.method public getGift_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialMoreGiftData;->gift_list:Ljava/util/List;

    return-object v0
.end method

.method public setGame_info(Lcom/join/mgps/dto/DetialMoreGameInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialMoreGiftData;->game_info:Lcom/join/mgps/dto/DetialMoreGameInfo;

    return-void
.end method

.method public setGift_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialMoreGiftData;->gift_list:Ljava/util/List;

    return-void
.end method
