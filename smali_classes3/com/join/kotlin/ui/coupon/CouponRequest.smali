.class public Lcom/join/kotlin/ui/coupon/CouponRequest;
.super Ljava/lang/Object;
.source "CouponRequest.java"


# instance fields
.field couponId:Ljava/lang/String;

.field gameId:Ljava/lang/String;

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 2
    iput-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponRequest;->couponId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCouponId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponRequest;->couponId:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponRequest;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponRequest;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setCouponId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponRequest;->couponId:Ljava/lang/String;

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponRequest;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponRequest;->uid:Ljava/lang/String;

    return-void
.end method
