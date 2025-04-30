.class public Lcom/join/mgps/dto/AccountVoucherGame;
.super Ljava/lang/Object;
.source "AccountVoucherGame.java"


# instance fields
.field private expire_date:Ljava/lang/String;

.field private id:I

.field private money:D

.field private name:Ljava/lang/String;

.field private no:Ljava/lang/String;

.field private notice:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/AccountVoucherGame;->id:I

    .line 4
    iput-wide p2, p0, Lcom/join/mgps/dto/AccountVoucherGame;->money:D

    .line 5
    iput-object p4, p0, Lcom/join/mgps/dto/AccountVoucherGame;->name:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/join/mgps/dto/AccountVoucherGame;->expire_date:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/join/mgps/dto/AccountVoucherGame;->no:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/join/mgps/dto/AccountVoucherGame;->notice:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExpire_date()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountVoucherGame;->expire_date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountVoucherGame;->id:I

    return v0
.end method

.method public getMoney()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AccountVoucherGame;->money:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountVoucherGame;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountVoucherGame;->no:Ljava/lang/String;

    return-object v0
.end method

.method public getNotice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountVoucherGame;->notice:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountVoucherGame;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setExpire_date(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucherGame;->expire_date:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountVoucherGame;->id:I

    return-void
.end method

.method public setMoney(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AccountVoucherGame;->money:D

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucherGame;->name:Ljava/lang/String;

    return-void
.end method

.method public setNo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucherGame;->no:Ljava/lang/String;

    return-void
.end method

.method public setNotice(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucherGame;->notice:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucherGame;->status:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountVoucherGame{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/AccountVoucherGame;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", money="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/join/mgps/dto/AccountVoucherGame;->money:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/AccountVoucherGame;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expire_date=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/AccountVoucherGame;->expire_date:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", no="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/AccountVoucherGame;->no:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", notice=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/AccountVoucherGame;->notice:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
