.class public Lcom/join/mgps/dto/WalletResponse;
.super Ljava/lang/Object;
.source "WalletResponse.java"


# instance fields
.field private coupons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CouponsData;",
            ">;"
        }
    .end annotation
.end field

.field private support_coupon_wallet:Z

.field private wallet:Lcom/join/mgps/dto/WalletData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dto/WalletResponse;->support_coupon_wallet:Z

    return-void
.end method


# virtual methods
.method public getCoupons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CouponsData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/WalletResponse;->coupons:Ljava/util/List;

    return-object v0
.end method

.method public getWallet()Lcom/join/mgps/dto/WalletData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/WalletResponse;->wallet:Lcom/join/mgps/dto/WalletData;

    return-object v0
.end method

.method public isSupport_coupon_wallet()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/WalletResponse;->support_coupon_wallet:Z

    return v0
.end method

.method public setCoupons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CouponsData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/WalletResponse;->coupons:Ljava/util/List;

    return-void
.end method

.method public setSupport_coupon_wallet(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/WalletResponse;->support_coupon_wallet:Z

    return-void
.end method

.method public setWallet(Lcom/join/mgps/dto/WalletData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/WalletResponse;->wallet:Lcom/join/mgps/dto/WalletData;

    return-void
.end method
