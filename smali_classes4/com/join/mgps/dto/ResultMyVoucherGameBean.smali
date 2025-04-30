.class public Lcom/join/mgps/dto/ResultMyVoucherGameBean;
.super Ljava/lang/Object;
.source "ResultMyVoucherGameBean.java"


# instance fields
.field private coupons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucherGame;",
            ">;"
        }
    .end annotation
.end field

.field private help:Lcom/join/mgps/dto/AccountVoucherAd;

.field private money:Lcom/join/mgps/dto/AccountVoucherStatusBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucherGame;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dto/ResultMyVoucherGameBean;->coupons:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCoupons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucherGame;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ResultMyVoucherGameBean;->coupons:Ljava/util/List;

    return-object v0
.end method

.method public getHelp()Lcom/join/mgps/dto/AccountVoucherAd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ResultMyVoucherGameBean;->help:Lcom/join/mgps/dto/AccountVoucherAd;

    return-object v0
.end method

.method public getMoney()Lcom/join/mgps/dto/AccountVoucherStatusBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ResultMyVoucherGameBean;->money:Lcom/join/mgps/dto/AccountVoucherStatusBean;

    return-object v0
.end method

.method public setCoupons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucherGame;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ResultMyVoucherGameBean;->coupons:Ljava/util/List;

    return-void
.end method

.method public setHelp(Lcom/join/mgps/dto/AccountVoucherAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ResultMyVoucherGameBean;->help:Lcom/join/mgps/dto/AccountVoucherAd;

    return-void
.end method

.method public setMoney(Lcom/join/mgps/dto/AccountVoucherStatusBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ResultMyVoucherGameBean;->money:Lcom/join/mgps/dto/AccountVoucherStatusBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultMyVoucherGameBean{coupons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ResultMyVoucherGameBean;->coupons:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
