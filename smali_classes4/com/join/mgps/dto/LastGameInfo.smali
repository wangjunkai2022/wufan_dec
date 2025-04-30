.class public Lcom/join/mgps/dto/LastGameInfo;
.super Ljava/lang/Object;
.source "LastGameInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private gameid:Ljava/lang/Long;

.field private queueid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameid()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/LastGameInfo;->gameid:Ljava/lang/Long;

    return-object v0
.end method

.method public getQueueid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/LastGameInfo;->queueid:I

    return v0
.end method

.method public setGameid(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/LastGameInfo;->gameid:Ljava/lang/Long;

    return-void
.end method

.method public setQueueid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/LastGameInfo;->queueid:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LastGameInfo{gameid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/LastGameInfo;->gameid:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", queueid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/LastGameInfo;->queueid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
