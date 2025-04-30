.class public Lcom/join/mgps/dto/AccountVoucherStatusBean;
.super Ljava/lang/Object;
.source "AccountVoucherStatusBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private count:I

.field private money:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/join/mgps/dto/AccountVoucherStatusBean;->money:D

    .line 3
    iput p3, p0, Lcom/join/mgps/dto/AccountVoucherStatusBean;->count:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountVoucherStatusBean;->count:I

    return v0
.end method

.method public getMoney()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AccountVoucherStatusBean;->money:D

    return-wide v0
.end method

.method public setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountVoucherStatusBean;->count:I

    return-void
.end method

.method public setMoney(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AccountVoucherStatusBean;->money:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountVoucherStatusBean{money="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/join/mgps/dto/AccountVoucherStatusBean;->money:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/AccountVoucherStatusBean;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
