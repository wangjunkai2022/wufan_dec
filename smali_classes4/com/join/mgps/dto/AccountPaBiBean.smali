.class public Lcom/join/mgps/dto/AccountPaBiBean;
.super Ljava/lang/Object;
.source "AccountPaBiBean.java"


# instance fields
.field private pay_ad_title:Ljava/lang/String;

.field private wallet:Lcom/join/mgps/dto/PapayInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/join/mgps/dto/PapayInfo;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/AccountPaBiBean;->pay_ad_title:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/AccountPaBiBean;->wallet:Lcom/join/mgps/dto/PapayInfo;

    return-void
.end method


# virtual methods
.method public getPay_ad_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountPaBiBean;->pay_ad_title:Ljava/lang/String;

    return-object v0
.end method

.method public getWallet()Lcom/join/mgps/dto/PapayInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountPaBiBean;->wallet:Lcom/join/mgps/dto/PapayInfo;

    return-object v0
.end method

.method public setPay_ad_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountPaBiBean;->pay_ad_title:Ljava/lang/String;

    return-void
.end method

.method public setWallet(Lcom/join/mgps/dto/PapayInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountPaBiBean;->wallet:Lcom/join/mgps/dto/PapayInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountPaBiBean{pay_ad_title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/AccountPaBiBean;->pay_ad_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", wallet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/AccountPaBiBean;->wallet:Lcom/join/mgps/dto/PapayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
