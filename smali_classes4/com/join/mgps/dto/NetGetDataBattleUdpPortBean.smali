.class public Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;
.super Ljava/lang/Object;
.source "NetGetDataBattleUdpPortBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private error:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private port:I


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
    iget-object v0, p0, Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;->port:I

    return v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;->error:Ljava/lang/String;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;->ip:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;->port:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetGetDataBattleUdpPortBean{ip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", port="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;->port:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", error=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;->error:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
