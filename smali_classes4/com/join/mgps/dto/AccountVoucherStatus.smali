.class public Lcom/join/mgps/dto/AccountVoucherStatus;
.super Ljava/lang/Object;
.source "AccountVoucherStatus.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private available:Lcom/join/mgps/dto/AccountVoucherStatusBean;

.field private used:Lcom/join/mgps/dto/AccountVoucherStatusBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/AccountVoucherStatusBean;Lcom/join/mgps/dto/AccountVoucherStatusBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucherStatus;->available:Lcom/join/mgps/dto/AccountVoucherStatusBean;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dto/AccountVoucherStatus;->used:Lcom/join/mgps/dto/AccountVoucherStatusBean;

    return-void
.end method


# virtual methods
.method public getAvailable()Lcom/join/mgps/dto/AccountVoucherStatusBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountVoucherStatus;->available:Lcom/join/mgps/dto/AccountVoucherStatusBean;

    return-object v0
.end method

.method public getUsed()Lcom/join/mgps/dto/AccountVoucherStatusBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountVoucherStatus;->used:Lcom/join/mgps/dto/AccountVoucherStatusBean;

    return-object v0
.end method

.method public setAvailable(Lcom/join/mgps/dto/AccountVoucherStatusBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucherStatus;->available:Lcom/join/mgps/dto/AccountVoucherStatusBean;

    return-void
.end method

.method public setUsed(Lcom/join/mgps/dto/AccountVoucherStatusBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucherStatus;->used:Lcom/join/mgps/dto/AccountVoucherStatusBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountVoucherStatus{available="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/AccountVoucherStatus;->available:Lcom/join/mgps/dto/AccountVoucherStatusBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", used="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/AccountVoucherStatus;->used:Lcom/join/mgps/dto/AccountVoucherStatusBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
