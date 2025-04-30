.class public Lcom/join/mgps/dto/RecomCentrebean;
.super Ljava/lang/Object;
.source "RecomCentrebean.java"


# instance fields
.field private cash_coupon:Lcom/join/mgps/dto/RecomDatabean;

.field private copper:Lcom/join/mgps/dto/RecomDatabean;

.field private currency_red_packets:Lcom/join/mgps/dto/RecomDatabean;

.field private game_packs:Lcom/join/mgps/dto/RecomDatabean;

.field private members_center_first:Lcom/join/mgps/dto/RecomDatabean;

.field private members_center_second:Lcom/join/mgps/dto/RecomDatabean;

.field private personal_information:Lcom/join/mgps/dto/RecomDatabean;

.field private vip:Lcom/join/mgps/dto/RecomDatabean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/RecomDatabean;Lcom/join/mgps/dto/RecomDatabean;Lcom/join/mgps/dto/RecomDatabean;Lcom/join/mgps/dto/RecomDatabean;Lcom/join/mgps/dto/RecomDatabean;Lcom/join/mgps/dto/RecomDatabean;Lcom/join/mgps/dto/RecomDatabean;Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/RecomCentrebean;->cash_coupon:Lcom/join/mgps/dto/RecomDatabean;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/RecomCentrebean;->vip:Lcom/join/mgps/dto/RecomDatabean;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/RecomCentrebean;->personal_information:Lcom/join/mgps/dto/RecomDatabean;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/RecomCentrebean;->members_center_second:Lcom/join/mgps/dto/RecomDatabean;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/RecomCentrebean;->members_center_first:Lcom/join/mgps/dto/RecomDatabean;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/dto/RecomCentrebean;->game_packs:Lcom/join/mgps/dto/RecomDatabean;

    .line 9
    iput-object p7, p0, Lcom/join/mgps/dto/RecomCentrebean;->currency_red_packets:Lcom/join/mgps/dto/RecomDatabean;

    .line 10
    iput-object p8, p0, Lcom/join/mgps/dto/RecomCentrebean;->copper:Lcom/join/mgps/dto/RecomDatabean;

    return-void
.end method


# virtual methods
.method public getCash_coupon()Lcom/join/mgps/dto/RecomDatabean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomCentrebean;->cash_coupon:Lcom/join/mgps/dto/RecomDatabean;

    return-object v0
.end method

.method public getCopper()Lcom/join/mgps/dto/RecomDatabean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomCentrebean;->copper:Lcom/join/mgps/dto/RecomDatabean;

    return-object v0
.end method

.method public getCurrency_red_packets()Lcom/join/mgps/dto/RecomDatabean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomCentrebean;->currency_red_packets:Lcom/join/mgps/dto/RecomDatabean;

    return-object v0
.end method

.method public getGame_packs()Lcom/join/mgps/dto/RecomDatabean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomCentrebean;->game_packs:Lcom/join/mgps/dto/RecomDatabean;

    return-object v0
.end method

.method public getMembers_center_first()Lcom/join/mgps/dto/RecomDatabean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomCentrebean;->members_center_first:Lcom/join/mgps/dto/RecomDatabean;

    return-object v0
.end method

.method public getMembers_center_second()Lcom/join/mgps/dto/RecomDatabean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomCentrebean;->members_center_second:Lcom/join/mgps/dto/RecomDatabean;

    return-object v0
.end method

.method public getPersonal_information()Lcom/join/mgps/dto/RecomDatabean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomCentrebean;->personal_information:Lcom/join/mgps/dto/RecomDatabean;

    return-object v0
.end method

.method public getVip()Lcom/join/mgps/dto/RecomDatabean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomCentrebean;->vip:Lcom/join/mgps/dto/RecomDatabean;

    return-object v0
.end method

.method public setCash_coupon(Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomCentrebean;->cash_coupon:Lcom/join/mgps/dto/RecomDatabean;

    return-void
.end method

.method public setCopper(Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomCentrebean;->copper:Lcom/join/mgps/dto/RecomDatabean;

    return-void
.end method

.method public setCurrency_red_packets(Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomCentrebean;->currency_red_packets:Lcom/join/mgps/dto/RecomDatabean;

    return-void
.end method

.method public setGame_packs(Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomCentrebean;->game_packs:Lcom/join/mgps/dto/RecomDatabean;

    return-void
.end method

.method public setMembers_center_first(Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomCentrebean;->members_center_first:Lcom/join/mgps/dto/RecomDatabean;

    return-void
.end method

.method public setMembers_center_second(Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomCentrebean;->members_center_second:Lcom/join/mgps/dto/RecomDatabean;

    return-void
.end method

.method public setPersonal_information(Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomCentrebean;->personal_information:Lcom/join/mgps/dto/RecomDatabean;

    return-void
.end method

.method public setVip(Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomCentrebean;->vip:Lcom/join/mgps/dto/RecomDatabean;

    return-void
.end method
