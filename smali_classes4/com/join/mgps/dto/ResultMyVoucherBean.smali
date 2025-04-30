.class public Lcom/join/mgps/dto/ResultMyVoucherBean;
.super Ljava/lang/Object;
.source "ResultMyVoucherBean.java"


# instance fields
.field private ad:Lcom/join/mgps/dto/AccountVoucherAd;

.field private coupons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucher;",
            ">;"
        }
    .end annotation
.end field

.field private is_show_recommend_bar:Z

.field private recommend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucherGameBean;",
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

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/join/mgps/dto/AccountVoucherAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucher;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucherGameBean;",
            ">;",
            "Lcom/join/mgps/dto/AccountVoucherAd;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/ResultMyVoucherBean;->coupons:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/ResultMyVoucherBean;->recommend:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/ResultMyVoucherBean;->ad:Lcom/join/mgps/dto/AccountVoucherAd;

    return-void
.end method


# virtual methods
.method public getAd()Lcom/join/mgps/dto/AccountVoucherAd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ResultMyVoucherBean;->ad:Lcom/join/mgps/dto/AccountVoucherAd;

    return-object v0
.end method

.method public getCoupons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucher;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ResultMyVoucherBean;->coupons:Ljava/util/List;

    return-object v0
.end method

.method public getRecommend()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucherGameBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ResultMyVoucherBean;->recommend:Ljava/util/List;

    return-object v0
.end method

.method public is_show_recommend_bar()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ResultMyVoucherBean;->is_show_recommend_bar:Z

    return v0
.end method

.method public setAd(Lcom/join/mgps/dto/AccountVoucherAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ResultMyVoucherBean;->ad:Lcom/join/mgps/dto/AccountVoucherAd;

    return-void
.end method

.method public setCoupons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucher;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ResultMyVoucherBean;->coupons:Ljava/util/List;

    return-void
.end method

.method public setIs_show_recommend_bar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ResultMyVoucherBean;->is_show_recommend_bar:Z

    return-void
.end method

.method public setRecommend(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucherGameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ResultMyVoucherBean;->recommend:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultMyVoucherBean{coupons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ResultMyVoucherBean;->coupons:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recommend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ResultMyVoucherBean;->recommend:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ResultMyVoucherBean;->ad:Lcom/join/mgps/dto/AccountVoucherAd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
