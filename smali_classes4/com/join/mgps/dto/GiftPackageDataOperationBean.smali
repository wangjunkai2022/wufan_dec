.class public Lcom/join/mgps/dto/GiftPackageDataOperationBean;
.super Ljava/lang/Object;
.source "GiftPackageDataOperationBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private game_info:Lcom/join/mgps/dto/DetailResultBean;

.field private gift_info:Lcom/join/mgps/dto/GiftPackageDataInfoBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_info()Lcom/join/mgps/dto/DetailResultBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->game_info:Lcom/join/mgps/dto/DetailResultBean;

    return-object v0
.end method

.method public getGift_info()Lcom/join/mgps/dto/GiftPackageDataInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->gift_info:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    return-object v0
.end method

.method public setGame_info(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->game_info:Lcom/join/mgps/dto/DetailResultBean;

    return-void
.end method

.method public setGift_info(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->gift_info:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    return-void
.end method
