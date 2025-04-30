.class public Lcom/join/mgps/dto/AccountVoucher;
.super Ljava/lang/Object;
.source "AccountVoucher.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private game_icon:Ljava/lang/String;

.field private game_id:J

.field private game_name:Ljava/lang/String;

.field private game_tpl:Ljava/lang/String;

.field private sp_tpl_two_position:I

.field private status:Lcom/join/mgps/dto/AccountVoucherStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/AccountVoucherStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucher;->game_icon:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/join/mgps/dto/AccountVoucher;->game_id:J

    .line 4
    iput-object p4, p0, Lcom/join/mgps/dto/AccountVoucher;->game_name:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/join/mgps/dto/AccountVoucher;->status:Lcom/join/mgps/dto/AccountVoucherStatus;

    return-void
.end method


# virtual methods
.method public getGame_icon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountVoucher;->game_icon:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AccountVoucher;->game_id:J

    return-wide v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountVoucher;->game_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_tpl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountVoucher;->game_tpl:Ljava/lang/String;

    return-object v0
.end method

.method public getSp_tpl_two_position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountVoucher;->sp_tpl_two_position:I

    return v0
.end method

.method public getStatus()Lcom/join/mgps/dto/AccountVoucherStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountVoucher;->status:Lcom/join/mgps/dto/AccountVoucherStatus;

    return-object v0
.end method

.method public setGame_icon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucher;->game_icon:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AccountVoucher;->game_id:J

    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucher;->game_name:Ljava/lang/String;

    return-void
.end method

.method public setGame_tpl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucher;->game_tpl:Ljava/lang/String;

    return-void
.end method

.method public setSp_tpl_two_position(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountVoucher;->sp_tpl_two_position:I

    return-void
.end method

.method public setStatus(Lcom/join/mgps/dto/AccountVoucherStatus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucher;->status:Lcom/join/mgps/dto/AccountVoucherStatus;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountVoucher{game_icon=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/AccountVoucher;->game_icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", game_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/join/mgps/dto/AccountVoucher;->game_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", game_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/AccountVoucher;->game_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/AccountVoucher;->status:Lcom/join/mgps/dto/AccountVoucherStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
