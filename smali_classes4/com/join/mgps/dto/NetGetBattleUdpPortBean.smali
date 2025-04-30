.class public Lcom/join/mgps/dto/NetGetBattleUdpPortBean;
.super Ljava/lang/Object;
.source "NetGetBattleUdpPortBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private error:Ljava/lang/String;

.field private invite:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

.field private match:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

.field private psp:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

.field private test:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getInvite()Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->invite:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    return-object v0
.end method

.method public getMatch()Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->match:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    return-object v0
.end method

.method public getPsp()Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->psp:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    return-object v0
.end method

.method public getTest()Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->test:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    return-object v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->error:Ljava/lang/String;

    return-void
.end method

.method public setInvite(Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->invite:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    return-void
.end method

.method public setMatch(Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->match:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    return-void
.end method

.method public setPsp(Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->psp:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    return-void
.end method

.method public setTest(Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->test:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetGetBattleUdpPortBean{error=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", test="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->test:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", match="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->match:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", invite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->invite:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
