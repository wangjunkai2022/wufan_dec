.class public Lcom/join/mgps/dto/GameVoucherBean;
.super Ljava/lang/Object;
.source "GameVoucherBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private game_coupon_end_time:Ljava/lang/String;

.field private game_coupon_id:Ljava/lang/String;

.field private game_coupon_is_receive:Z

.field private game_coupon_money:D

.field private game_coupon_receive_source:Ljava/lang/String;

.field private game_coupon_start_time:Ljava/lang/String;

.field private game_coupon_status:I

.field private game_coupon_surplus_number:I

.field private game_coupon_title:Ljava/lang/String;

.field private game_coupon_unclaimed_source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_id:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_title:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_start_time:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_end_time:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_unclaimed_source:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_receive_source:Ljava/lang/String;

    .line 9
    iput-boolean p7, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_is_receive:Z

    .line 10
    iput-wide p8, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_money:D

    .line 11
    iput p10, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_surplus_number:I

    .line 12
    iput p11, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_status:I

    return-void
.end method


# virtual methods
.method public getGame_coupon_end_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_end_time:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_coupon_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_coupon_money()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_money:D

    return-wide v0
.end method

.method public getGame_coupon_receive_source()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_receive_source:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_coupon_start_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_start_time:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_coupon_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_status:I

    return v0
.end method

.method public getGame_coupon_surplus_number()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_surplus_number:I

    return v0
.end method

.method public getGame_coupon_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_title:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_coupon_unclaimed_source()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_unclaimed_source:Ljava/lang/String;

    return-object v0
.end method

.method public isGame_coupon_is_receive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_is_receive:Z

    return v0
.end method

.method public setGame_coupon_end_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_end_time:Ljava/lang/String;

    return-void
.end method

.method public setGame_coupon_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_id:Ljava/lang/String;

    return-void
.end method

.method public setGame_coupon_is_receive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_is_receive:Z

    return-void
.end method

.method public setGame_coupon_money(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_money:D

    return-void
.end method

.method public setGame_coupon_receive_source(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_receive_source:Ljava/lang/String;

    return-void
.end method

.method public setGame_coupon_start_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_start_time:Ljava/lang/String;

    return-void
.end method

.method public setGame_coupon_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_status:I

    return-void
.end method

.method public setGame_coupon_surplus_number(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_surplus_number:I

    return-void
.end method

.method public setGame_coupon_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_title:Ljava/lang/String;

    return-void
.end method

.method public setGame_coupon_unclaimed_source(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_unclaimed_source:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameVoucherBean{game_coupon_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", game_coupon_title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", game_coupon_start_time=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_start_time:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", game_coupon_end_time=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_end_time:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", game_coupon_unclaimed_source=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_unclaimed_source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", game_coupon_receive_source=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_receive_source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", game_coupon_is_receive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_is_receive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", game_coupon_money="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_money:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", game_coupon_surplus_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_surplus_number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", game_coupon_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
