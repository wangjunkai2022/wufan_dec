.class public Lcom/join/mgps/dto/BtGameBenefitSummary;
.super Ljava/lang/Object;
.source "BtGameBenefitSummary.java"


# instance fields
.field game_coupon_summary:Lcom/join/mgps/dto/BtGameBenefitBean;

.field game_gift_summary:Lcom/join/mgps/dto/BtGameBenefitBean;

.field jump_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_coupon_summary()Lcom/join/mgps/dto/BtGameBenefitBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BtGameBenefitSummary;->game_coupon_summary:Lcom/join/mgps/dto/BtGameBenefitBean;

    return-object v0
.end method

.method public getGame_gift_summary()Lcom/join/mgps/dto/BtGameBenefitBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BtGameBenefitSummary;->game_gift_summary:Lcom/join/mgps/dto/BtGameBenefitBean;

    return-object v0
.end method

.method public getJump_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BtGameBenefitSummary;->jump_url:Ljava/lang/String;

    return-object v0
.end method

.method public setGame_coupon_summary(Lcom/join/mgps/dto/BtGameBenefitBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BtGameBenefitSummary;->game_coupon_summary:Lcom/join/mgps/dto/BtGameBenefitBean;

    return-void
.end method

.method public setGame_gift_summary(Lcom/join/mgps/dto/BtGameBenefitBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BtGameBenefitSummary;->game_gift_summary:Lcom/join/mgps/dto/BtGameBenefitBean;

    return-void
.end method

.method public setJump_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BtGameBenefitSummary;->jump_url:Ljava/lang/String;

    return-void
.end method
