.class public Lcom/join/mgps/dto/AccountVoucherGameBean;
.super Lcom/join/mgps/dto/CollectionBeanSub;
.source "AccountVoucherGameBean.java"


# instance fields
.field private coupon_id:I

.field private coupon_money:D

.field private coupon_surplus:I

.field private coupon_title:Ljava/lang/String;

.field private coupon_type:I

.field private game_crc:Ljava/lang/String;

.field private game_icon:Ljava/lang/String;

.field private game_tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation
.end field

.field private game_tpl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/CollectionBeanSub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/CollectionBeanSub;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/dto/CollectionBeanSub;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_title:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_id:I

    .line 5
    iput-object p4, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_tags:Ljava/util/List;

    .line 6
    iput-object p5, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_icon:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCoupon_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_id:I

    return v0
.end method

.method public getCoupon_money()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_money:D

    return-wide v0
.end method

.method public getCoupon_surplus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_surplus:I

    return v0
.end method

.method public getCoupon_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_title:Ljava/lang/String;

    return-object v0
.end method

.method public getCoupon_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_type:I

    return v0
.end method

.method public getGame_crc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_crc:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_icon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_icon:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_tags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_tags:Ljava/util/List;

    return-object v0
.end method

.method public getGame_tpl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_tpl:Ljava/lang/String;

    return-object v0
.end method

.method public setCoupon_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_id:I

    return-void
.end method

.method public setCoupon_money(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_money:D

    return-void
.end method

.method public setCoupon_surplus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_surplus:I

    return-void
.end method

.method public setCoupon_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_title:Ljava/lang/String;

    return-void
.end method

.method public setCoupon_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_type:I

    return-void
.end method

.method public setGame_crc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_crc:Ljava/lang/String;

    return-void
.end method

.method public setGame_icon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_icon:Ljava/lang/String;

    return-void
.end method

.method public setGame_tags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_tags:Ljava/util/List;

    return-void
.end method

.method public setGame_tpl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_tpl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountVoucherGameBean{coupon_title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", coupon_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", game_tags="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_tags:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", game_icon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", game_tpl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_tpl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", game_crc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_crc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", coupon_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", coupon_money="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_money:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", coupon_surplus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_surplus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
